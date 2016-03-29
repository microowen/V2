#include "EM78P301N.h"

#define DISI()                _asm{disi}
#define WDTC()                _asm{wdtc}
#define NOP()                 _asm{nop}
#define ENI()                 _asm{eni}
#define SLEP()                _asm{slep}
//R4/(R3+R4) = 10/(10+10) = 0.5
#define LOW_BAT_VOLT_TH       0x955                                 //(3.5V/2)/3V*4096=2389
#define MID_BAT_VOLT_TH       0xA22                                 //(3.8V/2)/3V*4096=2594
#define LOW_BAT_VOLT          0x888                                 //(3.2V/2)/3V*4096=2184
#define LOW_LOAD_VOLT         0x888                                 //(3.2V/2)/3V*4096=2184
#define SHORT_LOAD_VOLT       0x400                                 //(1.5V/2)/3V*4096=1024
#define CHARGE_BAT_VOLT_TH    0xB11                                 //(4.15V/2)/3V*4096=2833
#define WAKEUP_LOAD_VOLT      0x155                                 //(0.5V/2)/3V*4096=341
#define MOS_ON                1                                     //打开MOS
#define MOS_OFF               156                                   //关闭MOS
#define VBAT37                0x9DD                                 //(3.7V/2)/3V*4096=2525  --100
#define VBAT38                0xA22                                 //(3.8V/2)/3V*4096=2594  --94
#define VBAT39                0xA66                                 //(3.9V/2)/3V*4096=2662  --90
#define VBAT40                0xAAB                                 //(4.0V/2)/3V*4096=2731  --85
#define VBAT41                0xAEF                                 //(4.1V/2)/3V*4096=2799  --81
#define VBAT42                0xB33                                 //(4.2V/2)/3V*4096=2867  --77
#define MOS_37_38             5                                     //3%*156 = 5            
#define MOS_38_39             13                                    //8%*156 = 13  
#define MOS_39_40             19                                    //12%*156 = 19  
#define MOS_40_41             27                                    //17%*156 = 27 
#define MOS_41_42             33                                    //21%*156 = 33

#define uchar unsigned char 
#define ushort unsigned short 
#define uint unsigned int 

uchar g_fault_state              @0X20:bank 0;  //故障状态字
ushort g_load_volt               @0X21:bank 0;
uchar g_load_volt_l              @0X21:bank 0;
uchar g_load_volt_h              @0X22:bank 0;
ushort g_battery_volt            @0X23:bank 0;
uchar g_battery_volt_l           @0X23:bank 0;
uchar g_battery_volt_h           @0X24:bank 0;
uchar g_keyval                   @0X25:bank 0;
uchar g_time1ms_cnt              @0X26:bank 0;
uchar g_time50ms_cnt             @0X27:bank 0;
uchar g_time50ms_flag            @0X28:bank 0;
uchar g_time200ms_cnt            @0X29:bank 0;
uchar g_time200ms_flag           @0X2A:bank 0;
uchar g_time2s_flag              @0X2B:bank 0;
bit g_led_r                      @0X2C @0:bank 0;
bit g_led_g                      @0X2C @1:bank 0;
bit g_led_b                      @0X2C @2:bank 0;
bit g_led_onoff_status           @0X2C @3:bank 0;
bit g_led_occupied               @0X2C @7:bank 0;
    
uchar g_led_light_times          @0X2D:bank 0;
uchar g_keypress_times           @0X2E:bank 0;
uchar g_keypress_maxtime         @0X2F:bank 0;
uchar g_led_onoff                @0X30:bank 0;

uchar g_cur_state                @0X31:bank 0;
uchar g_next_state               @0X32:bank 0;

uchar g_lock_flag                @0X33:bank 0;
uchar g_adc_flag                 @0X34:bank 0;  
uchar g_time2s_start             @0X35:bank 0;

extern int IntVecIdx; //occupied 0x10:rpage 0

void delay_us(uchar count)
{
    uchar i,j; 
    
    for (i = 0; i < count; i++)
    {
        NOP(); 
        NOP(); 
        NOP(); 
        NOP();           
    }
}

//将RAM区通用寄存器清零
void clr_ram(void)        
{
    RSR = 0x10;               //BANK 0 的0x10寄存器
    do
    {  
        R0 = 0;         
        RSR++;
        if (RSR == 0x40)
        {    
           RSR = 0x60;
        }
     }while(RSR < 0x80);

}

void battery_volt_sample(void)     //电池电源采样  
{      
    P7CR = 0x01; 
    
    ADE5 = 1;           //P71/ADC5引脚作为ADC5输入口   
    
    ADIS2 = 1;          //选择ADC5输入口
    ADIS1 = 0;
    ADIS0 = 1;

    ADPD = 1;          //打开ADC电源
        
    ADRUN = 1;  
    while(ADRUN == 1);  
    g_battery_volt_h = ADDATA1H;  
    g_battery_volt_l = ADDATA1L;  
    
    P7CR = 0x00; 
    ADE5 = 0; 
}  


void load_volt_sample(void)   //负载和电池电压采样
{
    //连续采集两次才能采准电压
    ADE6 = 1;           //P55/ADC6引脚作为ADC6输入口
        
    ADIS2 = 1;          //选择ADC6输入口
    ADIS1 = 1;
    ADIS0 = 0; 

    ADPD = 1;          //打开ADC电源

    ADRUN = 1;
    while(ADRUN == 1);  
      
    delay_us(3);
    
    ADRUN = 1;
    while(ADRUN == 1);  

    g_load_volt_h = ADDATA1H;
    g_load_volt_l = ADDATA1L;    
}

void _intcall ALLInt(void) @ int 
{     
    switch(IntVecIdx)
    {
        case 0x16:
            if (PWM2IF == 1)
            {
                PWM2IF = 0;                 //清PWM2中断标志位
                g_time1ms_cnt++;
                if(g_time1ms_cnt == 50)
                {
                    g_time1ms_cnt = 0;
                    g_time50ms_flag = 1;
                    g_time50ms_cnt++;
                    if(g_time50ms_cnt == 4)
                    {
                        g_time50ms_cnt = 0;
                        g_time200ms_flag = 1;

                        if(g_time2s_start==1)
                        {
                            g_time2s_start = 0;
                            g_time200ms_cnt = 0;
                            g_time2s_flag = 0;
                        }
                        else
                        {
                            g_time200ms_cnt++;
                        }
                        
                        if(g_time200ms_cnt == 10)
                        {
                            g_time200ms_cnt = 0;
                            g_time2s_flag = 1;
                        } 
                    }
                }
            }
        break;

        case 0x19:
            if (DT1IF == 1)
            {
                delay_us(10);
                if(g_keypress_maxtime < 200)
                {
                    load_volt_sample();
                }
                
                DT1IF = 0;                         //清PWM1中断标志位
                
                g_adc_flag = 1;
            }
        break;
    }     
}

void _intcall PWM2P_l(void) @0x15:low_int 6
{
    _asm{MOV A,0x2};
}

void _intcall PWM1D_l(void) @0x18:low_int 7
{
    _asm{MOV A,0x2};
}

void led_disp(void)    //LED控制
{
    if(g_led_light_times >= 1) 
    {
        if(g_led_onoff_status)   
        {
            if(g_led_light_times != 0xff)
            {
                g_led_onoff_status = 0;
            }
            
            g_led_onoff = 0;          //灯亮
        }
        else
        {
            g_led_onoff_status = 1;
            g_led_onoff = 1;         //灯灭            
            g_led_light_times--;
        }
    }
    else
    {
        g_led_onoff = 1;             //灯灭
    }        
        
    if(g_led_r)
    {
        P70 = g_led_onoff;           //红灯
    }
    else
    {
        P70 = 1;                    //没被控制就灭灯
    }
            
    if(g_led_b)
    {
        P71 = g_led_onoff;          //蓝灯
    }
    else
    {
        P71 = 1;                     //没被控制就灭灯    
    }
            
    if(g_led_g)
    {
        P51 = ~g_led_onoff;         //尾灯
    }
    else
    {
        P51 = 0;                     //没被控制就灭灯
    }
}

void led_ctrl_by_voltage(ushort volt_sample)        //不同电压区间灯闪亮
{
    if(volt_sample < LOW_BAT_VOLT_TH)      
    {
        g_led_r = 1;                  //红灯       
        g_led_b = 0;                  //蓝灯
        g_led_g = 1;                  //尾灯        
    }
    else if(volt_sample < MID_BAT_VOLT_TH)    
    {
        g_led_r = 1;                  //红灯
        g_led_b = 1;                  //蓝灯
        g_led_g = 1;                  //尾灯
    }
    else
    {
        g_led_r = 0;                  //红灯
        g_led_b = 1;                  //蓝灯 
        g_led_g = 1;                  //尾灯
    }        
    
    g_led_onoff_status = 1;           //灯亮
    g_led_light_times = 0xff;   
}

void pwm_timer_init(void)
{
    P6CR = 0;           //P67设为输出
    TMRCON = 0X27;      //PWM1预分频比设为1：256,PWM2预分频比设为1：16
    PWMCON = 0X01;      //使能PWM1输出口
    PRD1 = 155;         //周期=1/4*(155+1)*256=10ms
    PRD2 = 249;         //周期=1/4*(249+1)*16=1ms
    IMR = 0X30;         //使能PWM1占空比，PWM2周期中断
    T2EN = 1;           //PWM2定时开始
    ENI();  
}

void pwm_set(uchar duty)
{
    DT1 = duty;
    T1EN = 1;
}

void led_blink(uchar times)
{
    if(g_led_occupied == 0)
    {
        g_led_onoff_status = 1;
        g_led_occupied = 1;
        g_led_light_times = times;
    } 
    
    do
    {
        if(g_time200ms_flag == 1)
        {
            g_time200ms_flag = 0;
            led_disp();
        }  
    }while(g_led_light_times != 0);
    
    if(g_led_light_times == 0)
    {
        g_led_occupied = 0;
    }
}

void gpio_init()
{
    P5CR = 0X21;        //P50,P55设为输入 ,P51设为输出
    P5PHCR = 0XFC;      //P50,P51上拉
    P51 = 0;            //默认蓝灯关
    P7CR = 0;
}

void adc_init()
{   
    ADOC = 0x4;         //内部参考电压3V
}

void led_status(uchar red, uchar green, uchar blue)
{
    g_led_r = red;
    g_led_g = green;
    g_led_b = blue;
}

void mcu_init(void)   //MCU初始化
{

    WDTC();
    DISI();
    SCR = 0X7F;       //选择4MHz,TIMER 选择主频
    
    clr_ram();
    gpio_init();
    adc_init();

    pwm_timer_init();  
    pwm_set(MOS_OFF);
    
    g_led_occupied = 0;
    led_status(1,1,1);
    led_blink(3);

    g_keyval = P50;
    
    if(g_keyval == 0)
    {
        g_next_state = 0x01; 
    }
    else
    {
        g_next_state = 0x08;
    }
    
    g_fault_state = 0x00;
}

void main(void)
{
    uchar temp_keyval;
  
    mcu_init();
    g_time2s_flag=1;
    temp_keyval = 1;
    g_lock_flag = 0;
  
    while(1)
    {
        g_cur_state = g_next_state;

        switch(g_cur_state)
        {
            case 0x01:                                     //正常模式           
                if((g_keypress_maxtime > 0)&&(g_lock_flag == 0x00))
                {
                    if(g_keypress_maxtime >= 200)          //判断吸烟超过10s情况
                    {
                        if (g_keypress_maxtime == 200)
                        {
                            pwm_set(MOS_OFF);                           
                            led_blink(9);       //闪烁8次，避免初始状态灯亮时少一次状态
                        }
                        
                        break;                                                   
                    } 
                    
                    g_adc_flag = 0;
                    while(g_adc_flag == 0);
                    
                    if(g_load_volt < SHORT_LOAD_VOLT)         //检测雾化器短路故障
                    {
                        pwm_set(MOS_OFF);
                        g_fault_state = 0x08;
                        g_next_state = 0x02;
                    }
                    else
                    {   
                        if(g_battery_volt <= VBAT37)
                        {   
                            pwm_set(MOS_ON);
                        } 
                        else if (g_battery_volt <= VBAT38)
                        {
                            pwm_set(MOS_37_38);
                        }
                        else if(g_battery_volt <= VBAT39)
                        {
                            pwm_set(MOS_38_39);
                        }
                        else if(g_battery_volt <= VBAT40)
                        {
                            pwm_set(MOS_39_40);
                        }
                        else if(g_battery_volt <= VBAT41)
                        {
                            pwm_set(MOS_40_41);
                        } 
                        else
                        {
                            pwm_set(MOS_41_42);
                        }
                    }              
                }
                else
                {                        
                    if(g_time2s_flag == 1)
                    {
                        g_next_state = 0x08;                        
                    }
                    else
                    {                  
                        g_next_state = 0x01;
                    }
                    
                    //释放按键灭灯
                    g_led_r = 0;
                    g_led_g = 0;
                    g_led_b = 0;
                }
                     
            break;
                
            case 0x02:                          //故障模式
                if(g_fault_state == 0x02)       //过充保护
                {
                    led_status(0,0,1);
                    led_blink(20);
                    g_next_state = 0x8;
                }
                else if(g_fault_state == 0x04)  //低压保护
                {
                    led_status(1,0,0);
                    led_blink(10);
                    g_next_state = 0x8;     
                }
                else if(g_fault_state==0x08)    //发热丝短路保护
                {
                    led_status(1,1,1);
                    led_blink(3);
                    g_next_state = 0x8;
                }     
                else if(g_fault_state == 0x10)  //充电器短路保护
                {
                    led_status(1,1,1);
                    led_blink(6);
                    g_next_state = 0x8;     
                }    
                else if(g_fault_state==0x20)    //过渡进入充电状态        
                {
                    led_status(1,0,1);
                    led_blink(3);
                    g_next_state = 0x4;
                }
                else
                {
                    g_next_state = 0x01;
                } 
           
            break;
    
            case 0x04:                                 //充电模式 
                g_adc_flag = 0;
                while(g_adc_flag == 0);  
                if(g_load_volt < SHORT_LOAD_VOLT)   
                {
                    pwm_set(MOS_OFF);
                    g_fault_state = 0x10;
                    g_next_state = 0x02;
                }
                else if(g_load_volt > CHARGE_BAT_VOLT_TH)   
                {
                    pwm_set(MOS_OFF);
                    g_fault_state = 0x02;
                    g_next_state = 0x02;
                }
                else
                {
                    pwm_set(MOS_ON);
                    //充电时没有接负载，通过检测负载电压约等于电池电压
                    led_ctrl_by_voltage(g_load_volt);
                }
            break;
    
            case 0x08:                                  //睡眠模式
                pwm_set(MOS_OFF);
                g_led_r = 0;
                g_led_g = 0;
                g_led_b = 0;
                P70 = 1;                                //灭红灯
                P71 = 1;                                //灭绿灯
                P51 = 0;                                //灭蓝灯
                ISR1 = 0X02;                            //使能PORT5状态改变唤醒功能
                PORT5 = PORT5;                          //读取PORT5状态
                IDLE = 0;
                delay_us(2);
                SLEP();                                 //进入睡眠
                delay_us(20);
                
                g_time1ms_cnt = 0;
                g_time50ms_cnt = 0;
                g_time200ms_cnt = 0;
                g_led_light_times = 0;
                g_keypress_maxtime = 0;   
                
                g_adc_flag = 0;
                while(g_adc_flag == 0);
                
                if(g_load_volt < WAKEUP_LOAD_VOLT)       //由按键唤醒，进入吸烟状态
                {
                    g_next_state = 0x01;
                }
                else                                             //由c_sens唤醒，充电器正常
                {
                    g_fault_state = 0x20;
                    g_next_state = 0x02;
                    g_lock_flag = 0x0;
                }             
              break;
    
            default:
                g_next_state = 0x08;
            break;                
        }
            
        if((g_time50ms_flag == 1)||(g_cur_state == 0x08))           //key处理
        {
            g_time50ms_flag = 0;
            g_keyval = P50;
            
            if(((temp_keyval == g_keyval)&&(g_keyval == 0))||(g_cur_state == 0x08))
            {
                if(g_keypress_maxtime == 255)
                {
                    g_keypress_maxtime = 255;
                }
                else
                {
                    //持续按键时，记录按键时间，通过时间判定10s吸烟
                    g_keypress_maxtime++;
                }
                
                //采集第一次按键按下时的电池电压，并且只有当前为正常状态或唤醒状态才采集
                if ((g_lock_flag == 0x00) && (g_keypress_maxtime == 1))
                {
                    if ((g_cur_state == 0x08)||(g_cur_state == 0x01))
                    {
                        pwm_set(MOS_ON);

                        battery_volt_sample();

                        if(g_battery_volt < LOW_BAT_VOLT)        //检测电池低压故障 
                        {
                            pwm_set(MOS_OFF);
                            g_fault_state = 0x04;
                            g_next_state = 0x02;
                        } 
                        else
                        {
                            led_ctrl_by_voltage(g_battery_volt);
                        }
                    }
                }
                
                //按键按下就开始启动2s计时
                if(g_keypress_times == 0)
                {
                    g_time2s_start = 1;
                }
            }
            else if((temp_keyval == 0)&&(g_keyval == 1))
            {     
                if( g_keypress_maxtime < 40)
                {
                    g_keypress_times++;
                }
                
                //按键按下时，关掉MOS管
                pwm_set(MOS_OFF);
                
                g_keypress_maxtime = 0;
            }
            
            temp_keyval = g_keyval;
        }
        
        if(g_time200ms_flag == 1)           //指示灯处理
        {
            g_time200ms_flag = 0;
            led_disp();
        }   

        if(g_time2s_flag == 1)
        {
            g_time2s_flag = 0;
            if(g_keypress_times >= 5)
            {                 
                pwm_set(MOS_OFF);
                  
                if(g_lock_flag == 0x00)
                {
                    led_status(1,1,1);
                    led_blink(3);
                    g_lock_flag = 0x01;
                }
                else
                {
                    led_status(1,1,1);
                    led_blink(5);
                    g_lock_flag = 0x00;
                }
            }
            g_keypress_times  =  0;
        }  
    }
}
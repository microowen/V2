/****************************************************************************
 *	Title:       EM78P301N.H												*
 *	Target MCU:  EM78P301N				                           	        *
 * 	Description: Register/bit definitions									*
 * 	Company:     ELAN MICROELECTRONICS (SZ) LTD.       	                    *
 * 	Date:        2013/01/11                            	                    *
 *	Version:     v1.0                                  	                    *
 ***************************************************************************/
#ifndef __EM78P301N_H__
#define __EM78P301N_H__
 
static  unsigned int R0   			@0X00:rpage 0;//Indirect Address Register    
static  unsigned int IAR   			@0X00:rpage 0;//Indirect Address Register 
static  unsigned int TCC 			@0X01:rpage 0;// Time Clock/Counter
static  unsigned int PC				@0X02:rpage 0;//Program Counter and Stack
static  unsigned int STATUS			@0X03:rpage 0;//Status Register
static  unsigned int RSR 			@0X04:rpage 0;//RAM Select Register
static	unsigned int PORT5			@0X05:rpage 0;//PORT5
static	unsigned int PORT6			@0X06:rpage 0;//PORT6
static	unsigned int PORT7			@0X07:rpage 0;//PORT7
static	unsigned int AISR			@0X08:rpage 0;//ADC input select register
static	unsigned int ADCON			@0X09:rpage 0;//AD control register
static	unsigned int ADOC			@0X0A:rpage 0;//ADC Offset Calibration register
static	unsigned int ADDATA			@0X0B:rpage 0;//AD DATA HIGH 8 BIT
static	unsigned int ADDATA1H       @0X0C:rpage 0;//Converted value of ADC HI 4 BIT
static	unsigned int ADDATA1L       @0X0D:rpage 0;//Converted value of ADC LOW 8 BIT
static	unsigned int ISR1			@0X0E:rpage 0;//interrupt status register  and wake up control
static	unsigned int WUCR			@0X0E:rpage 0;//interrupt status register  and wake up control	
static	unsigned int ISR2			@0X0F:rpage 0;//interrupt status register
static	unsigned int TBHP			@0X05:rpage	1;//Table point register for instruction TBRD
static	unsigned int TBLP			@0X06:rpage	1;//Table point register for instruction TBRD
static	unsigned int PWMCON			@0X07:rpage 1;//PWM control register
static	unsigned int TMRCON			@0X08:rpage 1;//Timer Control register
static	unsigned int PRD1			@0X09:rpage 1;//PWM1 Time period
static	unsigned int PRD2			@0X0A:rpage 1;//PWm2 Time period
static	unsigned int DT1			@0X0B:rpage 1;// PWM1 Duty Cycle
static	unsigned int DT2			@0X0c:rpage 1;//PWM2 Duty Cycle
static	unsigned int HBP			@0X0D:rpage 1;//High byte of PWM2 PWM1 period and Duty Cycle	
static	unsigned int LVDIWR			@0X0E:rpage 1;//LVD interrupt and wake-up register
static	unsigned int SCR			@0X0F:rpage 1;//System Control register

static	io unsigned int P5CR		@0X05:iopage 0;//PORT5 I/O Control register
static	io unsigned int P6CR   		@0X06:iopage 0;//PORT6 I/O Control register
static	io unsigned int P7CR   		@0X07:iopage 0;//PORT7 I/O Control register
static	io unsigned int HBT  		@0X08:iopage 0;//High byte time1/2 register
static	io unsigned int TMR1		@0X09:iopage 0;//TCCB and TCCC Control Register
static	io unsigned int TMR2		@0X0A:iopage 0;//IR and TCCC Scale Control Register
static	io unsigned int PDCR		@0X0B:iopage 0;//Pull-down control register
static	io unsigned int P5PDCR		@0X0B:iopage 0;//Pull-down control register

static	io unsigned int ODCR		@0X0C:iopage 0;//Open-drain control register
static	io unsigned int P6ODCR		@0X0C:iopage 0;//Open-drain control register
static	io unsigned int PHCR1		@0X0D:iopage 0;//Pull-high control register
static	io unsigned int P5PHCR		@0X0D:iopage 0;//Pull-high control register
static	io unsigned int WDTCR		@0X0E:iopage 0;//WDT Control register
static	io unsigned int IMR			@0X0F:iopage 0;//Interrupt mask register

static	io unsigned int HSCR1		@0X05:iopage 1;//High sink control register
static	io unsigned int P5HSCR   	@0X05:iopage 1;//High sink control register	
static	io unsigned int HSCR2		@0X06:iopage 1;//High sink control register
static	io unsigned int P6HSCR		@0X06:iopage 1;//High sink control register	
static	io unsigned int HDCR1		@0X07:iopage 1;//High drive control register1
static	io unsigned int P5HDCR		@0X07:iopage 1;//High drive control register1	
static	io unsigned int HDCR2		@0X08:iopage 1;//High drive control register2
static	io unsigned int P6HDCR		@0X08:iopage 1;//High drive control register2	
static	io unsigned int PHCR2		@0X0F:iopage 1;//Pull-high Control Register
static	io unsigned int P6PHCR		@0X0F:iopage 1;//Pull-high Control Register

/*	STATUS bits	*/
static	bit RST   		@0X03@7:rpage 0;
static	bit IOCS   		@0X03@6:rpage 0;
static	bit T   		@0X03@4:rpage 0;
static	bit P   		@0X03@3:rpage 0;
static	bit Z   		@0X03@2:rpage 0;
static	bit DC  		@0X03@1:rpage 0;
static	bit C   		@0X03@0:rpage 0;

/*BANK0 R4 bitS*/
static bit SBANk		@0X04@7:rpage 0;
                    	
/*BANK0	R5 bits	*/  	
static	bit P57 		@0X05@7:rpage 0;
static	bit P56 		@0X05@6:rpage 0;
static	bit P55 		@0X05@5:rpage 0;
static	bit P54 		@0X05@4:rpage 0;
static	bit P53 		@0X05@3:rpage 0;
static	bit P52 		@0X05@2:rpage 0;
static	bit P51 		@0X05@1:rpage 0;
static	bit P50 		@0X05@0:rpage 0;
                    	
/*BANK0	R6 bits	*/  	
static	bit P67			@0X06@7:rpage 0;
static	bit P66			@0X06@6:rpage 0;
static	bit P65  		@0X06@5:rpage 0;
static	bit P64			@0X06@4:rpage 0;
static	bit P63  		@0X06@3:rpage 0;
static	bit P62			@0X06@2:rpage 0;
static	bit P61			@0X06@1:rpage 0;
static	bit P60			@0X06@0:rpage 0;
                    	
/*BANK0	R7 bits	*/  	
static	bit P77			@0X07@7:rpage 0;
static	bit P76			@0X07@6:rpage 0;
static	bit P75			@0X07@5:rpage 0;
static	bit P74			@0X07@4:rpage 0;
static	bit P73			@0X07@3:rpage 0;
static	bit P72			@0X07@2:rpage 0;
static	bit P71			@0X07@1:rpage 0;
static	bit P70			@0X07@0:rpage 0;
                    	
/*BANK0	R8 bits	*/  	
static	bit ADE7		@0X08@7:rpage 0;
static	bit ADE6		@0X08@6:rpage 0;
static	bit ADE5		@0X08@5:rpage 0;   
static	bit ADE4		@0X08@4:rpage 0;
static	bit ADE3		@0X08@3:rpage 0;
static	bit ADE2		@0X08@2:rpage 0;
static	bit ADE1		@0X08@1:rpage 0;
static	bit ADE0		@0X08@0:rpage 0;
                    	
/*BANK0	R9 bits	*/  	
static	bit VREFS		@0X09@7:rpage 0;
static	bit CKR1		@0X09@6:rpage 0;
static	bit CKR0		@0X09@5:rpage 0;
static	bit ADRUN		@0X09@4:rpage 0;
static	bit ADPD 		@0X09@3:rpage 0;
static	bit ADIS2		@0X09@2:rpage 0;
static	bit ADIS1		@0X09@1:rpage 0;
static	bit ADIS0		@0X09@0:rpage 0;

/*BANK0	RA bits	(ADOC: ADC Offset Calibration register)*/
static	bit CALI		@0X0A@7:rpage 0;
static	bit SIGN		@0X0A@6:rpage 0;
static	bit VOF2		@0X0A@5:rpage 0;
static	bit VOF1		@0X0A@4:rpage 0;
static	bit VOF0		@0X0A@3:rpage 0;

/*BANK0	RE bits (WUCR:Wake-up Control Register)	*/
static	bit LVD			@0X0E@7:rpage 0;
static	bit LVDIF		@0X0E@6:rpage 0;
static	bit ADIF		@0X0E@5:rpage 0;
static	bit CMPIF 		@0X0E@4:rpage 0;
static	bit ADWE 		@0X0E@3:rpage 0;
static	bit CMPWE		@0X0E@2:rpage 0;
static	bit ICWE		@0X0E@1:rpage 0;
static	bit LVDWE		@0X0E@0:rpage 0;

/*BANK0	RF bits	( Interrupt status register)*/
static	bit DT2IF		@0X0F@6:rpage 0;
static	bit DT1IF		@0X0F@5:rpage 0;
static	bit PWM2IF		@0X0F@4:rpage 0;
static	bit PWM1IF		@0X0F@3:rpage 0;
static	bit EXIF		@0X0F@2:rpage 0;
static	bit ICIF		@0X0F@1:rpage 0;
static	bit TCIF		@0X0F@0:rpage 0;

/*BANK1 R5 bits(Table Point Register for instruction TBRD)*/
static 	bit MLB 		@0X05@7:rpage 1;
static 	bit Rbit10		@0X05@2:rpage 1;
static  bit Rbit9		@0X05@1:rpage 1;
static  bit Rbit8		@0X05@0:rpage 1;

/*BANK1 R6 bits(Table Point Register for instruction TBRD)*/	
static 	bit Rbit7 		@0X06@7:rpage 1;
static 	bit Rbit6 		@0X06@6:rpage 1;
static 	bit Rbit5 		@0X06@5:rpage 1;
static 	bit Rbit4 		@0X06@4:rpage 1;
static 	bit Rbit3 		@0X06@3:rpage 1;
static 	bit Rbit2 		@0X06@2:rpage 1;
static 	bit Rbit1 		@0X06@1:rpage 1;
static 	bit Rbit0 		@0X06@0:rpage 1; 

/*BANK1 R7(PWM  Control Register)*/
static 	bit PWMCAS 		@0X07@2:rpage 1;	
static 	bit PWM2E 		@0X07@1:rpage 1;	
static 	bit PWM1E 		@0X07@0:rpage 1;

/*BANK1 R8(Timer Control Register*/
static  bit T2EN		@0X08@7:rpage 1;
static  bit T1EN 		@0X08@6:rpage 1;
static  bit T2P2		@0X08@5:rpage 1;
static  bit T2P1		@0X08@4:rpage 1;
static  bit T2P0		@0X08@3:rpage 1;
static  bit T1P2		@0X08@2:rpage 1;
static  bit T1P1		@0X08@1:rpage 1;
static  bit T1P0		@0X08@0:rpage 1;

/*BANK1 RE(LVD Interrupt and wake up register)*/
static  bit LVDIE 		@0X0E@7:rpage 1;
static  bit LVDEN 		@0X0E@6:rpage 1;
static  bit LVD1		@0X0E@5:rpage 1;
static  bit LVD0		@0X0E@4:rpage 1;
static  bit EXWE		@0X0E@0:rpage 1;

/*BANK1 RF(System Control Register)*/
static	bit TIMERSC		@0X0F@6:rpage 1;
static  bit CPUS		@0X0f@5:rpage 1;
static  bit IDLE 		@0X0f@4:rpage 1;
static	bit SHS1		@0X0F@3:rpage 1;
static  bit SHS0		@0X0F@2:rpage 1;
static  bit RCM1		@0X0F@1:rpage 1;
static  bit RCM0		@0X0F@0:rpage 1;

#endif				
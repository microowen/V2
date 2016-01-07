.autoimport
EM78P301N EQU 1
_SIMPLE_RSR_ EQU 1
.include "sysdefii.inc"
ccounter equ pr1
.stabs "icc_compiled.",60,0,0,0
.stabs "D:\Program Files (x86)\ELAN\eUIDE\V2\main.c",100,0,3,0
.stabs "int:t1=r1;-128;127;",128,0,0,0
.stabs "char:t2=r2;-128;127;",128,0,0,0
.stabs "double:t3=r1;3;0;",128,0,0,0
.stabs "float:t4=r1;3;0;",128,0,0,0
.stabs "long double:t5=r1;3;0;",128,0,0,0
.stabs "long:t6=r1;-2147483648;2147483647;",128,0,0,0
.stabs "long long:t7=r1;-2147483648;2147483647;",128,0,0,0
.stabs "short:t8=r1;-32768;32767;",128,0,0,0
.stabs "signed char:t9=r1;-128;127;",128,0,0,0
.stabs "unsigned char:t10=r1;0;255;",128,0,0,0
.stabs "unsigned long:t11=r1;0;4294967295;",128,0,0,0
.stabs "unsigned long long:t12=r1;0;4294967295;",128,0,0,0
.stabs "unsigned short:t13=r1;0;65535;",128,0,0,0
.stabs "unsigned int:t14=r1;0;255;",128,0,0,0
.stabs "void:t15=15",128,0,0,0
.stabs "bit:t16=r16;0;1;",128,0,0,0
public _ad_cali_p
public ad_cali_p_bp
.section ".code"
.stabs "ad_cali_p:F15",36,0,0,_ad_cali_p
.section ".S0",C_CODE
.SYMDEF ".S0" 
_ad_cali_p:
.SYMDEF "_ad_cali_p" 
mov a,ecx
mov ad_cali_p_bp-4,a
mov a,ecx+1
mov ad_cali_p_bp-3,a
mov a,ecx+2
mov ad_cali_p_bp-2,a
mov a,ecx+3
mov ad_cali_p_bp-1,a
.stabs "cnt:10",128,0,0,ad_cali_p_bp-5
.stabn 192,0,0,L16
L16:
.stabn 68,0,57,L18
L18:
.stabn 68,0,58,L19
L19:
mov a,@7
STA ad_cali_p_bp-5,0,0
.stabn 68,0,60,L20
L20:
mov a,@248
STA _ADOC,0,0
L$2:
.stabn 192,0,1,L21
L21:
.stabn 68,0,63,L22
L22:
.stabn 68,0,64,L23
L23:
bs _ADRUN,4
L$5:
.stabn 68,0,65,L24
L24:
L$6:
.stabn 68,0,65,L25
L25:
jbc _ADRUN,4
EXTJMP @L$5
.stabn 68,0,66,L26
L26:
DECMB ad_cali_p_bp-5,0
.stabn 68,0,67,L27
L27:
jbc _SIGN,6
EXTJMP @L$8
.stabn 192,0,2,L28
L28:
.stabn 68,0,68,L29
L29:
.stabn 68,0,69,L30
L30:
LDA _ADOC,0,0
add a,@8
STA _ADOC,0,0
.stabn 68,0,70,L31
L31:
.stabn 224,0,2,L32
L32:
jmp @L$9
L$8:
.stabn 192,0,2,L33
L33:
.stabn 68,0,72,L34
L34:
.stabn 68,0,73,L35
L35:
SUBMIB _ADOC,8,0
.stabn 68,0,74,L36
L36:
.stabn 224,0,2,L37
L37:
L$9:
.stabn 68,0,75,L38
L38:
EQNEPRIB ad_cali_p_bp-5,0
jbs STATUS,zf
EXTJMP @L$10
.stabn 192,0,2,L39
L39:
.stabn 68,0,76,L40
L40:
.stabn 68,0,77,L41
L41:
mov a,@7
STA ad_cali_p_bp-5,0,0
.stabn 68,0,78,L42
L42:
jbs _SIGN,6
EXTJMP @L$12
.stabn 192,0,3,L43
L43:
.stabn 68,0,79,L44
L44:
.stabn 68,0,80,L45
L45:
mov a,@128
STA _ADOC,0,0
.stabn 68,0,81,L46
L46:
.stabn 224,0,3,L47
L47:
jmp @L$13
L$12:
.stabn 192,0,3,L48
L48:
.stabn 68,0,83,L49
L49:
.stabn 68,0,84,L50
L50:
bc _CALI,7
.stabn 68,0,85,L51
L51:
.stabn 224,0,3,L52
L52:
L$13:
.stabn 68,0,86,L53
L53:
.stabn 224,0,2,L54
L54:
L$10:
.stabn 68,0,87,L55
L55:
.stabn 224,0,1,L56
L56:
L$3:
.stabn 68,0,87,L57
L57:
EQNEPRIB _ADDATA1H,0
jbs STATUS,zf
EXTJMP @L$15
EQNEPRIB _ADDATA1L,0
jbc STATUS,zf
EXTJMP @L$14
L$15:
jbc _CALI,7
EXTJMP @L$2
L$14:
.stabn 68,0,89,L58
L58:
bc _CALI,7
.stabn 68,0,90,L59
L59:
.stabn 224,0,0,L60
L60:
L$1:
mov a,ad_cali_p_bp-4
mov ecx,a
mov a,ad_cali_p_bp-3
mov ecx+1,a
mov a,ad_cali_p_bp-2
mov ecx+2,a
mov a,ad_cali_p_bp-1
mov ecx+3,a
ret
.STACK ad_cali_p_bp,local,5
public _ALLInt
public ALLInt_bp
.stabs "ALLInt:F15",36,0,0,_ALLInt
.section ".S1",C_CODE
.SYMDEF ".S1" INT:-1
_ALLInt:
.SYMDEF "_ALLInt" INT:-1
.stabn 192,0,0,L73
L73:
.stabn 68,0,93,L74
L74:
.stabn 68,0,94,L75
L75:
EQNEPRIB _IntVecIdx,19
jbc STATUS,zf
EXTJMP @L$64
jmp @L$62
.stabn 192,0,1,L76
L76:
.stabn 68,0,95,L77
L77:
L$64:
.stabn 68,0,97,L78
L78:
jbs _PWM2IF,4
EXTJMP @L$63
.stabn 192,0,2,L79
L79:
.stabn 68,0,98,L80
L80:
.stabn 68,0,99,L81
L81:
bc _PWM2IF,4
.stabn 68,0,100,L82
L82:
LDA _g_time1ms_cnt,0,0
add a,@1
STA _g_time1ms_cnt,0,0
.stabn 68,0,101,L83
L83:
ULTRIB _g_time1ms_cnt,0x32
jbs STATUS, cf
EXTJMP L$63
.stabn 192,0,3,L84
L84:
.stabn 68,0,102,L85
L85:
.stabn 68,0,103,L86
L86:
clr _g_time1ms_cnt
.stabn 68,0,104,L87
L87:
mov a,@1
STA _g_time50ms_flag,0,0
.stabn 68,0,105,L88
L88:
LDA _g_time50ms_cnt,0,0
add a,@1
STA _g_time50ms_cnt,0,0
.stabn 68,0,106,L89
L89:
EQNEPRIB _g_time50ms_cnt,20
jbs STATUS,zf
EXTJMP @L$63
.stabn 192,0,4,L90
L90:
.stabn 68,0,107,L91
L91:
.stabn 68,0,108,L92
L92:
clr _g_time50ms_cnt
.stabn 68,0,109,L93
L93:
mov a,@1
STA _g_time1s_flag,0,0
.stabn 68,0,110,L94
L94:
LDA _g_time1s_cnt,0,0
add a,@1
STA _g_time1s_cnt,0,0
.stabn 68,0,111,L95
L95:
EQNEPRIB _g_time1s_cnt,2
jbs STATUS,zf
EXTJMP @L$63
.stabn 192,0,5,L96
L96:
.stabn 68,0,112,L97
L97:
.stabn 68,0,113,L98
L98:
clr _g_time1s_cnt
.stabn 68,0,114,L99
L99:
mov a,@1
STA _g_time2s_flag,0,0
.stabn 68,0,115,L100
L100:
.stabn 224,0,5,L101
L101:
.stabn 68,0,116,L102
L102:
.stabn 224,0,4,L103
L103:
.stabn 68,0,117,L104
L104:
.stabn 224,0,3,L105
L105:
.stabn 68,0,118,L106
L106:
.stabn 224,0,2,L107
L107:
.stabn 68,0,119,L108
L108:
.stabn 68,0,120,L109
L109:
.stabn 224,0,1,L110
L110:
L$62:
L$63:
.stabn 68,0,121,L111
L111:
.stabn 224,0,0,L112
L112:
L$61:
reti
.STACK ALLInt_bp,local,0
public _PWM2P_l
public PWM2P_l_bp
.stabs "PWM2P_l:F15",36,0,0,_PWM2P_l
.section ".S2",C_CODE
.SYMDEF ".S2" LOWINT:5,18
_PWM2P_l:
.SYMDEF "_PWM2P_l" LOWINT:5,18
.stabn 192,0,0,L114
L114:
.stabn 68,0,124,L115
L115:
.stabn 68,0,125,L116
L116:
.cfile "D:\Program Files (x86)\ELAN\eUIDE\V2\main.c(125):"
MOV A,0x2
.stabn 68,0,125,L117
L117:
.stabn 68,0,126,L118
L118:
.stabn 224,0,0,L119
L119:
L$113:
reti
.STACK PWM2P_l_bp,local,0
public _adc_sample
public adc_sample_bp
.stabs "adc_sample:F15",36,0,0,_adc_sample
.section ".S3",C_CODE
.SYMDEF ".S3" 
_adc_sample:
.SYMDEF "_adc_sample" 
mov a,ecx
mov adc_sample_bp-4,a
mov a,ecx+1
mov adc_sample_bp-3,a
mov a,ecx+2
mov adc_sample_bp-2,a
mov a,ecx+3
mov adc_sample_bp-1,a
.stabn 192,0,0,L127
L127:
.stabn 68,0,129,L128
L128:
.stabn 68,0,130,L129
L129:
mov a,@6
STA _ADCON,0,0
.stabn 68,0,131,L130
L130:
bs _ADRUN,4
L$121:
.stabn 68,0,132,L131
L131:
L$122:
.stabn 68,0,132,L132
L132:
jbc _ADRUN,4
EXTJMP @L$121
.stabn 68,0,133,L133
L133:
LDA _ADDATA1H,0,0
STA _g_batteryvolt_h,0,0
.stabn 68,0,134,L134
L134:
LDA _ADDATA1L,0,0
STA _g_batteryvolt_l,0,0
.stabn 68,0,136,L135
L135:
mov a,@1
STA _P7CR,0,2
.stabn 68,0,137,L136
L136:
mov a,@32
STA _AISR,0,0
.stabn 68,0,138,L137
L137:
mov a,@5
STA _ADCON,0,0
.stabn 68,0,139,L138
L138:
bs _ADRUN,4
L$124:
.stabn 68,0,140,L139
L139:
L$125:
.stabn 68,0,140,L140
L140:
jbc _ADRUN,4
EXTJMP @L$124
.stabn 68,0,141,L141
L141:
LDA _ADDATA1H,0,0
STA _g_loadvolt_h,0,0
.stabn 68,0,142,L142
L142:
LDA _ADDATA1L,0,0
STA _g_loadvolt_l,0,0
.stabn 68,0,143,L143
L143:
mov a,@0
STA _P7CR,0,2
.stabn 68,0,144,L144
L144:
clr _AISR
.stabn 68,0,145,L145
L145:
.stabn 224,0,0,L146
L146:
L$120:
mov a,adc_sample_bp-4
mov ecx,a
mov a,adc_sample_bp-3
mov ecx+1,a
mov a,adc_sample_bp-2
mov ecx+2,a
mov a,adc_sample_bp-1
mov ecx+3,a
ret
.STACK adc_sample_bp,local,4
public _led_disp
public led_disp_bp
.stabs "led_disp:F15",36,0,0,_led_disp
.section ".S4",C_CODE
.SYMDEF ".S4" 
_led_disp:
.SYMDEF "_led_disp" 
mov a,ecx
mov led_disp_bp-4,a
mov a,ecx+1
mov led_disp_bp-3,a
mov a,ecx+2
mov led_disp_bp-2,a
mov a,ecx+3
mov led_disp_bp-1,a
.stabn 192,0,0,L160
L160:
.stabn 68,0,148,L161
L161:
.stabn 68,0,149,L162
L162:
ULTRIB _g_led_light_times,0x1
jbs STATUS, cf
EXTJMP L$148
.stabn 192,0,1,L163
L163:
.stabn 68,0,150,L164
L164:
.stabn 68,0,151,L165
L165:
jbs _g_led_onoff_status,3
EXTJMP @L$150
.stabn 192,0,2,L166
L166:
.stabn 68,0,152,L167
L167:
.stabn 68,0,153,L168
L168:
EQNEPRIB _g_led_light_times,255
jbc STATUS,zf
EXTJMP @L$152
.stabn 192,0,3,L169
L169:
.stabn 68,0,154,L170
L170:
.stabn 68,0,155,L171
L171:
bc _g_led_onoff_status,3
.stabn 68,0,156,L172
L172:
.stabn 224,0,3,L173
L173:
L$152:
.stabn 68,0,158,L174
L174:
clr _g_led_onoff
.stabn 68,0,159,L175
L175:
.stabn 224,0,2,L176
L176:
jmp @L$149
L$150:
.stabn 192,0,2,L177
L177:
.stabn 68,0,161,L178
L178:
.stabn 68,0,162,L179
L179:
bs _g_led_onoff_status,3
.stabn 68,0,163,L180
L180:
mov a,@1
STA _g_led_onoff,0,0
.stabn 68,0,164,L181
L181:
DECMB _g_led_light_times,0
.stabn 68,0,165,L182
L182:
.stabn 224,0,2,L183
L183:
.stabn 68,0,166,L184
L184:
.stabn 224,0,1,L185
L185:
jmp @L$149
L$148:
.stabn 192,0,1,L186
L186:
.stabn 68,0,168,L187
L187:
.stabn 68,0,169,L188
L188:
mov a,@1
STA _g_led_onoff,0,0
.stabn 68,0,170,L189
L189:
.stabn 224,0,1,L190
L190:
L$149:
.stabn 68,0,172,L191
L191:
jbs _g_led_r,0
EXTJMP @L$154
.stabn 192,0,1,L192
L192:
.stabn 68,0,173,L193
L193:
.stabn 68,0,174,L194
L194:
LDA _g_led_onoff,0,0
mov ecx,a
bc _P70,0
jbc ecx,0
bs _P70,0
.stabn 68,0,175,L195
L195:
.stabn 224,0,1,L196
L196:
L$154:
.stabn 68,0,177,L197
L197:
jbs _g_led_g,1
EXTJMP @L$156
.stabn 192,0,1,L198
L198:
.stabn 68,0,178,L199
L199:
.stabn 68,0,179,L200
L200:
LDA _g_led_onoff,0,0
mov ecx,a
bc _P71,1
jbc ecx,0
bs _P71,1
.stabn 68,0,180,L201
L201:
.stabn 224,0,1,L202
L202:
L$156:
.stabn 68,0,182,L203
L203:
jbs _g_led_b,2
EXTJMP @L$158
.stabn 192,0,1,L204
L204:
.stabn 68,0,183,L205
L205:
.stabn 68,0,184,L206
L206:
LDA _g_led_onoff,0,0
mov ecx,a
com ecx
bc _P51,1
jbc ecx,0
bs _P51,1
.stabn 68,0,185,L207
L207:
.stabn 224,0,1,L208
L208:
L$158:
.stabn 68,0,186,L209
L209:
.stabn 224,0,0,L210
L210:
L$147:
mov a,led_disp_bp-4
mov ecx,a
mov a,led_disp_bp-3
mov ecx+1,a
mov a,led_disp_bp-2
mov ecx+2,a
mov a,led_disp_bp-1
mov ecx+3,a
ret
.STACK led_disp_bp,local,4
public _led_ctrl_by_voltage
public led_ctrl_by_voltage_bp
.stabs "led_ctrl_by_voltage:F15",36,0,0,_led_ctrl_by_voltage
.section ".S5",C_CODE
.SYMDEF ".S5" 
_led_ctrl_by_voltage:
.SYMDEF "_led_ctrl_by_voltage" 
mov a,ecx
mov led_ctrl_by_voltage_bp-4,a
mov a,ecx+1
mov led_ctrl_by_voltage_bp-3,a
mov a,ecx+2
mov led_ctrl_by_voltage_bp-2,a
mov a,ecx+3
mov led_ctrl_by_voltage_bp-1,a
.stabn 192,0,0,L216
L216:
.stabn 68,0,189,L217
L217:
.stabn 68,0,190,L218
L218:
ULTRIW _g_loadvolt,0x955
jbc STATUS, cf
EXTJMP L$212
.stabn 192,0,1,L219
L219:
.stabn 68,0,191,L220
L220:
.stabn 68,0,192,L221
L221:
bs _g_led_r,0
.stabn 68,0,193,L222
L222:
bc _g_led_g,1
.stabn 68,0,194,L223
L223:
bc _g_led_b,2
.stabn 68,0,195,L224
L224:
.stabn 224,0,1,L225
L225:
jmp @L$213
L$212:
.stabn 68,0,196,L226
L226:
ULTRIW _g_loadvolt,0xa22
jbc STATUS, cf
EXTJMP L$214
.stabn 192,0,1,L227
L227:
.stabn 68,0,197,L228
L228:
.stabn 68,0,198,L229
L229:
bs _g_led_r,0
.stabn 68,0,199,L230
L230:
bc _g_led_g,1
.stabn 68,0,200,L231
L231:
bs _g_led_b,2
.stabn 68,0,201,L232
L232:
.stabn 224,0,1,L233
L233:
jmp @L$215
L$214:
.stabn 192,0,1,L234
L234:
.stabn 68,0,203,L235
L235:
.stabn 68,0,204,L236
L236:
bc _g_led_r,0
.stabn 68,0,205,L237
L237:
bc _g_led_g,1
.stabn 68,0,206,L238
L238:
bs _g_led_b,2
.stabn 68,0,207,L239
L239:
.stabn 224,0,1,L240
L240:
L$215:
L$213:
.stabn 68,0,209,L241
L241:
bs _g_led_onoff_status,3
.stabn 68,0,210,L242
L242:
mov a,@255
STA _g_led_light_times,0,0
.stabn 68,0,211,L243
L243:
.stabn 224,0,0,L244
L244:
L$211:
mov a,led_ctrl_by_voltage_bp-4
mov ecx,a
mov a,led_ctrl_by_voltage_bp-3
mov ecx+1,a
mov a,led_ctrl_by_voltage_bp-2
mov ecx+2,a
mov a,led_ctrl_by_voltage_bp-1
mov ecx+3,a
ret
.STACK led_ctrl_by_voltage_bp,local,4
public _reserve_led_ocuppied
public reserve_led_ocuppied_bp
.stabs "reserve_led_ocuppied:F15",36,0,0,_reserve_led_ocuppied
.section ".S6",C_CODE
.SYMDEF ".S6" 
_reserve_led_ocuppied:
.SYMDEF "_reserve_led_ocuppied" 
mov a,ecx
mov reserve_led_ocuppied_bp-4,a
mov a,ecx+1
mov reserve_led_ocuppied_bp-3,a
mov a,ecx+2
mov reserve_led_ocuppied_bp-2,a
mov a,ecx+3
mov reserve_led_ocuppied_bp-1,a
.stabn 192,0,0,L248
L248:
.stabn 68,0,214,L249
L249:
.stabn 68,0,215,L250
L250:
jbc _g_led_occupied,7
EXTJMP @L$246
.stabn 192,0,1,L251
L251:
.stabn 68,0,216,L252
L252:
.stabn 68,0,217,L253
L253:
bs _g_led_occupied,7
.stabn 68,0,218,L254
L254:
.stabn 224,0,1,L255
L255:
jmp @L$247
L$246:
.stabn 192,0,1,L256
L256:
.stabn 68,0,220,L257
L257:
.stabn 68,0,221,L258
L258:
bc _g_led_occupied,7
.stabn 68,0,222,L259
L259:
.stabn 224,0,1,L260
L260:
L$247:
.stabn 68,0,223,L261
L261:
.stabn 224,0,0,L262
L262:
L$245:
mov a,reserve_led_ocuppied_bp-4
mov ecx,a
mov a,reserve_led_ocuppied_bp-3
mov ecx+1,a
mov a,reserve_led_ocuppied_bp-2
mov ecx+2,a
mov a,reserve_led_ocuppied_bp-1
mov ecx+3,a
ret
.STACK reserve_led_ocuppied_bp,local,4
public _mcu_init
public mcu_init_bp
.stabs "mcu_init:F15",36,0,0,_mcu_init
.section ".S7",C_CODE
.SYMDEF ".S7" 
_mcu_init:
.SYMDEF "_mcu_init" 
mov a,ecx
mov mcu_init_bp-4,a
mov a,ecx+1
mov mcu_init_bp-3,a
mov a,ecx+2
mov mcu_init_bp-2,a
mov a,ecx+3
mov mcu_init_bp-1,a
.stabn 192,0,0,L286
L286:
.stabn 68,0,226,L287
L287:
.stabn 68,0,228,L288
L288:
.cfile "D:\Program Files (x86)\ELAN\eUIDE\V2\main.c(228):"
wdtc
.stabn 68,0,228,L289
L289:
.stabn 68,0,229,L290
L290:
.cfile "D:\Program Files (x86)\ELAN\eUIDE\V2\main.c(229):"
disi
.stabn 68,0,229,L291
L291:
.stabn 68,0,230,L292
L292:
mov a,@127
STA _SCR,0,0
.stabn 68,0,232,L293
L293:
mov a,@0
STA _P6CR,0,2
.stabn 68,0,233,L294
L294:
mov a,@34
STA _TMRCON,0,0
.stabn 68,0,234,L295
L295:
mov a,@1
STA _PWMCON,0,0
.stabn 68,0,235,L296
L296:
mov a,@99
STA _PRD1,0,0
L$264:
.stabn 192,0,1,L297
L297:
.stabn 68,0,236,L298
L298:
.stabn 68,0,236,L299
L299:
clr _DT1
.stabn 68,0,236,L300
L300:
bs _T1EN,6
.stabn 68,0,236,L301
L301:
.stabn 224,0,1,L302
L302:
L$265:
.stabn 68,0,236,L303
L303:
.stabn 68,0,237,L304
L304:
mov a,@249
STA _PRD2,0,0
.stabn 68,0,238,L305
L305:
mov a,@16
STA _IMR,0,2
.stabn 68,0,239,L306
L306:
bs _T2EN,7
.stabn 68,0,240,L307
L307:
.cfile "D:\Program Files (x86)\ELAN\eUIDE\V2\main.c(240):"
eni
.stabn 68,0,240,L308
L308:
.stabn 68,0,242,L309
L309:
mov a,@33
STA _P5CR,0,2
.stabn 68,0,243,L310
L310:
mov a,@252
STA _P5PHCR,0,2
.stabn 68,0,244,L311
L311:
mov a,@64
STA _AISR,0,0
.stabn 68,0,246,L312
L312:
mov a,@2
STA _ISR1,0,0
.stabn 68,0,247,L313
L313:
LDA _PORT5,0,0
STA _PORT5,0,0
.stabn 68,0,248,L314
L314:
bc _IDLE,4
.stabn 68,0,250,L315
L315:
mov a,@1
STA _P7CR,0,2
.stabn 68,0,251,L316
L316:
mov a,@32
STA _AISR,0,0
.stabn 68,0,252,L317
L317:
mov a,@13
STA _ADCON,0,0
.stabn 68,0,253,L318
L318:
call _ad_cali_p
L$267:
.stabn 192,0,1,L319
L319:
.stabn 68,0,256,L320
L320:
.stabn 68,0,257,L321
L321:
bs _ADRUN,4
L$270:
.stabn 68,0,258,L322
L322:
L$271:
.stabn 68,0,258,L323
L323:
jbc _ADRUN,4
EXTJMP @L$270
.stabn 68,0,259,L324
L324:
LDA _ADDATA1H,0,0
STA _g_batteryvolt_h,0,0
.stabn 68,0,260,L325
L325:
LDA _ADDATA1L,0,0
STA _g_batteryvolt_l,0,0
.stabn 68,0,261,L326
L326:
.stabn 224,0,1,L327
L327:
L$268:
.stabn 68,0,262,L328
L328:
ULTRIW _g_batteryvolt,0x888
jbs STATUS, cf
EXTJMP L$267
.stabn 68,0,264,L329
L329:
bs _g_led_r,0
.stabn 68,0,265,L330
L330:
bs _g_led_g,1
.stabn 68,0,266,L331
L331:
bs _g_led_b,2
.stabn 68,0,267,L332
L332:
bc _g_led_onoff_status,3
.stabn 68,0,268,L333
L333:
bc _g_led_occupied,7
.stabn 68,0,269,L334
L334:
mov a,@3
STA _g_led_light_times,0,0
L$273:
.stabn 192,0,1,L335
L335:
.stabn 68,0,272,L336
L336:
.stabn 68,0,273,L337
L337:
EQNEPRIB _g_time1s_flag,1
jbs STATUS,zf
EXTJMP @L$276
.stabn 192,0,2,L338
L338:
.stabn 68,0,274,L339
L339:
.stabn 68,0,275,L340
L340:
clr _g_time1s_flag
.stabn 68,0,276,L341
L341:
call _led_disp
.stabn 68,0,277,L342
L342:
.stabn 224,0,2,L343
L343:
L$276:
.stabn 68,0,278,L344
L344:
.stabn 224,0,1,L345
L345:
L$274:
.stabn 68,0,278,L346
L346:
EQNEPRIB _g_led_light_times,0
jbc STATUS,zf
EXTJMP @L$273
.stabn 68,0,280,L347
L347:
mov a,@0
jbc _P50,0
add a,@1
mov ecx,a
mov a,ecx
STA _g_keyval,0,0
.stabn 68,0,281,L348
L348:
EQNEPRIB _g_keyval,0
jbs STATUS,zf
EXTJMP @L$278
.stabn 192,0,1,L349
L349:
.stabn 68,0,282,L350
L350:
L$280:
.stabn 192,0,2,L351
L351:
.stabn 68,0,283,L352
L352:
.stabn 68,0,283,L353
L353:
mov a,@100
STA _DT1,0,0
.stabn 68,0,283,L354
L354:
bs _T1EN,6
.stabn 68,0,283,L355
L355:
.stabn 224,0,2,L356
L356:
L$281:
.stabn 68,0,283,L357
L357:
.stabn 68,0,284,L358
L358:
mov a,@1
STA _g_cur_state,0,0
.stabn 68,0,285,L359
L359:
.stabn 224,0,1,L360
L360:
jmp @L$279
L$278:
.stabn 192,0,1,L361
L361:
.stabn 68,0,287,L362
L362:
L$283:
.stabn 192,0,2,L363
L363:
.stabn 68,0,288,L364
L364:
.stabn 68,0,288,L365
L365:
clr _DT1
.stabn 68,0,288,L366
L366:
bs _T1EN,6
.stabn 68,0,288,L367
L367:
.stabn 224,0,2,L368
L368:
L$284:
.stabn 68,0,288,L369
L369:
.stabn 68,0,289,L370
L370:
mov a,@8
STA _g_cur_state,0,0
.stabn 68,0,290,L371
L371:
.stabn 224,0,1,L372
L372:
L$279:
.stabn 68,0,292,L373
L373:
clr _g_fault_state
.stabn 68,0,293,L374
L374:
.stabn 224,0,0,L375
L375:
L$263:
mov a,mcu_init_bp-4
mov ecx,a
mov a,mcu_init_bp-3
mov ecx+1,a
mov a,mcu_init_bp-2
mov ecx+2,a
mov a,mcu_init_bp-1
mov ecx+3,a
ret
.STACK mcu_init_bp,local,4
public _main
public main_bp
.stabs "main:F15",36,0,0,_main
.section ".S8",C_CODE
.SYMDEF ".S8" 
_main:
.SYMDEF "_main" 
.stabs "temp_keyval:10",128,0,0,main_bp-1
.stabs "adctest_times:10",128,0,0,main_bp-2
.stabs "duty_val:10",128,0,0,main_bp-3
.stabn 192,0,0,L492
L492:
.stabn 68,0,296,L493
L493:
.stabn 68,0,297,L494
L494:
mov a,@1
STA main_bp-1,0,0
.stabn 68,0,298,L495
L495:
mov a,@50
STA main_bp-3,0,0
.stabn 68,0,299,L496
L496:
clr main_bp-2
.stabn 68,0,301,L497
L497:
call _mcu_init
jmp @L$378
L$377:
.stabn 192,0,1,L498
L498:
.stabn 68,0,304,L499
L499:
.stabn 68,0,305,L500
L500:
call _adc_sample
.stabn 68,0,307,L501
L501:
LDA _g_cur_state,0,0
mov ecx,a
EQNEPRIB ecx,1
jbc STATUS,zf
EXTJMP @L$382
EQNEPRIB ecx,2
jbc STATUS,zf
EXTJMP @L$417
EQNEPRIB ecx,4
jbc STATUS,zf
EXTJMP @L$449
EQNEPRIB ecx,8
jbc STATUS,zf
EXTJMP @L$461
jmp @L$380
.stabn 192,0,2,L502
L502:
.stabn 68,0,308,L503
L503:
L$382:
.stabn 68,0,310,L504
L504:
EQNEPRIB _g_keypress_maxtime,0
jbc STATUS, zf
EXTJMP L$383
.stabn 192,0,3,L505
L505:
.stabn 68,0,311,L506
L506:
.stabn 68,0,312,L507
L507:
call _led_ctrl_by_voltage
.stabn 68,0,314,L508
L508:
UGTRIB _g_keypress_maxtime,0xc8
jbc STATUS, cf
EXTJMP L$385
.stabn 192,0,4,L509
L509:
.stabn 68,0,315,L510
L510:
L$387:
.stabn 192,0,5,L511
L511:
.stabn 68,0,316,L512
L512:
.stabn 68,0,316,L513
L513:
clr _DT1
.stabn 68,0,316,L514
L514:
bs _T1EN,6
.stabn 68,0,316,L515
L515:
.stabn 224,0,5,L516
L516:
L$388:
.stabn 68,0,316,L517
L517:
.stabn 68,0,317,L518
L518:
jbc _g_led_occupied,7
EXTJMP @L$390
.stabn 192,0,5,L519
L519:
.stabn 68,0,318,L520
L520:
.stabn 68,0,319,L521
L521:
bs _g_led_occupied,7
.stabn 68,0,320,L522
L522:
mov a,@8
STA _g_led_light_times,0,0
.stabn 68,0,321,L523
L523:
.stabn 224,0,5,L524
L524:
L$390:
.stabn 68,0,323,L525
L525:
EQNEPRIB _g_led_light_times,0
jbs STATUS,zf
EXTJMP @L$381
.stabn 192,0,5,L526
L526:
.stabn 68,0,324,L527
L527:
.stabn 68,0,325,L528
L528:
bc _g_led_occupied,7
.stabn 68,0,326,L529
L529:
.stabn 224,0,5,L530
L530:
.stabn 68,0,328,L531
L531:
jmp @L$381
.stabn 68,0,329,L532
L532:
.stabn 224,0,4,L533
L533:
L$385:
.stabn 68,0,331,L534
L534:
ULTRIW _g_loadvolt,0x400
jbc STATUS, cf
EXTJMP L$394
.stabn 192,0,4,L535
L535:
.stabn 68,0,332,L536
L536:
L$396:
.stabn 192,0,5,L537
L537:
.stabn 68,0,333,L538
L538:
.stabn 68,0,333,L539
L539:
mov a,@100
STA _DT1,0,0
.stabn 68,0,333,L540
L540:
bs _T1EN,6
.stabn 68,0,333,L541
L541:
.stabn 224,0,5,L542
L542:
L$397:
.stabn 68,0,333,L543
L543:
.stabn 68,0,334,L544
L544:
LDA main_bp-2,0,0
add a,@1
STA main_bp-2,0,0
.stabn 68,0,335,L545
L545:
ULTRIB main_bp-2,0x3
jbs STATUS, cf
EXTJMP L$399
.stabn 192,0,5,L546
L546:
.stabn 68,0,336,L547
L547:
.stabn 68,0,337,L548
L548:
clr main_bp-2
.stabn 68,0,338,L549
L549:
call _reserve_led_ocuppied
.stabn 68,0,339,L550
L550:
mov a,@8
STA _g_fault_state,0,0
.stabn 68,0,340,L551
L551:
mov a,@2
STA _g_next_state,0,0
.stabn 68,0,342,L552
L552:
jmp @L$381
.stabn 68,0,343,L553
L553:
.stabn 224,0,5,L554
L554:
L$399:
.stabn 68,0,344,L555
L555:
.stabn 224,0,4,L556
L556:
L$394:
.stabn 68,0,346,L557
L557:
ULTRIW _g_batteryvolt,0x888
jbc STATUS, cf
EXTJMP L$401
.stabn 192,0,4,L558
L558:
.stabn 68,0,347,L559
L559:
.stabn 68,0,348,L560
L560:
LDA main_bp-2,0,0
add a,@1
STA main_bp-2,0,0
.stabn 68,0,349,L561
L561:
ULTRIB main_bp-2,0x3
jbs STATUS, cf
EXTJMP L$381
.stabn 192,0,5,L562
L562:
.stabn 68,0,350,L563
L563:
.stabn 68,0,351,L564
L564:
clr main_bp-2
.stabn 68,0,352,L565
L565:
call _reserve_led_ocuppied
.stabn 68,0,353,L566
L566:
mov a,@4
STA _g_fault_state,0,0
.stabn 68,0,354,L567
L567:
mov a,@2
STA _g_next_state,0,0
.stabn 68,0,355,L568
L568:
.stabn 224,0,5,L569
L569:
.stabn 68,0,356,L570
L570:
.stabn 224,0,4,L571
L571:
jmp @L$381
L$401:
.stabn 192,0,4,L572
L572:
.stabn 68,0,358,L573
L573:
.stabn 68,0,359,L574
L574:
ULTRIW _g_batteryvolt,0x9dd
jbs STATUS, cf
EXTJMP L$405
.stabn 192,0,5,L575
L575:
.stabn 68,0,360,L576
L576:
.stabn 68,0,361,L577
L577:
UGTRIW _g_loadvolt,0xa00
jbc STATUS, cf
EXTJMP L$407
.stabn 192,0,6,L578
L578:
.stabn 68,0,362,L579
L579:
.stabn 68,0,363,L580
L580:
SUBMIB main_bp-3,2,0
.stabn 68,0,364,L581
L581:
.stabn 224,0,6,L582
L582:
jmp @L$408
L$407:
.stabn 68,0,365,L583
L583:
ULTRIW _g_loadvolt,0x9bb
jbc STATUS, cf
EXTJMP L$409
.stabn 192,0,6,L584
L584:
.stabn 68,0,366,L585
L585:
.stabn 68,0,367,L586
L586:
LDA main_bp-3,0,0
add a,@2
STA main_bp-3,0,0
.stabn 68,0,368,L587
L587:
.stabn 224,0,6,L588
L588:
L$409:
L$408:
L$411:
.stabn 192,0,6,L589
L589:
.stabn 68,0,370,L590
L590:
.stabn 68,0,370,L591
L591:
LDA main_bp-3,0,0
STA _DT1,0,0
.stabn 68,0,370,L592
L592:
bs _T1EN,6
.stabn 68,0,370,L593
L593:
.stabn 224,0,6,L594
L594:
.stabn 68,0,370,L595
L595:
.stabn 68,0,371,L596
L596:
.stabn 224,0,5,L597
L597:
jmp @L$406
L$405:
.stabn 192,0,5,L598
L598:
.stabn 68,0,373,L599
L599:
L$414:
.stabn 192,0,6,L600
L600:
.stabn 68,0,374,L601
L601:
.stabn 68,0,374,L602
L602:
mov a,@100
STA _DT1,0,0
.stabn 68,0,374,L603
L603:
bs _T1EN,6
.stabn 68,0,374,L604
L604:
.stabn 224,0,6,L605
L605:
L$415:
.stabn 68,0,374,L606
L606:
.stabn 68,0,375,L607
L607:
.stabn 224,0,5,L608
L608:
L$406:
.stabn 68,0,377,L609
L609:
mov a,@255
STA _g_led_light_times,0,0
.stabn 68,0,378,L610
L610:
.stabn 224,0,4,L611
L611:
.stabn 68,0,379,L612
L612:
.stabn 224,0,3,L613
L613:
jmp @L$381
L$383:
.stabn 192,0,3,L614
L614:
.stabn 68,0,381,L615
L615:
.stabn 68,0,382,L616
L616:
mov a,@1
STA _P5CR,0,2
.stabn 68,0,383,L617
L617:
clr _AISR
.stabn 68,0,384,L618
L618:
call _reserve_led_ocuppied
.stabn 68,0,385,L619
L619:
mov a,@8
STA _g_next_state,0,0
.stabn 68,0,386,L620
L620:
.stabn 224,0,3,L621
L621:
.stabn 68,0,388,L622
L622:
jmp @L$381
L$417:
L$418:
.stabn 192,0,3,L623
L623:
.stabn 68,0,391,L624
L624:
.stabn 68,0,391,L625
L625:
clr _DT1
.stabn 68,0,391,L626
L626:
bs _T1EN,6
.stabn 68,0,391,L627
L627:
.stabn 224,0,3,L628
L628:
L$419:
.stabn 68,0,391,L629
L629:
.stabn 68,0,393,L630
L630:
EQNEPRIB _g_fault_state,2
jbs STATUS,zf
EXTJMP @L$421
.stabn 192,0,3,L631
L631:
.stabn 68,0,394,L632
L632:
.stabn 68,0,395,L633
L633:
jbc _g_led_occupied,7
EXTJMP @L$423
.stabn 192,0,4,L634
L634:
.stabn 68,0,396,L635
L635:
.stabn 68,0,397,L636
L636:
bc _g_led_r,0
.stabn 68,0,398,L637
L637:
bc _g_led_g,1
.stabn 68,0,399,L638
L638:
bs _g_led_b,2
.stabn 68,0,400,L639
L639:
bs _g_led_onoff_status,3
.stabn 68,0,401,L640
L640:
bs _g_led_occupied,7
.stabn 68,0,402,L641
L641:
mov a,@20
STA _g_led_light_times,0,0
.stabn 68,0,403,L642
L642:
.stabn 224,0,4,L643
L643:
L$423:
.stabn 68,0,405,L644
L644:
EQNEPRIB _g_led_light_times,0
jbs STATUS,zf
EXTJMP @L$381
.stabn 192,0,4,L645
L645:
.stabn 68,0,406,L646
L646:
.stabn 68,0,407,L647
L647:
bc _g_led_occupied,7
.stabn 68,0,408,L648
L648:
mov a,@4
STA _g_next_state,0,0
.stabn 68,0,409,L649
L649:
.stabn 224,0,4,L650
L650:
.stabn 68,0,410,L651
L651:
.stabn 224,0,3,L652
L652:
jmp @L$381
L$421:
.stabn 68,0,411,L653
L653:
EQNEPRIB _g_fault_state,4
jbs STATUS,zf
EXTJMP @L$427
.stabn 192,0,3,L654
L654:
.stabn 68,0,412,L655
L655:
.stabn 68,0,413,L656
L656:
jbc _g_led_occupied,7
EXTJMP @L$429
.stabn 192,0,4,L657
L657:
.stabn 68,0,414,L658
L658:
.stabn 68,0,415,L659
L659:
bs _g_led_r,0
.stabn 68,0,416,L660
L660:
bc _g_led_g,1
.stabn 68,0,417,L661
L661:
bc _g_led_b,2
.stabn 68,0,418,L662
L662:
bs _g_led_onoff_status,3
.stabn 68,0,419,L663
L663:
bs _g_led_occupied,7
.stabn 68,0,420,L664
L664:
mov a,@10
STA _g_led_light_times,0,0
.stabn 68,0,421,L665
L665:
.stabn 224,0,4,L666
L666:
L$429:
.stabn 68,0,423,L667
L667:
EQNEPRIB _g_led_light_times,0
jbs STATUS,zf
EXTJMP @L$381
.stabn 192,0,4,L668
L668:
.stabn 68,0,424,L669
L669:
.stabn 68,0,425,L670
L670:
UGTRIW _g_batteryvolt,0x888
jbc STATUS, cf
EXTJMP L$381
.stabn 192,0,5,L671
L671:
.stabn 68,0,426,L672
L672:
.stabn 68,0,427,L673
L673:
bc _g_led_occupied,7
.stabn 68,0,428,L674
L674:
mov a,@1
STA _g_next_state,0,0
.stabn 68,0,429,L675
L675:
.stabn 224,0,5,L676
L676:
.stabn 68,0,430,L677
L677:
.stabn 224,0,4,L678
L678:
.stabn 68,0,431,L679
L679:
.stabn 224,0,3,L680
L680:
jmp @L$381
L$427:
.stabn 68,0,432,L681
L681:
EQNEPRIB _g_fault_state,8
jbs STATUS,zf
EXTJMP @L$435
.stabn 192,0,3,L682
L682:
.stabn 68,0,433,L683
L683:
.stabn 68,0,434,L684
L684:
jbc _g_led_occupied,7
EXTJMP @L$437
.stabn 192,0,4,L685
L685:
.stabn 68,0,435,L686
L686:
.stabn 68,0,436,L687
L687:
bs _g_led_r,0
.stabn 68,0,437,L688
L688:
bs _g_led_g,1
.stabn 68,0,438,L689
L689:
bs _g_led_b,2
.stabn 68,0,439,L690
L690:
bs _g_led_onoff_status,3
.stabn 68,0,440,L691
L691:
bs _g_led_occupied,7
.stabn 68,0,441,L692
L692:
mov a,@3
STA _g_led_light_times,0,0
.stabn 68,0,442,L693
L693:
.stabn 224,0,4,L694
L694:
L$437:
.stabn 68,0,444,L695
L695:
EQNEPRIB _g_led_light_times,0
jbs STATUS,zf
EXTJMP @L$381
.stabn 192,0,4,L696
L696:
.stabn 68,0,445,L697
L697:
.stabn 68,0,446,L698
L698:
bc _g_led_occupied,7
.stabn 68,0,447,L699
L699:
mov a,@1
STA _g_next_state,0,0
.stabn 68,0,448,L700
L700:
.stabn 224,0,4,L701
L701:
.stabn 68,0,449,L702
L702:
.stabn 224,0,3,L703
L703:
jmp @L$381
L$435:
.stabn 68,0,450,L704
L704:
EQNEPRIB _g_fault_state,16
jbs STATUS,zf
EXTJMP @L$441
.stabn 192,0,3,L705
L705:
.stabn 68,0,451,L706
L706:
.stabn 68,0,452,L707
L707:
jbc _g_led_occupied,7
EXTJMP @L$443
.stabn 192,0,4,L708
L708:
.stabn 68,0,453,L709
L709:
.stabn 68,0,454,L710
L710:
bs _g_led_r,0
.stabn 68,0,455,L711
L711:
bs _g_led_g,1
.stabn 68,0,456,L712
L712:
bs _g_led_b,2
.stabn 68,0,457,L713
L713:
bs _g_led_onoff_status,3
.stabn 68,0,458,L714
L714:
bs _g_led_occupied,7
.stabn 68,0,459,L715
L715:
mov a,@6
STA _g_led_light_times,0,0
.stabn 68,0,460,L716
L716:
.stabn 224,0,4,L717
L717:
L$443:
.stabn 68,0,462,L718
L718:
EQNEPRIB _g_led_light_times,0
jbs STATUS,zf
EXTJMP @L$381
.stabn 192,0,4,L719
L719:
.stabn 68,0,463,L720
L720:
.stabn 68,0,464,L721
L721:
UGTRIW _g_batteryvolt,0x888
jbc STATUS, cf
EXTJMP L$381
.stabn 192,0,5,L722
L722:
.stabn 68,0,465,L723
L723:
.stabn 68,0,466,L724
L724:
bc _g_led_occupied,7
.stabn 68,0,467,L725
L725:
mov a,@4
STA _g_next_state,0,0
.stabn 68,0,468,L726
L726:
.stabn 224,0,5,L727
L727:
.stabn 68,0,469,L728
L728:
.stabn 224,0,4,L729
L729:
.stabn 68,0,470,L730
L730:
.stabn 224,0,3,L731
L731:
jmp @L$381
L$441:
.stabn 192,0,3,L732
L732:
.stabn 68,0,472,L733
L733:
.stabn 68,0,473,L734
L734:
call _reserve_led_ocuppied
.stabn 68,0,474,L735
L735:
mov a,@1
STA _g_next_state,0,0
.stabn 68,0,475,L736
L736:
.stabn 224,0,3,L737
L737:
.stabn 68,0,477,L738
L738:
jmp @L$381
L$449:
.stabn 68,0,480,L739
L739:
ULTRIW _g_loadvolt,0x400
jbc STATUS, cf
EXTJMP L$450
.stabn 192,0,3,L740
L740:
.stabn 68,0,481,L741
L741:
.stabn 68,0,482,L742
L742:
LDA main_bp-2,0,0
add a,@1
STA main_bp-2,0,0
.stabn 68,0,483,L743
L743:
ULTRIB main_bp-2,0x3
jbs STATUS, cf
EXTJMP L$451
.stabn 192,0,4,L744
L744:
.stabn 68,0,484,L745
L745:
.stabn 68,0,485,L746
L746:
clr main_bp-2
.stabn 68,0,486,L747
L747:
mov a,@16
STA _g_fault_state,0,0
.stabn 68,0,487,L748
L748:
mov a,@2
STA _g_next_state,0,0
.stabn 68,0,488,L749
L749:
.stabn 224,0,4,L750
L750:
.stabn 68,0,489,L751
L751:
.stabn 224,0,3,L752
L752:
jmp @L$451
L$450:
.stabn 68,0,490,L753
L753:
UGTRIW _g_loadvolt,0xb11
jbc STATUS, cf
EXTJMP L$454
.stabn 192,0,3,L754
L754:
.stabn 68,0,491,L755
L755:
.stabn 68,0,492,L756
L756:
LDA main_bp-2,0,0
add a,@1
STA main_bp-2,0,0
.stabn 68,0,493,L757
L757:
ULTRIB main_bp-2,0x3
jbs STATUS, cf
EXTJMP L$455
.stabn 192,0,4,L758
L758:
.stabn 68,0,494,L759
L759:
.stabn 68,0,495,L760
L760:
clr main_bp-2
.stabn 68,0,496,L761
L761:
mov a,@2
STA _g_fault_state,0,0
.stabn 68,0,497,L762
L762:
mov a,@2
STA _g_next_state,0,0
.stabn 68,0,498,L763
L763:
.stabn 224,0,4,L764
L764:
.stabn 68,0,499,L765
L765:
.stabn 224,0,3,L766
L766:
jmp @L$455
L$454:
.stabn 192,0,3,L767
L767:
.stabn 68,0,501,L768
L768:
L$458:
.stabn 192,0,4,L769
L769:
.stabn 68,0,502,L770
L770:
.stabn 68,0,502,L771
L771:
mov a,@100
STA _DT1,0,0
.stabn 68,0,502,L772
L772:
bs _T1EN,6
.stabn 68,0,502,L773
L773:
.stabn 224,0,4,L774
L774:
L$459:
.stabn 68,0,502,L775
L775:
.stabn 68,0,503,L776
L776:
.stabn 224,0,3,L777
L777:
L$455:
L$451:
.stabn 68,0,505,L778
L778:
call _led_ctrl_by_voltage
.stabn 68,0,507,L779
L779:
jmp @L$381
L$461:
.stabn 68,0,510,L780
L780:
.cfile "D:\Program Files (x86)\ELAN\eUIDE\V2\main.c(510):"
slep
.stabn 68,0,510,L781
L781:
.stabn 68,0,511,L782
L782:
mov a,@33
STA _P5CR,0,2
.stabn 68,0,512,L783
L783:
mov a,@64
STA _AISR,0,0
.stabn 68,0,513,L784
L784:
ULTRIW _g_loadvolt,0x155
jbc STATUS, cf
EXTJMP L$462
.stabn 192,0,3,L785
L785:
.stabn 68,0,514,L786
L786:
.stabn 68,0,515,L787
L787:
mov a,@1
STA _g_next_state,0,0
.stabn 68,0,516,L788
L788:
.stabn 224,0,3,L789
L789:
jmp @L$381
L$462:
.stabn 68,0,517,L790
L790:
LDA _g_loadvolt,0,0
mov ecx,a
LDA _g_loadvolt,1,0
mov ecx+1,a
UGTRIW ecx,0xb33
jbs STATUS, cf
EXTJMP L$466
ULTRIW ecx,0x800
jbc STATUS, cf
EXTJMP L$464
L$466:
.stabn 192,0,3,L791
L791:
.stabn 68,0,518,L792
L792:
.stabn 68,0,519,L793
L793:
call _reserve_led_ocuppied
.stabn 68,0,520,L794
L794:
mov a,@1
STA _g_fault_state,0,0
.stabn 68,0,521,L795
L795:
mov a,@2
STA _g_next_state,0,0
.stabn 68,0,522,L796
L796:
.stabn 224,0,3,L797
L797:
jmp @L$381
L$464:
.stabn 192,0,3,L798
L798:
.stabn 68,0,524,L799
L799:
.stabn 68,0,525,L800
L800:
jbc _g_led_occupied,7
EXTJMP @L$467
.stabn 192,0,4,L801
L801:
.stabn 68,0,526,L802
L802:
.stabn 68,0,527,L803
L803:
bs _g_led_r,0
.stabn 68,0,528,L804
L804:
bc _g_led_g,1
.stabn 68,0,529,L805
L805:
bs _g_led_b,2
.stabn 68,0,530,L806
L806:
bs _g_led_onoff_status,3
.stabn 68,0,531,L807
L807:
bs _g_led_occupied,7
.stabn 68,0,532,L808
L808:
mov a,@6
STA _g_led_light_times,0,0
.stabn 68,0,533,L809
L809:
.stabn 224,0,4,L810
L810:
L$467:
.stabn 68,0,535,L811
L811:
EQNEPRIB _g_led_light_times,0
jbs STATUS,zf
EXTJMP @L$381
.stabn 192,0,4,L812
L812:
.stabn 68,0,536,L813
L813:
.stabn 68,0,537,L814
L814:
bs _g_led_occupied,7
.stabn 68,0,538,L815
L815:
mov a,@4
STA _g_next_state,0,0
.stabn 68,0,539,L816
L816:
.stabn 224,0,4,L817
L817:
.stabn 68,0,540,L818
L818:
.stabn 224,0,3,L819
L819:
.stabn 68,0,541,L820
L820:
jmp @L$381
L$380:
.stabn 68,0,544,L821
L821:
clr _g_next_state
.stabn 68,0,545,L822
L822:
.stabn 68,0,546,L823
L823:
.stabn 224,0,2,L824
L824:
L$381:
.stabn 68,0,548,L825
L825:
EQNEPRIB _g_time50ms_flag,1
jbs STATUS,zf
EXTJMP @L$471
.stabn 192,0,2,L826
L826:
.stabn 68,0,549,L827
L827:
.stabn 68,0,550,L828
L828:
clr _g_time50ms_flag
.stabn 68,0,551,L829
L829:
mov a,@0
jbc _P50,0
add a,@1
mov ecx,a
mov a,ecx
STA _g_keyval,0,0
.stabn 68,0,553,L830
L830:
LDA _g_keyval,0,0
mov ecx,a
LDA main_bp-1,0,0
mov eax,a
EQNEPRRB eax,ecx
jbs STATUS,zf
EXTJMP @L$473
EQNEPRIB ecx,0
jbs STATUS,zf
EXTJMP @L$473
.stabn 192,0,3,L831
L831:
.stabn 68,0,554,L832
L832:
.stabn 68,0,555,L833
L833:
UGTRIW _g_loadvolt,0x888
jbc STATUS, cf
EXTJMP L$474
.stabn 192,0,4,L834
L834:
.stabn 68,0,556,L835
L835:
.stabn 68,0,557,L836
L836:
LDA _g_keypress_maxtime,0,0
add a,@1
STA _g_keypress_maxtime,0,0
.stabn 68,0,558,L837
L837:
.stabn 224,0,4,L838
L838:
.stabn 68,0,559,L839
L839:
.stabn 224,0,3,L840
L840:
jmp @L$474
L$473:
.stabn 68,0,560,L841
L841:
EQNEPRIB main_bp-1,0
jbs STATUS,zf
EXTJMP @L$477
EQNEPRIB _g_keyval,1
jbs STATUS,zf
EXTJMP @L$477
ULTRIB _g_keypress_maxtime,0x28
jbc STATUS, cf
EXTJMP L$477
.stabn 192,0,3,L842
L842:
.stabn 68,0,561,L843
L843:
.stabn 68,0,562,L844
L844:
clr _g_keypress_maxtime
.stabn 68,0,563,L845
L845:
EQNEPRIB _g_keypress_times,0
jbs STATUS,zf
EXTJMP @L$479
.stabn 192,0,4,L846
L846:
.stabn 68,0,564,L847
L847:
.stabn 68,0,565,L848
L848:
clr _g_time2s_flag
.stabn 68,0,566,L849
L849:
.stabn 224,0,4,L850
L850:
L$479:
.stabn 68,0,568,L851
L851:
LDA _g_keypress_times,0,0
add a,@1
STA _g_keypress_times,0,0
.stabn 68,0,570,L852
L852:
EQNEPRIB _g_time2s_flag,1
jbs STATUS,zf
EXTJMP @L$481
.stabn 192,0,4,L853
L853:
.stabn 68,0,571,L854
L854:
.stabn 68,0,572,L855
L855:
ULTRIB _g_keypress_times,0x5
jbs STATUS, cf
EXTJMP L$483
.stabn 192,0,5,L856
L856:
.stabn 68,0,573,L857
L857:
.stabn 68,0,574,L858
L858:
clr _g_keypress_times
L$485:
.stabn 192,0,6,L859
L859:
.stabn 68,0,576,L860
L860:
.stabn 68,0,576,L861
L861:
clr _DT1
.stabn 68,0,576,L862
L862:
bs _T1EN,6
.stabn 68,0,576,L863
L863:
.stabn 224,0,6,L864
L864:
L$486:
.stabn 68,0,576,L865
L865:
.stabn 68,0,578,L866
L866:
EQNEPRIB _g_cur_state,0
jbs STATUS,zf
EXTJMP @L$488
.stabn 192,0,6,L867
L867:
.stabn 68,0,579,L868
L868:
.stabn 68,0,580,L869
L869:
mov a,@1
STA _g_next_state,0,0
.stabn 68,0,581,L870
L870:
.stabn 224,0,6,L871
L871:
jmp @L$489
L$488:
.stabn 192,0,6,L872
L872:
.stabn 68,0,583,L873
L873:
.stabn 68,0,584,L874
L874:
clr _g_next_state
.stabn 68,0,585,L875
L875:
.stabn 224,0,6,L876
L876:
L$489:
.stabn 68,0,586,L877
L877:
.stabn 224,0,5,L878
L878:
L$483:
.stabn 68,0,587,L879
L879:
.stabn 224,0,4,L880
L880:
L$481:
.stabn 68,0,588,L881
L881:
.stabn 224,0,3,L882
L882:
L$477:
L$474:
.stabn 68,0,590,L883
L883:
LDA _g_keyval,0,0
STA main_bp-1,0,0
.stabn 68,0,591,L884
L884:
.stabn 224,0,2,L885
L885:
L$471:
.stabn 68,0,593,L886
L886:
EQNEPRIB _g_time1s_flag,1
jbs STATUS,zf
EXTJMP @L$490
.stabn 192,0,2,L887
L887:
.stabn 68,0,594,L888
L888:
.stabn 68,0,595,L889
L889:
clr _g_time1s_flag
.stabn 68,0,596,L890
L890:
call _led_disp
.stabn 68,0,597,L891
L891:
.stabn 224,0,2,L892
L892:
L$490:
.stabn 68,0,599,L893
L893:
LDA _g_next_state,0,0
STA _g_cur_state,0,0
.stabn 68,0,600,L894
L894:
.stabn 224,0,1,L895
L895:
L$378:
.stabn 68,0,303,L896
L896:
jmp @L$377
.stabn 68,0,601,L897
L897:
.stabn 224,0,0,L898
L898:
L$376:
ret
.STACK main_bp,local,3
extrn _IntVecIdx
.section ".code"
.section ".bss"
public _g_next_state
.align 1
_g_next_state:
.SYMDEF "_g_next_state" BANK:0,50,LEN:1
ds 1
.stabs "g_next_state:G10",32,0,0,_g_next_state
public _g_cur_state
.align 1
_g_cur_state:
.SYMDEF "_g_cur_state" BANK:0,49,LEN:1
ds 1
.stabs "g_cur_state:G10",32,0,0,_g_cur_state
public _g_led_onoff
.align 1
_g_led_onoff:
.SYMDEF "_g_led_onoff" BANK:0,48,LEN:1
ds 1
.stabs "g_led_onoff:G10",32,0,0,_g_led_onoff
public _g_keypress_maxtime
.align 1
_g_keypress_maxtime:
.SYMDEF "_g_keypress_maxtime" BANK:0,47,LEN:1
ds 1
.stabs "g_keypress_maxtime:G10",32,0,0,_g_keypress_maxtime
public _g_keypress_times
.align 1
_g_keypress_times:
.SYMDEF "_g_keypress_times" BANK:0,46,LEN:1
ds 1
.stabs "g_keypress_times:G10",32,0,0,_g_keypress_times
public _g_led_light_times
.align 1
_g_led_light_times:
.SYMDEF "_g_led_light_times" BANK:0,45,LEN:1
ds 1
.stabs "g_led_light_times:G10",32,0,0,_g_led_light_times
public _g_led_occupied
.align 1
_g_led_occupied:
.SYMDEF "_g_led_occupied" BANK:0,BIT:7,44,LEN:1
ds 1
.stabs "g_led_occupied:G16",32,0,0,_g_led_occupied@7
public _g_led_onoff_status
.align 1
_g_led_onoff_status:
.SYMDEF "_g_led_onoff_status" BANK:0,BIT:3,44,LEN:1
ds 1
.stabs "g_led_onoff_status:G16",32,0,0,_g_led_onoff_status@3
public _g_led_b
.align 1
_g_led_b:
.SYMDEF "_g_led_b" BANK:0,BIT:2,44,LEN:1
ds 1
.stabs "g_led_b:G16",32,0,0,_g_led_b@2
public _g_led_g
.align 1
_g_led_g:
.SYMDEF "_g_led_g" BANK:0,BIT:1,44,LEN:1
ds 1
.stabs "g_led_g:G16",32,0,0,_g_led_g@1
public _g_led_r
.align 1
_g_led_r:
.SYMDEF "_g_led_r" BANK:0,BIT:0,44,LEN:1
ds 1
.stabs "g_led_r:G16",32,0,0,_g_led_r@0
public _g_time2s_flag
.align 1
_g_time2s_flag:
.SYMDEF "_g_time2s_flag" BANK:0,43,LEN:1
ds 1
.stabs "g_time2s_flag:G10",32,0,0,_g_time2s_flag
public _g_time1s_flag
.align 1
_g_time1s_flag:
.SYMDEF "_g_time1s_flag" BANK:0,42,LEN:1
ds 1
.stabs "g_time1s_flag:G10",32,0,0,_g_time1s_flag
public _g_time1s_cnt
.align 1
_g_time1s_cnt:
.SYMDEF "_g_time1s_cnt" BANK:0,41,LEN:1
ds 1
.stabs "g_time1s_cnt:G10",32,0,0,_g_time1s_cnt
public _g_time50ms_flag
.align 1
_g_time50ms_flag:
.SYMDEF "_g_time50ms_flag" BANK:0,40,LEN:1
ds 1
.stabs "g_time50ms_flag:G10",32,0,0,_g_time50ms_flag
public _g_time50ms_cnt
.align 1
_g_time50ms_cnt:
.SYMDEF "_g_time50ms_cnt" BANK:0,39,LEN:1
ds 1
.stabs "g_time50ms_cnt:G10",32,0,0,_g_time50ms_cnt
public _g_time1ms_cnt
.align 1
_g_time1ms_cnt:
.SYMDEF "_g_time1ms_cnt" BANK:0,38,LEN:1
ds 1
.stabs "g_time1ms_cnt:G10",32,0,0,_g_time1ms_cnt
public _g_keyval
.align 1
_g_keyval:
.SYMDEF "_g_keyval" BANK:0,37,LEN:1
ds 1
.stabs "g_keyval:G10",32,0,0,_g_keyval
public _g_loadvolt_h
.align 1
_g_loadvolt_h:
.SYMDEF "_g_loadvolt_h" BANK:0,36,LEN:1
ds 1
.stabs "g_loadvolt_h:G10",32,0,0,_g_loadvolt_h
public _g_loadvolt_l
.align 1
_g_loadvolt_l:
.SYMDEF "_g_loadvolt_l" BANK:0,35,LEN:1
ds 1
.stabs "g_loadvolt_l:G10",32,0,0,_g_loadvolt_l
public _g_loadvolt
.align 1
_g_loadvolt:
.SYMDEF "_g_loadvolt" BANK:0,35,LEN:2
ds 2
.stabs "g_loadvolt:G13",32,0,0,_g_loadvolt
public _g_batteryvolt_h
.align 1
_g_batteryvolt_h:
.SYMDEF "_g_batteryvolt_h" BANK:0,34,LEN:1
ds 1
.stabs "g_batteryvolt_h:G10",32,0,0,_g_batteryvolt_h
public _g_batteryvolt_l
.align 1
_g_batteryvolt_l:
.SYMDEF "_g_batteryvolt_l" BANK:0,33,LEN:1
ds 1
.stabs "g_batteryvolt_l:G10",32,0,0,_g_batteryvolt_l
public _g_batteryvolt
.align 1
_g_batteryvolt:
.SYMDEF "_g_batteryvolt" BANK:0,33,LEN:2
ds 2
.stabs "g_batteryvolt:G13",32,0,0,_g_batteryvolt
public _g_fault_state
.align 1
_g_fault_state:
.SYMDEF "_g_fault_state" BANK:0,32,LEN:1
ds 1
.stabs "g_fault_state:G10",32,0,0,_g_fault_state
.align 1
_RCM0:
.SYMDEF "_RCM0" REG:1,BIT:0,15,LEN:1
ds 1
.stabs "RCM0:S16",40,0,0,_RCM0
.align 1
_RCM1:
.SYMDEF "_RCM1" REG:1,BIT:1,15,LEN:1
ds 1
.stabs "RCM1:S16",40,0,0,_RCM1
.align 1
_SHS0:
.SYMDEF "_SHS0" REG:1,BIT:2,15,LEN:1
ds 1
.stabs "SHS0:S16",40,0,0,_SHS0
.align 1
_SHS1:
.SYMDEF "_SHS1" REG:1,BIT:3,15,LEN:1
ds 1
.stabs "SHS1:S16",40,0,0,_SHS1
.align 1
_IDLE:
.SYMDEF "_IDLE" REG:1,BIT:4,15,LEN:1
ds 1
.stabs "IDLE:S16",40,0,0,_IDLE
.align 1
_CPUS:
.SYMDEF "_CPUS" REG:1,BIT:5,15,LEN:1
ds 1
.stabs "CPUS:S16",40,0,0,_CPUS
.align 1
_TIMERSC:
.SYMDEF "_TIMERSC" REG:1,BIT:6,15,LEN:1
ds 1
.stabs "TIMERSC:S16",40,0,0,_TIMERSC
.align 1
_EXWE:
.SYMDEF "_EXWE" REG:1,BIT:0,14,LEN:1
ds 1
.stabs "EXWE:S16",40,0,0,_EXWE
.align 1
_LVD0:
.SYMDEF "_LVD0" REG:1,BIT:4,14,LEN:1
ds 1
.stabs "LVD0:S16",40,0,0,_LVD0
.align 1
_LVD1:
.SYMDEF "_LVD1" REG:1,BIT:5,14,LEN:1
ds 1
.stabs "LVD1:S16",40,0,0,_LVD1
.align 1
_LVDEN:
.SYMDEF "_LVDEN" REG:1,BIT:6,14,LEN:1
ds 1
.stabs "LVDEN:S16",40,0,0,_LVDEN
.align 1
_LVDIE:
.SYMDEF "_LVDIE" REG:1,BIT:7,14,LEN:1
ds 1
.stabs "LVDIE:S16",40,0,0,_LVDIE
.align 1
_T1P0:
.SYMDEF "_T1P0" REG:1,BIT:0,8,LEN:1
ds 1
.stabs "T1P0:S16",40,0,0,_T1P0
.align 1
_T1P1:
.SYMDEF "_T1P1" REG:1,BIT:1,8,LEN:1
ds 1
.stabs "T1P1:S16",40,0,0,_T1P1
.align 1
_T1P2:
.SYMDEF "_T1P2" REG:1,BIT:2,8,LEN:1
ds 1
.stabs "T1P2:S16",40,0,0,_T1P2
.align 1
_T2P0:
.SYMDEF "_T2P0" REG:1,BIT:3,8,LEN:1
ds 1
.stabs "T2P0:S16",40,0,0,_T2P0
.align 1
_T2P1:
.SYMDEF "_T2P1" REG:1,BIT:4,8,LEN:1
ds 1
.stabs "T2P1:S16",40,0,0,_T2P1
.align 1
_T2P2:
.SYMDEF "_T2P2" REG:1,BIT:5,8,LEN:1
ds 1
.stabs "T2P2:S16",40,0,0,_T2P2
.align 1
_T1EN:
.SYMDEF "_T1EN" REG:1,BIT:6,8,LEN:1
ds 1
.stabs "T1EN:S16",40,0,0,_T1EN
.align 1
_T2EN:
.SYMDEF "_T2EN" REG:1,BIT:7,8,LEN:1
ds 1
.stabs "T2EN:S16",40,0,0,_T2EN
.align 1
_PWM1E:
.SYMDEF "_PWM1E" REG:1,BIT:0,7,LEN:1
ds 1
.stabs "PWM1E:S16",40,0,0,_PWM1E
.align 1
_PWM2E:
.SYMDEF "_PWM2E" REG:1,BIT:1,7,LEN:1
ds 1
.stabs "PWM2E:S16",40,0,0,_PWM2E
.align 1
_PWMCAS:
.SYMDEF "_PWMCAS" REG:1,BIT:2,7,LEN:1
ds 1
.stabs "PWMCAS:S16",40,0,0,_PWMCAS
.align 1
_Rbit0:
.SYMDEF "_Rbit0" REG:1,BIT:0,6,LEN:1
ds 1
.stabs "Rbit0:S16",40,0,0,_Rbit0
.align 1
_Rbit1:
.SYMDEF "_Rbit1" REG:1,BIT:1,6,LEN:1
ds 1
.stabs "Rbit1:S16",40,0,0,_Rbit1
.align 1
_Rbit2:
.SYMDEF "_Rbit2" REG:1,BIT:2,6,LEN:1
ds 1
.stabs "Rbit2:S16",40,0,0,_Rbit2
.align 1
_Rbit3:
.SYMDEF "_Rbit3" REG:1,BIT:3,6,LEN:1
ds 1
.stabs "Rbit3:S16",40,0,0,_Rbit3
.align 1
_Rbit4:
.SYMDEF "_Rbit4" REG:1,BIT:4,6,LEN:1
ds 1
.stabs "Rbit4:S16",40,0,0,_Rbit4
.align 1
_Rbit5:
.SYMDEF "_Rbit5" REG:1,BIT:5,6,LEN:1
ds 1
.stabs "Rbit5:S16",40,0,0,_Rbit5
.align 1
_Rbit6:
.SYMDEF "_Rbit6" REG:1,BIT:6,6,LEN:1
ds 1
.stabs "Rbit6:S16",40,0,0,_Rbit6
.align 1
_Rbit7:
.SYMDEF "_Rbit7" REG:1,BIT:7,6,LEN:1
ds 1
.stabs "Rbit7:S16",40,0,0,_Rbit7
.align 1
_Rbit8:
.SYMDEF "_Rbit8" REG:1,BIT:0,5,LEN:1
ds 1
.stabs "Rbit8:S16",40,0,0,_Rbit8
.align 1
_Rbit9:
.SYMDEF "_Rbit9" REG:1,BIT:1,5,LEN:1
ds 1
.stabs "Rbit9:S16",40,0,0,_Rbit9
.align 1
_Rbit10:
.SYMDEF "_Rbit10" REG:1,BIT:2,5,LEN:1
ds 1
.stabs "Rbit10:S16",40,0,0,_Rbit10
.align 1
_MLB:
.SYMDEF "_MLB" REG:1,BIT:7,5,LEN:1
ds 1
.stabs "MLB:S16",40,0,0,_MLB
.align 1
_TCIF:
.SYMDEF "_TCIF" REG:0,BIT:0,15,LEN:1
ds 1
.stabs "TCIF:S16",40,0,0,_TCIF
.align 1
_ICIF:
.SYMDEF "_ICIF" REG:0,BIT:1,15,LEN:1
ds 1
.stabs "ICIF:S16",40,0,0,_ICIF
.align 1
_EXIF:
.SYMDEF "_EXIF" REG:0,BIT:2,15,LEN:1
ds 1
.stabs "EXIF:S16",40,0,0,_EXIF
.align 1
_PWM1IF:
.SYMDEF "_PWM1IF" REG:0,BIT:3,15,LEN:1
ds 1
.stabs "PWM1IF:S16",40,0,0,_PWM1IF
.align 1
_PWM2IF:
.SYMDEF "_PWM2IF" REG:0,BIT:4,15,LEN:1
ds 1
.stabs "PWM2IF:S16",40,0,0,_PWM2IF
.align 1
_DT1IF:
.SYMDEF "_DT1IF" REG:0,BIT:5,15,LEN:1
ds 1
.stabs "DT1IF:S16",40,0,0,_DT1IF
.align 1
_DT2IF:
.SYMDEF "_DT2IF" REG:0,BIT:6,15,LEN:1
ds 1
.stabs "DT2IF:S16",40,0,0,_DT2IF
.align 1
_LVDWE:
.SYMDEF "_LVDWE" REG:0,BIT:0,14,LEN:1
ds 1
.stabs "LVDWE:S16",40,0,0,_LVDWE
.align 1
_ICWE:
.SYMDEF "_ICWE" REG:0,BIT:1,14,LEN:1
ds 1
.stabs "ICWE:S16",40,0,0,_ICWE
.align 1
_CMPWE:
.SYMDEF "_CMPWE" REG:0,BIT:2,14,LEN:1
ds 1
.stabs "CMPWE:S16",40,0,0,_CMPWE
.align 1
_ADWE:
.SYMDEF "_ADWE" REG:0,BIT:3,14,LEN:1
ds 1
.stabs "ADWE:S16",40,0,0,_ADWE
.align 1
_CMPIF:
.SYMDEF "_CMPIF" REG:0,BIT:4,14,LEN:1
ds 1
.stabs "CMPIF:S16",40,0,0,_CMPIF
.align 1
_ADIF:
.SYMDEF "_ADIF" REG:0,BIT:5,14,LEN:1
ds 1
.stabs "ADIF:S16",40,0,0,_ADIF
.align 1
_LVDIF:
.SYMDEF "_LVDIF" REG:0,BIT:6,14,LEN:1
ds 1
.stabs "LVDIF:S16",40,0,0,_LVDIF
.align 1
_LVD:
.SYMDEF "_LVD" REG:0,BIT:7,14,LEN:1
ds 1
.stabs "LVD:S16",40,0,0,_LVD
.align 1
_VOF0:
.SYMDEF "_VOF0" REG:0,BIT:3,10,LEN:1
ds 1
.stabs "VOF0:S16",40,0,0,_VOF0
.align 1
_VOF1:
.SYMDEF "_VOF1" REG:0,BIT:4,10,LEN:1
ds 1
.stabs "VOF1:S16",40,0,0,_VOF1
.align 1
_VOF2:
.SYMDEF "_VOF2" REG:0,BIT:5,10,LEN:1
ds 1
.stabs "VOF2:S16",40,0,0,_VOF2
.align 1
_SIGN:
.SYMDEF "_SIGN" REG:0,BIT:6,10,LEN:1
ds 1
.stabs "SIGN:S16",40,0,0,_SIGN
.align 1
_CALI:
.SYMDEF "_CALI" REG:0,BIT:7,10,LEN:1
ds 1
.stabs "CALI:S16",40,0,0,_CALI
.align 1
_ADIS0:
.SYMDEF "_ADIS0" REG:0,BIT:0,9,LEN:1
ds 1
.stabs "ADIS0:S16",40,0,0,_ADIS0
.align 1
_ADIS1:
.SYMDEF "_ADIS1" REG:0,BIT:1,9,LEN:1
ds 1
.stabs "ADIS1:S16",40,0,0,_ADIS1
.align 1
_ADIS2:
.SYMDEF "_ADIS2" REG:0,BIT:2,9,LEN:1
ds 1
.stabs "ADIS2:S16",40,0,0,_ADIS2
.align 1
_ADPD:
.SYMDEF "_ADPD" REG:0,BIT:3,9,LEN:1
ds 1
.stabs "ADPD:S16",40,0,0,_ADPD
.align 1
_ADRUN:
.SYMDEF "_ADRUN" REG:0,BIT:4,9,LEN:1
ds 1
.stabs "ADRUN:S16",40,0,0,_ADRUN
.align 1
_CKR0:
.SYMDEF "_CKR0" REG:0,BIT:5,9,LEN:1
ds 1
.stabs "CKR0:S16",40,0,0,_CKR0
.align 1
_CKR1:
.SYMDEF "_CKR1" REG:0,BIT:6,9,LEN:1
ds 1
.stabs "CKR1:S16",40,0,0,_CKR1
.align 1
_VREFS:
.SYMDEF "_VREFS" REG:0,BIT:7,9,LEN:1
ds 1
.stabs "VREFS:S16",40,0,0,_VREFS
.align 1
_ADE0:
.SYMDEF "_ADE0" REG:0,BIT:0,8,LEN:1
ds 1
.stabs "ADE0:S16",40,0,0,_ADE0
.align 1
_ADE1:
.SYMDEF "_ADE1" REG:0,BIT:1,8,LEN:1
ds 1
.stabs "ADE1:S16",40,0,0,_ADE1
.align 1
_ADE2:
.SYMDEF "_ADE2" REG:0,BIT:2,8,LEN:1
ds 1
.stabs "ADE2:S16",40,0,0,_ADE2
.align 1
_ADE3:
.SYMDEF "_ADE3" REG:0,BIT:3,8,LEN:1
ds 1
.stabs "ADE3:S16",40,0,0,_ADE3
.align 1
_ADE4:
.SYMDEF "_ADE4" REG:0,BIT:4,8,LEN:1
ds 1
.stabs "ADE4:S16",40,0,0,_ADE4
.align 1
_ADE5:
.SYMDEF "_ADE5" REG:0,BIT:5,8,LEN:1
ds 1
.stabs "ADE5:S16",40,0,0,_ADE5
.align 1
_ADE6:
.SYMDEF "_ADE6" REG:0,BIT:6,8,LEN:1
ds 1
.stabs "ADE6:S16",40,0,0,_ADE6
.align 1
_ADE7:
.SYMDEF "_ADE7" REG:0,BIT:7,8,LEN:1
ds 1
.stabs "ADE7:S16",40,0,0,_ADE7
.align 1
_P70:
.SYMDEF "_P70" REG:0,BIT:0,7,LEN:1
ds 1
.stabs "P70:S16",40,0,0,_P70
.align 1
_P71:
.SYMDEF "_P71" REG:0,BIT:1,7,LEN:1
ds 1
.stabs "P71:S16",40,0,0,_P71
.align 1
_P72:
.SYMDEF "_P72" REG:0,BIT:2,7,LEN:1
ds 1
.stabs "P72:S16",40,0,0,_P72
.align 1
_P73:
.SYMDEF "_P73" REG:0,BIT:3,7,LEN:1
ds 1
.stabs "P73:S16",40,0,0,_P73
.align 1
_P74:
.SYMDEF "_P74" REG:0,BIT:4,7,LEN:1
ds 1
.stabs "P74:S16",40,0,0,_P74
.align 1
_P75:
.SYMDEF "_P75" REG:0,BIT:5,7,LEN:1
ds 1
.stabs "P75:S16",40,0,0,_P75
.align 1
_P76:
.SYMDEF "_P76" REG:0,BIT:6,7,LEN:1
ds 1
.stabs "P76:S16",40,0,0,_P76
.align 1
_P77:
.SYMDEF "_P77" REG:0,BIT:7,7,LEN:1
ds 1
.stabs "P77:S16",40,0,0,_P77
.align 1
_P60:
.SYMDEF "_P60" REG:0,BIT:0,6,LEN:1
ds 1
.stabs "P60:S16",40,0,0,_P60
.align 1
_P61:
.SYMDEF "_P61" REG:0,BIT:1,6,LEN:1
ds 1
.stabs "P61:S16",40,0,0,_P61
.align 1
_P62:
.SYMDEF "_P62" REG:0,BIT:2,6,LEN:1
ds 1
.stabs "P62:S16",40,0,0,_P62
.align 1
_P63:
.SYMDEF "_P63" REG:0,BIT:3,6,LEN:1
ds 1
.stabs "P63:S16",40,0,0,_P63
.align 1
_P64:
.SYMDEF "_P64" REG:0,BIT:4,6,LEN:1
ds 1
.stabs "P64:S16",40,0,0,_P64
.align 1
_P65:
.SYMDEF "_P65" REG:0,BIT:5,6,LEN:1
ds 1
.stabs "P65:S16",40,0,0,_P65
.align 1
_P66:
.SYMDEF "_P66" REG:0,BIT:6,6,LEN:1
ds 1
.stabs "P66:S16",40,0,0,_P66
.align 1
_P67:
.SYMDEF "_P67" REG:0,BIT:7,6,LEN:1
ds 1
.stabs "P67:S16",40,0,0,_P67
.align 1
_P50:
.SYMDEF "_P50" REG:0,BIT:0,5,LEN:1
ds 1
.stabs "P50:S16",40,0,0,_P50
.align 1
_P51:
.SYMDEF "_P51" REG:0,BIT:1,5,LEN:1
ds 1
.stabs "P51:S16",40,0,0,_P51
.align 1
_P52:
.SYMDEF "_P52" REG:0,BIT:2,5,LEN:1
ds 1
.stabs "P52:S16",40,0,0,_P52
.align 1
_P53:
.SYMDEF "_P53" REG:0,BIT:3,5,LEN:1
ds 1
.stabs "P53:S16",40,0,0,_P53
.align 1
_P54:
.SYMDEF "_P54" REG:0,BIT:4,5,LEN:1
ds 1
.stabs "P54:S16",40,0,0,_P54
.align 1
_P55:
.SYMDEF "_P55" REG:0,BIT:5,5,LEN:1
ds 1
.stabs "P55:S16",40,0,0,_P55
.align 1
_P56:
.SYMDEF "_P56" REG:0,BIT:6,5,LEN:1
ds 1
.stabs "P56:S16",40,0,0,_P56
.align 1
_P57:
.SYMDEF "_P57" REG:0,BIT:7,5,LEN:1
ds 1
.stabs "P57:S16",40,0,0,_P57
.align 1
_SBANk:
.SYMDEF "_SBANk" REG:0,BIT:7,4,LEN:1
ds 1
.stabs "SBANk:S16",40,0,0,_SBANk
.align 1
_C:
.SYMDEF "_C" REG:0,BIT:0,3,LEN:1
ds 1
.stabs "C:S16",40,0,0,_C
.align 1
_DC:
.SYMDEF "_DC" REG:0,BIT:1,3,LEN:1
ds 1
.stabs "DC:S16",40,0,0,_DC
.align 1
_Z:
.SYMDEF "_Z" REG:0,BIT:2,3,LEN:1
ds 1
.stabs "Z:S16",40,0,0,_Z
.align 1
_P:
.SYMDEF "_P" REG:0,BIT:3,3,LEN:1
ds 1
.stabs "P:S16",40,0,0,_P
.align 1
_T:
.SYMDEF "_T" REG:0,BIT:4,3,LEN:1
ds 1
.stabs "T:S16",40,0,0,_T
.align 1
_IOCS:
.SYMDEF "_IOCS" REG:0,BIT:6,3,LEN:1
ds 1
.stabs "IOCS:S16",40,0,0,_IOCS
.align 1
_RST:
.SYMDEF "_RST" REG:0,BIT:7,3,LEN:1
ds 1
.stabs "RST:S16",40,0,0,_RST
.align 1
_P6PHCR:
.SYMDEF "_P6PHCR" IO:1,15,LEN:1
ds 1
.stabs "P6PHCR:S14",40,0,0,_P6PHCR
.align 1
_PHCR2:
.SYMDEF "_PHCR2" IO:1,15,LEN:1
ds 1
.stabs "PHCR2:S14",40,0,0,_PHCR2
.align 1
_P6HDCR:
.SYMDEF "_P6HDCR" IO:1,8,LEN:1
ds 1
.stabs "P6HDCR:S14",40,0,0,_P6HDCR
.align 1
_HDCR2:
.SYMDEF "_HDCR2" IO:1,8,LEN:1
ds 1
.stabs "HDCR2:S14",40,0,0,_HDCR2
.align 1
_P5HDCR:
.SYMDEF "_P5HDCR" IO:1,7,LEN:1
ds 1
.stabs "P5HDCR:S14",40,0,0,_P5HDCR
.align 1
_HDCR1:
.SYMDEF "_HDCR1" IO:1,7,LEN:1
ds 1
.stabs "HDCR1:S14",40,0,0,_HDCR1
.align 1
_P6HSCR:
.SYMDEF "_P6HSCR" IO:1,6,LEN:1
ds 1
.stabs "P6HSCR:S14",40,0,0,_P6HSCR
.align 1
_HSCR2:
.SYMDEF "_HSCR2" IO:1,6,LEN:1
ds 1
.stabs "HSCR2:S14",40,0,0,_HSCR2
.align 1
_P5HSCR:
.SYMDEF "_P5HSCR" IO:1,5,LEN:1
ds 1
.stabs "P5HSCR:S14",40,0,0,_P5HSCR
.align 1
_HSCR1:
.SYMDEF "_HSCR1" IO:1,5,LEN:1
ds 1
.stabs "HSCR1:S14",40,0,0,_HSCR1
.align 1
_IMR:
.SYMDEF "_IMR" IO:0,15,LEN:1
ds 1
.stabs "IMR:S14",40,0,0,_IMR
.align 1
_WDTCR:
.SYMDEF "_WDTCR" IO:0,14,LEN:1
ds 1
.stabs "WDTCR:S14",40,0,0,_WDTCR
.align 1
_P5PHCR:
.SYMDEF "_P5PHCR" IO:0,13,LEN:1
ds 1
.stabs "P5PHCR:S14",40,0,0,_P5PHCR
.align 1
_PHCR1:
.SYMDEF "_PHCR1" IO:0,13,LEN:1
ds 1
.stabs "PHCR1:S14",40,0,0,_PHCR1
.align 1
_P6ODCR:
.SYMDEF "_P6ODCR" IO:0,12,LEN:1
ds 1
.stabs "P6ODCR:S14",40,0,0,_P6ODCR
.align 1
_ODCR:
.SYMDEF "_ODCR" IO:0,12,LEN:1
ds 1
.stabs "ODCR:S14",40,0,0,_ODCR
.align 1
_P5PDCR:
.SYMDEF "_P5PDCR" IO:0,11,LEN:1
ds 1
.stabs "P5PDCR:S14",40,0,0,_P5PDCR
.align 1
_PDCR:
.SYMDEF "_PDCR" IO:0,11,LEN:1
ds 1
.stabs "PDCR:S14",40,0,0,_PDCR
.align 1
_TMR2:
.SYMDEF "_TMR2" IO:0,10,LEN:1
ds 1
.stabs "TMR2:S14",40,0,0,_TMR2
.align 1
_TMR1:
.SYMDEF "_TMR1" IO:0,9,LEN:1
ds 1
.stabs "TMR1:S14",40,0,0,_TMR1
.align 1
_HBT:
.SYMDEF "_HBT" IO:0,8,LEN:1
ds 1
.stabs "HBT:S14",40,0,0,_HBT
.align 1
_P7CR:
.SYMDEF "_P7CR" IO:0,7,LEN:1
ds 1
.stabs "P7CR:S14",40,0,0,_P7CR
.align 1
_P6CR:
.SYMDEF "_P6CR" IO:0,6,LEN:1
ds 1
.stabs "P6CR:S14",40,0,0,_P6CR
.align 1
_P5CR:
.SYMDEF "_P5CR" IO:0,5,LEN:1
ds 1
.stabs "P5CR:S14",40,0,0,_P5CR
.align 1
_SCR:
.SYMDEF "_SCR" REG:1,15,LEN:1
ds 1
.stabs "SCR:S14",40,0,0,_SCR
.align 1
_LVDIWR:
.SYMDEF "_LVDIWR" REG:1,14,LEN:1
ds 1
.stabs "LVDIWR:S14",40,0,0,_LVDIWR
.align 1
_HBP:
.SYMDEF "_HBP" REG:1,13,LEN:1
ds 1
.stabs "HBP:S14",40,0,0,_HBP
.align 1
_DT2:
.SYMDEF "_DT2" REG:1,12,LEN:1
ds 1
.stabs "DT2:S14",40,0,0,_DT2
.align 1
_DT1:
.SYMDEF "_DT1" REG:1,11,LEN:1
ds 1
.stabs "DT1:S14",40,0,0,_DT1
.align 1
_PRD2:
.SYMDEF "_PRD2" REG:1,10,LEN:1
ds 1
.stabs "PRD2:S14",40,0,0,_PRD2
.align 1
_PRD1:
.SYMDEF "_PRD1" REG:1,9,LEN:1
ds 1
.stabs "PRD1:S14",40,0,0,_PRD1
.align 1
_TMRCON:
.SYMDEF "_TMRCON" REG:1,8,LEN:1
ds 1
.stabs "TMRCON:S14",40,0,0,_TMRCON
.align 1
_PWMCON:
.SYMDEF "_PWMCON" REG:1,7,LEN:1
ds 1
.stabs "PWMCON:S14",40,0,0,_PWMCON
.align 1
_TBLP:
.SYMDEF "_TBLP" REG:1,6,LEN:1
ds 1
.stabs "TBLP:S14",40,0,0,_TBLP
.align 1
_TBHP:
.SYMDEF "_TBHP" REG:1,5,LEN:1
ds 1
.stabs "TBHP:S14",40,0,0,_TBHP
.align 1
_ISR2:
.SYMDEF "_ISR2" REG:0,15,LEN:1
ds 1
.stabs "ISR2:S14",40,0,0,_ISR2
.align 1
_WUCR:
.SYMDEF "_WUCR" REG:0,14,LEN:1
ds 1
.stabs "WUCR:S14",40,0,0,_WUCR
.align 1
_ISR1:
.SYMDEF "_ISR1" REG:0,14,LEN:1
ds 1
.stabs "ISR1:S14",40,0,0,_ISR1
.align 1
_ADDATA1L:
.SYMDEF "_ADDATA1L" REG:0,13,LEN:1
ds 1
.stabs "ADDATA1L:S14",40,0,0,_ADDATA1L
.align 1
_ADDATA1H:
.SYMDEF "_ADDATA1H" REG:0,12,LEN:1
ds 1
.stabs "ADDATA1H:S14",40,0,0,_ADDATA1H
.align 1
_ADDATA:
.SYMDEF "_ADDATA" REG:0,11,LEN:1
ds 1
.stabs "ADDATA:S14",40,0,0,_ADDATA
.align 1
_ADOC:
.SYMDEF "_ADOC" REG:0,10,LEN:1
ds 1
.stabs "ADOC:S14",40,0,0,_ADOC
.align 1
_ADCON:
.SYMDEF "_ADCON" REG:0,9,LEN:1
ds 1
.stabs "ADCON:S14",40,0,0,_ADCON
.align 1
_AISR:
.SYMDEF "_AISR" REG:0,8,LEN:1
ds 1
.stabs "AISR:S14",40,0,0,_AISR
.align 1
_PORT7:
.SYMDEF "_PORT7" REG:0,7,LEN:1
ds 1
.stabs "PORT7:S14",40,0,0,_PORT7
.align 1
_PORT6:
.SYMDEF "_PORT6" REG:0,6,LEN:1
ds 1
.stabs "PORT6:S14",40,0,0,_PORT6
.align 1
_PORT5:
.SYMDEF "_PORT5" REG:0,5,LEN:1
ds 1
.stabs "PORT5:S14",40,0,0,_PORT5
.align 1
_RSR:
.SYMDEF "_RSR" REG:0,4,LEN:1
ds 1
.stabs "RSR:S14",40,0,0,_RSR
.align 1
_STATUS:
.SYMDEF "_STATUS" REG:0,3,LEN:1
ds 1
.stabs "STATUS:S14",40,0,0,_STATUS
.align 1
_PC:
.SYMDEF "_PC" REG:0,2,LEN:1
ds 1
.stabs "PC:S14",40,0,0,_PC
.align 1
_TCC:
.SYMDEF "_TCC" REG:0,1,LEN:1
ds 1
.stabs "TCC:S14",40,0,0,_TCC
.align 1
_IAR:
.SYMDEF "_IAR" REG:0,0,LEN:1
ds 1
.stabs "IAR:S14",40,0,0,_IAR
.align 1
_R0:
.SYMDEF "_R0" REG:0,0,LEN:1
ds 1
.stabs "R0:S14",40,0,0,_R0
.section ".code"
end

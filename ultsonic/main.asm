;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TimerOut
	.globl _main
	.globl _Count
	.globl _max
	.globl _min
	.globl _InitTimer
	.globl _StartModule
	.globl _Send_Str
	.globl _Send_Char
	.globl _DisplayDigits
	.globl _DelayXus
	.globl _delay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _disp1
	.globl _disp0
	.globl _maxs
	.globl _mins
	.globl _ss
	.globl _s
	.globl _time
	.globl _Display
	.globl _smgduan
	.globl _flag
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_flag::
	.ds 1
_smgduan::
	.ds 16
_Display::
	.ds 8
_time::
	.ds 2
_s::
	.ds 2
_ss::
	.ds 8
_mins::
	.ds 2
_maxs::
	.ds 2
_disp0::
	.ds 10
_disp1::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_TimerOut
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:7: uchar flag=0;
	mov	_flag,#0x00
;	main.c:28: uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
	mov	_smgduan,#0x3f
	mov	(_smgduan + 0x0001),#0x06
	mov	(_smgduan + 0x0002),#0x5b
	mov	(_smgduan + 0x0003),#0x4f
	mov	(_smgduan + 0x0004),#0x66
	mov	(_smgduan + 0x0005),#0x6d
	mov	(_smgduan + 0x0006),#0x7d
	mov	(_smgduan + 0x0007),#0x07
	mov	(_smgduan + 0x0008),#0x7f
	mov	(_smgduan + 0x0009),#0x6f
	mov	(_smgduan + 0x000a),#0x77
	mov	(_smgduan + 0x000b),#0x7c
	mov	(_smgduan + 0x000c),#0x39
	mov	(_smgduan + 0x000d),#0x5e
	mov	(_smgduan + 0x000e),#0x79
	mov	(_smgduan + 0x000f),#0x71
;	main.c:30: uchar Display[8] = {0, 0, 0, 0, 0, 0, 0, 0};
	mov	_Display,#0x00
	mov	(_Display + 0x0001),#0x00
	mov	(_Display + 0x0002),#0x00
	mov	(_Display + 0x0003),#0x00
	mov	(_Display + 0x0004),#0x00
	mov	(_Display + 0x0005),#0x00
	mov	(_Display + 0x0006),#0x00
	mov	(_Display + 0x0007),#0x00
;	main.c:121: uint ss[4] = {0, 0, 0, 0};
	clr	a
	mov	(_ss + 0),a
	mov	(_ss + 1),a
	mov	((_ss + 0x0002) + 0),a
	mov	((_ss + 0x0002) + 1),a
	mov	((_ss + 0x0004) + 0),a
	mov	((_ss + 0x0004) + 1),a
	mov	((_ss + 0x0006) + 0),a
	mov	((_ss + 0x0006) + 1),a
;	main.c:123: uchar disp0[] = "distance ";
	mov	_disp0,#0x64
	mov	(_disp0 + 0x0001),#0x69
	mov	(_disp0 + 0x0002),#0x73
	mov	(_disp0 + 0x0003),#0x74
	mov	(_disp0 + 0x0004),#0x61
	mov	(_disp0 + 0x0005),#0x6e
	mov	(_disp0 + 0x0006),#0x63
	mov	(_disp0 + 0x0007),#0x65
	mov	(_disp0 + 0x0008),#0x20
;	1-genFromRTrack replaced	mov	(_disp0 + 0x0009),#0x00
	mov	(_disp0 + 0x0009),a
;	main.c:124: uchar disp1[] = "mm\n";
	mov	_disp1,#0x6d
	mov	(_disp1 + 0x0001),#0x6d
	mov	(_disp1 + 0x0002),#0x0a
;	1-genFromRTrack replaced	mov	(_disp1 + 0x0003),#0x00
	mov	(_disp1 + 0x0003),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	main.c:10: void delay(uint i)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	main.c:12: while(i--);
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00111$
	dec	r7
00111$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	main.c:13: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayXus'
;------------------------------------------------------------
;x                         Allocated to registers 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	main.c:15: void DelayXus(uint x)
;	-----------------------------------------
;	 function DelayXus
;	-----------------------------------------
_DelayXus:
	mov	r6,dpl
	mov	r7,dph
;	main.c:18: while(x--)
00102$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00127$
	dec	r7
00127$:
	mov	a,r4
	orl	a,r5
	jz	00108$
;	main.c:20: for(i=0;i<100;i++);
	mov	r5,#0x64
00107$:
	mov	a,r5
	dec	a
	mov	r4,a
	mov	r5,a
	jnz	00107$
	sjmp	00102$
00108$:
;	main.c:22: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DisplayDigits'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:31: void DisplayDigits()
;	-----------------------------------------
;	 function DisplayDigits
;	-----------------------------------------
_DisplayDigits:
;	main.c:34: for(i=0;i<8;i++)
	mov	r7,#0x00
00102$:
;	main.c:36: LSC = i / 4;
	mov	ar5,r7
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x04
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
;	assignBit
	mov	a,r3
	orl	a,r4
	add	a,#0xff
	mov	_P2_4,c
;	main.c:37: LSB = (i-4*LSC) / 2;
	mov	c,_P2_4
	clr	a
	rlc	a
	mov	r4,#0x00
	add	a,acc
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	clr	c
	subb	a,r3
	mov	dpl,a
	mov	a,r6
	subb	a,r4
	mov	dph,a
	mov	__divsint_PARM_2,#0x02
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	assignBit
	mov	a,r3
	orl	a,r4
	add	a,#0xff
	mov	_P2_3,c
;	main.c:38: LSA = i - 4*LSC - 2*LSB;
	mov	c,_P2_4
	clr	a
	rlc	a
	mov	r4,#0x00
	add	a,acc
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	mov	c,_P2_3
	clr	a
	rlc	a
	mov	r4,#0x00
	add	a,acc
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r6
	subb	a,r4
;	assignBit
	orl	a,r5
	add	a,#0xff
	mov	_P2_2,c
;	main.c:39: P0 = Display[i];
	mov	a,r7
	add	a,#_Display
	mov	r1,a
	mov	_P0,@r1
;	main.c:40: delay(200);
	mov	dptr,#0x00c8
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:34: for(i=0;i<8;i++)
	inc	r7
	cjne	r7,#0x08,00111$
00111$:
	jnc	00112$
	ljmp	00102$
00112$:
;	main.c:42: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Send_Char'
;------------------------------------------------------------
;chr                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:44: void Send_Char(uchar chr)
;	-----------------------------------------
;	 function Send_Char
;	-----------------------------------------
_Send_Char:
	mov	r7,dpl
;	main.c:46: ES = 0;
;	assignBit
	clr	_ES
;	main.c:47: SBUF = chr;
	mov	_SBUF,r7
;	main.c:48: while(!TI);
00101$:
;	main.c:49: TI = 0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	main.c:50: ES = 1;
;	assignBit
	setb	_ES
;	main.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Send_Str'
;------------------------------------------------------------
;str                       Allocated to registers 
;------------------------------------------------------------
;	main.c:53: void Send_Str(uchar *str)
;	-----------------------------------------
;	 function Send_Str
;	-----------------------------------------
_Send_Str:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:55: while(*str != '\0')
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00107$
;	main.c:57: ES = 0;
;	assignBit
	clr	_ES
;	main.c:58: SBUF = *str;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_SBUF,a
;	main.c:59: while(!TI);
00101$:
;	main.c:60: TI = 0;
;	assignBit
	jbc	_TI,00127$
	sjmp	00101$
00127$:
;	main.c:61: ES = 1;
;	assignBit
	setb	_ES
;	main.c:62: str++;
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00107$:
;	main.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'StartModule'
;------------------------------------------------------------
;	main.c:69: void StartModule()
;	-----------------------------------------
;	 function StartModule
;	-----------------------------------------
_StartModule:
;	main.c:71: Trig = 1;
;	assignBit
	setb	_P1_1
;	main.c:72: delay(2);
	mov	dptr,#0x0002
	lcall	_delay
;	main.c:73: Trig = 0;	
;	assignBit
	clr	_P1_1
;	main.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer'
;------------------------------------------------------------
;	main.c:80: void InitTimer()
;	-----------------------------------------
;	 function InitTimer
;	-----------------------------------------
_InitTimer:
;	main.c:82: TMOD = 0x21;
	mov	_TMOD,#0x21
;	main.c:83: PCON |= 0x80;
	mov	r6,_PCON
	orl	ar6,#0x80
	mov	_PCON,r6
;	main.c:85: SCON = 0x50;
	mov	_SCON,#0x50
;	main.c:86: TH1 = SPEED;
	mov	_TH1,#0xff
;	main.c:87: TL1 = SPEED;
	mov	_TL1,#0xff
;	main.c:88: TH0 = 0;
	mov	_TH0,#0x00
;	main.c:89: TL0 = 0;
	mov	_TL0,#0x00
;	main.c:90: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:91: EA = 1;
;	assignBit
	setb	_EA
;	main.c:92: ES = 1;
;	assignBit
	setb	_ES
;	main.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'min'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;temp                      Allocated to registers r3 r4 
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:95: uint min(uint * s)
;	-----------------------------------------
;	 function min
;	-----------------------------------------
_min:
;	main.c:97: uint temp=*s;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	main.c:99: for(i=0;i<3;i++)
	mov	r2,#0x00
00104$:
;	main.c:101: s+=1;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	main.c:102: if(temp>*s)temp=*s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,r3
	mov	a,r1
	subb	a,r4
	jnc	00105$
	mov	ar3,r0
	mov	ar4,r1
00105$:
;	main.c:99: for(i=0;i<3;i++)
	inc	r2
	cjne	r2,#0x03,00122$
00122$:
	jc	00104$
;	main.c:104: return temp;
	mov	dpl,r3
	mov	dph,r4
;	main.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'max'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;temp                      Allocated to registers r3 r4 
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:107: uint max(uint * s)
;	-----------------------------------------
;	 function max
;	-----------------------------------------
_max:
;	main.c:109: uint temp=*s;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	main.c:111: for(i=0;i<3;i++)
	mov	r2,#0x00
00104$:
;	main.c:113: s+=1;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
;	main.c:114: if(temp<*s)temp=*s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	clr	c
	mov	a,r3
	subb	a,r0
	mov	a,r4
	subb	a,r1
	jnc	00105$
	mov	ar3,r0
	mov	ar4,r1
00105$:
;	main.c:111: for(i=0;i<3;i++)
	inc	r2
	cjne	r2,#0x03,00122$
00122$:
	jc	00104$
;	main.c:116: return temp;
	mov	dpl,r3
	mov	dph,r4
;	main.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Count'
;------------------------------------------------------------
;di1                       Allocated to registers r6 
;di2                       Allocated to registers r5 
;di3                       Allocated to registers r4 
;di4                       Allocated to registers r3 
;------------------------------------------------------------
;	main.c:125: void Count()
;	-----------------------------------------
;	 function Count
;	-----------------------------------------
_Count:
;	main.c:130: mins = min(ss);
	mov	dptr,#_ss
	mov	b,#0x40
	lcall	_min
	mov	_mins,dpl
	mov	(_mins + 1),dph
;	main.c:131: maxs = max(ss);
	mov	dptr,#_ss
	mov	b,#0x40
	lcall	_max
	mov	_maxs,dpl
	mov	(_maxs + 1),dph
;	main.c:132: s = (ss[0]+ss[1]+ss[2]+ss[3]-mins-maxs)/2;
	mov	a,(_ss + 0x0002)
	add	a,_ss
	mov	r6,a
	mov	a,((_ss + 0x0002) + 1)
	addc	a,(_ss + 1)
	mov	r7,a
	mov	a,(_ss + 0x0004)
	add	a,r6
	mov	r6,a
	mov	a,((_ss + 0x0004) + 1)
	addc	a,r7
	mov	r7,a
	mov	a,(_ss + 0x0006)
	add	a,r6
	mov	r6,a
	mov	a,((_ss + 0x0006) + 1)
	addc	a,r7
	mov	r7,a
	mov	a,r6
	clr	c
	subb	a,_mins
	mov	r6,a
	mov	a,r7
	subb	a,(_mins + 1)
	mov	r7,a
	mov	a,r6
	clr	c
	subb	a,_maxs
	mov	r6,a
	mov	a,r7
	subb	a,(_maxs + 1)
	mov	_s,r6
	clr	c
	rrc	a
	xch	a,_s
	rrc	a
	xch	a,_s
	mov	(_s + 1),a
;	main.c:133: if(s>=4000|flag==1)
	clr	c
	mov	a,_s
	subb	a,#0xa0
	mov	a,(_s + 1)
	subb	a,#0x0f
	cpl	c
	clr	a
	rlc	a
	mov	r7,a
	mov	a,#0x01
	cjne	a,_flag,00111$
	mov	a,#0x01
	sjmp	00112$
00111$:
	clr	a
00112$:
	mov	r6,a
	orl	a,r7
	jz	00102$
;	main.c:135: flag = 0;
	mov	_flag,#0x00
;	main.c:136: Display[0] = 0x40;
	mov	_Display,#0x40
;	main.c:137: Display[1] = 0x40;
	mov	(_Display + 0x0001),#0x40
;	main.c:138: Display[2] = 0x40;
	mov	(_Display + 0x0002),#0x40
;	main.c:139: Display[3] = 0x40;
	mov	(_Display + 0x0003),#0x40
	ljmp	00103$
00102$:
;	main.c:143: Display[0] = smgduan[s/1000]|0x80;
	mov	__divuint_PARM_2,#0xe8
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl,_s
	mov	dph,(_s + 1)
	lcall	__divuint
	mov	a,dpl
	add	a,#_smgduan
	mov	r1,a
	mov	ar7,@r1
	orl	ar7,#0x80
	mov	_Display,r7
;	main.c:144: DisplayDigits();
	lcall	_DisplayDigits
;	main.c:145: Display[1] = smgduan[s%1000/100];
	mov	__moduint_PARM_2,#0xe8
	mov	(__moduint_PARM_2 + 1),#0x03
	mov	dpl,_s
	mov	dph,(_s + 1)
	lcall	__moduint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	add	a,#_smgduan
	mov	r1,a
	mov	ar7,@r1
	mov	(_Display + 0x0001),r7
;	main.c:146: DisplayDigits();
	lcall	_DisplayDigits
;	main.c:147: Display[2] = smgduan[s%100/10];
	mov	__moduint_PARM_2,#0x64
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_s
	mov	dph,(_s + 1)
	lcall	__moduint
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	a,dpl
	add	a,#_smgduan
	mov	r1,a
	mov	ar7,@r1
	mov	(_Display + 0x0002),r7
;	main.c:148: DisplayDigits();
	lcall	_DisplayDigits
;	main.c:149: Display[3] = smgduan[s%10];
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_s
	mov	dph,(_s + 1)
	lcall	__moduint
	mov	a,dpl
	mov	r6,a
	add	a,#_smgduan
	mov	r1,a
	mov	ar7,@r1
	mov	(_Display + 0x0003),r7
00103$:
;	main.c:151: uchar di1 = s/1000 + '0';
	mov	__divuint_PARM_2,#0xe8
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl,_s
	mov	dph,(_s + 1)
	lcall	__divuint
	mov	r6,dpl
	mov	a,#0x30
	add	a,r6
	mov	r6,a
;	main.c:152: uchar di2 = s%1000/100 + '0';
	mov	__moduint_PARM_2,#0xe8
	mov	(__moduint_PARM_2 + 1),#0x03
	mov	dpl,_s
	mov	dph,(_s + 1)
	push	ar6
	lcall	__moduint
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov	r5,a
;	main.c:153: uchar di3 = s%100/10 + '0';
	mov	__moduint_PARM_2,#0x64
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_s
	mov	dph,(_s + 1)
	push	ar5
	lcall	__moduint
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	r4,a
;	main.c:154: uchar di4 = s%10 + '0';
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_s
	mov	dph,(_s + 1)
	push	ar4
	lcall	__moduint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	r3,a
;	main.c:155: TH1 = SPEED;
	mov	_TH1,#0xff
;	main.c:156: TL1 = SPEED;
	mov	_TL1,#0xff
;	main.c:157: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:158: delay(1);
	mov	dptr,#0x0001
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	main.c:159: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:160: Send_Str(disp0);
	mov	dptr,#_disp0
	mov	b,#0x40
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Send_Str
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	main.c:161: Send_Char(di1);
	mov	dpl,r6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Send_Char
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:162: Send_Char(di2);
	mov	dpl,r5
	push	ar4
	push	ar3
	lcall	_Send_Char
	pop	ar3
	pop	ar4
;	main.c:163: Send_Char(di3);
	mov	dpl,r4
	push	ar3
	lcall	_Send_Char
	pop	ar3
;	main.c:164: Send_Char(di4);
	mov	dpl,r3
	lcall	_Send_Char
;	main.c:165: Send_Str(disp1);
	mov	dptr,#_disp1
	mov	b,#0x40
	lcall	_Send_Str
;	main.c:166: TR1 =0;
;	assignBit
	clr	_TR1
;	main.c:167: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;k                         Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:168: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:170: uchar k=0;
	mov	r7,#0x00
;	main.c:171: InitTimer();
	push	ar7
	lcall	_InitTimer
	pop	ar7
;	main.c:172: while(1)
00113$:
;	main.c:174: if(k>=4)
	cjne	r7,#0x04,00150$
00150$:
	jc	00102$
;	main.c:176: k = 0;
	mov	r7,#0x00
00102$:
;	main.c:178: StartModule();
	push	ar7
	lcall	_StartModule
	pop	ar7
;	main.c:179: while(!ECHO);
00103$:
	jnb	_P1_2,00103$
;	main.c:180: TR0 = 1;
;	assignBit
	setb	_TR0
;	main.c:181: while(ECHO);
00106$:
	jb	_P1_2,00106$
;	main.c:182: TR0 = 0;
;	assignBit
	clr	_TR0
;	main.c:183: time = TH0*0x100 + TL0;
	mov	r6,_TH0
	mov	r5,#0x00
	mov	r3,_TL0
	mov	r4,#0x00
	mov	a,r3
	add	a,r5
	mov	_time,a
	mov	a,r4
	addc	a,r6
	mov	(_time + 1),a
;	main.c:184: TH0 = 0;
;	1-genFromRTrack replaced	mov	_TH0,#0x00
	mov	_TH0,r5
;	main.c:185: TH1 = 0;
;	1-genFromRTrack replaced	mov	_TH1,#0x00
	mov	_TH1,r5
;	main.c:186: s = (time/58.0)*10;
	mov	dpl,_time
	mov	dph,(_time + 1)
	push	ar7
	lcall	___uint2fs
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x68
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsdiv
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fs2uint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	_s,r5
	mov	(_s + 1),r6
;	main.c:187: ss[k] = (time/58.0)*10;
	mov	a,r7
	add	a,r7
	add	a,#_ss
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	main.c:188: k++;
	inc	r7
;	main.c:205: Count();
	push	ar7
	lcall	_Count
	pop	ar7
;	main.c:207: while(i--)
	mov	r6,#0x0f
00109$:
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jz	00111$
;	main.c:209: DisplayDigits();
	push	ar7
	push	ar6
	lcall	_DisplayDigits
	pop	ar6
	pop	ar7
	sjmp	00109$
00111$:
;	main.c:211: DelayXus(10);
	mov	dptr,#0x000a
	push	ar7
	lcall	_DelayXus
	pop	ar7
;	main.c:213: }
	ljmp	00113$
;------------------------------------------------------------
;Allocation info for local variables in function 'TimerOut'
;------------------------------------------------------------
;	main.c:215: void TimerOut() __interrupt 1
;	-----------------------------------------
;	 function TimerOut
;	-----------------------------------------
_TimerOut:
;	main.c:217: flag = 1;
	mov	_flag,#0x01
;	main.c:218: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

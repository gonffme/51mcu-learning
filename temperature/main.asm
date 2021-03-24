;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Temperature_Process
	.globl _ReadTemperature
	.globl _WriteOneByte
	.globl _ReadOneByte
	.globl _Init_DS18B20
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
	.globl _DS18B20_IS_OK
	.globl _Temp_Value
	.globl _CurrentT
	.globl _Display
	.globl _smgduan
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
_smgduan::
	.ds 16
_Display::
	.ds 8
_CurrentT::
	.ds 1
_Temp_Value::
	.ds 2
_DS18B20_IS_OK::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;	main.c:26: uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
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
;	main.c:28: uchar Display[8] = {0, 0, 0, 0, 0, 0, 0, 0};
	mov	_Display,#0x00
	mov	(_Display + 0x0001),#0x00
	mov	(_Display + 0x0002),#0x00
	mov	(_Display + 0x0003),#0x00
	mov	(_Display + 0x0004),#0x00
	mov	(_Display + 0x0005),#0x00
	mov	(_Display + 0x0006),#0x00
	mov	(_Display + 0x0007),#0x00
;	main.c:45: uchar CurrentT = 0;
	mov	_CurrentT,#0x00
;	main.c:46: uchar Temp_Value[] = {0x00, 0x00};
	mov	_Temp_Value,#0x00
	mov	(_Temp_Value + 0x0001),#0x00
;	main.c:47: uchar DS18B20_IS_OK = 1;
	mov	_DS18B20_IS_OK,#0x01
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
;	main.c:8: void delay(uint i)
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
;	main.c:10: while(i--);
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
;	main.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayXus'
;------------------------------------------------------------
;x                         Allocated to registers 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	main.c:13: void DelayXus(uint x)
;	-----------------------------------------
;	 function DelayXus
;	-----------------------------------------
_DelayXus:
	mov	r6,dpl
	mov	r7,dph
;	main.c:16: while(x--)
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
;	main.c:18: for(i=0;i<100;i++);
	mov	r5,#0x64
00107$:
	mov	a,r5
	dec	a
	mov	r4,a
	mov	r5,a
	jnz	00107$
	sjmp	00102$
00108$:
;	main.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DisplayDigits'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:29: void DisplayDigits()
;	-----------------------------------------
;	 function DisplayDigits
;	-----------------------------------------
_DisplayDigits:
;	main.c:32: for(i=0;i<7;i++)
	mov	r7,#0x00
00102$:
;	main.c:34: LSC = i / 4;
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
;	main.c:35: LSB = (i-4*LSC) / 2;
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
;	main.c:36: LSA = i - 4*LSC - 2*LSB;
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
;	main.c:37: P0 = Display[i];
	mov	a,r7
	add	a,#_Display
	mov	r1,a
	mov	_P0,@r1
;	main.c:38: delay(200);
	mov	dptr,#0x00c8
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:32: for(i=0;i<7;i++)
	inc	r7
	cjne	r7,#0x07,00111$
00111$:
	jnc	00112$
	ljmp	00102$
00112$:
;	main.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_DS18B20'
;------------------------------------------------------------
;	main.c:49: uchar Init_DS18B20()
;	-----------------------------------------
;	 function Init_DS18B20
;	-----------------------------------------
_Init_DS18B20:
;	main.c:51: DQ = 1;
;	assignBit
	setb	_P3_3
;	main.c:52: delay(8);
	mov	dptr,#0x0008
	lcall	_delay
;	main.c:53: DQ = 0;
;	assignBit
	clr	_P3_3
;	main.c:54: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:55: DQ = 1;
;	assignBit
	setb	_P3_3
;	main.c:56: delay(7);
	mov	dptr,#0x0007
	lcall	_delay
;	main.c:57: status = DQ;
;	assignBit
	mov	c,_P3_3
	mov	_P3_2,c
;	main.c:58: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:59: return status;
	mov	c,_P3_2
	clr	a
	rlc	a
	mov	dpl,a
;	main.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadOneByte'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:61: uchar ReadOneByte()
;	-----------------------------------------
;	 function ReadOneByte
;	-----------------------------------------
_ReadOneByte:
;	main.c:63: uchar i, dat=0;
	mov	r7,#0x00
;	main.c:64: DQ = 1;
;	assignBit
	setb	_P3_3
;	main.c:65: delay(1);
	mov	dptr,#0x0001
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:66: for(i=0;i<8;i++)
	mov	r6,#0x00
00104$:
;	main.c:68: DQ = 0;
;	assignBit
	clr	_P3_3
;	main.c:69: dat >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:70: DQ = 1;
;	assignBit
	setb	_P3_3
;	main.c:73: if(DQ)
	jnb	_P3_3,00102$
;	main.c:75: dat |= 0x80;
	mov	ar4,r7
	mov	r5,#0x00
	orl	ar4,#0x80
	mov	ar7,r4
00102$:
;	main.c:77: delay(30);
	mov	dptr,#0x001e
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:78: DQ = 1;
;	assignBit
	setb	_P3_3
;	main.c:66: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00122$
00122$:
	jc	00104$
;	main.c:80: return dat;
	mov	dpl,r7
;	main.c:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteOneByte'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:82: void WriteOneByte(uchar dat)
;	-----------------------------------------
;	 function WriteOneByte
;	-----------------------------------------
_WriteOneByte:
	mov	r7,dpl
;	main.c:85: for(i=0;i<8;i++)
	mov	r6,#0x00
00102$:
;	main.c:87: DQ = 0;
;	assignBit
	clr	_P3_3
;	main.c:88: DQ = dat & 0x01;
	mov	a,r7
	anl	a,#0x01
	add	a,#0xff
	mov	_P3_3,c
;	main.c:89: delay(5);
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:90: DQ = 1;
;	assignBit
	setb	_P3_3
;	main.c:91: dat >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:85: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00111$
00111$:
	jc	00102$
;	main.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadTemperature'
;------------------------------------------------------------
;	main.c:94: void ReadTemperature()
;	-----------------------------------------
;	 function ReadTemperature
;	-----------------------------------------
_ReadTemperature:
;	main.c:96: if(Init_DS18B20())
	lcall	_Init_DS18B20
	mov	a,dpl
	jz	00102$
;	main.c:97: DS18B20_IS_OK = 0;
	mov	_DS18B20_IS_OK,#0x00
	ret
00102$:
;	main.c:100: WriteOneByte(0xcc);
	mov	dpl,#0xcc
	lcall	_WriteOneByte
;	main.c:101: DisplayDigits();
	lcall	_DisplayDigits
;	main.c:102: WriteOneByte(0x44);
	mov	dpl,#0x44
	lcall	_WriteOneByte
;	main.c:103: DisplayDigits();
	lcall	_DisplayDigits
;	main.c:106: Init_DS18B20();
	lcall	_Init_DS18B20
;	main.c:107: WriteOneByte(0xcc);
	mov	dpl,#0xcc
	lcall	_WriteOneByte
;	main.c:108: WriteOneByte(0xbe);
	mov	dpl,#0xbe
	lcall	_WriteOneByte
;	main.c:109: DisplayDigits();
	lcall	_DisplayDigits
;	main.c:110: Temp_Value[0] = ReadOneByte();
	lcall	_ReadOneByte
	mov	a,dpl
	mov	_Temp_Value,a
;	main.c:111: Temp_Value[1] = ReadOneByte();
	lcall	_ReadOneByte
	mov	a,dpl
	mov	(_Temp_Value + 0x0001),a
;	main.c:112: DisplayDigits();
	lcall	_DisplayDigits
;	main.c:113: DS18B20_IS_OK = 1;
	mov	_DS18B20_IS_OK,#0x01
;	main.c:115: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Temperature_Process'
;------------------------------------------------------------
;Temper                    Allocated to registers r4 r5 
;tp                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	main.c:116: void Temperature_Process() //convert temperature from hex to decimal, then make it diplayable.
;	-----------------------------------------
;	 function Temperature_Process
;	-----------------------------------------
_Temperature_Process:
;	main.c:118: int Temper = Temp_Value[1];
;	main.c:119: Temper <<= 8;
	mov	r7,(_Temp_Value + 0x0001)
	mov	r6,#0x00
;	main.c:120: Temper |= Temp_Value[0];
	mov	r4,_Temp_Value
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
;	main.c:121: DisplayDigits();
	push	ar7
	push	ar6
	lcall	_DisplayDigits
	pop	ar6
	pop	ar7
;	main.c:123: if(Temper<0)
	mov	a,r7
	jnb	acc.7,00102$
;	main.c:125: Display[0] = 0x40;
	mov	_Display,#0x40
;	main.c:126: Temper -= 1;
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
;	main.c:127: Temper = !Temper;
	orl	a,r4
	cjne	a,#0x01,00112$
00112$:
	clr	a
	rlc	a
	mov	r5,a
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	sjmp	00103$
00102$:
;	main.c:131: Display[0] = 0x00;
	mov	_Display,#0x00
00103$:
;	main.c:133: tp = Temper;
	mov	dpl,r6
	mov	dph,r7
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:134: DisplayDigits();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_DisplayDigits
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:135: Temper = tp * 0.0625 * 100 + 0.5;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xc8
	mov	a,#0x40
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
;	main.c:136: DisplayDigits();
	push	ar7
	push	ar6
	lcall	_DisplayDigits
	pop	ar6
	pop	ar7
;	main.c:137: Display[1] = smgduan[Temper/10000];
	mov	__divsint_PARM_2,#0x10
	mov	(__divsint_PARM_2 + 1),#0x27
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_smgduan
	mov	r1,a
	mov	ar5,@r1
	mov	(_Display + 0x0001),r5
;	main.c:138: DisplayDigits();
	push	ar7
	push	ar6
	lcall	_DisplayDigits
	pop	ar6
	pop	ar7
;	main.c:139: Display[2] = smgduan[Temper%10000/1000];
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x27
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_smgduan
	mov	r1,a
	mov	ar5,@r1
	mov	(_Display + 0x0002),r5
;	main.c:140: DisplayDigits();
	push	ar7
	push	ar6
	lcall	_DisplayDigits
	pop	ar6
	pop	ar7
;	main.c:141: Display[3] = smgduan[Temper%1000/100]|0x80;
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_smgduan
	mov	r1,a
	mov	ar5,@r1
	orl	ar5,#0x80
	mov	(_Display + 0x0003),r5
;	main.c:142: DisplayDigits();
	push	ar7
	push	ar6
	lcall	_DisplayDigits
	pop	ar6
	pop	ar7
;	main.c:143: Display[4] = smgduan[Temper%100/10];
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_smgduan
	mov	r1,a
	mov	ar5,@r1
	mov	(_Display + 0x0004),r5
;	main.c:144: DisplayDigits();
	push	ar7
	push	ar6
	lcall	_DisplayDigits
	pop	ar6
	pop	ar7
;	main.c:145: Display[5] = smgduan[Temper%10];
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	a,dpl
	add	a,#_smgduan
	mov	r1,a
	mov	ar7,@r1
	mov	(_Display + 0x0005),r7
;	main.c:146: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:148: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:150: Init_DS18B20();
	lcall	_Init_DS18B20
;	main.c:151: delay(50000);
	mov	dptr,#0xc350
	lcall	_delay
;	main.c:152: delay(25000);
	mov	dptr,#0x61a8
	lcall	_delay
;	main.c:153: while(1)
00105$:
;	main.c:155: ReadTemperature();
	lcall	_ReadTemperature
;	main.c:156: Temperature_Process();
	lcall	_Temperature_Process
;	main.c:158: while(i--)
	mov	r7,#0x0a
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00103$
;	main.c:160: DisplayDigits();
	push	ar7
	lcall	_DisplayDigits
	pop	ar7
	sjmp	00101$
00103$:
;	main.c:162: DelayXus(10);
	mov	dptr,#0x000a
	lcall	_DelayXus
;	main.c:164: }
	sjmp	00105$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

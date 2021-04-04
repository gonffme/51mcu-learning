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
	.globl _Digitspros
	.globl _Keypros
	.globl _DisplayDigits
	.globl _DelayXus
	.globl _delay
	.globl _At24c02Read
	.globl _At24c02Write
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
	.globl _num
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
_num::
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
;	main.c:25: uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
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
;	main.c:27: uchar Display[8] = {0, 0, 0, 0, 0, 0, 0, 0};
	mov	_Display,#0x00
	mov	(_Display + 0x0001),#0x00
	mov	(_Display + 0x0002),#0x00
	mov	(_Display + 0x0003),#0x00
	mov	(_Display + 0x0004),#0x00
	mov	(_Display + 0x0005),#0x00
	mov	(_Display + 0x0006),#0x00
	mov	(_Display + 0x0007),#0x00
;	main.c:46: uchar num=0;
	mov	_num,#0x00
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
;	main.c:6: void delay(uint i)
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
;	main.c:8: while(i--);
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
;	main.c:9: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayXus'
;------------------------------------------------------------
;x                         Allocated to registers 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	main.c:11: void DelayXus(uint x)
;	-----------------------------------------
;	 function DelayXus
;	-----------------------------------------
_DelayXus:
	mov	r6,dpl
	mov	r7,dph
;	main.c:14: while(x--)
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
;	main.c:16: for(i=0;i<100;i++);
	mov	r5,#0x64
00107$:
	mov	a,r5
	dec	a
	mov	r4,a
	mov	r5,a
	jnz	00107$
	sjmp	00102$
00108$:
;	main.c:18: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DisplayDigits'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:28: void DisplayDigits()
;	-----------------------------------------
;	 function DisplayDigits
;	-----------------------------------------
_DisplayDigits:
;	main.c:31: for(i=4;i<8;i++)
	mov	r7,#0x04
00102$:
;	main.c:33: LSC = i / 4;
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
;	main.c:34: LSB = (i-4*LSC) / 2;
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
;	main.c:35: LSA = i - 4*LSC - 2*LSB;
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
;	main.c:36: P0 = Display[i];
	mov	a,r7
	add	a,#_Display
	mov	r1,a
	mov	_P0,@r1
;	main.c:37: delay(100);
	mov	dptr,#0x0064
	push	ar7
	lcall	_delay
	pop	ar7
;	main.c:38: P0 = 0x00;
	mov	_P0,#0x00
;	main.c:31: for(i=4;i<8;i++)
	inc	r7
	cjne	r7,#0x08,00111$
00111$:
	jnc	00112$
	ljmp	00102$
00112$:
;	main.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Keypros'
;------------------------------------------------------------
;	main.c:47: void Keypros()
;	-----------------------------------------
;	 function Keypros
;	-----------------------------------------
_Keypros:
;	main.c:49: if(k1 == 0)
	jb	_P1_0,00107$
;	main.c:51: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	main.c:52: if(k1==0)
	jb	_P1_0,00107$
;	main.c:54: while(!k1);
00101$:
	jnb	_P1_0,00101$
;	main.c:55: At24c02Write(0x01,num);
	mov	_At24c02Write_PARM_2,_num
	mov	dpl,#0x01
	lcall	_At24c02Write
00107$:
;	main.c:58: if(k2 == 0)
	jb	_P1_1,00114$
;	main.c:60: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	main.c:61: if(k2==0)
	jb	_P1_1,00114$
;	main.c:63: while(!k2);
00108$:
	jnb	_P1_1,00108$
;	main.c:64: num=At24c02Read(0x01);
	mov	dpl,#0x01
	lcall	_At24c02Read
	mov	_num,dpl
00114$:
;	main.c:67: if(k3 == 0)
	jb	_P1_2,00123$
;	main.c:69: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	main.c:70: if(k3==0)
	jb	_P1_2,00119$
;	main.c:72: num += 1;
	mov	a,_num
	mov	r7,a
	inc	a
;	main.c:73: if(num>=255)
	mov	_num,a
	clr	c
	subb	a,#0xff
	jc	00119$
;	main.c:74: {num=0;}
	mov	_num,#0x00
;	main.c:76: while(!k3);
00119$:
	jnb	_P1_2,00119$
00123$:
;	main.c:78: if(k4 == 0)
	jb	_P1_3,00131$
;	main.c:80: delay(1000);
	mov	dptr,#0x03e8
	lcall	_delay
;	main.c:81: if(k4 == 0)
	jb	_P1_3,00126$
;	main.c:83: num =0;
	mov	_num,#0x00
;	main.c:85: while(!k4);
00126$:
	jnb	_P1_3,00126$
00131$:
;	main.c:87: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Digitspros'
;------------------------------------------------------------
;	main.c:89: void Digitspros()
;	-----------------------------------------
;	 function Digitspros
;	-----------------------------------------
_Digitspros:
;	main.c:91: Display[4] = smgduan[num/1000];
	mov	r6,_num
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_smgduan
	mov	r1,a
	mov	ar7,@r1
	mov	(_Display + 0x0004),r7
;	main.c:92: Display[5] = smgduan[num%1000/100];
	mov	r6,_num
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_smgduan
	mov	r1,a
	mov	ar7,@r1
	mov	(_Display + 0x0005),r7
;	main.c:93: Display[6] = smgduan[num%100/10];
	mov	r6,_num
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x64
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_smgduan
	mov	r1,a
	mov	ar7,@r1
	mov	(_Display + 0x0006),r7
;	main.c:94: Display[7] = smgduan[num%10];
	mov	r6,_num
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	a,r6
	add	a,#_smgduan
	mov	r1,a
	mov	ar7,@r1
	mov	(_Display + 0x0007),r7
;	main.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:97: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:99: while(1)
00102$:
;	main.c:101: Keypros();
	lcall	_Keypros
;	main.c:102: Digitspros();
	lcall	_Digitspros
;	main.c:103: DisplayDigits();
	lcall	_DisplayDigits
;	main.c:105: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

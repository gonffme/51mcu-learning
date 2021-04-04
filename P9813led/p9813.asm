;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module p9813
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetData_PARM_3
	.globl _SetData_PARM_2
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
	.globl _Delayms
	.globl _Init_P9813
	.globl _SetData
	.globl _SendData
	.globl _TestData
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_SetData_PARM_2:
	.ds 1
_SetData_PARM_3:
	.ds 1
_SetData_b_65536_15:
	.ds 1
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delayms'
;------------------------------------------------------------
;i                         Allocated to registers 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	p9813.c:8: void Delayms(uint i)
;	-----------------------------------------
;	 function Delayms
;	-----------------------------------------
_Delayms:
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
;	p9813.c:11: while(i--)
00104$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00126$
	dec	r7
00126$:
	mov	a,r4
	orl	a,r5
	jz	00107$
;	p9813.c:14: while(j--);
	mov	r4,#0x64
	mov	r5,#0x00
00101$:
	mov	ar2,r4
	mov	ar3,r5
	dec	r4
	cjne	r4,#0xff,00128$
	dec	r5
00128$:
	mov	a,r2
	orl	a,r3
	jz	00104$
	sjmp	00101$
00107$:
;	p9813.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_P9813'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	p9813.c:18: void Init_P9813(void)
;	-----------------------------------------
;	 function Init_P9813
;	-----------------------------------------
_Init_P9813:
;	p9813.c:21: DAT = 0;
;	assignBit
	clr	_P0_7
;	p9813.c:22: for(i=0;i<32;i++)
	mov	r7,#0x00
00102$:
;	p9813.c:24: CLK = 0;
;	assignBit
	clr	_P0_6
;	p9813.c:26: CLK = 1;
;	assignBit
	setb	_P0_6
;	p9813.c:22: for(i=0;i<32;i++)
	inc	r7
	cjne	r7,#0x20,00111$
00111$:
	jc	00102$
;	p9813.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetData'
;------------------------------------------------------------
;g                         Allocated with name '_SetData_PARM_2'
;r                         Allocated with name '_SetData_PARM_3'
;b                         Allocated with name '_SetData_b_65536_15'
;temp                      Allocated to registers r0 r1 r2 r7 
;a                         Allocated to registers r0 r1 r2 r7 
;------------------------------------------------------------
;	p9813.c:32: u32 SetData(uchar b,uchar g,uchar r)
;	-----------------------------------------
;	 function SetData
;	-----------------------------------------
_SetData:
	mov	_SetData_b_65536_15,dpl
;	p9813.c:38: a = ((~b)&0x00c0);
	mov	r5,_SetData_b_65536_15
	mov	r6,#0x00
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	a,r6
	cpl	a
	anl	ar5,#0xc0
	clr	a
	mov	r6,a
	rlc	a
	subb	a,acc
;	p9813.c:39: temp |= a<<22;
	mov	ar4,r5
	mov	a,r6
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r4
	rrc	a
	xch	a,r4
	rrc	a
	mov	c,acc.0
	xch	a,r4
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r3,a
	mov	r5,#0x00
	mov	r6,#0x00
	orl	ar3,#0xc0
;	p9813.c:40: a = ((~g)&0x00c0);
	mov	r1,_SetData_PARM_2
	mov	r2,#0x00
	mov	a,r1
	cpl	a
	mov	r1,a
	mov	a,r2
	cpl	a
	anl	ar1,#0xc0
	clr	a
	mov	r0,a
	rlc	a
	subb	a,acc
;	p9813.c:41: temp |= a<<20;
	mov	ar2,r1
	mov	a,r0
	swap	a
	anl	a,#0xf0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r7,a
	clr	a
	mov	r1,a
	mov	r0,a
	mov	a,r5
	orl	ar1,a
	mov	a,r6
	orl	ar0,a
	mov	a,r4
	orl	ar2,a
	mov	a,r3
	orl	ar7,a
;	p9813.c:42: a = ((~r)&0x00c0);
	mov	r5,_SetData_PARM_3
	mov	r6,#0x00
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	a,r6
	cpl	a
	anl	ar5,#0xc0
	clr	a
	mov	r6,a
	rlc	a
	subb	a,acc
;	p9813.c:43: temp |= a<<18;
	mov	ar4,r5
	mov	a,r6
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r3,a
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r1
	orl	ar5,a
	mov	a,r0
	orl	ar6,a
	mov	a,r2
	orl	ar4,a
	mov	a,r7
	orl	ar3,a
;	p9813.c:44: a = b;
	mov	r0,_SetData_b_65536_15
	mov	r1,#0x00
;	p9813.c:45: temp |= a<<16;
	mov	ar7,r1
	mov	ar2,r0
	clr	a
	mov	r0,a
	mov	r1,a
	mov	a,r5
	orl	ar0,a
	mov	a,r6
	orl	ar1,a
	mov	a,r4
	orl	ar2,a
	mov	a,r3
	orl	ar7,a
;	p9813.c:46: a = g;
	mov	r3,_SetData_PARM_2
	mov	r4,#0x00
	mov	r5,#0x00
;	p9813.c:47: temp |= a<<8;
	mov	ar6,r5
	mov	ar5,r4
	mov	ar4,r3
	clr	a
	orl	ar0,a
	mov	a,r4
	orl	ar1,a
	mov	a,r5
	orl	ar2,a
	mov	a,r6
	orl	ar7,a
;	p9813.c:48: a = r;
	mov	r3,_SetData_PARM_3
;	p9813.c:49: temp |= a<<0;
	clr	a
	mov	r4,a
	mov	r5,a
	mov	r6,a
	mov	a,r0
	orl	ar3,a
	mov	a,r1
	orl	ar4,a
	mov	a,r2
	orl	ar5,a
	mov	a,r7
	orl	ar6,a
;	p9813.c:50: return temp;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
;	p9813.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendData'
;------------------------------------------------------------
;data                      Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	p9813.c:53: void SendData(u32 data)
;	-----------------------------------------
;	 function SendData
;	-----------------------------------------
_SendData:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	p9813.c:56: for(i=0;i<32;i++)
	mov	r3,#0x00
00105$:
;	p9813.c:58: if(data&0x80000000)
	mov	a,r7
	jnb	acc.7,00102$
;	p9813.c:60: DAT = 1;
;	assignBit
	setb	_P0_7
	sjmp	00103$
00102$:
;	p9813.c:64: DAT = 0;
;	assignBit
	clr	_P0_7
00103$:
;	p9813.c:66: data <<= 1;
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
;	p9813.c:68: CLK = 0;
;	assignBit
	clr	_P0_6
;	p9813.c:70: CLK = 1;
;	assignBit
	setb	_P0_6
;	p9813.c:56: for(i=0;i<32;i++)
	inc	r3
	cjne	r3,#0x20,00119$
00119$:
	jc	00105$
;	p9813.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TestData'
;------------------------------------------------------------
;data                      Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	p9813.c:74: void TestData(u32 data)
;	-----------------------------------------
;	 function TestData
;	-----------------------------------------
_TestData:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	p9813.c:77: for(i=0;i<4;i++)
	mov	r3,#0x00
00102$:
;	p9813.c:79: P2 = data>>24;
	mov	_P2,r7
;	p9813.c:80: Delayms(1000);
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Delayms
;	p9813.c:81: Delayms(1000);
	mov	dptr,#0x03e8
	lcall	_Delayms
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	p9813.c:82: data <<= 8;
	mov	ar7,r6
	mov	ar6,r5
	mov	ar5,r4
	mov	r4,#0x00
;	p9813.c:83: Delayms(1000);
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Delayms
;	p9813.c:84: Delayms(1000);
	mov	dptr,#0x03e8
	lcall	_Delayms
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	p9813.c:77: for(i=0;i<4;i++)
	inc	r3
	cjne	r3,#0x04,00111$
00111$:
	jc	00102$
;	p9813.c:86: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

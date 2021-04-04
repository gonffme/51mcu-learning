;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module ds1302
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __nop
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
	.globl _Ds1302Write_PARM_2
	.globl _TIME
	.globl _WRITE_RTC_ADDR
	.globl _READ_RTC_ADDR
	.globl _Ds1302GW
	.globl _Ds1302Write
	.globl _Ds1302Init
	.globl _Ds1302GR
	.globl _Ds1302Read
	.globl _Ds1302ReadTime
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
_READ_RTC_ADDR::
	.ds 7
_WRITE_RTC_ADDR::
	.ds 7
_TIME::
	.ds 7
_Ds1302Write_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;	ds1302.c:9: char READ_RTC_ADDR[7]={0x81,0x83,0x85,0x87,0x89,0x8b,0x8d};
	mov	_READ_RTC_ADDR,#0x81
	mov	(_READ_RTC_ADDR + 0x0001),#0x83
	mov	(_READ_RTC_ADDR + 0x0002),#0x85
	mov	(_READ_RTC_ADDR + 0x0003),#0x87
	mov	(_READ_RTC_ADDR + 0x0004),#0x89
	mov	(_READ_RTC_ADDR + 0x0005),#0x8b
	mov	(_READ_RTC_ADDR + 0x0006),#0x8d
;	ds1302.c:10: char WRITE_RTC_ADDR[7]={0x80,0x82,0x84,0x86,0x88,0x8a,0x8c};
	mov	_WRITE_RTC_ADDR,#0x80
	mov	(_WRITE_RTC_ADDR + 0x0001),#0x82
	mov	(_WRITE_RTC_ADDR + 0x0002),#0x84
	mov	(_WRITE_RTC_ADDR + 0x0003),#0x86
	mov	(_WRITE_RTC_ADDR + 0x0004),#0x88
	mov	(_WRITE_RTC_ADDR + 0x0005),#0x8a
	mov	(_WRITE_RTC_ADDR + 0x0006),#0x8c
;	ds1302.c:12: uchar TIME[7]={0x55,0x15,0x12,0x07,0x05,0x06,0x16};
	mov	_TIME,#0x55
	mov	(_TIME + 0x0001),#0x15
	mov	(_TIME + 0x0002),#0x12
	mov	(_TIME + 0x0003),#0x07
	mov	(_TIME + 0x0004),#0x05
	mov	(_TIME + 0x0005),#0x06
	mov	(_TIME + 0x0006),#0x16
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
;Allocation info for local variables in function '_nop'
;------------------------------------------------------------
;	ds1302.c:4: void _nop()
;	-----------------------------------------
;	 function _nop
;	-----------------------------------------
__nop:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	ds1302.c:6: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Ds1302GW'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;n                         Allocated to registers r6 
;------------------------------------------------------------
;	ds1302.c:14: void Ds1302GW(uchar dat) //general writing in the communication protocol
;	-----------------------------------------
;	 function Ds1302GW
;	-----------------------------------------
_Ds1302GW:
	mov	r7,dpl
;	ds1302.c:17: for(n=0;n<8;n++)
	mov	r6,#0x00
00102$:
;	ds1302.c:19: DSIO = dat&0x01; //lower bits first
	mov	a,r7
	anl	a,#0x01
	add	a,#0xff
	mov	_P3_4,c
;	ds1302.c:20: SCLK = 1; //uprising edge transmit
;	assignBit
	setb	_P3_6
;	ds1302.c:21: SCLK = 0;
;	assignBit
	clr	_P3_6
;	ds1302.c:22: _nop();
	push	ar7
	push	ar6
	lcall	__nop
	pop	ar6
	pop	ar7
;	ds1302.c:23: dat >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	ds1302.c:17: for(n=0;n<8;n++)
	inc	r6
	cjne	r6,#0x08,00111$
00111$:
	jc	00102$
;	ds1302.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Ds1302Write'
;------------------------------------------------------------
;dat                       Allocated with name '_Ds1302Write_PARM_2'
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	ds1302.c:26: void Ds1302Write(uchar addr, uchar dat)
;	-----------------------------------------
;	 function Ds1302Write
;	-----------------------------------------
_Ds1302Write:
	mov	r7,dpl
;	ds1302.c:28: RST = 0;
;	assignBit
	clr	_P3_7
;	ds1302.c:29: SCLK = 0;
;	assignBit
	clr	_P3_6
;	ds1302.c:30: _nop();
	push	ar7
	lcall	__nop
	pop	ar7
;	ds1302.c:31: RST = 1; //enable reset
;	assignBit
	setb	_P3_7
;	ds1302.c:32: Ds1302GW(addr);
	mov	dpl,r7
	lcall	_Ds1302GW
;	ds1302.c:33: Ds1302GW(dat);
	mov	dpl,_Ds1302Write_PARM_2
	lcall	_Ds1302GW
;	ds1302.c:34: RST = 0;
;	assignBit
	clr	_P3_7
;	ds1302.c:35: _nop();
	lcall	__nop
;	ds1302.c:36: SCLK = 1;
;	assignBit
	setb	_P3_6
;	ds1302.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Ds1302Init'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	ds1302.c:39: void Ds1302Init()
;	-----------------------------------------
;	 function Ds1302Init
;	-----------------------------------------
_Ds1302Init:
;	ds1302.c:42: Ds1302Write(0x80,0x00);
	mov	_Ds1302Write_PARM_2,#0x00
	mov	dpl,#0x80
	lcall	_Ds1302Write
;	ds1302.c:43: Ds1302Write(0x8e,0x00);
	mov	_Ds1302Write_PARM_2,#0x00
	mov	dpl,#0x8e
	lcall	_Ds1302Write
;	ds1302.c:44: Ds1302Write(0x80,0x80);
	mov	_Ds1302Write_PARM_2,#0x80
	mov	dpl,#0x80
	lcall	_Ds1302Write
;	ds1302.c:45: for(n=0;n<7;n++)
	mov	r7,#0x00
00102$:
;	ds1302.c:47: Ds1302Write(WRITE_RTC_ADDR[n],TIME[n]);
	mov	a,r7
	add	a,#_WRITE_RTC_ADDR
	mov	r1,a
	mov	dpl,@r1
	mov	a,r7
	add	a,#_TIME
	mov	r1,a
	mov	_Ds1302Write_PARM_2,@r1
	push	ar7
	lcall	_Ds1302Write
	pop	ar7
;	ds1302.c:45: for(n=0;n<7;n++)
	inc	r7
	cjne	r7,#0x07,00115$
00115$:
	jc	00102$
;	ds1302.c:49: Ds1302Write(0x8e,0x80);
	mov	_Ds1302Write_PARM_2,#0x80
	mov	dpl,#0x8e
;	ds1302.c:50: }
	ljmp	_Ds1302Write
;------------------------------------------------------------
;Allocation info for local variables in function 'Ds1302GR'
;------------------------------------------------------------
;n                         Allocated to registers r6 
;temp                      Allocated to registers r5 
;------------------------------------------------------------
;	ds1302.c:52: uchar Ds1302GR()
;	-----------------------------------------
;	 function Ds1302GR
;	-----------------------------------------
_Ds1302GR:
;	ds1302.c:54: uchar n,temp=0x00;
	mov	r7,#0x00
;	ds1302.c:55: for(n=0;n<8;n++)
	mov	r6,#0x00
00105$:
;	ds1302.c:57: temp >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r5,a
;	ds1302.c:58: if(DSIO==1)
	jnb	_P3_4,00102$
;	ds1302.c:60: temp |= 0x80;
	mov	ar3,r5
	orl	ar3,#0x80
	mov	ar7,r3
	sjmp	00103$
00102$:
;	ds1302.c:64: temp &= 0x7f;
	mov	a,#0x7f
	anl	a,r5
	mov	r7,a
00103$:
;	ds1302.c:66: SCLK = 1;
;	assignBit
	setb	_P3_6
;	ds1302.c:67: SCLK = 0;
;	assignBit
	clr	_P3_6
;	ds1302.c:55: for(n=0;n<8;n++)
	inc	r6
	cjne	r6,#0x08,00126$
00126$:
	jc	00105$
;	ds1302.c:69: return temp;
	mov	dpl,r7
;	ds1302.c:70: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Ds1302Read'
;------------------------------------------------------------
;addr                      Allocated to registers 
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	ds1302.c:71: uchar Ds1302Read(uchar addr)
;	-----------------------------------------
;	 function Ds1302Read
;	-----------------------------------------
_Ds1302Read:
	mov	r7,dpl
;	ds1302.c:74: RST = 1;
;	assignBit
	setb	_P3_7
;	ds1302.c:75: _nop();
	push	ar7
	lcall	__nop
	pop	ar7
;	ds1302.c:76: addr |= 0x01;
	orl	ar7,#0x01
	mov	dpl,r7
;	ds1302.c:77: Ds1302GW(addr);
	lcall	_Ds1302GW
;	ds1302.c:78: dat=Ds1302GR();
	lcall	_Ds1302GR
	mov	r7,dpl
;	ds1302.c:82: RST = 0; //make Ds1302 have time to get stable
;	assignBit
	clr	_P3_7
;	ds1302.c:83: _nop();
	push	ar7
	lcall	__nop
;	ds1302.c:84: SCLK = 1;
;	assignBit
	setb	_P3_6
;	ds1302.c:85: _nop();
	lcall	__nop
;	ds1302.c:86: DSIO = 0;
;	assignBit
	clr	_P3_4
;	ds1302.c:87: _nop();
	lcall	__nop
;	ds1302.c:88: DSIO = 1;
;	assignBit
	setb	_P3_4
;	ds1302.c:89: _nop();
	lcall	__nop
	pop	ar7
;	ds1302.c:90: return dat;
	mov	dpl,r7
;	ds1302.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Ds1302ReadTime'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	ds1302.c:93: void Ds1302ReadTime()
;	-----------------------------------------
;	 function Ds1302ReadTime
;	-----------------------------------------
_Ds1302ReadTime:
;	ds1302.c:96: for(n=0;n<7;n++)
	mov	r7,#0x00
00102$:
;	ds1302.c:98: TIME[n] = Ds1302Read(READ_RTC_ADDR[n]);
	mov	a,r7
	add	a,#_TIME
	mov	r1,a
	mov	a,r7
	add	a,#_READ_RTC_ADDR
	mov	r0,a
	mov	dpl,@r0
	push	ar7
	push	ar1
	lcall	_Ds1302Read
	mov	a,dpl
	pop	ar1
	pop	ar7
	mov	@r1,a
;	ds1302.c:96: for(n=0;n<7;n++)
	inc	r7
	cjne	r7,#0x07,00111$
00111$:
	jc	00102$
;	ds1302.c:100: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

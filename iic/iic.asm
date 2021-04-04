;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module iic
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _nop
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
	.globl _At24c02Write_PARM_2
	.globl _I2cStart
	.globl _I2cStop
	.globl _I2cSendByte
	.globl _I2cReadByte
	.globl _At24c02Write
	.globl _At24c02Read
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
_At24c02Write_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'nop'
;------------------------------------------------------------
;	iic.c:5: void nop()
;	-----------------------------------------
;	 function nop
;	-----------------------------------------
_nop:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	iic.c:6: {}
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2cStart'
;------------------------------------------------------------
;	iic.c:12: void I2cStart()
;	-----------------------------------------
;	 function I2cStart
;	-----------------------------------------
_I2cStart:
;	iic.c:14: SDA = 1;
;	assignBit
	setb	_P3_0
;	iic.c:15: _Nop();
	lcall	_nop
;	iic.c:16: _Nop();
	lcall	_nop
;	iic.c:17: _Nop();
	lcall	_nop
;	iic.c:18: _Nop();
	lcall	_nop
;	iic.c:19: _Nop();
	lcall	_nop
;	iic.c:20: _Nop();
	lcall	_nop
;	iic.c:21: _Nop();
	lcall	_nop
;	iic.c:22: _Nop();
	lcall	_nop
;	iic.c:23: SCL = 1;
;	assignBit
	setb	_P3_1
;	iic.c:24: _Nop();
	lcall	_nop
;	iic.c:25: _Nop();
	lcall	_nop
;	iic.c:26: _Nop();
	lcall	_nop
;	iic.c:27: _Nop();
	lcall	_nop
;	iic.c:28: _Nop();
	lcall	_nop
;	iic.c:29: _Nop();
	lcall	_nop
;	iic.c:30: _Nop();
	lcall	_nop
;	iic.c:31: _Nop();
	lcall	_nop
;	iic.c:32: _Nop();
	lcall	_nop
;	iic.c:33: _Nop();
	lcall	_nop
;	iic.c:34: SDA = 0;
;	assignBit
	clr	_P3_0
;	iic.c:35: _Nop();
	lcall	_nop
;	iic.c:36: _Nop();
	lcall	_nop
;	iic.c:37: _Nop();
	lcall	_nop
;	iic.c:38: _Nop();
	lcall	_nop
;	iic.c:39: _Nop();
	lcall	_nop
;	iic.c:40: _Nop();
	lcall	_nop
;	iic.c:41: _Nop();
	lcall	_nop
;	iic.c:42: _Nop();
	lcall	_nop
;	iic.c:43: _Nop();
	lcall	_nop
;	iic.c:44: _Nop();
	lcall	_nop
;	iic.c:45: SCL = 0;
;	assignBit
	clr	_P3_1
;	iic.c:46: _Nop();
	lcall	_nop
;	iic.c:47: _Nop();
	lcall	_nop
;	iic.c:48: _Nop();
	lcall	_nop
;	iic.c:49: _Nop();
	lcall	_nop
;	iic.c:50: _Nop();
;	iic.c:51: }
	ljmp	_nop
;------------------------------------------------------------
;Allocation info for local variables in function 'I2cStop'
;------------------------------------------------------------
;	iic.c:53: void I2cStop()
;	-----------------------------------------
;	 function I2cStop
;	-----------------------------------------
_I2cStop:
;	iic.c:55: SDA = 0;
;	assignBit
	clr	_P3_0
;	iic.c:56: _Nop();
	lcall	_nop
;	iic.c:57: SCL = 1;
;	assignBit
	setb	_P3_1
;	iic.c:58: _Nop();
	lcall	_nop
;	iic.c:59: _Nop();
	lcall	_nop
;	iic.c:60: _Nop();
	lcall	_nop
;	iic.c:61: _Nop();
	lcall	_nop
;	iic.c:62: _Nop();
	lcall	_nop
;	iic.c:63: SDA = 1;
;	assignBit
	setb	_P3_0
;	iic.c:64: _Nop();
	lcall	_nop
;	iic.c:65: _Nop();
	lcall	_nop
;	iic.c:66: _Nop();
	lcall	_nop
;	iic.c:67: _Nop();
	lcall	_nop
;	iic.c:68: _Nop();
;	iic.c:69: }
	ljmp	_nop
;------------------------------------------------------------
;Allocation info for local variables in function 'I2cSendByte'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;a                         Allocated to registers r6 
;b                         Allocated to registers 
;------------------------------------------------------------
;	iic.c:71: uchar I2cSendByte(uchar dat)
;	-----------------------------------------
;	 function I2cSendByte
;	-----------------------------------------
_I2cSendByte:
	mov	r7,dpl
;	iic.c:74: for(a=0;a<8;a++)
	mov	r6,#0x00
00108$:
;	iic.c:76: if((dat<<a)&0x80) 
	mov	ar4,r7
	mov	r5,#0x00
	mov	b,r6
	inc	b
	sjmp	00130$
00129$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00130$:
	djnz	b,00129$
	mov	a,r4
	jnb	acc.7,00102$
;	iic.c:78: SDA = 1;
;	assignBit
	setb	_P3_0
	sjmp	00103$
00102$:
;	iic.c:82: SDA = 0;
;	assignBit
	clr	_P3_0
00103$:
;	iic.c:84: _Nop();
	push	ar7
	push	ar6
	lcall	_nop
;	iic.c:85: _Nop();
	lcall	_nop
;	iic.c:86: SCL = 1;
;	assignBit
	setb	_P3_1
;	iic.c:87: _Nop();
	lcall	_nop
;	iic.c:88: _Nop();
	lcall	_nop
;	iic.c:89: _Nop();
	lcall	_nop
;	iic.c:90: _Nop();
	lcall	_nop
;	iic.c:91: _Nop();
	lcall	_nop
;	iic.c:92: _Nop();
	lcall	_nop
;	iic.c:93: _Nop();
	lcall	_nop
;	iic.c:94: _Nop();
	lcall	_nop
;	iic.c:95: SCL = 0;
;	assignBit
	clr	_P3_1
;	iic.c:96: _Nop();
	lcall	_nop
;	iic.c:97: _Nop();
	lcall	_nop
	pop	ar6
	pop	ar7
;	iic.c:74: for(a=0;a<8;a++)
	inc	r6
	cjne	r6,#0x08,00132$
00132$:
	jc	00108$
;	iic.c:99: SDA = 1;
;	assignBit
	setb	_P3_0
;	iic.c:100: _Nop();
	lcall	_nop
;	iic.c:101: _Nop();
	lcall	_nop
;	iic.c:102: _Nop();
	lcall	_nop
;	iic.c:103: SCL = 1;
;	assignBit
	setb	_P3_1
;	iic.c:104: _Nop();
	lcall	_nop
;	iic.c:105: _Nop();
	lcall	_nop
;	iic.c:106: _Nop();
	lcall	_nop
;	iic.c:107: _Nop();
	lcall	_nop
;	iic.c:108: _Nop();
	lcall	_nop
;	iic.c:118: if(SDA)
	jnb	_P3_0,00106$
;	iic.c:120: SCL = 0;
;	assignBit
	clr	_P3_1
;	iic.c:121: _Nop();
	lcall	_nop
;	iic.c:122: _Nop();
	lcall	_nop
;	iic.c:123: _Nop();
	lcall	_nop
;	iic.c:124: _Nop();
	lcall	_nop
;	iic.c:125: SDA = 1;
;	assignBit
	setb	_P3_0
;	iic.c:126: _Nop();
	lcall	_nop
;	iic.c:127: _Nop();
	lcall	_nop
;	iic.c:128: return 0;
	mov	dpl,#0x00
	ret
00106$:
;	iic.c:132: SCL = 0;
;	assignBit
	clr	_P3_1
;	iic.c:133: _Nop();
	lcall	_nop
;	iic.c:134: _Nop();
	lcall	_nop
;	iic.c:135: _Nop();
	lcall	_nop
;	iic.c:136: _Nop();
	lcall	_nop
;	iic.c:137: SDA = 1;
;	assignBit
	setb	_P3_0
;	iic.c:138: _Nop();
	lcall	_nop
;	iic.c:139: _Nop();
	lcall	_nop
;	iic.c:140: return 1;
	mov	dpl,#0x01
;	iic.c:142: }	
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2cReadByte'
;------------------------------------------------------------
;a                         Allocated to registers r6 
;dat                       Allocated to registers r5 
;------------------------------------------------------------
;	iic.c:144: uchar I2cReadByte()
;	-----------------------------------------
;	 function I2cReadByte
;	-----------------------------------------
_I2cReadByte:
;	iic.c:146: uchar a=0,dat=0;
	mov	r7,#0x00
;	iic.c:147: SDA = 1;
;	assignBit
	setb	_P3_0
;	iic.c:148: for(a=0;a<8;a++)
	mov	r6,#0x00
00102$:
;	iic.c:150: _Nop();
	push	ar7
	push	ar6
	lcall	_nop
;	iic.c:151: SCL = 0;
;	assignBit
	clr	_P3_1
;	iic.c:152: _Nop();
	lcall	_nop
;	iic.c:153: _Nop();
	lcall	_nop
;	iic.c:154: _Nop();
	lcall	_nop
;	iic.c:155: _Nop();
	lcall	_nop
;	iic.c:156: _Nop();
	lcall	_nop
;	iic.c:157: SCL = 1;
;	assignBit
	setb	_P3_1
;	iic.c:158: _Nop();
	lcall	_nop
;	iic.c:159: _Nop();
	lcall	_nop
	pop	ar6
	pop	ar7
;	iic.c:160: dat<<=1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r5,a
;	iic.c:161: dat |= SDA;	
	mov	c,_P3_0
	clr	a
	rlc	a
	orl	a,r5
	mov	r7,a
;	iic.c:162: _Nop();
	push	ar7
	push	ar6
	lcall	_nop
;	iic.c:163: _Nop();
	lcall	_nop
	pop	ar6
	pop	ar7
;	iic.c:148: for(a=0;a<8;a++)
	inc	r6
	cjne	r6,#0x08,00117$
00117$:
	jc	00102$
;	iic.c:165: SCL = 0;
;	assignBit
	clr	_P3_1
;	iic.c:166: _Nop();
	push	ar7
	lcall	_nop
;	iic.c:167: _Nop();
	lcall	_nop
	pop	ar7
;	iic.c:168: return dat;
	mov	dpl,r7
;	iic.c:169: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'At24c02Write'
;------------------------------------------------------------
;dat                       Allocated with name '_At24c02Write_PARM_2'
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	iic.c:171: void At24c02Write(uchar addr, uchar dat)
;	-----------------------------------------
;	 function At24c02Write
;	-----------------------------------------
_At24c02Write:
	mov	r7,dpl
;	iic.c:173: I2cStart();
	push	ar7
	lcall	_I2cStart
;	iic.c:174: state = I2cSendByte(0xa0);
	mov	dpl,#0xa0
	lcall	_I2cSendByte
	mov	r6,dpl
	pop	ar7
;	assignBit
	mov	a,r6
	add	a,#0xff
	mov	_P2_7,c
;	iic.c:176: state1= I2cSendByte(addr);
	mov	dpl,r7
	lcall	_I2cSendByte
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_P2_6,c
;	iic.c:178: state2= I2cSendByte(dat);
	mov	dpl,_At24c02Write_PARM_2
	lcall	_I2cSendByte
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_P2_5,c
;	iic.c:179: I2cStop();
;	iic.c:180: }
	ljmp	_I2cStop
;------------------------------------------------------------
;Allocation info for local variables in function 'At24c02Read'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	iic.c:182: char At24c02Read(uchar addr)
;	-----------------------------------------
;	 function At24c02Read
;	-----------------------------------------
_At24c02Read:
	mov	r7,dpl
;	iic.c:185: I2cStart();
	push	ar7
	lcall	_I2cStart
;	iic.c:186: I2cSendByte(0xa0);
	mov	dpl,#0xa0
	lcall	_I2cSendByte
	pop	ar7
;	iic.c:187: I2cSendByte(addr);
	mov	dpl,r7
	lcall	_I2cSendByte
;	iic.c:188: I2cStart();
	lcall	_I2cStart
;	iic.c:189: I2cSendByte(0xa1);
	mov	dpl,#0xa1
	lcall	_I2cSendByte
;	iic.c:190: num = I2cReadByte();	
	lcall	_I2cReadByte
	mov	r7,dpl
;	iic.c:191: I2cStop();
	push	ar7
	lcall	_I2cStop
	pop	ar7
;	iic.c:192: return num;
	mov	dpl,r7
;	iic.c:193: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

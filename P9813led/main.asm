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
	.globl _delayus
	.globl _SendData
	.globl _SetData
	.globl _Delayms
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
_main_dataH_65536_8:
	.ds 4
_main_b2_131073_10:
	.ds 1
_main_g2_131073_10:
	.ds 1
_main_r2_131073_10:
	.ds 1
_main_sloc0_1_0:
	.ds 1
_main_sloc1_1_0:
	.ds 1
_main_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'delayus'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	main.c:4: void delayus(uint i)
;	-----------------------------------------
;	 function delayus
;	-----------------------------------------
_delayus:
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
;	main.c:6: while(i--);
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
;	main.c:7: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;data                      Allocated to registers r4 r5 r6 r7 
;dataH                     Allocated with name '_main_dataH_65536_8'
;dataL                     Allocated to registers r0 r3 r6 r7 
;a                         Allocated to registers 
;b                         Allocated to registers r6 r7 
;g                         Allocated to registers r6 r7 
;r                         Allocated to registers r6 r7 
;b1                        Allocated to registers 
;b2                        Allocated with name '_main_b2_131073_10'
;g1                        Allocated with name '_main_sloc1_1_0'
;g2                        Allocated with name '_main_g2_131073_10'
;r1                        Allocated with name '_main_sloc0_1_0'
;r2                        Allocated with name '_main_r2_131073_10'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;------------------------------------------------------------
;	main.c:8: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:12: while(1)
00105$:
;	main.c:14: data = SetData(0xff, 0x00, 0x00);
	mov	_SetData_PARM_2,#0x00
	mov	_SetData_PARM_3,#0x00
	mov	dpl,#0xff
	lcall	_SetData
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:15: SendData(a);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SendData
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:16: SendData(data);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SendData
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:17: SendData(data);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_SendData
;	main.c:18: delayus(50000);
	mov	dptr,#0xc350
	lcall	_delayus
;	main.c:19: delayus(50000);
	mov	dptr,#0xc350
	lcall	_delayus
;	main.c:20: data = SetData(0x00, 0xff, 0x00);
	mov	_SetData_PARM_2,#0xff
	mov	_SetData_PARM_3,#0x00
	mov	dpl,#0x00
	lcall	_SetData
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:21: SendData(a);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SendData
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:22: SendData(data);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SendData
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:23: SendData(data);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_SendData
;	main.c:24: delayus(50000);
	mov	dptr,#0xc350
	lcall	_delayus
;	main.c:25: delayus(50000);
	mov	dptr,#0xc350
	lcall	_delayus
;	main.c:26: data = SetData(0x00, 0x00, 0xff);
	mov	_SetData_PARM_2,#0x00
	mov	_SetData_PARM_3,#0xff
	mov	dpl,#0x00
	lcall	_SetData
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:27: SendData(a);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SendData
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:28: SendData(data);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SendData
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:29: SendData(data);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_SendData
;	main.c:30: delayus(50000);
	mov	dptr,#0xc350
	lcall	_delayus
;	main.c:31: delayus(50000);
	mov	dptr,#0xc350
	lcall	_delayus
;	main.c:32: dataH=SetData(0xff,0xff,0x00);
	mov	_SetData_PARM_2,#0xff
	mov	_SetData_PARM_3,#0x00
	mov	dpl,#0xff
	lcall	_SetData
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:33: dataL=SetData(0xff,0x00,0x01);
	mov	_SetData_PARM_2,#0x00
	mov	_SetData_PARM_3,#0x01
	mov	dpl,#0xff
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_SetData
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
;	main.c:34: SendData(a);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_SendData
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:35: SendData(dataH);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_SendData
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
;	main.c:36: SendData(dataL);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	_SendData
;	main.c:37: delayus(50000);
	mov	dptr,#0xc350
	lcall	_delayus
;	main.c:38: delayus(50000);
	mov	dptr,#0xc350
	lcall	_delayus
;	main.c:43: for(r=0xfff8;r>=0x0007;r--)
	mov	_main_sloc2_1_0,#0xf8
	mov	(_main_sloc2_1_0 + 1),#0xff
00111$:
;	main.c:45: for(g=0xfff8;g>=0x0007;g--)
	mov	r4,#0xf8
	mov	r5,#0xff
	mov	_main_sloc0_1_0,(_main_sloc2_1_0 + 1)
00109$:
;	main.c:47: for(b=0xfff8;b>=0x0007;b--)
	mov	r1,#0xf8
	mov	r2,#0xff
	mov	_main_sloc1_1_0,r5
00107$:
;	main.c:49: b1 = b>>8;
	mov	dpl,r2
;	main.c:50: b2 = b&0xff;
	mov	_main_b2_131073_10,r1
;	main.c:52: g2 = g&0xff;
	mov	_main_g2_131073_10,r4
;	main.c:54: r2 = r&0xff;
	mov	_main_r2_131073_10,_main_sloc2_1_0
;	main.c:55: dataH=SetData(b1,g1,r1);
	mov	_SetData_PARM_2,_main_sloc1_1_0
	mov	_SetData_PARM_3,_main_sloc0_1_0
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	lcall	_SetData
	mov	_main_dataH_65536_8,dpl
	mov	(_main_dataH_65536_8 + 1),dph
	mov	(_main_dataH_65536_8 + 2),b
	mov	(_main_dataH_65536_8 + 3),a
;	main.c:56: dataL=SetData(b2,g2,r2);
	mov	_SetData_PARM_2,_main_g2_131073_10
	mov	_SetData_PARM_3,_main_r2_131073_10
	mov	dpl,_main_b2_131073_10
	lcall	_SetData
	mov	r0,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
;	main.c:57: SendData(a);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_SendData
;	main.c:58: SendData(dataH);
	mov	dpl,_main_dataH_65536_8
	mov	dph,(_main_dataH_65536_8 + 1)
	mov	b,(_main_dataH_65536_8 + 2)
	mov	a,(_main_dataH_65536_8 + 3)
	lcall	_SendData
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:59: SendData(dataL);
	mov	dpl,r0
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	lcall	_SendData
;	main.c:60: Delayms(1);
	mov	dptr,#0x0001
	lcall	_Delayms
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar5
;	main.c:61: b-=50;
	mov	a,r1
	add	a,#0xce
	mov	r6,a
	mov	a,r2
	addc	a,#0xff
	mov	r7,a
;	main.c:47: for(b=0xfff8;b>=0x0007;b--)
	mov	a,r6
	add	a,#0xff
	mov	r1,a
	mov	a,r7
	addc	a,#0xff
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,#0x07
	mov	a,r2
	subb	a,#0x00
	jc	00150$
	ljmp	00107$
00150$:
;	main.c:63: g-=30;
	mov	a,r4
	add	a,#0xe2
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r7,a
;	main.c:45: for(g=0xfff8;g>=0x0007;g--)
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0x07
	mov	a,r5
	subb	a,#0x00
	jc	00151$
	ljmp	00109$
00151$:
;	main.c:65: r-=10;
	mov	a,_main_sloc2_1_0
	add	a,#0xf6
	mov	r6,a
	mov	a,(_main_sloc2_1_0 + 1)
	addc	a,#0xff
	mov	r7,a
;	main.c:43: for(r=0xfff8;r>=0x0007;r--)
	mov	a,r6
	add	a,#0xff
	mov	_main_sloc2_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_main_sloc2_1_0 + 1),a
	clr	c
	mov	a,_main_sloc2_1_0
	subb	a,#0x07
	mov	a,(_main_sloc2_1_0 + 1)
	subb	a,#0x00
	jc	00152$
	ljmp	00111$
00152$:
;	main.c:68: }
	ljmp	00105$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _delayus
                                     13 	.globl _SendData
                                     14 	.globl _SetData
                                     15 	.globl _Delayms
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           000080   117 _P0	=	0x0080
                           000081   118 _SP	=	0x0081
                           000082   119 _DPL	=	0x0082
                           000083   120 _DPH	=	0x0083
                           000087   121 _PCON	=	0x0087
                           000088   122 _TCON	=	0x0088
                           000089   123 _TMOD	=	0x0089
                           00008A   124 _TL0	=	0x008a
                           00008B   125 _TL1	=	0x008b
                           00008C   126 _TH0	=	0x008c
                           00008D   127 _TH1	=	0x008d
                           000090   128 _P1	=	0x0090
                           000098   129 _SCON	=	0x0098
                           000099   130 _SBUF	=	0x0099
                           0000A0   131 _P2	=	0x00a0
                           0000A8   132 _IE	=	0x00a8
                           0000B0   133 _P3	=	0x00b0
                           0000B8   134 _IP	=	0x00b8
                           0000D0   135 _PSW	=	0x00d0
                           0000E0   136 _ACC	=	0x00e0
                           0000F0   137 _B	=	0x00f0
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000088   151 _IT0	=	0x0088
                           000089   152 _IE0	=	0x0089
                           00008A   153 _IT1	=	0x008a
                           00008B   154 _IE1	=	0x008b
                           00008C   155 _TR0	=	0x008c
                           00008D   156 _TF0	=	0x008d
                           00008E   157 _TR1	=	0x008e
                           00008F   158 _TF1	=	0x008f
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           000098   167 _RI	=	0x0098
                           000099   168 _TI	=	0x0099
                           00009A   169 _RB8	=	0x009a
                           00009B   170 _TB8	=	0x009b
                           00009C   171 _REN	=	0x009c
                           00009D   172 _SM2	=	0x009d
                           00009E   173 _SM1	=	0x009e
                           00009F   174 _SM0	=	0x009f
                           0000A0   175 _P2_0	=	0x00a0
                           0000A1   176 _P2_1	=	0x00a1
                           0000A2   177 _P2_2	=	0x00a2
                           0000A3   178 _P2_3	=	0x00a3
                           0000A4   179 _P2_4	=	0x00a4
                           0000A5   180 _P2_5	=	0x00a5
                           0000A6   181 _P2_6	=	0x00a6
                           0000A7   182 _P2_7	=	0x00a7
                           0000A8   183 _EX0	=	0x00a8
                           0000A9   184 _ET0	=	0x00a9
                           0000AA   185 _EX1	=	0x00aa
                           0000AB   186 _ET1	=	0x00ab
                           0000AC   187 _ES	=	0x00ac
                           0000AF   188 _EA	=	0x00af
                           0000B0   189 _P3_0	=	0x00b0
                           0000B1   190 _P3_1	=	0x00b1
                           0000B2   191 _P3_2	=	0x00b2
                           0000B3   192 _P3_3	=	0x00b3
                           0000B4   193 _P3_4	=	0x00b4
                           0000B5   194 _P3_5	=	0x00b5
                           0000B6   195 _P3_6	=	0x00b6
                           0000B7   196 _P3_7	=	0x00b7
                           0000B0   197 _RXD	=	0x00b0
                           0000B1   198 _TXD	=	0x00b1
                           0000B2   199 _INT0	=	0x00b2
                           0000B3   200 _INT1	=	0x00b3
                           0000B4   201 _T0	=	0x00b4
                           0000B5   202 _T1	=	0x00b5
                           0000B6   203 _WR	=	0x00b6
                           0000B7   204 _RD	=	0x00b7
                           0000B8   205 _PX0	=	0x00b8
                           0000B9   206 _PT0	=	0x00b9
                           0000BA   207 _PX1	=	0x00ba
                           0000BB   208 _PT1	=	0x00bb
                           0000BC   209 _PS	=	0x00bc
                           0000D0   210 _P	=	0x00d0
                           0000D1   211 _F1	=	0x00d1
                           0000D2   212 _OV	=	0x00d2
                           0000D3   213 _RS0	=	0x00d3
                           0000D4   214 _RS1	=	0x00d4
                           0000D5   215 _F0	=	0x00d5
                           0000D6   216 _AC	=	0x00d6
                           0000D7   217 _CY	=	0x00d7
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
      000008                        227 _main_dataH_65536_8:
      000008                        228 	.ds 4
      00000C                        229 _main_b2_131073_10:
      00000C                        230 	.ds 1
      00000D                        231 _main_g2_131073_10:
      00000D                        232 	.ds 1
      00000E                        233 _main_r2_131073_10:
      00000E                        234 	.ds 1
      00000F                        235 _main_sloc0_1_0:
      00000F                        236 	.ds 1
      000010                        237 _main_sloc1_1_0:
      000010                        238 	.ds 1
      000011                        239 _main_sloc2_1_0:
      000011                        240 	.ds 2
                                    241 ;--------------------------------------------------------
                                    242 ; overlayable items in internal ram 
                                    243 ;--------------------------------------------------------
                                    244 	.area	OSEG    (OVR,DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; Stack segment in internal ram 
                                    247 ;--------------------------------------------------------
                                    248 	.area	SSEG
      000016                        249 __start__stack:
      000016                        250 	.ds	1
                                    251 
                                    252 ;--------------------------------------------------------
                                    253 ; indirectly addressable internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area ISEG    (DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute internal ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area IABS    (ABS,DATA)
                                    260 	.area IABS    (ABS,DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; bit data
                                    263 ;--------------------------------------------------------
                                    264 	.area BSEG    (BIT)
                                    265 ;--------------------------------------------------------
                                    266 ; paged external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area PSEG    (PAG,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XSEG    (XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; absolute external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XABS    (ABS,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; external initialized ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XISEG   (XDATA)
                                    281 	.area HOME    (CODE)
                                    282 	.area GSINIT0 (CODE)
                                    283 	.area GSINIT1 (CODE)
                                    284 	.area GSINIT2 (CODE)
                                    285 	.area GSINIT3 (CODE)
                                    286 	.area GSINIT4 (CODE)
                                    287 	.area GSINIT5 (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.area GSFINAL (CODE)
                                    290 	.area CSEG    (CODE)
                                    291 ;--------------------------------------------------------
                                    292 ; interrupt vector 
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
      000000                        295 __interrupt_vect:
      000000 02 00 06         [24]  296 	ljmp	__sdcc_gsinit_startup
                                    297 ;--------------------------------------------------------
                                    298 ; global & static initialisations
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.area GSFINAL (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.globl __sdcc_gsinit_startup
                                    305 	.globl __sdcc_program_startup
                                    306 	.globl __start__stack
                                    307 	.globl __mcs51_genXINIT
                                    308 	.globl __mcs51_genXRAMCLEAR
                                    309 	.globl __mcs51_genRAMCLEAR
                                    310 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  311 	ljmp	__sdcc_program_startup
                                    312 ;--------------------------------------------------------
                                    313 ; Home
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area HOME    (CODE)
      000003                        317 __sdcc_program_startup:
      000003 02 00 74         [24]  318 	ljmp	_main
                                    319 ;	return from main will return to caller
                                    320 ;--------------------------------------------------------
                                    321 ; code
                                    322 ;--------------------------------------------------------
                                    323 	.area CSEG    (CODE)
                                    324 ;------------------------------------------------------------
                                    325 ;Allocation info for local variables in function 'delayus'
                                    326 ;------------------------------------------------------------
                                    327 ;i                         Allocated to registers 
                                    328 ;------------------------------------------------------------
                                    329 ;	main.c:4: void delayus(uint i)
                                    330 ;	-----------------------------------------
                                    331 ;	 function delayus
                                    332 ;	-----------------------------------------
      000062                        333 _delayus:
                           000007   334 	ar7 = 0x07
                           000006   335 	ar6 = 0x06
                           000005   336 	ar5 = 0x05
                           000004   337 	ar4 = 0x04
                           000003   338 	ar3 = 0x03
                           000002   339 	ar2 = 0x02
                           000001   340 	ar1 = 0x01
                           000000   341 	ar0 = 0x00
      000062 AE 82            [24]  342 	mov	r6,dpl
      000064 AF 83            [24]  343 	mov	r7,dph
                                    344 ;	main.c:6: while(i--);
      000066                        345 00101$:
      000066 8E 04            [24]  346 	mov	ar4,r6
      000068 8F 05            [24]  347 	mov	ar5,r7
      00006A 1E               [12]  348 	dec	r6
      00006B BE FF 01         [24]  349 	cjne	r6,#0xff,00111$
      00006E 1F               [12]  350 	dec	r7
      00006F                        351 00111$:
      00006F EC               [12]  352 	mov	a,r4
      000070 4D               [12]  353 	orl	a,r5
      000071 70 F3            [24]  354 	jnz	00101$
                                    355 ;	main.c:7: }
      000073 22               [24]  356 	ret
                                    357 ;------------------------------------------------------------
                                    358 ;Allocation info for local variables in function 'main'
                                    359 ;------------------------------------------------------------
                                    360 ;data                      Allocated to registers r4 r5 r6 r7 
                                    361 ;dataH                     Allocated with name '_main_dataH_65536_8'
                                    362 ;dataL                     Allocated to registers r0 r3 r6 r7 
                                    363 ;a                         Allocated to registers 
                                    364 ;b                         Allocated to registers r6 r7 
                                    365 ;g                         Allocated to registers r6 r7 
                                    366 ;r                         Allocated to registers r6 r7 
                                    367 ;b1                        Allocated to registers 
                                    368 ;b2                        Allocated with name '_main_b2_131073_10'
                                    369 ;g1                        Allocated with name '_main_sloc1_1_0'
                                    370 ;g2                        Allocated with name '_main_g2_131073_10'
                                    371 ;r1                        Allocated with name '_main_sloc0_1_0'
                                    372 ;r2                        Allocated with name '_main_r2_131073_10'
                                    373 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    374 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    375 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                    376 ;------------------------------------------------------------
                                    377 ;	main.c:8: void main()
                                    378 ;	-----------------------------------------
                                    379 ;	 function main
                                    380 ;	-----------------------------------------
      000074                        381 _main:
                                    382 ;	main.c:12: while(1)
      000074                        383 00105$:
                                    384 ;	main.c:14: data = SetData(0xff, 0x00, 0x00);
      000074 75 13 00         [24]  385 	mov	_SetData_PARM_2,#0x00
      000077 75 14 00         [24]  386 	mov	_SetData_PARM_3,#0x00
      00007A 75 82 FF         [24]  387 	mov	dpl,#0xff
      00007D 12 03 42         [24]  388 	lcall	_SetData
      000080 AC 82            [24]  389 	mov	r4,dpl
      000082 AD 83            [24]  390 	mov	r5,dph
      000084 AE F0            [24]  391 	mov	r6,b
      000086 FF               [12]  392 	mov	r7,a
                                    393 ;	main.c:15: SendData(a);
      000087 90 00 00         [24]  394 	mov	dptr,#(0x00&0x00ff)
      00008A E4               [12]  395 	clr	a
      00008B F5 F0            [12]  396 	mov	b,a
      00008D C0 07            [24]  397 	push	ar7
      00008F C0 06            [24]  398 	push	ar6
      000091 C0 05            [24]  399 	push	ar5
      000093 C0 04            [24]  400 	push	ar4
      000095 12 04 17         [24]  401 	lcall	_SendData
      000098 D0 04            [24]  402 	pop	ar4
      00009A D0 05            [24]  403 	pop	ar5
      00009C D0 06            [24]  404 	pop	ar6
      00009E D0 07            [24]  405 	pop	ar7
                                    406 ;	main.c:16: SendData(data);
      0000A0 8C 82            [24]  407 	mov	dpl,r4
      0000A2 8D 83            [24]  408 	mov	dph,r5
      0000A4 8E F0            [24]  409 	mov	b,r6
      0000A6 EF               [12]  410 	mov	a,r7
      0000A7 C0 07            [24]  411 	push	ar7
      0000A9 C0 06            [24]  412 	push	ar6
      0000AB C0 05            [24]  413 	push	ar5
      0000AD C0 04            [24]  414 	push	ar4
      0000AF 12 04 17         [24]  415 	lcall	_SendData
      0000B2 D0 04            [24]  416 	pop	ar4
      0000B4 D0 05            [24]  417 	pop	ar5
      0000B6 D0 06            [24]  418 	pop	ar6
      0000B8 D0 07            [24]  419 	pop	ar7
                                    420 ;	main.c:17: SendData(data);
      0000BA 8C 82            [24]  421 	mov	dpl,r4
      0000BC 8D 83            [24]  422 	mov	dph,r5
      0000BE 8E F0            [24]  423 	mov	b,r6
      0000C0 EF               [12]  424 	mov	a,r7
      0000C1 12 04 17         [24]  425 	lcall	_SendData
                                    426 ;	main.c:18: delayus(50000);
      0000C4 90 C3 50         [24]  427 	mov	dptr,#0xc350
      0000C7 12 00 62         [24]  428 	lcall	_delayus
                                    429 ;	main.c:19: delayus(50000);
      0000CA 90 C3 50         [24]  430 	mov	dptr,#0xc350
      0000CD 12 00 62         [24]  431 	lcall	_delayus
                                    432 ;	main.c:20: data = SetData(0x00, 0xff, 0x00);
      0000D0 75 13 FF         [24]  433 	mov	_SetData_PARM_2,#0xff
      0000D3 75 14 00         [24]  434 	mov	_SetData_PARM_3,#0x00
      0000D6 75 82 00         [24]  435 	mov	dpl,#0x00
      0000D9 12 03 42         [24]  436 	lcall	_SetData
      0000DC AC 82            [24]  437 	mov	r4,dpl
      0000DE AD 83            [24]  438 	mov	r5,dph
      0000E0 AE F0            [24]  439 	mov	r6,b
      0000E2 FF               [12]  440 	mov	r7,a
                                    441 ;	main.c:21: SendData(a);
      0000E3 90 00 00         [24]  442 	mov	dptr,#(0x00&0x00ff)
      0000E6 E4               [12]  443 	clr	a
      0000E7 F5 F0            [12]  444 	mov	b,a
      0000E9 C0 07            [24]  445 	push	ar7
      0000EB C0 06            [24]  446 	push	ar6
      0000ED C0 05            [24]  447 	push	ar5
      0000EF C0 04            [24]  448 	push	ar4
      0000F1 12 04 17         [24]  449 	lcall	_SendData
      0000F4 D0 04            [24]  450 	pop	ar4
      0000F6 D0 05            [24]  451 	pop	ar5
      0000F8 D0 06            [24]  452 	pop	ar6
      0000FA D0 07            [24]  453 	pop	ar7
                                    454 ;	main.c:22: SendData(data);
      0000FC 8C 82            [24]  455 	mov	dpl,r4
      0000FE 8D 83            [24]  456 	mov	dph,r5
      000100 8E F0            [24]  457 	mov	b,r6
      000102 EF               [12]  458 	mov	a,r7
      000103 C0 07            [24]  459 	push	ar7
      000105 C0 06            [24]  460 	push	ar6
      000107 C0 05            [24]  461 	push	ar5
      000109 C0 04            [24]  462 	push	ar4
      00010B 12 04 17         [24]  463 	lcall	_SendData
      00010E D0 04            [24]  464 	pop	ar4
      000110 D0 05            [24]  465 	pop	ar5
      000112 D0 06            [24]  466 	pop	ar6
      000114 D0 07            [24]  467 	pop	ar7
                                    468 ;	main.c:23: SendData(data);
      000116 8C 82            [24]  469 	mov	dpl,r4
      000118 8D 83            [24]  470 	mov	dph,r5
      00011A 8E F0            [24]  471 	mov	b,r6
      00011C EF               [12]  472 	mov	a,r7
      00011D 12 04 17         [24]  473 	lcall	_SendData
                                    474 ;	main.c:24: delayus(50000);
      000120 90 C3 50         [24]  475 	mov	dptr,#0xc350
      000123 12 00 62         [24]  476 	lcall	_delayus
                                    477 ;	main.c:25: delayus(50000);
      000126 90 C3 50         [24]  478 	mov	dptr,#0xc350
      000129 12 00 62         [24]  479 	lcall	_delayus
                                    480 ;	main.c:26: data = SetData(0x00, 0x00, 0xff);
      00012C 75 13 00         [24]  481 	mov	_SetData_PARM_2,#0x00
      00012F 75 14 FF         [24]  482 	mov	_SetData_PARM_3,#0xff
      000132 75 82 00         [24]  483 	mov	dpl,#0x00
      000135 12 03 42         [24]  484 	lcall	_SetData
      000138 AC 82            [24]  485 	mov	r4,dpl
      00013A AD 83            [24]  486 	mov	r5,dph
      00013C AE F0            [24]  487 	mov	r6,b
      00013E FF               [12]  488 	mov	r7,a
                                    489 ;	main.c:27: SendData(a);
      00013F 90 00 00         [24]  490 	mov	dptr,#(0x00&0x00ff)
      000142 E4               [12]  491 	clr	a
      000143 F5 F0            [12]  492 	mov	b,a
      000145 C0 07            [24]  493 	push	ar7
      000147 C0 06            [24]  494 	push	ar6
      000149 C0 05            [24]  495 	push	ar5
      00014B C0 04            [24]  496 	push	ar4
      00014D 12 04 17         [24]  497 	lcall	_SendData
      000150 D0 04            [24]  498 	pop	ar4
      000152 D0 05            [24]  499 	pop	ar5
      000154 D0 06            [24]  500 	pop	ar6
      000156 D0 07            [24]  501 	pop	ar7
                                    502 ;	main.c:28: SendData(data);
      000158 8C 82            [24]  503 	mov	dpl,r4
      00015A 8D 83            [24]  504 	mov	dph,r5
      00015C 8E F0            [24]  505 	mov	b,r6
      00015E EF               [12]  506 	mov	a,r7
      00015F C0 07            [24]  507 	push	ar7
      000161 C0 06            [24]  508 	push	ar6
      000163 C0 05            [24]  509 	push	ar5
      000165 C0 04            [24]  510 	push	ar4
      000167 12 04 17         [24]  511 	lcall	_SendData
      00016A D0 04            [24]  512 	pop	ar4
      00016C D0 05            [24]  513 	pop	ar5
      00016E D0 06            [24]  514 	pop	ar6
      000170 D0 07            [24]  515 	pop	ar7
                                    516 ;	main.c:29: SendData(data);
      000172 8C 82            [24]  517 	mov	dpl,r4
      000174 8D 83            [24]  518 	mov	dph,r5
      000176 8E F0            [24]  519 	mov	b,r6
      000178 EF               [12]  520 	mov	a,r7
      000179 12 04 17         [24]  521 	lcall	_SendData
                                    522 ;	main.c:30: delayus(50000);
      00017C 90 C3 50         [24]  523 	mov	dptr,#0xc350
      00017F 12 00 62         [24]  524 	lcall	_delayus
                                    525 ;	main.c:31: delayus(50000);
      000182 90 C3 50         [24]  526 	mov	dptr,#0xc350
      000185 12 00 62         [24]  527 	lcall	_delayus
                                    528 ;	main.c:32: dataH=SetData(0xff,0xff,0x00);
      000188 75 13 FF         [24]  529 	mov	_SetData_PARM_2,#0xff
      00018B 75 14 00         [24]  530 	mov	_SetData_PARM_3,#0x00
      00018E 75 82 FF         [24]  531 	mov	dpl,#0xff
      000191 12 03 42         [24]  532 	lcall	_SetData
      000194 AC 82            [24]  533 	mov	r4,dpl
      000196 AD 83            [24]  534 	mov	r5,dph
      000198 AE F0            [24]  535 	mov	r6,b
      00019A FF               [12]  536 	mov	r7,a
                                    537 ;	main.c:33: dataL=SetData(0xff,0x00,0x01);
      00019B 75 13 00         [24]  538 	mov	_SetData_PARM_2,#0x00
      00019E 75 14 01         [24]  539 	mov	_SetData_PARM_3,#0x01
      0001A1 75 82 FF         [24]  540 	mov	dpl,#0xff
      0001A4 C0 07            [24]  541 	push	ar7
      0001A6 C0 06            [24]  542 	push	ar6
      0001A8 C0 05            [24]  543 	push	ar5
      0001AA C0 04            [24]  544 	push	ar4
      0001AC 12 03 42         [24]  545 	lcall	_SetData
      0001AF A8 82            [24]  546 	mov	r0,dpl
      0001B1 A9 83            [24]  547 	mov	r1,dph
      0001B3 AA F0            [24]  548 	mov	r2,b
      0001B5 FB               [12]  549 	mov	r3,a
                                    550 ;	main.c:34: SendData(a);
      0001B6 90 00 00         [24]  551 	mov	dptr,#(0x00&0x00ff)
      0001B9 E4               [12]  552 	clr	a
      0001BA F5 F0            [12]  553 	mov	b,a
      0001BC C0 03            [24]  554 	push	ar3
      0001BE C0 02            [24]  555 	push	ar2
      0001C0 C0 01            [24]  556 	push	ar1
      0001C2 C0 00            [24]  557 	push	ar0
      0001C4 12 04 17         [24]  558 	lcall	_SendData
      0001C7 D0 00            [24]  559 	pop	ar0
      0001C9 D0 01            [24]  560 	pop	ar1
      0001CB D0 02            [24]  561 	pop	ar2
      0001CD D0 03            [24]  562 	pop	ar3
      0001CF D0 04            [24]  563 	pop	ar4
      0001D1 D0 05            [24]  564 	pop	ar5
      0001D3 D0 06            [24]  565 	pop	ar6
      0001D5 D0 07            [24]  566 	pop	ar7
                                    567 ;	main.c:35: SendData(dataH);
      0001D7 8C 82            [24]  568 	mov	dpl,r4
      0001D9 8D 83            [24]  569 	mov	dph,r5
      0001DB 8E F0            [24]  570 	mov	b,r6
      0001DD EF               [12]  571 	mov	a,r7
      0001DE C0 03            [24]  572 	push	ar3
      0001E0 C0 02            [24]  573 	push	ar2
      0001E2 C0 01            [24]  574 	push	ar1
      0001E4 C0 00            [24]  575 	push	ar0
      0001E6 12 04 17         [24]  576 	lcall	_SendData
      0001E9 D0 00            [24]  577 	pop	ar0
      0001EB D0 01            [24]  578 	pop	ar1
      0001ED D0 02            [24]  579 	pop	ar2
      0001EF D0 03            [24]  580 	pop	ar3
                                    581 ;	main.c:36: SendData(dataL);
      0001F1 88 82            [24]  582 	mov	dpl,r0
      0001F3 89 83            [24]  583 	mov	dph,r1
      0001F5 8A F0            [24]  584 	mov	b,r2
      0001F7 EB               [12]  585 	mov	a,r3
      0001F8 12 04 17         [24]  586 	lcall	_SendData
                                    587 ;	main.c:37: delayus(50000);
      0001FB 90 C3 50         [24]  588 	mov	dptr,#0xc350
      0001FE 12 00 62         [24]  589 	lcall	_delayus
                                    590 ;	main.c:38: delayus(50000);
      000201 90 C3 50         [24]  591 	mov	dptr,#0xc350
      000204 12 00 62         [24]  592 	lcall	_delayus
                                    593 ;	main.c:43: for(r=0xfff8;r>=0x0007;r--)
      000207 75 11 F8         [24]  594 	mov	_main_sloc2_1_0,#0xf8
      00020A 75 12 FF         [24]  595 	mov	(_main_sloc2_1_0 + 1),#0xff
      00020D                        596 00111$:
                                    597 ;	main.c:45: for(g=0xfff8;g>=0x0007;g--)
      00020D 7C F8            [12]  598 	mov	r4,#0xf8
      00020F 7D FF            [12]  599 	mov	r5,#0xff
      000211 85 12 0F         [24]  600 	mov	_main_sloc0_1_0,(_main_sloc2_1_0 + 1)
      000214                        601 00109$:
                                    602 ;	main.c:47: for(b=0xfff8;b>=0x0007;b--)
      000214 79 F8            [12]  603 	mov	r1,#0xf8
      000216 7A FF            [12]  604 	mov	r2,#0xff
      000218 8D 10            [24]  605 	mov	_main_sloc1_1_0,r5
      00021A                        606 00107$:
                                    607 ;	main.c:49: b1 = b>>8;
      00021A 8A 82            [24]  608 	mov	dpl,r2
                                    609 ;	main.c:50: b2 = b&0xff;
      00021C 89 0C            [24]  610 	mov	_main_b2_131073_10,r1
                                    611 ;	main.c:52: g2 = g&0xff;
      00021E 8C 0D            [24]  612 	mov	_main_g2_131073_10,r4
                                    613 ;	main.c:54: r2 = r&0xff;
      000220 85 11 0E         [24]  614 	mov	_main_r2_131073_10,_main_sloc2_1_0
                                    615 ;	main.c:55: dataH=SetData(b1,g1,r1);
      000223 85 10 13         [24]  616 	mov	_SetData_PARM_2,_main_sloc1_1_0
      000226 85 0F 14         [24]  617 	mov	_SetData_PARM_3,_main_sloc0_1_0
      000229 C0 05            [24]  618 	push	ar5
      00022B C0 04            [24]  619 	push	ar4
      00022D C0 02            [24]  620 	push	ar2
      00022F C0 01            [24]  621 	push	ar1
      000231 12 03 42         [24]  622 	lcall	_SetData
      000234 85 82 08         [24]  623 	mov	_main_dataH_65536_8,dpl
      000237 85 83 09         [24]  624 	mov	(_main_dataH_65536_8 + 1),dph
      00023A 85 F0 0A         [24]  625 	mov	(_main_dataH_65536_8 + 2),b
      00023D F5 0B            [12]  626 	mov	(_main_dataH_65536_8 + 3),a
                                    627 ;	main.c:56: dataL=SetData(b2,g2,r2);
      00023F 85 0D 13         [24]  628 	mov	_SetData_PARM_2,_main_g2_131073_10
      000242 85 0E 14         [24]  629 	mov	_SetData_PARM_3,_main_r2_131073_10
      000245 85 0C 82         [24]  630 	mov	dpl,_main_b2_131073_10
      000248 12 03 42         [24]  631 	lcall	_SetData
      00024B A8 82            [24]  632 	mov	r0,dpl
      00024D AB 83            [24]  633 	mov	r3,dph
      00024F AE F0            [24]  634 	mov	r6,b
      000251 FF               [12]  635 	mov	r7,a
      000252 D0 01            [24]  636 	pop	ar1
      000254 D0 02            [24]  637 	pop	ar2
      000256 D0 04            [24]  638 	pop	ar4
      000258 D0 05            [24]  639 	pop	ar5
                                    640 ;	main.c:57: SendData(a);
      00025A 90 00 00         [24]  641 	mov	dptr,#(0x00&0x00ff)
      00025D E4               [12]  642 	clr	a
      00025E F5 F0            [12]  643 	mov	b,a
      000260 C0 07            [24]  644 	push	ar7
      000262 C0 06            [24]  645 	push	ar6
      000264 C0 05            [24]  646 	push	ar5
      000266 C0 04            [24]  647 	push	ar4
      000268 C0 03            [24]  648 	push	ar3
      00026A C0 02            [24]  649 	push	ar2
      00026C C0 01            [24]  650 	push	ar1
      00026E C0 00            [24]  651 	push	ar0
      000270 12 04 17         [24]  652 	lcall	_SendData
                                    653 ;	main.c:58: SendData(dataH);
      000273 85 08 82         [24]  654 	mov	dpl,_main_dataH_65536_8
      000276 85 09 83         [24]  655 	mov	dph,(_main_dataH_65536_8 + 1)
      000279 85 0A F0         [24]  656 	mov	b,(_main_dataH_65536_8 + 2)
      00027C E5 0B            [12]  657 	mov	a,(_main_dataH_65536_8 + 3)
      00027E 12 04 17         [24]  658 	lcall	_SendData
      000281 D0 00            [24]  659 	pop	ar0
      000283 D0 01            [24]  660 	pop	ar1
      000285 D0 02            [24]  661 	pop	ar2
      000287 D0 03            [24]  662 	pop	ar3
      000289 D0 04            [24]  663 	pop	ar4
      00028B D0 05            [24]  664 	pop	ar5
      00028D D0 06            [24]  665 	pop	ar6
      00028F D0 07            [24]  666 	pop	ar7
                                    667 ;	main.c:59: SendData(dataL);
      000291 88 82            [24]  668 	mov	dpl,r0
      000293 8B 83            [24]  669 	mov	dph,r3
      000295 8E F0            [24]  670 	mov	b,r6
      000297 EF               [12]  671 	mov	a,r7
      000298 C0 05            [24]  672 	push	ar5
      00029A C0 04            [24]  673 	push	ar4
      00029C C0 02            [24]  674 	push	ar2
      00029E C0 01            [24]  675 	push	ar1
      0002A0 12 04 17         [24]  676 	lcall	_SendData
                                    677 ;	main.c:60: Delayms(1);
      0002A3 90 00 01         [24]  678 	mov	dptr,#0x0001
      0002A6 12 03 0E         [24]  679 	lcall	_Delayms
      0002A9 D0 01            [24]  680 	pop	ar1
      0002AB D0 02            [24]  681 	pop	ar2
      0002AD D0 04            [24]  682 	pop	ar4
      0002AF D0 05            [24]  683 	pop	ar5
                                    684 ;	main.c:61: b-=50;
      0002B1 E9               [12]  685 	mov	a,r1
      0002B2 24 CE            [12]  686 	add	a,#0xce
      0002B4 FE               [12]  687 	mov	r6,a
      0002B5 EA               [12]  688 	mov	a,r2
      0002B6 34 FF            [12]  689 	addc	a,#0xff
      0002B8 FF               [12]  690 	mov	r7,a
                                    691 ;	main.c:47: for(b=0xfff8;b>=0x0007;b--)
      0002B9 EE               [12]  692 	mov	a,r6
      0002BA 24 FF            [12]  693 	add	a,#0xff
      0002BC F9               [12]  694 	mov	r1,a
      0002BD EF               [12]  695 	mov	a,r7
      0002BE 34 FF            [12]  696 	addc	a,#0xff
      0002C0 FA               [12]  697 	mov	r2,a
      0002C1 C3               [12]  698 	clr	c
      0002C2 E9               [12]  699 	mov	a,r1
      0002C3 94 07            [12]  700 	subb	a,#0x07
      0002C5 EA               [12]  701 	mov	a,r2
      0002C6 94 00            [12]  702 	subb	a,#0x00
      0002C8 40 03            [24]  703 	jc	00150$
      0002CA 02 02 1A         [24]  704 	ljmp	00107$
      0002CD                        705 00150$:
                                    706 ;	main.c:63: g-=30;
      0002CD EC               [12]  707 	mov	a,r4
      0002CE 24 E2            [12]  708 	add	a,#0xe2
      0002D0 FE               [12]  709 	mov	r6,a
      0002D1 ED               [12]  710 	mov	a,r5
      0002D2 34 FF            [12]  711 	addc	a,#0xff
      0002D4 FF               [12]  712 	mov	r7,a
                                    713 ;	main.c:45: for(g=0xfff8;g>=0x0007;g--)
      0002D5 EE               [12]  714 	mov	a,r6
      0002D6 24 FF            [12]  715 	add	a,#0xff
      0002D8 FC               [12]  716 	mov	r4,a
      0002D9 EF               [12]  717 	mov	a,r7
      0002DA 34 FF            [12]  718 	addc	a,#0xff
      0002DC FD               [12]  719 	mov	r5,a
      0002DD C3               [12]  720 	clr	c
      0002DE EC               [12]  721 	mov	a,r4
      0002DF 94 07            [12]  722 	subb	a,#0x07
      0002E1 ED               [12]  723 	mov	a,r5
      0002E2 94 00            [12]  724 	subb	a,#0x00
      0002E4 40 03            [24]  725 	jc	00151$
      0002E6 02 02 14         [24]  726 	ljmp	00109$
      0002E9                        727 00151$:
                                    728 ;	main.c:65: r-=10;
      0002E9 E5 11            [12]  729 	mov	a,_main_sloc2_1_0
      0002EB 24 F6            [12]  730 	add	a,#0xf6
      0002ED FE               [12]  731 	mov	r6,a
      0002EE E5 12            [12]  732 	mov	a,(_main_sloc2_1_0 + 1)
      0002F0 34 FF            [12]  733 	addc	a,#0xff
      0002F2 FF               [12]  734 	mov	r7,a
                                    735 ;	main.c:43: for(r=0xfff8;r>=0x0007;r--)
      0002F3 EE               [12]  736 	mov	a,r6
      0002F4 24 FF            [12]  737 	add	a,#0xff
      0002F6 F5 11            [12]  738 	mov	_main_sloc2_1_0,a
      0002F8 EF               [12]  739 	mov	a,r7
      0002F9 34 FF            [12]  740 	addc	a,#0xff
      0002FB F5 12            [12]  741 	mov	(_main_sloc2_1_0 + 1),a
      0002FD C3               [12]  742 	clr	c
      0002FE E5 11            [12]  743 	mov	a,_main_sloc2_1_0
      000300 94 07            [12]  744 	subb	a,#0x07
      000302 E5 12            [12]  745 	mov	a,(_main_sloc2_1_0 + 1)
      000304 94 00            [12]  746 	subb	a,#0x00
      000306 40 03            [24]  747 	jc	00152$
      000308 02 02 0D         [24]  748 	ljmp	00111$
      00030B                        749 00152$:
                                    750 ;	main.c:68: }
      00030B 02 00 74         [24]  751 	ljmp	00105$
                                    752 	.area CSEG    (CODE)
                                    753 	.area CONST   (CODE)
                                    754 	.area XINIT   (CODE)
                                    755 	.area CABS    (ABS,CODE)

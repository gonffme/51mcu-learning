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
                                     11 	.globl _ReadIr
                                     12 	.globl _main
                                     13 	.globl _IrInit
                                     14 	.globl _DisplayDigits
                                     15 	.globl _DelayXms
                                     16 	.globl _delay
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _PS
                                     26 	.globl _PT1
                                     27 	.globl _PX1
                                     28 	.globl _PT0
                                     29 	.globl _PX0
                                     30 	.globl _RD
                                     31 	.globl _WR
                                     32 	.globl _T1
                                     33 	.globl _T0
                                     34 	.globl _INT1
                                     35 	.globl _INT0
                                     36 	.globl _TXD
                                     37 	.globl _RXD
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _EA
                                     47 	.globl _ES
                                     48 	.globl _ET1
                                     49 	.globl _EX1
                                     50 	.globl _ET0
                                     51 	.globl _EX0
                                     52 	.globl _P2_7
                                     53 	.globl _P2_6
                                     54 	.globl _P2_5
                                     55 	.globl _P2_4
                                     56 	.globl _P2_3
                                     57 	.globl _P2_2
                                     58 	.globl _P2_1
                                     59 	.globl _P2_0
                                     60 	.globl _SM0
                                     61 	.globl _SM1
                                     62 	.globl _SM2
                                     63 	.globl _REN
                                     64 	.globl _TB8
                                     65 	.globl _RB8
                                     66 	.globl _TI
                                     67 	.globl _RI
                                     68 	.globl _P1_7
                                     69 	.globl _P1_6
                                     70 	.globl _P1_5
                                     71 	.globl _P1_4
                                     72 	.globl _P1_3
                                     73 	.globl _P1_2
                                     74 	.globl _P1_1
                                     75 	.globl _P1_0
                                     76 	.globl _TF1
                                     77 	.globl _TR1
                                     78 	.globl _TF0
                                     79 	.globl _TR0
                                     80 	.globl _IE1
                                     81 	.globl _IT1
                                     82 	.globl _IE0
                                     83 	.globl _IT0
                                     84 	.globl _P0_7
                                     85 	.globl _P0_6
                                     86 	.globl _P0_5
                                     87 	.globl _P0_4
                                     88 	.globl _P0_3
                                     89 	.globl _P0_2
                                     90 	.globl _P0_1
                                     91 	.globl _P0_0
                                     92 	.globl _B
                                     93 	.globl _ACC
                                     94 	.globl _PSW
                                     95 	.globl _IP
                                     96 	.globl _P3
                                     97 	.globl _IE
                                     98 	.globl _P2
                                     99 	.globl _SBUF
                                    100 	.globl _SCON
                                    101 	.globl _P1
                                    102 	.globl _TH1
                                    103 	.globl _TH0
                                    104 	.globl _TL1
                                    105 	.globl _TL0
                                    106 	.globl _TMOD
                                    107 	.globl _TCON
                                    108 	.globl _PCON
                                    109 	.globl _DPH
                                    110 	.globl _DPL
                                    111 	.globl _SP
                                    112 	.globl _P0
                                    113 	.globl _Time
                                    114 	.globl _IrValue
                                    115 	.globl _Display
                                    116 	.globl _smgduan
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable bit register bank
                                    230 ;--------------------------------------------------------
                                    231 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        232 bits:
      000020                        233 	.ds 1
                           008000   234 	b0 = bits[0]
                           008100   235 	b1 = bits[1]
                           008200   236 	b2 = bits[2]
                           008300   237 	b3 = bits[3]
                           008400   238 	b4 = bits[4]
                           008500   239 	b5 = bits[5]
                           008600   240 	b6 = bits[6]
                           008700   241 	b7 = bits[7]
                                    242 ;--------------------------------------------------------
                                    243 ; internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area DSEG    (DATA)
      000021                        246 _smgduan::
      000021                        247 	.ds 16
      000031                        248 _Display::
      000031                        249 	.ds 8
      000039                        250 _IrValue::
      000039                        251 	.ds 6
      00003F                        252 _Time::
      00003F                        253 	.ds 1
                                    254 ;--------------------------------------------------------
                                    255 ; overlayable items in internal ram 
                                    256 ;--------------------------------------------------------
                                    257 	.area	OSEG    (OVR,DATA)
                                    258 	.area	OSEG    (OVR,DATA)
                                    259 ;--------------------------------------------------------
                                    260 ; Stack segment in internal ram 
                                    261 ;--------------------------------------------------------
                                    262 	.area	SSEG
      000040                        263 __start__stack:
      000040                        264 	.ds	1
                                    265 
                                    266 ;--------------------------------------------------------
                                    267 ; indirectly addressable internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area ISEG    (DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; absolute internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area IABS    (ABS,DATA)
                                    274 	.area IABS    (ABS,DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; bit data
                                    277 ;--------------------------------------------------------
                                    278 	.area BSEG    (BIT)
                                    279 ;--------------------------------------------------------
                                    280 ; paged external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area PSEG    (PAG,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XSEG    (XDATA)
                                    287 ;--------------------------------------------------------
                                    288 ; absolute external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area XABS    (ABS,XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; external initialized ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XISEG   (XDATA)
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT0 (CODE)
                                    297 	.area GSINIT1 (CODE)
                                    298 	.area GSINIT2 (CODE)
                                    299 	.area GSINIT3 (CODE)
                                    300 	.area GSINIT4 (CODE)
                                    301 	.area GSINIT5 (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.area GSFINAL (CODE)
                                    304 	.area CSEG    (CODE)
                                    305 ;--------------------------------------------------------
                                    306 ; interrupt vector 
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
      000000                        309 __interrupt_vect:
      000000 02 00 09         [24]  310 	ljmp	__sdcc_gsinit_startup
      000003 02 01 BB         [24]  311 	ljmp	_ReadIr
                                    312 ;--------------------------------------------------------
                                    313 ; global & static initialisations
                                    314 ;--------------------------------------------------------
                                    315 	.area HOME    (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 	.area GSFINAL (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.globl __sdcc_gsinit_startup
                                    320 	.globl __sdcc_program_startup
                                    321 	.globl __start__stack
                                    322 	.globl __mcs51_genXINIT
                                    323 	.globl __mcs51_genXRAMCLEAR
                                    324 	.globl __mcs51_genRAMCLEAR
                                    325 ;	main.c:26: uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
      000062 75 21 3F         [24]  326 	mov	_smgduan,#0x3f
      000065 75 22 06         [24]  327 	mov	(_smgduan + 0x0001),#0x06
      000068 75 23 5B         [24]  328 	mov	(_smgduan + 0x0002),#0x5b
      00006B 75 24 4F         [24]  329 	mov	(_smgduan + 0x0003),#0x4f
      00006E 75 25 66         [24]  330 	mov	(_smgduan + 0x0004),#0x66
      000071 75 26 6D         [24]  331 	mov	(_smgduan + 0x0005),#0x6d
      000074 75 27 7D         [24]  332 	mov	(_smgduan + 0x0006),#0x7d
      000077 75 28 07         [24]  333 	mov	(_smgduan + 0x0007),#0x07
      00007A 75 29 7F         [24]  334 	mov	(_smgduan + 0x0008),#0x7f
      00007D 75 2A 6F         [24]  335 	mov	(_smgduan + 0x0009),#0x6f
      000080 75 2B 77         [24]  336 	mov	(_smgduan + 0x000a),#0x77
      000083 75 2C 7C         [24]  337 	mov	(_smgduan + 0x000b),#0x7c
      000086 75 2D 39         [24]  338 	mov	(_smgduan + 0x000c),#0x39
      000089 75 2E 5E         [24]  339 	mov	(_smgduan + 0x000d),#0x5e
      00008C 75 2F 79         [24]  340 	mov	(_smgduan + 0x000e),#0x79
      00008F 75 30 71         [24]  341 	mov	(_smgduan + 0x000f),#0x71
                                    342 ;	main.c:28: uchar Display[8] = {0, 0, 0x76, 0, 0, 0, 0, 0};
      000092 75 31 00         [24]  343 	mov	_Display,#0x00
      000095 75 32 00         [24]  344 	mov	(_Display + 0x0001),#0x00
      000098 75 33 76         [24]  345 	mov	(_Display + 0x0002),#0x76
      00009B 75 34 00         [24]  346 	mov	(_Display + 0x0003),#0x00
      00009E 75 35 00         [24]  347 	mov	(_Display + 0x0004),#0x00
      0000A1 75 36 00         [24]  348 	mov	(_Display + 0x0005),#0x00
      0000A4 75 37 00         [24]  349 	mov	(_Display + 0x0006),#0x00
      0000A7 75 38 00         [24]  350 	mov	(_Display + 0x0007),#0x00
                                    351 	.area GSFINAL (CODE)
      0000AA 02 00 06         [24]  352 	ljmp	__sdcc_program_startup
                                    353 ;--------------------------------------------------------
                                    354 ; Home
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
                                    357 	.area HOME    (CODE)
      000006                        358 __sdcc_program_startup:
      000006 02 01 8C         [24]  359 	ljmp	_main
                                    360 ;	return from main will return to caller
                                    361 ;--------------------------------------------------------
                                    362 ; code
                                    363 ;--------------------------------------------------------
                                    364 	.area CSEG    (CODE)
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'delay'
                                    367 ;------------------------------------------------------------
                                    368 ;i                         Allocated to registers 
                                    369 ;------------------------------------------------------------
                                    370 ;	main.c:7: void delay(uint i)
                                    371 ;	-----------------------------------------
                                    372 ;	 function delay
                                    373 ;	-----------------------------------------
      0000AD                        374 _delay:
                           000007   375 	ar7 = 0x07
                           000006   376 	ar6 = 0x06
                           000005   377 	ar5 = 0x05
                           000004   378 	ar4 = 0x04
                           000003   379 	ar3 = 0x03
                           000002   380 	ar2 = 0x02
                           000001   381 	ar1 = 0x01
                           000000   382 	ar0 = 0x00
      0000AD AE 82            [24]  383 	mov	r6,dpl
      0000AF AF 83            [24]  384 	mov	r7,dph
                                    385 ;	main.c:9: while(i--);
      0000B1                        386 00101$:
      0000B1 8E 04            [24]  387 	mov	ar4,r6
      0000B3 8F 05            [24]  388 	mov	ar5,r7
      0000B5 1E               [12]  389 	dec	r6
      0000B6 BE FF 01         [24]  390 	cjne	r6,#0xff,00111$
      0000B9 1F               [12]  391 	dec	r7
      0000BA                        392 00111$:
      0000BA EC               [12]  393 	mov	a,r4
      0000BB 4D               [12]  394 	orl	a,r5
      0000BC 70 F3            [24]  395 	jnz	00101$
                                    396 ;	main.c:10: }
      0000BE 22               [24]  397 	ret
                                    398 ;------------------------------------------------------------
                                    399 ;Allocation info for local variables in function 'DelayXms'
                                    400 ;------------------------------------------------------------
                                    401 ;x                         Allocated to registers 
                                    402 ;i                         Allocated to registers r5 
                                    403 ;------------------------------------------------------------
                                    404 ;	main.c:12: void DelayXms(uint x)
                                    405 ;	-----------------------------------------
                                    406 ;	 function DelayXms
                                    407 ;	-----------------------------------------
      0000BF                        408 _DelayXms:
      0000BF AE 82            [24]  409 	mov	r6,dpl
      0000C1 AF 83            [24]  410 	mov	r7,dph
                                    411 ;	main.c:15: while(x--)
      0000C3                        412 00102$:
      0000C3 8E 04            [24]  413 	mov	ar4,r6
      0000C5 8F 05            [24]  414 	mov	ar5,r7
      0000C7 1E               [12]  415 	dec	r6
      0000C8 BE FF 01         [24]  416 	cjne	r6,#0xff,00127$
      0000CB 1F               [12]  417 	dec	r7
      0000CC                        418 00127$:
      0000CC EC               [12]  419 	mov	a,r4
      0000CD 4D               [12]  420 	orl	a,r5
      0000CE 60 0A            [24]  421 	jz	00108$
                                    422 ;	main.c:17: for(i=0;i<100;i++);
      0000D0 7D 64            [12]  423 	mov	r5,#0x64
      0000D2                        424 00107$:
      0000D2 ED               [12]  425 	mov	a,r5
      0000D3 14               [12]  426 	dec	a
      0000D4 FC               [12]  427 	mov	r4,a
      0000D5 FD               [12]  428 	mov	r5,a
      0000D6 70 FA            [24]  429 	jnz	00107$
      0000D8 80 E9            [24]  430 	sjmp	00102$
      0000DA                        431 00108$:
                                    432 ;	main.c:19: }
      0000DA 22               [24]  433 	ret
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function 'DisplayDigits'
                                    436 ;------------------------------------------------------------
                                    437 ;i                         Allocated to registers r7 
                                    438 ;------------------------------------------------------------
                                    439 ;	main.c:29: void DisplayDigits()
                                    440 ;	-----------------------------------------
                                    441 ;	 function DisplayDigits
                                    442 ;	-----------------------------------------
      0000DB                        443 _DisplayDigits:
                                    444 ;	main.c:32: for(i=0;i<2;i++)
      0000DB 7F 00            [12]  445 	mov	r7,#0x00
      0000DD                        446 00102$:
                                    447 ;	main.c:34: LSC = i / 4;
      0000DD 8F 05            [24]  448 	mov	ar5,r7
      0000DF 7E 00            [12]  449 	mov	r6,#0x00
      0000E1 75 08 04         [24]  450 	mov	__divsint_PARM_2,#0x04
                                    451 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0000E4 8E 09            [24]  452 	mov	(__divsint_PARM_2 + 1),r6
      0000E6 8D 82            [24]  453 	mov	dpl,r5
      0000E8 8E 83            [24]  454 	mov	dph,r6
      0000EA C0 07            [24]  455 	push	ar7
      0000EC C0 06            [24]  456 	push	ar6
      0000EE C0 05            [24]  457 	push	ar5
      0000F0 12 03 0C         [24]  458 	lcall	__divsint
      0000F3 AB 82            [24]  459 	mov	r3,dpl
      0000F5 AC 83            [24]  460 	mov	r4,dph
      0000F7 D0 05            [24]  461 	pop	ar5
      0000F9 D0 06            [24]  462 	pop	ar6
                                    463 ;	assignBit
      0000FB EB               [12]  464 	mov	a,r3
      0000FC 4C               [12]  465 	orl	a,r4
      0000FD 24 FF            [12]  466 	add	a,#0xff
      0000FF 92 A4            [24]  467 	mov	_P2_4,c
                                    468 ;	main.c:35: LSB = (i-4*LSC) / 2;
      000101 A2 A4            [12]  469 	mov	c,_P2_4
      000103 E4               [12]  470 	clr	a
      000104 33               [12]  471 	rlc	a
      000105 7C 00            [12]  472 	mov	r4,#0x00
      000107 25 E0            [12]  473 	add	a,acc
      000109 FB               [12]  474 	mov	r3,a
      00010A EC               [12]  475 	mov	a,r4
      00010B 33               [12]  476 	rlc	a
      00010C FC               [12]  477 	mov	r4,a
      00010D EB               [12]  478 	mov	a,r3
      00010E 2B               [12]  479 	add	a,r3
      00010F FB               [12]  480 	mov	r3,a
      000110 EC               [12]  481 	mov	a,r4
      000111 33               [12]  482 	rlc	a
      000112 FC               [12]  483 	mov	r4,a
      000113 ED               [12]  484 	mov	a,r5
      000114 C3               [12]  485 	clr	c
      000115 9B               [12]  486 	subb	a,r3
      000116 F5 82            [12]  487 	mov	dpl,a
      000118 EE               [12]  488 	mov	a,r6
      000119 9C               [12]  489 	subb	a,r4
      00011A F5 83            [12]  490 	mov	dph,a
      00011C 75 08 02         [24]  491 	mov	__divsint_PARM_2,#0x02
      00011F 75 09 00         [24]  492 	mov	(__divsint_PARM_2 + 1),#0x00
      000122 C0 06            [24]  493 	push	ar6
      000124 C0 05            [24]  494 	push	ar5
      000126 12 03 0C         [24]  495 	lcall	__divsint
      000129 AB 82            [24]  496 	mov	r3,dpl
      00012B AC 83            [24]  497 	mov	r4,dph
      00012D D0 05            [24]  498 	pop	ar5
      00012F D0 06            [24]  499 	pop	ar6
      000131 D0 07            [24]  500 	pop	ar7
                                    501 ;	assignBit
      000133 EB               [12]  502 	mov	a,r3
      000134 4C               [12]  503 	orl	a,r4
      000135 24 FF            [12]  504 	add	a,#0xff
      000137 92 A3            [24]  505 	mov	_P2_3,c
                                    506 ;	main.c:36: LSA = i - 4*LSC - 2*LSB;
      000139 A2 A4            [12]  507 	mov	c,_P2_4
      00013B E4               [12]  508 	clr	a
      00013C 33               [12]  509 	rlc	a
      00013D 7C 00            [12]  510 	mov	r4,#0x00
      00013F 25 E0            [12]  511 	add	a,acc
      000141 FB               [12]  512 	mov	r3,a
      000142 EC               [12]  513 	mov	a,r4
      000143 33               [12]  514 	rlc	a
      000144 FC               [12]  515 	mov	r4,a
      000145 EB               [12]  516 	mov	a,r3
      000146 2B               [12]  517 	add	a,r3
      000147 FB               [12]  518 	mov	r3,a
      000148 EC               [12]  519 	mov	a,r4
      000149 33               [12]  520 	rlc	a
      00014A FC               [12]  521 	mov	r4,a
      00014B ED               [12]  522 	mov	a,r5
      00014C C3               [12]  523 	clr	c
      00014D 9B               [12]  524 	subb	a,r3
      00014E FD               [12]  525 	mov	r5,a
      00014F EE               [12]  526 	mov	a,r6
      000150 9C               [12]  527 	subb	a,r4
      000151 FE               [12]  528 	mov	r6,a
      000152 A2 A3            [12]  529 	mov	c,_P2_3
      000154 E4               [12]  530 	clr	a
      000155 33               [12]  531 	rlc	a
      000156 7C 00            [12]  532 	mov	r4,#0x00
      000158 25 E0            [12]  533 	add	a,acc
      00015A FB               [12]  534 	mov	r3,a
      00015B EC               [12]  535 	mov	a,r4
      00015C 33               [12]  536 	rlc	a
      00015D FC               [12]  537 	mov	r4,a
      00015E ED               [12]  538 	mov	a,r5
      00015F C3               [12]  539 	clr	c
      000160 9B               [12]  540 	subb	a,r3
      000161 FD               [12]  541 	mov	r5,a
      000162 EE               [12]  542 	mov	a,r6
      000163 9C               [12]  543 	subb	a,r4
                                    544 ;	assignBit
      000164 4D               [12]  545 	orl	a,r5
      000165 24 FF            [12]  546 	add	a,#0xff
      000167 92 A2            [24]  547 	mov	_P2_2,c
                                    548 ;	main.c:37: P0 = Display[i];
      000169 EF               [12]  549 	mov	a,r7
      00016A 24 31            [12]  550 	add	a,#_Display
      00016C F9               [12]  551 	mov	r1,a
      00016D 87 80            [24]  552 	mov	_P0,@r1
                                    553 ;	main.c:38: delay(200);
      00016F 90 00 C8         [24]  554 	mov	dptr,#0x00c8
      000172 C0 07            [24]  555 	push	ar7
      000174 12 00 AD         [24]  556 	lcall	_delay
      000177 D0 07            [24]  557 	pop	ar7
                                    558 ;	main.c:32: for(i=0;i<2;i++)
      000179 0F               [12]  559 	inc	r7
      00017A BF 02 00         [24]  560 	cjne	r7,#0x02,00111$
      00017D                        561 00111$:
      00017D 50 03            [24]  562 	jnc	00112$
      00017F 02 00 DD         [24]  563 	ljmp	00102$
      000182                        564 00112$:
                                    565 ;	main.c:40: }
      000182 22               [24]  566 	ret
                                    567 ;------------------------------------------------------------
                                    568 ;Allocation info for local variables in function 'IrInit'
                                    569 ;------------------------------------------------------------
                                    570 ;	main.c:45: void IrInit()
                                    571 ;	-----------------------------------------
                                    572 ;	 function IrInit
                                    573 ;	-----------------------------------------
      000183                        574 _IrInit:
                                    575 ;	main.c:47: IT0 = 1;
                                    576 ;	assignBit
      000183 D2 88            [12]  577 	setb	_IT0
                                    578 ;	main.c:48: EX0 = 1;
                                    579 ;	assignBit
      000185 D2 A8            [12]  580 	setb	_EX0
                                    581 ;	main.c:49: EA = 1;
                                    582 ;	assignBit
      000187 D2 AF            [12]  583 	setb	_EA
                                    584 ;	main.c:51: IRIN = 1;
                                    585 ;	assignBit
      000189 D2 B2            [12]  586 	setb	_P3_2
                                    587 ;	main.c:52: }
      00018B 22               [24]  588 	ret
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'main'
                                    591 ;------------------------------------------------------------
                                    592 ;	main.c:54: void main()
                                    593 ;	-----------------------------------------
                                    594 ;	 function main
                                    595 ;	-----------------------------------------
      00018C                        596 _main:
                                    597 ;	main.c:56: IrInit();
      00018C 12 01 83         [24]  598 	lcall	_IrInit
                                    599 ;	main.c:57: while(1)
      00018F                        600 00102$:
                                    601 ;	main.c:59: Display[0] = smgduan[IrValue[2]/16];
      00018F AE 3B            [24]  602 	mov	r6,(_IrValue + 0x0002)
      000191 7F 00            [12]  603 	mov	r7,#0x00
      000193 75 08 10         [24]  604 	mov	__divsint_PARM_2,#0x10
                                    605 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000196 8F 09            [24]  606 	mov	(__divsint_PARM_2 + 1),r7
      000198 8E 82            [24]  607 	mov	dpl,r6
      00019A 8F 83            [24]  608 	mov	dph,r7
      00019C 12 03 0C         [24]  609 	lcall	__divsint
      00019F AE 82            [24]  610 	mov	r6,dpl
      0001A1 EE               [12]  611 	mov	a,r6
      0001A2 24 21            [12]  612 	add	a,#_smgduan
      0001A4 F9               [12]  613 	mov	r1,a
      0001A5 87 07            [24]  614 	mov	ar7,@r1
      0001A7 8F 31            [24]  615 	mov	_Display,r7
                                    616 ;	main.c:60: Display[1] = smgduan[IrValue[2]&0x0f];
      0001A9 AE 3B            [24]  617 	mov	r6,(_IrValue + 0x0002)
      0001AB 53 06 0F         [24]  618 	anl	ar6,#0x0f
      0001AE EE               [12]  619 	mov	a,r6
      0001AF 24 21            [12]  620 	add	a,#_smgduan
      0001B1 F9               [12]  621 	mov	r1,a
      0001B2 87 07            [24]  622 	mov	ar7,@r1
      0001B4 8F 32            [24]  623 	mov	(_Display + 0x0001),r7
                                    624 ;	main.c:61: DisplayDigits();
      0001B6 12 00 DB         [24]  625 	lcall	_DisplayDigits
                                    626 ;	main.c:63: }
      0001B9 80 D4            [24]  627 	sjmp	00102$
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'ReadIr'
                                    630 ;------------------------------------------------------------
                                    631 ;j                         Allocated to registers r6 
                                    632 ;k                         Allocated to registers r7 
                                    633 ;err                       Allocated to registers r6 r7 
                                    634 ;------------------------------------------------------------
                                    635 ;	main.c:65: void ReadIr() __interrupt 0
                                    636 ;	-----------------------------------------
                                    637 ;	 function ReadIr
                                    638 ;	-----------------------------------------
      0001BB                        639 _ReadIr:
      0001BB C0 20            [24]  640 	push	bits
      0001BD C0 E0            [24]  641 	push	acc
      0001BF C0 F0            [24]  642 	push	b
      0001C1 C0 82            [24]  643 	push	dpl
      0001C3 C0 83            [24]  644 	push	dph
      0001C5 C0 07            [24]  645 	push	(0+7)
      0001C7 C0 06            [24]  646 	push	(0+6)
      0001C9 C0 05            [24]  647 	push	(0+5)
      0001CB C0 04            [24]  648 	push	(0+4)
      0001CD C0 03            [24]  649 	push	(0+3)
      0001CF C0 02            [24]  650 	push	(0+2)
      0001D1 C0 01            [24]  651 	push	(0+1)
      0001D3 C0 00            [24]  652 	push	(0+0)
      0001D5 C0 D0            [24]  653 	push	psw
      0001D7 75 D0 00         [24]  654 	mov	psw,#0x00
                                    655 ;	main.c:69: Time = 0;
      0001DA 75 3F 00         [24]  656 	mov	_Time,#0x00
                                    657 ;	main.c:70: delay(700);
      0001DD 90 02 BC         [24]  658 	mov	dptr,#0x02bc
      0001E0 12 00 AD         [24]  659 	lcall	_delay
                                    660 ;	main.c:71: if(IRIN==0)
      0001E3 30 B2 03         [24]  661 	jnb	_P3_2,00218$
      0001E6 02 02 C6         [24]  662 	ljmp	00133$
      0001E9                        663 00218$:
                                    664 ;	main.c:74: while((IRIN==0)&&(err>0))
      0001E9 7E E8            [12]  665 	mov	r6,#0xe8
      0001EB 7F 03            [12]  666 	mov	r7,#0x03
      0001ED                        667 00102$:
      0001ED 20 B2 19         [24]  668 	jb	_P3_2,00104$
      0001F0 EE               [12]  669 	mov	a,r6
      0001F1 4F               [12]  670 	orl	a,r7
      0001F2 60 15            [24]  671 	jz	00104$
                                    672 ;	main.c:76: delay(1);
      0001F4 90 00 01         [24]  673 	mov	dptr,#0x0001
      0001F7 C0 07            [24]  674 	push	ar7
      0001F9 C0 06            [24]  675 	push	ar6
      0001FB 12 00 AD         [24]  676 	lcall	_delay
      0001FE D0 06            [24]  677 	pop	ar6
      000200 D0 07            [24]  678 	pop	ar7
                                    679 ;	main.c:77: err--;
      000202 1E               [12]  680 	dec	r6
      000203 BE FF 01         [24]  681 	cjne	r6,#0xff,00221$
      000206 1F               [12]  682 	dec	r7
      000207                        683 00221$:
      000207 80 E4            [24]  684 	sjmp	00102$
      000209                        685 00104$:
                                    686 ;	main.c:79: if(IRIN==1)
      000209 20 B2 03         [24]  687 	jb	_P3_2,00222$
      00020C 02 02 B8         [24]  688 	ljmp	00124$
      00020F                        689 00222$:
                                    690 ;	main.c:82: while((IRIN==1)&&(err>0))
      00020F 7E F4            [12]  691 	mov	r6,#0xf4
      000211 7F 01            [12]  692 	mov	r7,#0x01
      000213                        693 00106$:
      000213 30 B2 19         [24]  694 	jnb	_P3_2,00108$
      000216 EE               [12]  695 	mov	a,r6
      000217 4F               [12]  696 	orl	a,r7
      000218 60 15            [24]  697 	jz	00108$
                                    698 ;	main.c:84: delay(1);
      00021A 90 00 01         [24]  699 	mov	dptr,#0x0001
      00021D C0 07            [24]  700 	push	ar7
      00021F C0 06            [24]  701 	push	ar6
      000221 12 00 AD         [24]  702 	lcall	_delay
      000224 D0 06            [24]  703 	pop	ar6
      000226 D0 07            [24]  704 	pop	ar7
                                    705 ;	main.c:85: err--;
      000228 1E               [12]  706 	dec	r6
      000229 BE FF 01         [24]  707 	cjne	r6,#0xff,00225$
      00022C 1F               [12]  708 	dec	r7
      00022D                        709 00225$:
      00022D 80 E4            [24]  710 	sjmp	00106$
      00022F                        711 00108$:
                                    712 ;	main.c:87: for(k=0;k<4;k++)
      00022F 7F 00            [12]  713 	mov	r7,#0x00
                                    714 ;	main.c:89: for(j=0;j<8;j++)
      000231                        715 00151$:
      000231 7E 00            [12]  716 	mov	r6,#0x00
                                    717 ;	main.c:92: while((IRIN==0)&&(err>0))
      000233                        718 00145$:
      000233 7C 3C            [12]  719 	mov	r4,#0x3c
      000235 7D 00            [12]  720 	mov	r5,#0x00
      000237                        721 00110$:
      000237 20 B2 21         [24]  722 	jb	_P3_2,00112$
      00023A EC               [12]  723 	mov	a,r4
      00023B 4D               [12]  724 	orl	a,r5
      00023C 60 1D            [24]  725 	jz	00112$
                                    726 ;	main.c:94: delay(10);
      00023E 90 00 0A         [24]  727 	mov	dptr,#0x000a
      000241 C0 07            [24]  728 	push	ar7
      000243 C0 06            [24]  729 	push	ar6
      000245 C0 05            [24]  730 	push	ar5
      000247 C0 04            [24]  731 	push	ar4
      000249 12 00 AD         [24]  732 	lcall	_delay
      00024C D0 04            [24]  733 	pop	ar4
      00024E D0 05            [24]  734 	pop	ar5
      000250 D0 06            [24]  735 	pop	ar6
      000252 D0 07            [24]  736 	pop	ar7
                                    737 ;	main.c:95: err--;
      000254 1C               [12]  738 	dec	r4
      000255 BC FF 01         [24]  739 	cjne	r4,#0xff,00228$
      000258 1D               [12]  740 	dec	r5
      000259                        741 00228$:
      000259 80 DC            [24]  742 	sjmp	00110$
      00025B                        743 00112$:
                                    744 ;	main.c:98: while((IRIN==1)&&(err>0))
      00025B 7C F4            [12]  745 	mov	r4,#0xf4
      00025D 7D 01            [12]  746 	mov	r5,#0x01
      00025F                        747 00116$:
      00025F 30 B2 29         [24]  748 	jnb	_P3_2,00118$
      000262 EC               [12]  749 	mov	a,r4
      000263 4D               [12]  750 	orl	a,r5
      000264 60 25            [24]  751 	jz	00118$
                                    752 ;	main.c:100: delay(10);
      000266 90 00 0A         [24]  753 	mov	dptr,#0x000a
      000269 C0 07            [24]  754 	push	ar7
      00026B C0 06            [24]  755 	push	ar6
      00026D C0 05            [24]  756 	push	ar5
      00026F C0 04            [24]  757 	push	ar4
      000271 12 00 AD         [24]  758 	lcall	_delay
      000274 D0 04            [24]  759 	pop	ar4
      000276 D0 05            [24]  760 	pop	ar5
      000278 D0 06            [24]  761 	pop	ar6
      00027A D0 07            [24]  762 	pop	ar7
                                    763 ;	main.c:101: err--;
      00027C 1C               [12]  764 	dec	r4
      00027D BC FF 01         [24]  765 	cjne	r4,#0xff,00231$
      000280 1D               [12]  766 	dec	r5
      000281                        767 00231$:
                                    768 ;	main.c:102: Time++;
      000281 05 3F            [12]  769 	inc	_Time
                                    770 ;	main.c:103: if(Time>30)
      000283 E5 3F            [12]  771 	mov	a,_Time
      000285 24 E1            [12]  772 	add	a,#0xff - 0x1e
      000287 50 D6            [24]  773 	jnc	00116$
                                    774 ;	main.c:105: return;
      000289 80 3B            [24]  775 	sjmp	00133$
      00028B                        776 00118$:
                                    777 ;	main.c:108: IrValue[k]>>=1;
      00028B EF               [12]  778 	mov	a,r7
      00028C 24 39            [12]  779 	add	a,#_IrValue
      00028E F9               [12]  780 	mov	r1,a
      00028F E7               [12]  781 	mov	a,@r1
      000290 C3               [12]  782 	clr	c
      000291 13               [12]  783 	rrc	a
      000292 FD               [12]  784 	mov	r5,a
      000293 F7               [12]  785 	mov	@r1,a
                                    786 ;	main.c:109: if(Time>=8)
      000294 74 F8            [12]  787 	mov	a,#0x100 - 0x08
      000296 25 3F            [12]  788 	add	a,_Time
      000298 50 09            [24]  789 	jnc	00120$
                                    790 ;	main.c:111: IrValue[k]|=0x80;
      00029A 87 05            [24]  791 	mov	ar5,@r1
      00029C 7C 00            [12]  792 	mov	r4,#0x00
      00029E 43 05 80         [24]  793 	orl	ar5,#0x80
      0002A1 A7 05            [24]  794 	mov	@r1,ar5
      0002A3                        795 00120$:
                                    796 ;	main.c:113: Time = 0;
      0002A3 75 3F 00         [24]  797 	mov	_Time,#0x00
                                    798 ;	main.c:89: for(j=0;j<8;j++)
      0002A6 0E               [12]  799 	inc	r6
      0002A7 BE 08 00         [24]  800 	cjne	r6,#0x08,00234$
      0002AA                        801 00234$:
      0002AA 50 03            [24]  802 	jnc	00235$
      0002AC 02 02 33         [24]  803 	ljmp	00145$
      0002AF                        804 00235$:
                                    805 ;	main.c:87: for(k=0;k<4;k++)
      0002AF 0F               [12]  806 	inc	r7
      0002B0 BF 04 00         [24]  807 	cjne	r7,#0x04,00236$
      0002B3                        808 00236$:
      0002B3 50 03            [24]  809 	jnc	00237$
      0002B5 02 02 31         [24]  810 	ljmp	00151$
      0002B8                        811 00237$:
      0002B8                        812 00124$:
                                    813 ;	main.c:117: if(IrValue[2]!= (!IrValue[3]))
      0002B8 E5 3C            [12]  814 	mov	a,(_IrValue + 0x0003)
      0002BA B4 01 00         [24]  815 	cjne	a,#0x01,00238$
      0002BD                        816 00238$:
      0002BD E4               [12]  817 	clr	a
      0002BE 33               [12]  818 	rlc	a
      0002BF FF               [12]  819 	mov	r7,a
      0002C0 E5 3B            [12]  820 	mov	a,(_IrValue + 0x0002)
      0002C2 FE               [12]  821 	mov	r6,a
      0002C3 B5 07 00         [24]  822 	cjne	a,ar7,00239$
                                    823 ;	main.c:119: return;
      0002C6                        824 00239$:
      0002C6                        825 00133$:
                                    826 ;	main.c:122: }
      0002C6 D0 D0            [24]  827 	pop	psw
      0002C8 D0 00            [24]  828 	pop	(0+0)
      0002CA D0 01            [24]  829 	pop	(0+1)
      0002CC D0 02            [24]  830 	pop	(0+2)
      0002CE D0 03            [24]  831 	pop	(0+3)
      0002D0 D0 04            [24]  832 	pop	(0+4)
      0002D2 D0 05            [24]  833 	pop	(0+5)
      0002D4 D0 06            [24]  834 	pop	(0+6)
      0002D6 D0 07            [24]  835 	pop	(0+7)
      0002D8 D0 83            [24]  836 	pop	dph
      0002DA D0 82            [24]  837 	pop	dpl
      0002DC D0 F0            [24]  838 	pop	b
      0002DE D0 E0            [24]  839 	pop	acc
      0002E0 D0 20            [24]  840 	pop	bits
      0002E2 32               [24]  841 	reti
                                    842 	.area CSEG    (CODE)
                                    843 	.area CONST   (CODE)
                                    844 	.area XINIT   (CODE)
                                    845 	.area CABS    (ABS,CODE)

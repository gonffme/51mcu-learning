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
                                     12 	.globl _DataProcess
                                     13 	.globl _DisplayDigits
                                     14 	.globl _DelayXms
                                     15 	.globl _delay
                                     16 	.globl _Ds1302ReadTime
                                     17 	.globl _Ds1302Init
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _PS
                                     27 	.globl _PT1
                                     28 	.globl _PX1
                                     29 	.globl _PT0
                                     30 	.globl _PX0
                                     31 	.globl _RD
                                     32 	.globl _WR
                                     33 	.globl _T1
                                     34 	.globl _T0
                                     35 	.globl _INT1
                                     36 	.globl _INT0
                                     37 	.globl _TXD
                                     38 	.globl _RXD
                                     39 	.globl _P3_7
                                     40 	.globl _P3_6
                                     41 	.globl _P3_5
                                     42 	.globl _P3_4
                                     43 	.globl _P3_3
                                     44 	.globl _P3_2
                                     45 	.globl _P3_1
                                     46 	.globl _P3_0
                                     47 	.globl _EA
                                     48 	.globl _ES
                                     49 	.globl _ET1
                                     50 	.globl _EX1
                                     51 	.globl _ET0
                                     52 	.globl _EX0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _SM0
                                     62 	.globl _SM1
                                     63 	.globl _SM2
                                     64 	.globl _REN
                                     65 	.globl _TB8
                                     66 	.globl _RB8
                                     67 	.globl _TI
                                     68 	.globl _RI
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _TF1
                                     78 	.globl _TR1
                                     79 	.globl _TF0
                                     80 	.globl _TR0
                                     81 	.globl _IE1
                                     82 	.globl _IT1
                                     83 	.globl _IE0
                                     84 	.globl _IT0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _B
                                     94 	.globl _ACC
                                     95 	.globl _PSW
                                     96 	.globl _IP
                                     97 	.globl _P3
                                     98 	.globl _IE
                                     99 	.globl _P2
                                    100 	.globl _SBUF
                                    101 	.globl _SCON
                                    102 	.globl _P1
                                    103 	.globl _TH1
                                    104 	.globl _TH0
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _PCON
                                    110 	.globl _DPH
                                    111 	.globl _DPL
                                    112 	.globl _SP
                                    113 	.globl _P0
                                    114 	.globl _Display
                                    115 	.globl _smgduan
                                    116 ;--------------------------------------------------------
                                    117 ; special function registers
                                    118 ;--------------------------------------------------------
                                    119 	.area RSEG    (ABS,DATA)
      000000                        120 	.org 0x0000
                           000080   121 _P0	=	0x0080
                           000081   122 _SP	=	0x0081
                           000082   123 _DPL	=	0x0082
                           000083   124 _DPH	=	0x0083
                           000087   125 _PCON	=	0x0087
                           000088   126 _TCON	=	0x0088
                           000089   127 _TMOD	=	0x0089
                           00008A   128 _TL0	=	0x008a
                           00008B   129 _TL1	=	0x008b
                           00008C   130 _TH0	=	0x008c
                           00008D   131 _TH1	=	0x008d
                           000090   132 _P1	=	0x0090
                           000098   133 _SCON	=	0x0098
                           000099   134 _SBUF	=	0x0099
                           0000A0   135 _P2	=	0x00a0
                           0000A8   136 _IE	=	0x00a8
                           0000B0   137 _P3	=	0x00b0
                           0000B8   138 _IP	=	0x00b8
                           0000D0   139 _PSW	=	0x00d0
                           0000E0   140 _ACC	=	0x00e0
                           0000F0   141 _B	=	0x00f0
                                    142 ;--------------------------------------------------------
                                    143 ; special function bits
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0_0	=	0x0080
                           000081   148 _P0_1	=	0x0081
                           000082   149 _P0_2	=	0x0082
                           000083   150 _P0_3	=	0x0083
                           000084   151 _P0_4	=	0x0084
                           000085   152 _P0_5	=	0x0085
                           000086   153 _P0_6	=	0x0086
                           000087   154 _P0_7	=	0x0087
                           000088   155 _IT0	=	0x0088
                           000089   156 _IE0	=	0x0089
                           00008A   157 _IT1	=	0x008a
                           00008B   158 _IE1	=	0x008b
                           00008C   159 _TR0	=	0x008c
                           00008D   160 _TF0	=	0x008d
                           00008E   161 _TR1	=	0x008e
                           00008F   162 _TF1	=	0x008f
                           000090   163 _P1_0	=	0x0090
                           000091   164 _P1_1	=	0x0091
                           000092   165 _P1_2	=	0x0092
                           000093   166 _P1_3	=	0x0093
                           000094   167 _P1_4	=	0x0094
                           000095   168 _P1_5	=	0x0095
                           000096   169 _P1_6	=	0x0096
                           000097   170 _P1_7	=	0x0097
                           000098   171 _RI	=	0x0098
                           000099   172 _TI	=	0x0099
                           00009A   173 _RB8	=	0x009a
                           00009B   174 _TB8	=	0x009b
                           00009C   175 _REN	=	0x009c
                           00009D   176 _SM2	=	0x009d
                           00009E   177 _SM1	=	0x009e
                           00009F   178 _SM0	=	0x009f
                           0000A0   179 _P2_0	=	0x00a0
                           0000A1   180 _P2_1	=	0x00a1
                           0000A2   181 _P2_2	=	0x00a2
                           0000A3   182 _P2_3	=	0x00a3
                           0000A4   183 _P2_4	=	0x00a4
                           0000A5   184 _P2_5	=	0x00a5
                           0000A6   185 _P2_6	=	0x00a6
                           0000A7   186 _P2_7	=	0x00a7
                           0000A8   187 _EX0	=	0x00a8
                           0000A9   188 _ET0	=	0x00a9
                           0000AA   189 _EX1	=	0x00aa
                           0000AB   190 _ET1	=	0x00ab
                           0000AC   191 _ES	=	0x00ac
                           0000AF   192 _EA	=	0x00af
                           0000B0   193 _P3_0	=	0x00b0
                           0000B1   194 _P3_1	=	0x00b1
                           0000B2   195 _P3_2	=	0x00b2
                           0000B3   196 _P3_3	=	0x00b3
                           0000B4   197 _P3_4	=	0x00b4
                           0000B5   198 _P3_5	=	0x00b5
                           0000B6   199 _P3_6	=	0x00b6
                           0000B7   200 _P3_7	=	0x00b7
                           0000B0   201 _RXD	=	0x00b0
                           0000B1   202 _TXD	=	0x00b1
                           0000B2   203 _INT0	=	0x00b2
                           0000B3   204 _INT1	=	0x00b3
                           0000B4   205 _T0	=	0x00b4
                           0000B5   206 _T1	=	0x00b5
                           0000B6   207 _WR	=	0x00b6
                           0000B7   208 _RD	=	0x00b7
                           0000B8   209 _PX0	=	0x00b8
                           0000B9   210 _PT0	=	0x00b9
                           0000BA   211 _PX1	=	0x00ba
                           0000BB   212 _PT1	=	0x00bb
                           0000BC   213 _PS	=	0x00bc
                           0000D0   214 _P	=	0x00d0
                           0000D1   215 _F1	=	0x00d1
                           0000D2   216 _OV	=	0x00d2
                           0000D3   217 _RS0	=	0x00d3
                           0000D4   218 _RS1	=	0x00d4
                           0000D5   219 _F0	=	0x00d5
                           0000D6   220 _AC	=	0x00d6
                           0000D7   221 _CY	=	0x00d7
                                    222 ;--------------------------------------------------------
                                    223 ; overlayable register banks
                                    224 ;--------------------------------------------------------
                                    225 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        226 	.ds 8
                                    227 ;--------------------------------------------------------
                                    228 ; internal ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area DSEG    (DATA)
      000008                        231 _smgduan::
      000008                        232 	.ds 16
      000018                        233 _Display::
      000018                        234 	.ds 8
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram 
                                    237 ;--------------------------------------------------------
                                    238 	.area	OSEG    (OVR,DATA)
                                    239 	.area	OSEG    (OVR,DATA)
                                    240 ;--------------------------------------------------------
                                    241 ; Stack segment in internal ram 
                                    242 ;--------------------------------------------------------
                                    243 	.area	SSEG
      000038                        244 __start__stack:
      000038                        245 	.ds	1
                                    246 
                                    247 ;--------------------------------------------------------
                                    248 ; indirectly addressable internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area ISEG    (DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; absolute internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area IABS    (ABS,DATA)
                                    255 	.area IABS    (ABS,DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; bit data
                                    258 ;--------------------------------------------------------
                                    259 	.area BSEG    (BIT)
                                    260 ;--------------------------------------------------------
                                    261 ; paged external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area PSEG    (PAG,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XSEG    (XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external initialized ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; interrupt vector 
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
      000000                        290 __interrupt_vect:
      000000 02 00 06         [24]  291 	ljmp	__sdcc_gsinit_startup
                                    292 ;--------------------------------------------------------
                                    293 ; global & static initialisations
                                    294 ;--------------------------------------------------------
                                    295 	.area HOME    (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.globl __sdcc_gsinit_startup
                                    300 	.globl __sdcc_program_startup
                                    301 	.globl __start__stack
                                    302 	.globl __mcs51_genXINIT
                                    303 	.globl __mcs51_genXRAMCLEAR
                                    304 	.globl __mcs51_genRAMCLEAR
                                    305 ;	main.c:27: uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
      00005F 75 08 3F         [24]  306 	mov	_smgduan,#0x3f
      000062 75 09 06         [24]  307 	mov	(_smgduan + 0x0001),#0x06
      000065 75 0A 5B         [24]  308 	mov	(_smgduan + 0x0002),#0x5b
      000068 75 0B 4F         [24]  309 	mov	(_smgduan + 0x0003),#0x4f
      00006B 75 0C 66         [24]  310 	mov	(_smgduan + 0x0004),#0x66
      00006E 75 0D 6D         [24]  311 	mov	(_smgduan + 0x0005),#0x6d
      000071 75 0E 7D         [24]  312 	mov	(_smgduan + 0x0006),#0x7d
      000074 75 0F 07         [24]  313 	mov	(_smgduan + 0x0007),#0x07
      000077 75 10 7F         [24]  314 	mov	(_smgduan + 0x0008),#0x7f
      00007A 75 11 6F         [24]  315 	mov	(_smgduan + 0x0009),#0x6f
      00007D 75 12 77         [24]  316 	mov	(_smgduan + 0x000a),#0x77
      000080 75 13 7C         [24]  317 	mov	(_smgduan + 0x000b),#0x7c
      000083 75 14 39         [24]  318 	mov	(_smgduan + 0x000c),#0x39
      000086 75 15 5E         [24]  319 	mov	(_smgduan + 0x000d),#0x5e
      000089 75 16 79         [24]  320 	mov	(_smgduan + 0x000e),#0x79
      00008C 75 17 71         [24]  321 	mov	(_smgduan + 0x000f),#0x71
                                    322 ;	main.c:29: uchar Display[8] = {0, 0, 0x09, 0, 0, 0x09, 0, 0};
      00008F 75 18 00         [24]  323 	mov	_Display,#0x00
      000092 75 19 00         [24]  324 	mov	(_Display + 0x0001),#0x00
      000095 75 1A 09         [24]  325 	mov	(_Display + 0x0002),#0x09
      000098 75 1B 00         [24]  326 	mov	(_Display + 0x0003),#0x00
      00009B 75 1C 00         [24]  327 	mov	(_Display + 0x0004),#0x00
      00009E 75 1D 09         [24]  328 	mov	(_Display + 0x0005),#0x09
      0000A1 75 1E 00         [24]  329 	mov	(_Display + 0x0006),#0x00
      0000A4 75 1F 00         [24]  330 	mov	(_Display + 0x0007),#0x00
                                    331 	.area GSFINAL (CODE)
      0000E6 02 00 03         [24]  332 	ljmp	__sdcc_program_startup
                                    333 ;--------------------------------------------------------
                                    334 ; Home
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
                                    337 	.area HOME    (CODE)
      000003                        338 __sdcc_program_startup:
      000003 02 02 3B         [24]  339 	ljmp	_main
                                    340 ;	return from main will return to caller
                                    341 ;--------------------------------------------------------
                                    342 ; code
                                    343 ;--------------------------------------------------------
                                    344 	.area CSEG    (CODE)
                                    345 ;------------------------------------------------------------
                                    346 ;Allocation info for local variables in function 'delay'
                                    347 ;------------------------------------------------------------
                                    348 ;i                         Allocated to registers 
                                    349 ;------------------------------------------------------------
                                    350 ;	main.c:8: void delay(uint i)
                                    351 ;	-----------------------------------------
                                    352 ;	 function delay
                                    353 ;	-----------------------------------------
      0000E9                        354 _delay:
                           000007   355 	ar7 = 0x07
                           000006   356 	ar6 = 0x06
                           000005   357 	ar5 = 0x05
                           000004   358 	ar4 = 0x04
                           000003   359 	ar3 = 0x03
                           000002   360 	ar2 = 0x02
                           000001   361 	ar1 = 0x01
                           000000   362 	ar0 = 0x00
      0000E9 AE 82            [24]  363 	mov	r6,dpl
      0000EB AF 83            [24]  364 	mov	r7,dph
                                    365 ;	main.c:10: while(i--);
      0000ED                        366 00101$:
      0000ED 8E 04            [24]  367 	mov	ar4,r6
      0000EF 8F 05            [24]  368 	mov	ar5,r7
      0000F1 1E               [12]  369 	dec	r6
      0000F2 BE FF 01         [24]  370 	cjne	r6,#0xff,00111$
      0000F5 1F               [12]  371 	dec	r7
      0000F6                        372 00111$:
      0000F6 EC               [12]  373 	mov	a,r4
      0000F7 4D               [12]  374 	orl	a,r5
      0000F8 70 F3            [24]  375 	jnz	00101$
                                    376 ;	main.c:11: }
      0000FA 22               [24]  377 	ret
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'DelayXms'
                                    380 ;------------------------------------------------------------
                                    381 ;x                         Allocated to registers 
                                    382 ;i                         Allocated to registers r5 
                                    383 ;------------------------------------------------------------
                                    384 ;	main.c:13: void DelayXms(uint x)
                                    385 ;	-----------------------------------------
                                    386 ;	 function DelayXms
                                    387 ;	-----------------------------------------
      0000FB                        388 _DelayXms:
      0000FB AE 82            [24]  389 	mov	r6,dpl
      0000FD AF 83            [24]  390 	mov	r7,dph
                                    391 ;	main.c:16: while(x--)
      0000FF                        392 00102$:
      0000FF 8E 04            [24]  393 	mov	ar4,r6
      000101 8F 05            [24]  394 	mov	ar5,r7
      000103 1E               [12]  395 	dec	r6
      000104 BE FF 01         [24]  396 	cjne	r6,#0xff,00127$
      000107 1F               [12]  397 	dec	r7
      000108                        398 00127$:
      000108 EC               [12]  399 	mov	a,r4
      000109 4D               [12]  400 	orl	a,r5
      00010A 60 0A            [24]  401 	jz	00108$
                                    402 ;	main.c:18: for(i=0;i<100;i++);
      00010C 7D 64            [12]  403 	mov	r5,#0x64
      00010E                        404 00107$:
      00010E ED               [12]  405 	mov	a,r5
      00010F 14               [12]  406 	dec	a
      000110 FC               [12]  407 	mov	r4,a
      000111 FD               [12]  408 	mov	r5,a
      000112 70 FA            [24]  409 	jnz	00107$
      000114 80 E9            [24]  410 	sjmp	00102$
      000116                        411 00108$:
                                    412 ;	main.c:20: }
      000116 22               [24]  413 	ret
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'DisplayDigits'
                                    416 ;------------------------------------------------------------
                                    417 ;i                         Allocated to registers r7 
                                    418 ;------------------------------------------------------------
                                    419 ;	main.c:30: void DisplayDigits()
                                    420 ;	-----------------------------------------
                                    421 ;	 function DisplayDigits
                                    422 ;	-----------------------------------------
      000117                        423 _DisplayDigits:
                                    424 ;	main.c:33: for(i=0;i<8;i++)
      000117 7F 00            [12]  425 	mov	r7,#0x00
      000119                        426 00102$:
                                    427 ;	main.c:35: LSC = i / 4;
      000119 8F 05            [24]  428 	mov	ar5,r7
      00011B 7E 00            [12]  429 	mov	r6,#0x00
      00011D 75 36 04         [24]  430 	mov	__divsint_PARM_2,#0x04
                                    431 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000120 8E 37            [24]  432 	mov	(__divsint_PARM_2 + 1),r6
      000122 8D 82            [24]  433 	mov	dpl,r5
      000124 8E 83            [24]  434 	mov	dph,r6
      000126 C0 07            [24]  435 	push	ar7
      000128 C0 06            [24]  436 	push	ar6
      00012A C0 05            [24]  437 	push	ar5
      00012C 12 03 75         [24]  438 	lcall	__divsint
      00012F AB 82            [24]  439 	mov	r3,dpl
      000131 AC 83            [24]  440 	mov	r4,dph
      000133 D0 05            [24]  441 	pop	ar5
      000135 D0 06            [24]  442 	pop	ar6
                                    443 ;	assignBit
      000137 EB               [12]  444 	mov	a,r3
      000138 4C               [12]  445 	orl	a,r4
      000139 24 FF            [12]  446 	add	a,#0xff
      00013B 92 A4            [24]  447 	mov	_P2_4,c
                                    448 ;	main.c:36: LSB = (i-4*LSC) / 2;
      00013D A2 A4            [12]  449 	mov	c,_P2_4
      00013F E4               [12]  450 	clr	a
      000140 33               [12]  451 	rlc	a
      000141 7C 00            [12]  452 	mov	r4,#0x00
      000143 25 E0            [12]  453 	add	a,acc
      000145 FB               [12]  454 	mov	r3,a
      000146 EC               [12]  455 	mov	a,r4
      000147 33               [12]  456 	rlc	a
      000148 FC               [12]  457 	mov	r4,a
      000149 EB               [12]  458 	mov	a,r3
      00014A 2B               [12]  459 	add	a,r3
      00014B FB               [12]  460 	mov	r3,a
      00014C EC               [12]  461 	mov	a,r4
      00014D 33               [12]  462 	rlc	a
      00014E FC               [12]  463 	mov	r4,a
      00014F ED               [12]  464 	mov	a,r5
      000150 C3               [12]  465 	clr	c
      000151 9B               [12]  466 	subb	a,r3
      000152 F5 82            [12]  467 	mov	dpl,a
      000154 EE               [12]  468 	mov	a,r6
      000155 9C               [12]  469 	subb	a,r4
      000156 F5 83            [12]  470 	mov	dph,a
      000158 75 36 02         [24]  471 	mov	__divsint_PARM_2,#0x02
      00015B 75 37 00         [24]  472 	mov	(__divsint_PARM_2 + 1),#0x00
      00015E C0 06            [24]  473 	push	ar6
      000160 C0 05            [24]  474 	push	ar5
      000162 12 03 75         [24]  475 	lcall	__divsint
      000165 AB 82            [24]  476 	mov	r3,dpl
      000167 AC 83            [24]  477 	mov	r4,dph
      000169 D0 05            [24]  478 	pop	ar5
      00016B D0 06            [24]  479 	pop	ar6
      00016D D0 07            [24]  480 	pop	ar7
                                    481 ;	assignBit
      00016F EB               [12]  482 	mov	a,r3
      000170 4C               [12]  483 	orl	a,r4
      000171 24 FF            [12]  484 	add	a,#0xff
      000173 92 A3            [24]  485 	mov	_P2_3,c
                                    486 ;	main.c:37: LSA = i - 4*LSC - 2*LSB;
      000175 A2 A4            [12]  487 	mov	c,_P2_4
      000177 E4               [12]  488 	clr	a
      000178 33               [12]  489 	rlc	a
      000179 7C 00            [12]  490 	mov	r4,#0x00
      00017B 25 E0            [12]  491 	add	a,acc
      00017D FB               [12]  492 	mov	r3,a
      00017E EC               [12]  493 	mov	a,r4
      00017F 33               [12]  494 	rlc	a
      000180 FC               [12]  495 	mov	r4,a
      000181 EB               [12]  496 	mov	a,r3
      000182 2B               [12]  497 	add	a,r3
      000183 FB               [12]  498 	mov	r3,a
      000184 EC               [12]  499 	mov	a,r4
      000185 33               [12]  500 	rlc	a
      000186 FC               [12]  501 	mov	r4,a
      000187 ED               [12]  502 	mov	a,r5
      000188 C3               [12]  503 	clr	c
      000189 9B               [12]  504 	subb	a,r3
      00018A FD               [12]  505 	mov	r5,a
      00018B EE               [12]  506 	mov	a,r6
      00018C 9C               [12]  507 	subb	a,r4
      00018D FE               [12]  508 	mov	r6,a
      00018E A2 A3            [12]  509 	mov	c,_P2_3
      000190 E4               [12]  510 	clr	a
      000191 33               [12]  511 	rlc	a
      000192 7C 00            [12]  512 	mov	r4,#0x00
      000194 25 E0            [12]  513 	add	a,acc
      000196 FB               [12]  514 	mov	r3,a
      000197 EC               [12]  515 	mov	a,r4
      000198 33               [12]  516 	rlc	a
      000199 FC               [12]  517 	mov	r4,a
      00019A ED               [12]  518 	mov	a,r5
      00019B C3               [12]  519 	clr	c
      00019C 9B               [12]  520 	subb	a,r3
      00019D FD               [12]  521 	mov	r5,a
      00019E EE               [12]  522 	mov	a,r6
      00019F 9C               [12]  523 	subb	a,r4
                                    524 ;	assignBit
      0001A0 4D               [12]  525 	orl	a,r5
      0001A1 24 FF            [12]  526 	add	a,#0xff
      0001A3 92 A2            [24]  527 	mov	_P2_2,c
                                    528 ;	main.c:38: P0 = Display[i];
      0001A5 EF               [12]  529 	mov	a,r7
      0001A6 24 18            [12]  530 	add	a,#_Display
      0001A8 F9               [12]  531 	mov	r1,a
      0001A9 87 80            [24]  532 	mov	_P0,@r1
                                    533 ;	main.c:39: delay(200);
      0001AB 90 00 C8         [24]  534 	mov	dptr,#0x00c8
      0001AE C0 07            [24]  535 	push	ar7
      0001B0 12 00 E9         [24]  536 	lcall	_delay
      0001B3 D0 07            [24]  537 	pop	ar7
                                    538 ;	main.c:40: P0 = 0x00;
      0001B5 75 80 00         [24]  539 	mov	_P0,#0x00
                                    540 ;	main.c:33: for(i=0;i<8;i++)
      0001B8 0F               [12]  541 	inc	r7
      0001B9 BF 08 00         [24]  542 	cjne	r7,#0x08,00111$
      0001BC                        543 00111$:
      0001BC 50 03            [24]  544 	jnc	00112$
      0001BE 02 01 19         [24]  545 	ljmp	00102$
      0001C1                        546 00112$:
                                    547 ;	main.c:42: }
      0001C1 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'DataProcess'
                                    551 ;------------------------------------------------------------
                                    552 ;	main.c:44: void DataProcess()
                                    553 ;	-----------------------------------------
                                    554 ;	 function DataProcess
                                    555 ;	-----------------------------------------
      0001C2                        556 _DataProcess:
                                    557 ;	main.c:46: Ds1302ReadTime();
      0001C2 12 03 2B         [24]  558 	lcall	_Ds1302ReadTime
                                    559 ;	main.c:47: Display[0] = smgduan[TIME[2]/16];
      0001C5 AE 30            [24]  560 	mov	r6,(_TIME + 0x0002)
      0001C7 7F 00            [12]  561 	mov	r7,#0x00
      0001C9 75 36 10         [24]  562 	mov	__divsint_PARM_2,#0x10
                                    563 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001CC 8F 37            [24]  564 	mov	(__divsint_PARM_2 + 1),r7
      0001CE 8E 82            [24]  565 	mov	dpl,r6
      0001D0 8F 83            [24]  566 	mov	dph,r7
      0001D2 12 03 75         [24]  567 	lcall	__divsint
      0001D5 AE 82            [24]  568 	mov	r6,dpl
      0001D7 EE               [12]  569 	mov	a,r6
      0001D8 24 08            [12]  570 	add	a,#_smgduan
      0001DA F9               [12]  571 	mov	r1,a
      0001DB 87 07            [24]  572 	mov	ar7,@r1
      0001DD 8F 18            [24]  573 	mov	_Display,r7
                                    574 ;	main.c:48: Display[1] = smgduan[TIME[2]&0x0f];
      0001DF AE 30            [24]  575 	mov	r6,(_TIME + 0x0002)
      0001E1 53 06 0F         [24]  576 	anl	ar6,#0x0f
      0001E4 EE               [12]  577 	mov	a,r6
      0001E5 24 08            [12]  578 	add	a,#_smgduan
      0001E7 F9               [12]  579 	mov	r1,a
      0001E8 87 07            [24]  580 	mov	ar7,@r1
      0001EA 8F 19            [24]  581 	mov	(_Display + 0x0001),r7
                                    582 ;	main.c:50: Display[3] = smgduan[TIME[1]/16];
      0001EC AE 2F            [24]  583 	mov	r6,(_TIME + 0x0001)
      0001EE 7F 00            [12]  584 	mov	r7,#0x00
      0001F0 75 36 10         [24]  585 	mov	__divsint_PARM_2,#0x10
                                    586 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001F3 8F 37            [24]  587 	mov	(__divsint_PARM_2 + 1),r7
      0001F5 8E 82            [24]  588 	mov	dpl,r6
      0001F7 8F 83            [24]  589 	mov	dph,r7
      0001F9 12 03 75         [24]  590 	lcall	__divsint
      0001FC AE 82            [24]  591 	mov	r6,dpl
      0001FE EE               [12]  592 	mov	a,r6
      0001FF 24 08            [12]  593 	add	a,#_smgduan
      000201 F9               [12]  594 	mov	r1,a
      000202 87 07            [24]  595 	mov	ar7,@r1
      000204 8F 1B            [24]  596 	mov	(_Display + 0x0003),r7
                                    597 ;	main.c:51: Display[4] = smgduan[TIME[1]&0x0f];
      000206 AE 2F            [24]  598 	mov	r6,(_TIME + 0x0001)
      000208 53 06 0F         [24]  599 	anl	ar6,#0x0f
      00020B EE               [12]  600 	mov	a,r6
      00020C 24 08            [12]  601 	add	a,#_smgduan
      00020E F9               [12]  602 	mov	r1,a
      00020F 87 07            [24]  603 	mov	ar7,@r1
      000211 8F 1C            [24]  604 	mov	(_Display + 0x0004),r7
                                    605 ;	main.c:53: Display[6] = smgduan[TIME[0]/16];
      000213 AE 2E            [24]  606 	mov	r6,_TIME
      000215 7F 00            [12]  607 	mov	r7,#0x00
      000217 75 36 10         [24]  608 	mov	__divsint_PARM_2,#0x10
                                    609 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00021A 8F 37            [24]  610 	mov	(__divsint_PARM_2 + 1),r7
      00021C 8E 82            [24]  611 	mov	dpl,r6
      00021E 8F 83            [24]  612 	mov	dph,r7
      000220 12 03 75         [24]  613 	lcall	__divsint
      000223 AE 82            [24]  614 	mov	r6,dpl
      000225 EE               [12]  615 	mov	a,r6
      000226 24 08            [12]  616 	add	a,#_smgduan
      000228 F9               [12]  617 	mov	r1,a
      000229 87 07            [24]  618 	mov	ar7,@r1
      00022B 8F 1E            [24]  619 	mov	(_Display + 0x0006),r7
                                    620 ;	main.c:54: Display[7] = smgduan[TIME[0]&0x0f];
      00022D AE 2E            [24]  621 	mov	r6,_TIME
      00022F 53 06 0F         [24]  622 	anl	ar6,#0x0f
      000232 EE               [12]  623 	mov	a,r6
      000233 24 08            [12]  624 	add	a,#_smgduan
      000235 F9               [12]  625 	mov	r1,a
      000236 87 07            [24]  626 	mov	ar7,@r1
      000238 8F 1F            [24]  627 	mov	(_Display + 0x0007),r7
                                    628 ;	main.c:55: }
      00023A 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'main'
                                    632 ;------------------------------------------------------------
                                    633 ;	main.c:57: void main()
                                    634 ;	-----------------------------------------
                                    635 ;	 function main
                                    636 ;	-----------------------------------------
      00023B                        637 _main:
                                    638 ;	main.c:59: Ds1302Init();
      00023B 12 02 94         [24]  639 	lcall	_Ds1302Init
                                    640 ;	main.c:60: DelayXms(10);
      00023E 90 00 0A         [24]  641 	mov	dptr,#0x000a
      000241 12 00 FB         [24]  642 	lcall	_DelayXms
                                    643 ;	main.c:61: while(1)
      000244                        644 00102$:
                                    645 ;	main.c:63: DataProcess();
      000244 12 01 C2         [24]  646 	lcall	_DataProcess
                                    647 ;	main.c:64: DisplayDigits();
      000247 12 01 17         [24]  648 	lcall	_DisplayDigits
                                    649 ;	main.c:66: }
      00024A 80 F8            [24]  650 	sjmp	00102$
                                    651 	.area CSEG    (CODE)
                                    652 	.area CONST   (CODE)
                                    653 	.area XINIT   (CODE)
                                    654 	.area CABS    (ABS,CODE)

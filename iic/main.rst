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
                                     12 	.globl _Digitspros
                                     13 	.globl _Keypros
                                     14 	.globl _DisplayDigits
                                     15 	.globl _DelayXus
                                     16 	.globl _delay
                                     17 	.globl _At24c02Read
                                     18 	.globl _At24c02Write
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _B
                                     95 	.globl _ACC
                                     96 	.globl _PSW
                                     97 	.globl _IP
                                     98 	.globl _P3
                                     99 	.globl _IE
                                    100 	.globl _P2
                                    101 	.globl _SBUF
                                    102 	.globl _SCON
                                    103 	.globl _P1
                                    104 	.globl _TH1
                                    105 	.globl _TH0
                                    106 	.globl _TL1
                                    107 	.globl _TL0
                                    108 	.globl _TMOD
                                    109 	.globl _TCON
                                    110 	.globl _PCON
                                    111 	.globl _DPH
                                    112 	.globl _DPL
                                    113 	.globl _SP
                                    114 	.globl _P0
                                    115 	.globl _num
                                    116 	.globl _Display
                                    117 	.globl _smgduan
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
      000008                        233 _smgduan::
      000008                        234 	.ds 16
      000018                        235 _Display::
      000018                        236 	.ds 8
      000020                        237 _num::
      000020                        238 	.ds 1
                                    239 ;--------------------------------------------------------
                                    240 ; overlayable items in internal ram 
                                    241 ;--------------------------------------------------------
                                    242 	.area	OSEG    (OVR,DATA)
                                    243 	.area	OSEG    (OVR,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; Stack segment in internal ram 
                                    246 ;--------------------------------------------------------
                                    247 	.area	SSEG
      000024                        248 __start__stack:
      000024                        249 	.ds	1
                                    250 
                                    251 ;--------------------------------------------------------
                                    252 ; indirectly addressable internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area ISEG    (DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; absolute internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area IABS    (ABS,DATA)
                                    259 	.area IABS    (ABS,DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; bit data
                                    262 ;--------------------------------------------------------
                                    263 	.area BSEG    (BIT)
                                    264 ;--------------------------------------------------------
                                    265 ; paged external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area PSEG    (PAG,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XSEG    (XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; absolute external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XABS    (ABS,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; external initialized ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XISEG   (XDATA)
                                    280 	.area HOME    (CODE)
                                    281 	.area GSINIT0 (CODE)
                                    282 	.area GSINIT1 (CODE)
                                    283 	.area GSINIT2 (CODE)
                                    284 	.area GSINIT3 (CODE)
                                    285 	.area GSINIT4 (CODE)
                                    286 	.area GSINIT5 (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area CSEG    (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; interrupt vector 
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
      000000                        294 __interrupt_vect:
      000000 02 00 06         [24]  295 	ljmp	__sdcc_gsinit_startup
                                    296 ;--------------------------------------------------------
                                    297 ; global & static initialisations
                                    298 ;--------------------------------------------------------
                                    299 	.area HOME    (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 	.area GSFINAL (CODE)
                                    302 	.area GSINIT  (CODE)
                                    303 	.globl __sdcc_gsinit_startup
                                    304 	.globl __sdcc_program_startup
                                    305 	.globl __start__stack
                                    306 	.globl __mcs51_genXINIT
                                    307 	.globl __mcs51_genXRAMCLEAR
                                    308 	.globl __mcs51_genRAMCLEAR
                                    309 ;	main.c:25: uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
      00005F 75 08 3F         [24]  310 	mov	_smgduan,#0x3f
      000062 75 09 06         [24]  311 	mov	(_smgduan + 0x0001),#0x06
      000065 75 0A 5B         [24]  312 	mov	(_smgduan + 0x0002),#0x5b
      000068 75 0B 4F         [24]  313 	mov	(_smgduan + 0x0003),#0x4f
      00006B 75 0C 66         [24]  314 	mov	(_smgduan + 0x0004),#0x66
      00006E 75 0D 6D         [24]  315 	mov	(_smgduan + 0x0005),#0x6d
      000071 75 0E 7D         [24]  316 	mov	(_smgduan + 0x0006),#0x7d
      000074 75 0F 07         [24]  317 	mov	(_smgduan + 0x0007),#0x07
      000077 75 10 7F         [24]  318 	mov	(_smgduan + 0x0008),#0x7f
      00007A 75 11 6F         [24]  319 	mov	(_smgduan + 0x0009),#0x6f
      00007D 75 12 77         [24]  320 	mov	(_smgduan + 0x000a),#0x77
      000080 75 13 7C         [24]  321 	mov	(_smgduan + 0x000b),#0x7c
      000083 75 14 39         [24]  322 	mov	(_smgduan + 0x000c),#0x39
      000086 75 15 5E         [24]  323 	mov	(_smgduan + 0x000d),#0x5e
      000089 75 16 79         [24]  324 	mov	(_smgduan + 0x000e),#0x79
      00008C 75 17 71         [24]  325 	mov	(_smgduan + 0x000f),#0x71
                                    326 ;	main.c:27: uchar Display[8] = {0, 0, 0, 0, 0, 0, 0, 0};
      00008F 75 18 00         [24]  327 	mov	_Display,#0x00
      000092 75 19 00         [24]  328 	mov	(_Display + 0x0001),#0x00
      000095 75 1A 00         [24]  329 	mov	(_Display + 0x0002),#0x00
      000098 75 1B 00         [24]  330 	mov	(_Display + 0x0003),#0x00
      00009B 75 1C 00         [24]  331 	mov	(_Display + 0x0004),#0x00
      00009E 75 1D 00         [24]  332 	mov	(_Display + 0x0005),#0x00
      0000A1 75 1E 00         [24]  333 	mov	(_Display + 0x0006),#0x00
      0000A4 75 1F 00         [24]  334 	mov	(_Display + 0x0007),#0x00
                                    335 ;	main.c:46: uchar num=0;
      0000A7 75 20 00         [24]  336 	mov	_num,#0x00
                                    337 	.area GSFINAL (CODE)
      0000AA 02 00 03         [24]  338 	ljmp	__sdcc_program_startup
                                    339 ;--------------------------------------------------------
                                    340 ; Home
                                    341 ;--------------------------------------------------------
                                    342 	.area HOME    (CODE)
                                    343 	.area HOME    (CODE)
      000003                        344 __sdcc_program_startup:
      000003 02 02 63         [24]  345 	ljmp	_main
                                    346 ;	return from main will return to caller
                                    347 ;--------------------------------------------------------
                                    348 ; code
                                    349 ;--------------------------------------------------------
                                    350 	.area CSEG    (CODE)
                                    351 ;------------------------------------------------------------
                                    352 ;Allocation info for local variables in function 'delay'
                                    353 ;------------------------------------------------------------
                                    354 ;i                         Allocated to registers 
                                    355 ;------------------------------------------------------------
                                    356 ;	main.c:6: void delay(uint i)
                                    357 ;	-----------------------------------------
                                    358 ;	 function delay
                                    359 ;	-----------------------------------------
      0000AD                        360 _delay:
                           000007   361 	ar7 = 0x07
                           000006   362 	ar6 = 0x06
                           000005   363 	ar5 = 0x05
                           000004   364 	ar4 = 0x04
                           000003   365 	ar3 = 0x03
                           000002   366 	ar2 = 0x02
                           000001   367 	ar1 = 0x01
                           000000   368 	ar0 = 0x00
      0000AD AE 82            [24]  369 	mov	r6,dpl
      0000AF AF 83            [24]  370 	mov	r7,dph
                                    371 ;	main.c:8: while(i--);
      0000B1                        372 00101$:
      0000B1 8E 04            [24]  373 	mov	ar4,r6
      0000B3 8F 05            [24]  374 	mov	ar5,r7
      0000B5 1E               [12]  375 	dec	r6
      0000B6 BE FF 01         [24]  376 	cjne	r6,#0xff,00111$
      0000B9 1F               [12]  377 	dec	r7
      0000BA                        378 00111$:
      0000BA EC               [12]  379 	mov	a,r4
      0000BB 4D               [12]  380 	orl	a,r5
      0000BC 70 F3            [24]  381 	jnz	00101$
                                    382 ;	main.c:9: }
      0000BE 22               [24]  383 	ret
                                    384 ;------------------------------------------------------------
                                    385 ;Allocation info for local variables in function 'DelayXus'
                                    386 ;------------------------------------------------------------
                                    387 ;x                         Allocated to registers 
                                    388 ;i                         Allocated to registers r5 
                                    389 ;------------------------------------------------------------
                                    390 ;	main.c:11: void DelayXus(uint x)
                                    391 ;	-----------------------------------------
                                    392 ;	 function DelayXus
                                    393 ;	-----------------------------------------
      0000BF                        394 _DelayXus:
      0000BF AE 82            [24]  395 	mov	r6,dpl
      0000C1 AF 83            [24]  396 	mov	r7,dph
                                    397 ;	main.c:14: while(x--)
      0000C3                        398 00102$:
      0000C3 8E 04            [24]  399 	mov	ar4,r6
      0000C5 8F 05            [24]  400 	mov	ar5,r7
      0000C7 1E               [12]  401 	dec	r6
      0000C8 BE FF 01         [24]  402 	cjne	r6,#0xff,00127$
      0000CB 1F               [12]  403 	dec	r7
      0000CC                        404 00127$:
      0000CC EC               [12]  405 	mov	a,r4
      0000CD 4D               [12]  406 	orl	a,r5
      0000CE 60 0A            [24]  407 	jz	00108$
                                    408 ;	main.c:16: for(i=0;i<100;i++);
      0000D0 7D 64            [12]  409 	mov	r5,#0x64
      0000D2                        410 00107$:
      0000D2 ED               [12]  411 	mov	a,r5
      0000D3 14               [12]  412 	dec	a
      0000D4 FC               [12]  413 	mov	r4,a
      0000D5 FD               [12]  414 	mov	r5,a
      0000D6 70 FA            [24]  415 	jnz	00107$
      0000D8 80 E9            [24]  416 	sjmp	00102$
      0000DA                        417 00108$:
                                    418 ;	main.c:18: }
      0000DA 22               [24]  419 	ret
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'DisplayDigits'
                                    422 ;------------------------------------------------------------
                                    423 ;i                         Allocated to registers r7 
                                    424 ;------------------------------------------------------------
                                    425 ;	main.c:28: void DisplayDigits()
                                    426 ;	-----------------------------------------
                                    427 ;	 function DisplayDigits
                                    428 ;	-----------------------------------------
      0000DB                        429 _DisplayDigits:
                                    430 ;	main.c:31: for(i=4;i<8;i++)
      0000DB 7F 04            [12]  431 	mov	r7,#0x04
      0000DD                        432 00102$:
                                    433 ;	main.c:33: LSC = i / 4;
      0000DD 8F 05            [24]  434 	mov	ar5,r7
      0000DF 7E 00            [12]  435 	mov	r6,#0x00
      0000E1 75 22 04         [24]  436 	mov	__divsint_PARM_2,#0x04
                                    437 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0000E4 8E 23            [24]  438 	mov	(__divsint_PARM_2 + 1),r6
      0000E6 8D 82            [24]  439 	mov	dpl,r5
      0000E8 8E 83            [24]  440 	mov	dph,r6
      0000EA C0 07            [24]  441 	push	ar7
      0000EC C0 06            [24]  442 	push	ar6
      0000EE C0 05            [24]  443 	push	ar5
      0000F0 12 05 0B         [24]  444 	lcall	__divsint
      0000F3 AB 82            [24]  445 	mov	r3,dpl
      0000F5 AC 83            [24]  446 	mov	r4,dph
      0000F7 D0 05            [24]  447 	pop	ar5
      0000F9 D0 06            [24]  448 	pop	ar6
                                    449 ;	assignBit
      0000FB EB               [12]  450 	mov	a,r3
      0000FC 4C               [12]  451 	orl	a,r4
      0000FD 24 FF            [12]  452 	add	a,#0xff
      0000FF 92 A4            [24]  453 	mov	_P2_4,c
                                    454 ;	main.c:34: LSB = (i-4*LSC) / 2;
      000101 A2 A4            [12]  455 	mov	c,_P2_4
      000103 E4               [12]  456 	clr	a
      000104 33               [12]  457 	rlc	a
      000105 7C 00            [12]  458 	mov	r4,#0x00
      000107 25 E0            [12]  459 	add	a,acc
      000109 FB               [12]  460 	mov	r3,a
      00010A EC               [12]  461 	mov	a,r4
      00010B 33               [12]  462 	rlc	a
      00010C FC               [12]  463 	mov	r4,a
      00010D EB               [12]  464 	mov	a,r3
      00010E 2B               [12]  465 	add	a,r3
      00010F FB               [12]  466 	mov	r3,a
      000110 EC               [12]  467 	mov	a,r4
      000111 33               [12]  468 	rlc	a
      000112 FC               [12]  469 	mov	r4,a
      000113 ED               [12]  470 	mov	a,r5
      000114 C3               [12]  471 	clr	c
      000115 9B               [12]  472 	subb	a,r3
      000116 F5 82            [12]  473 	mov	dpl,a
      000118 EE               [12]  474 	mov	a,r6
      000119 9C               [12]  475 	subb	a,r4
      00011A F5 83            [12]  476 	mov	dph,a
      00011C 75 22 02         [24]  477 	mov	__divsint_PARM_2,#0x02
      00011F 75 23 00         [24]  478 	mov	(__divsint_PARM_2 + 1),#0x00
      000122 C0 06            [24]  479 	push	ar6
      000124 C0 05            [24]  480 	push	ar5
      000126 12 05 0B         [24]  481 	lcall	__divsint
      000129 AB 82            [24]  482 	mov	r3,dpl
      00012B AC 83            [24]  483 	mov	r4,dph
      00012D D0 05            [24]  484 	pop	ar5
      00012F D0 06            [24]  485 	pop	ar6
      000131 D0 07            [24]  486 	pop	ar7
                                    487 ;	assignBit
      000133 EB               [12]  488 	mov	a,r3
      000134 4C               [12]  489 	orl	a,r4
      000135 24 FF            [12]  490 	add	a,#0xff
      000137 92 A3            [24]  491 	mov	_P2_3,c
                                    492 ;	main.c:35: LSA = i - 4*LSC - 2*LSB;
      000139 A2 A4            [12]  493 	mov	c,_P2_4
      00013B E4               [12]  494 	clr	a
      00013C 33               [12]  495 	rlc	a
      00013D 7C 00            [12]  496 	mov	r4,#0x00
      00013F 25 E0            [12]  497 	add	a,acc
      000141 FB               [12]  498 	mov	r3,a
      000142 EC               [12]  499 	mov	a,r4
      000143 33               [12]  500 	rlc	a
      000144 FC               [12]  501 	mov	r4,a
      000145 EB               [12]  502 	mov	a,r3
      000146 2B               [12]  503 	add	a,r3
      000147 FB               [12]  504 	mov	r3,a
      000148 EC               [12]  505 	mov	a,r4
      000149 33               [12]  506 	rlc	a
      00014A FC               [12]  507 	mov	r4,a
      00014B ED               [12]  508 	mov	a,r5
      00014C C3               [12]  509 	clr	c
      00014D 9B               [12]  510 	subb	a,r3
      00014E FD               [12]  511 	mov	r5,a
      00014F EE               [12]  512 	mov	a,r6
      000150 9C               [12]  513 	subb	a,r4
      000151 FE               [12]  514 	mov	r6,a
      000152 A2 A3            [12]  515 	mov	c,_P2_3
      000154 E4               [12]  516 	clr	a
      000155 33               [12]  517 	rlc	a
      000156 7C 00            [12]  518 	mov	r4,#0x00
      000158 25 E0            [12]  519 	add	a,acc
      00015A FB               [12]  520 	mov	r3,a
      00015B EC               [12]  521 	mov	a,r4
      00015C 33               [12]  522 	rlc	a
      00015D FC               [12]  523 	mov	r4,a
      00015E ED               [12]  524 	mov	a,r5
      00015F C3               [12]  525 	clr	c
      000160 9B               [12]  526 	subb	a,r3
      000161 FD               [12]  527 	mov	r5,a
      000162 EE               [12]  528 	mov	a,r6
      000163 9C               [12]  529 	subb	a,r4
                                    530 ;	assignBit
      000164 4D               [12]  531 	orl	a,r5
      000165 24 FF            [12]  532 	add	a,#0xff
      000167 92 A2            [24]  533 	mov	_P2_2,c
                                    534 ;	main.c:36: P0 = Display[i];
      000169 EF               [12]  535 	mov	a,r7
      00016A 24 18            [12]  536 	add	a,#_Display
      00016C F9               [12]  537 	mov	r1,a
      00016D 87 80            [24]  538 	mov	_P0,@r1
                                    539 ;	main.c:37: delay(100);
      00016F 90 00 64         [24]  540 	mov	dptr,#0x0064
      000172 C0 07            [24]  541 	push	ar7
      000174 12 00 AD         [24]  542 	lcall	_delay
      000177 D0 07            [24]  543 	pop	ar7
                                    544 ;	main.c:38: P0 = 0x00;
      000179 75 80 00         [24]  545 	mov	_P0,#0x00
                                    546 ;	main.c:31: for(i=4;i<8;i++)
      00017C 0F               [12]  547 	inc	r7
      00017D BF 08 00         [24]  548 	cjne	r7,#0x08,00111$
      000180                        549 00111$:
      000180 50 03            [24]  550 	jnc	00112$
      000182 02 00 DD         [24]  551 	ljmp	00102$
      000185                        552 00112$:
                                    553 ;	main.c:40: }
      000185 22               [24]  554 	ret
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function 'Keypros'
                                    557 ;------------------------------------------------------------
                                    558 ;	main.c:47: void Keypros()
                                    559 ;	-----------------------------------------
                                    560 ;	 function Keypros
                                    561 ;	-----------------------------------------
      000186                        562 _Keypros:
                                    563 ;	main.c:49: if(k1 == 0)
      000186 20 90 15         [24]  564 	jb	_P1_0,00107$
                                    565 ;	main.c:51: delay(1000);
      000189 90 03 E8         [24]  566 	mov	dptr,#0x03e8
      00018C 12 00 AD         [24]  567 	lcall	_delay
                                    568 ;	main.c:52: if(k1==0)
      00018F 20 90 0C         [24]  569 	jb	_P1_0,00107$
                                    570 ;	main.c:54: while(!k1);
      000192                        571 00101$:
      000192 30 90 FD         [24]  572 	jnb	_P1_0,00101$
                                    573 ;	main.c:55: At24c02Write(0x01,num);
      000195 85 20 21         [24]  574 	mov	_At24c02Write_PARM_2,_num
      000198 75 82 01         [24]  575 	mov	dpl,#0x01
      00019B 12 04 03         [24]  576 	lcall	_At24c02Write
      00019E                        577 00107$:
                                    578 ;	main.c:58: if(k2 == 0)
      00019E 20 91 15         [24]  579 	jb	_P1_1,00114$
                                    580 ;	main.c:60: delay(1000);
      0001A1 90 03 E8         [24]  581 	mov	dptr,#0x03e8
      0001A4 12 00 AD         [24]  582 	lcall	_delay
                                    583 ;	main.c:61: if(k2==0)
      0001A7 20 91 0C         [24]  584 	jb	_P1_1,00114$
                                    585 ;	main.c:63: while(!k2);
      0001AA                        586 00108$:
      0001AA 30 91 FD         [24]  587 	jnb	_P1_1,00108$
                                    588 ;	main.c:64: num=At24c02Read(0x01);
      0001AD 75 82 01         [24]  589 	mov	dpl,#0x01
      0001B0 12 04 33         [24]  590 	lcall	_At24c02Read
      0001B3 85 82 20         [24]  591 	mov	_num,dpl
      0001B6                        592 00114$:
                                    593 ;	main.c:67: if(k3 == 0)
      0001B6 20 92 1A         [24]  594 	jb	_P1_2,00123$
                                    595 ;	main.c:69: delay(1000);
      0001B9 90 03 E8         [24]  596 	mov	dptr,#0x03e8
      0001BC 12 00 AD         [24]  597 	lcall	_delay
                                    598 ;	main.c:70: if(k3==0)
      0001BF 20 92 0E         [24]  599 	jb	_P1_2,00119$
                                    600 ;	main.c:72: num += 1;
      0001C2 E5 20            [12]  601 	mov	a,_num
      0001C4 FF               [12]  602 	mov	r7,a
      0001C5 04               [12]  603 	inc	a
                                    604 ;	main.c:73: if(num>=255)
      0001C6 F5 20            [12]  605 	mov	_num,a
      0001C8 C3               [12]  606 	clr	c
      0001C9 94 FF            [12]  607 	subb	a,#0xff
      0001CB 40 03            [24]  608 	jc	00119$
                                    609 ;	main.c:74: {num=0;}
      0001CD 75 20 00         [24]  610 	mov	_num,#0x00
                                    611 ;	main.c:76: while(!k3);
      0001D0                        612 00119$:
      0001D0 30 92 FD         [24]  613 	jnb	_P1_2,00119$
      0001D3                        614 00123$:
                                    615 ;	main.c:78: if(k4 == 0)
      0001D3 20 93 0F         [24]  616 	jb	_P1_3,00131$
                                    617 ;	main.c:80: delay(1000);
      0001D6 90 03 E8         [24]  618 	mov	dptr,#0x03e8
      0001D9 12 00 AD         [24]  619 	lcall	_delay
                                    620 ;	main.c:81: if(k4 == 0)
      0001DC 20 93 03         [24]  621 	jb	_P1_3,00126$
                                    622 ;	main.c:83: num =0;
      0001DF 75 20 00         [24]  623 	mov	_num,#0x00
                                    624 ;	main.c:85: while(!k4);
      0001E2                        625 00126$:
      0001E2 30 93 FD         [24]  626 	jnb	_P1_3,00126$
      0001E5                        627 00131$:
                                    628 ;	main.c:87: }
      0001E5 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'Digitspros'
                                    632 ;------------------------------------------------------------
                                    633 ;	main.c:89: void Digitspros()
                                    634 ;	-----------------------------------------
                                    635 ;	 function Digitspros
                                    636 ;	-----------------------------------------
      0001E6                        637 _Digitspros:
                                    638 ;	main.c:91: Display[4] = smgduan[num/1000];
      0001E6 AE 20            [24]  639 	mov	r6,_num
      0001E8 7F 00            [12]  640 	mov	r7,#0x00
      0001EA 75 22 E8         [24]  641 	mov	__divsint_PARM_2,#0xe8
      0001ED 75 23 03         [24]  642 	mov	(__divsint_PARM_2 + 1),#0x03
      0001F0 8E 82            [24]  643 	mov	dpl,r6
      0001F2 8F 83            [24]  644 	mov	dph,r7
      0001F4 12 05 0B         [24]  645 	lcall	__divsint
      0001F7 AE 82            [24]  646 	mov	r6,dpl
      0001F9 EE               [12]  647 	mov	a,r6
      0001FA 24 08            [12]  648 	add	a,#_smgduan
      0001FC F9               [12]  649 	mov	r1,a
      0001FD 87 07            [24]  650 	mov	ar7,@r1
      0001FF 8F 1C            [24]  651 	mov	(_Display + 0x0004),r7
                                    652 ;	main.c:92: Display[5] = smgduan[num%1000/100];
      000201 AE 20            [24]  653 	mov	r6,_num
      000203 7F 00            [12]  654 	mov	r7,#0x00
      000205 75 22 E8         [24]  655 	mov	__modsint_PARM_2,#0xe8
      000208 75 23 03         [24]  656 	mov	(__modsint_PARM_2 + 1),#0x03
      00020B 8E 82            [24]  657 	mov	dpl,r6
      00020D 8F 83            [24]  658 	mov	dph,r7
      00020F 12 04 D5         [24]  659 	lcall	__modsint
      000212 75 22 64         [24]  660 	mov	__divsint_PARM_2,#0x64
      000215 75 23 00         [24]  661 	mov	(__divsint_PARM_2 + 1),#0x00
      000218 12 05 0B         [24]  662 	lcall	__divsint
      00021B AE 82            [24]  663 	mov	r6,dpl
      00021D EE               [12]  664 	mov	a,r6
      00021E 24 08            [12]  665 	add	a,#_smgduan
      000220 F9               [12]  666 	mov	r1,a
      000221 87 07            [24]  667 	mov	ar7,@r1
      000223 8F 1D            [24]  668 	mov	(_Display + 0x0005),r7
                                    669 ;	main.c:93: Display[6] = smgduan[num%100/10];
      000225 AE 20            [24]  670 	mov	r6,_num
      000227 7F 00            [12]  671 	mov	r7,#0x00
      000229 75 22 64         [24]  672 	mov	__modsint_PARM_2,#0x64
                                    673 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00022C 8F 23            [24]  674 	mov	(__modsint_PARM_2 + 1),r7
      00022E 8E 82            [24]  675 	mov	dpl,r6
      000230 8F 83            [24]  676 	mov	dph,r7
      000232 12 04 D5         [24]  677 	lcall	__modsint
      000235 75 22 0A         [24]  678 	mov	__divsint_PARM_2,#0x0a
      000238 75 23 00         [24]  679 	mov	(__divsint_PARM_2 + 1),#0x00
      00023B 12 05 0B         [24]  680 	lcall	__divsint
      00023E AE 82            [24]  681 	mov	r6,dpl
      000240 EE               [12]  682 	mov	a,r6
      000241 24 08            [12]  683 	add	a,#_smgduan
      000243 F9               [12]  684 	mov	r1,a
      000244 87 07            [24]  685 	mov	ar7,@r1
      000246 8F 1E            [24]  686 	mov	(_Display + 0x0006),r7
                                    687 ;	main.c:94: Display[7] = smgduan[num%10];
      000248 AE 20            [24]  688 	mov	r6,_num
      00024A 7F 00            [12]  689 	mov	r7,#0x00
      00024C 75 22 0A         [24]  690 	mov	__modsint_PARM_2,#0x0a
                                    691 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00024F 8F 23            [24]  692 	mov	(__modsint_PARM_2 + 1),r7
      000251 8E 82            [24]  693 	mov	dpl,r6
      000253 8F 83            [24]  694 	mov	dph,r7
      000255 12 04 D5         [24]  695 	lcall	__modsint
      000258 AE 82            [24]  696 	mov	r6,dpl
      00025A EE               [12]  697 	mov	a,r6
      00025B 24 08            [12]  698 	add	a,#_smgduan
      00025D F9               [12]  699 	mov	r1,a
      00025E 87 07            [24]  700 	mov	ar7,@r1
      000260 8F 1F            [24]  701 	mov	(_Display + 0x0007),r7
                                    702 ;	main.c:95: }
      000262 22               [24]  703 	ret
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'main'
                                    706 ;------------------------------------------------------------
                                    707 ;	main.c:97: void main()
                                    708 ;	-----------------------------------------
                                    709 ;	 function main
                                    710 ;	-----------------------------------------
      000263                        711 _main:
                                    712 ;	main.c:99: while(1)
      000263                        713 00102$:
                                    714 ;	main.c:101: Keypros();
      000263 12 01 86         [24]  715 	lcall	_Keypros
                                    716 ;	main.c:102: Digitspros();
      000266 12 01 E6         [24]  717 	lcall	_Digitspros
                                    718 ;	main.c:103: DisplayDigits();
      000269 12 00 DB         [24]  719 	lcall	_DisplayDigits
                                    720 ;	main.c:105: }
      00026C 80 F5            [24]  721 	sjmp	00102$
                                    722 	.area CSEG    (CODE)
                                    723 	.area CONST   (CODE)
                                    724 	.area XINIT   (CODE)
                                    725 	.area CABS    (ABS,CODE)

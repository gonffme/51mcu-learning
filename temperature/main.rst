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
                                     12 	.globl _Temperature_Process
                                     13 	.globl _ReadTemperature
                                     14 	.globl _WriteOneByte
                                     15 	.globl _ReadOneByte
                                     16 	.globl _Init_DS18B20
                                     17 	.globl _DisplayDigits
                                     18 	.globl _DelayXus
                                     19 	.globl _delay
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _DS18B20_IS_OK
                                    117 	.globl _Temp_Value
                                    118 	.globl _CurrentT
                                    119 	.globl _Display
                                    120 	.globl _smgduan
                                    121 ;--------------------------------------------------------
                                    122 ; special function registers
                                    123 ;--------------------------------------------------------
                                    124 	.area RSEG    (ABS,DATA)
      000000                        125 	.org 0x0000
                           000080   126 _P0	=	0x0080
                           000081   127 _SP	=	0x0081
                           000082   128 _DPL	=	0x0082
                           000083   129 _DPH	=	0x0083
                           000087   130 _PCON	=	0x0087
                           000088   131 _TCON	=	0x0088
                           000089   132 _TMOD	=	0x0089
                           00008A   133 _TL0	=	0x008a
                           00008B   134 _TL1	=	0x008b
                           00008C   135 _TH0	=	0x008c
                           00008D   136 _TH1	=	0x008d
                           000090   137 _P1	=	0x0090
                           000098   138 _SCON	=	0x0098
                           000099   139 _SBUF	=	0x0099
                           0000A0   140 _P2	=	0x00a0
                           0000A8   141 _IE	=	0x00a8
                           0000B0   142 _P3	=	0x00b0
                           0000B8   143 _IP	=	0x00b8
                           0000D0   144 _PSW	=	0x00d0
                           0000E0   145 _ACC	=	0x00e0
                           0000F0   146 _B	=	0x00f0
                                    147 ;--------------------------------------------------------
                                    148 ; special function bits
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0_0	=	0x0080
                           000081   153 _P0_1	=	0x0081
                           000082   154 _P0_2	=	0x0082
                           000083   155 _P0_3	=	0x0083
                           000084   156 _P0_4	=	0x0084
                           000085   157 _P0_5	=	0x0085
                           000086   158 _P0_6	=	0x0086
                           000087   159 _P0_7	=	0x0087
                           000088   160 _IT0	=	0x0088
                           000089   161 _IE0	=	0x0089
                           00008A   162 _IT1	=	0x008a
                           00008B   163 _IE1	=	0x008b
                           00008C   164 _TR0	=	0x008c
                           00008D   165 _TF0	=	0x008d
                           00008E   166 _TR1	=	0x008e
                           00008F   167 _TF1	=	0x008f
                           000090   168 _P1_0	=	0x0090
                           000091   169 _P1_1	=	0x0091
                           000092   170 _P1_2	=	0x0092
                           000093   171 _P1_3	=	0x0093
                           000094   172 _P1_4	=	0x0094
                           000095   173 _P1_5	=	0x0095
                           000096   174 _P1_6	=	0x0096
                           000097   175 _P1_7	=	0x0097
                           000098   176 _RI	=	0x0098
                           000099   177 _TI	=	0x0099
                           00009A   178 _RB8	=	0x009a
                           00009B   179 _TB8	=	0x009b
                           00009C   180 _REN	=	0x009c
                           00009D   181 _SM2	=	0x009d
                           00009E   182 _SM1	=	0x009e
                           00009F   183 _SM0	=	0x009f
                           0000A0   184 _P2_0	=	0x00a0
                           0000A1   185 _P2_1	=	0x00a1
                           0000A2   186 _P2_2	=	0x00a2
                           0000A3   187 _P2_3	=	0x00a3
                           0000A4   188 _P2_4	=	0x00a4
                           0000A5   189 _P2_5	=	0x00a5
                           0000A6   190 _P2_6	=	0x00a6
                           0000A7   191 _P2_7	=	0x00a7
                           0000A8   192 _EX0	=	0x00a8
                           0000A9   193 _ET0	=	0x00a9
                           0000AA   194 _EX1	=	0x00aa
                           0000AB   195 _ET1	=	0x00ab
                           0000AC   196 _ES	=	0x00ac
                           0000AF   197 _EA	=	0x00af
                           0000B0   198 _P3_0	=	0x00b0
                           0000B1   199 _P3_1	=	0x00b1
                           0000B2   200 _P3_2	=	0x00b2
                           0000B3   201 _P3_3	=	0x00b3
                           0000B4   202 _P3_4	=	0x00b4
                           0000B5   203 _P3_5	=	0x00b5
                           0000B6   204 _P3_6	=	0x00b6
                           0000B7   205 _P3_7	=	0x00b7
                           0000B0   206 _RXD	=	0x00b0
                           0000B1   207 _TXD	=	0x00b1
                           0000B2   208 _INT0	=	0x00b2
                           0000B3   209 _INT1	=	0x00b3
                           0000B4   210 _T0	=	0x00b4
                           0000B5   211 _T1	=	0x00b5
                           0000B6   212 _WR	=	0x00b6
                           0000B7   213 _RD	=	0x00b7
                           0000B8   214 _PX0	=	0x00b8
                           0000B9   215 _PT0	=	0x00b9
                           0000BA   216 _PX1	=	0x00ba
                           0000BB   217 _PT1	=	0x00bb
                           0000BC   218 _PS	=	0x00bc
                           0000D0   219 _P	=	0x00d0
                           0000D1   220 _F1	=	0x00d1
                           0000D2   221 _OV	=	0x00d2
                           0000D3   222 _RS0	=	0x00d3
                           0000D4   223 _RS1	=	0x00d4
                           0000D5   224 _F0	=	0x00d5
                           0000D6   225 _AC	=	0x00d6
                           0000D7   226 _CY	=	0x00d7
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable register banks
                                    229 ;--------------------------------------------------------
                                    230 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        231 	.ds 8
                                    232 ;--------------------------------------------------------
                                    233 ; internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area DSEG    (DATA)
      000008                        236 _smgduan::
      000008                        237 	.ds 16
      000018                        238 _Display::
      000018                        239 	.ds 8
      000020                        240 _CurrentT::
      000020                        241 	.ds 1
      000021                        242 _Temp_Value::
      000021                        243 	.ds 2
      000023                        244 _DS18B20_IS_OK::
      000023                        245 	.ds 1
                                    246 ;--------------------------------------------------------
                                    247 ; overlayable items in internal ram 
                                    248 ;--------------------------------------------------------
                                    249 	.area	OSEG    (OVR,DATA)
                                    250 	.area	OSEG    (OVR,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; Stack segment in internal ram 
                                    253 ;--------------------------------------------------------
                                    254 	.area	SSEG
      000026                        255 __start__stack:
      000026                        256 	.ds	1
                                    257 
                                    258 ;--------------------------------------------------------
                                    259 ; indirectly addressable internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area ISEG    (DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute internal ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area IABS    (ABS,DATA)
                                    266 	.area IABS    (ABS,DATA)
                                    267 ;--------------------------------------------------------
                                    268 ; bit data
                                    269 ;--------------------------------------------------------
                                    270 	.area BSEG    (BIT)
                                    271 ;--------------------------------------------------------
                                    272 ; paged external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area PSEG    (PAG,XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XSEG    (XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; absolute external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area XABS    (ABS,XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; external initialized ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XISEG   (XDATA)
                                    287 	.area HOME    (CODE)
                                    288 	.area GSINIT0 (CODE)
                                    289 	.area GSINIT1 (CODE)
                                    290 	.area GSINIT2 (CODE)
                                    291 	.area GSINIT3 (CODE)
                                    292 	.area GSINIT4 (CODE)
                                    293 	.area GSINIT5 (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area CSEG    (CODE)
                                    297 ;--------------------------------------------------------
                                    298 ; interrupt vector 
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
      000000                        301 __interrupt_vect:
      000000 02 00 06         [24]  302 	ljmp	__sdcc_gsinit_startup
                                    303 ;--------------------------------------------------------
                                    304 ; global & static initialisations
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.area GSFINAL (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.globl __sdcc_gsinit_startup
                                    311 	.globl __sdcc_program_startup
                                    312 	.globl __start__stack
                                    313 	.globl __mcs51_genXINIT
                                    314 	.globl __mcs51_genXRAMCLEAR
                                    315 	.globl __mcs51_genRAMCLEAR
                                    316 ;	main.c:26: uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
      00005F 75 08 3F         [24]  317 	mov	_smgduan,#0x3f
      000062 75 09 06         [24]  318 	mov	(_smgduan + 0x0001),#0x06
      000065 75 0A 5B         [24]  319 	mov	(_smgduan + 0x0002),#0x5b
      000068 75 0B 4F         [24]  320 	mov	(_smgduan + 0x0003),#0x4f
      00006B 75 0C 66         [24]  321 	mov	(_smgduan + 0x0004),#0x66
      00006E 75 0D 6D         [24]  322 	mov	(_smgduan + 0x0005),#0x6d
      000071 75 0E 7D         [24]  323 	mov	(_smgduan + 0x0006),#0x7d
      000074 75 0F 07         [24]  324 	mov	(_smgduan + 0x0007),#0x07
      000077 75 10 7F         [24]  325 	mov	(_smgduan + 0x0008),#0x7f
      00007A 75 11 6F         [24]  326 	mov	(_smgduan + 0x0009),#0x6f
      00007D 75 12 77         [24]  327 	mov	(_smgduan + 0x000a),#0x77
      000080 75 13 7C         [24]  328 	mov	(_smgduan + 0x000b),#0x7c
      000083 75 14 39         [24]  329 	mov	(_smgduan + 0x000c),#0x39
      000086 75 15 5E         [24]  330 	mov	(_smgduan + 0x000d),#0x5e
      000089 75 16 79         [24]  331 	mov	(_smgduan + 0x000e),#0x79
      00008C 75 17 71         [24]  332 	mov	(_smgduan + 0x000f),#0x71
                                    333 ;	main.c:28: uchar Display[8] = {0, 0, 0, 0, 0, 0, 0, 0};
      00008F 75 18 00         [24]  334 	mov	_Display,#0x00
      000092 75 19 00         [24]  335 	mov	(_Display + 0x0001),#0x00
      000095 75 1A 00         [24]  336 	mov	(_Display + 0x0002),#0x00
      000098 75 1B 00         [24]  337 	mov	(_Display + 0x0003),#0x00
      00009B 75 1C 00         [24]  338 	mov	(_Display + 0x0004),#0x00
      00009E 75 1D 00         [24]  339 	mov	(_Display + 0x0005),#0x00
      0000A1 75 1E 00         [24]  340 	mov	(_Display + 0x0006),#0x00
      0000A4 75 1F 00         [24]  341 	mov	(_Display + 0x0007),#0x00
                                    342 ;	main.c:46: uchar CurrentT = 0;
      0000A7 75 20 00         [24]  343 	mov	_CurrentT,#0x00
                                    344 ;	main.c:47: uchar Temp_Value[] = {0x00, 0x00};
      0000AA 75 21 00         [24]  345 	mov	_Temp_Value,#0x00
      0000AD 75 22 00         [24]  346 	mov	(_Temp_Value + 0x0001),#0x00
                                    347 ;	main.c:48: uchar DS18B20_IS_OK = 1;
      0000B0 75 23 01         [24]  348 	mov	_DS18B20_IS_OK,#0x01
                                    349 	.area GSFINAL (CODE)
      0000B3 02 00 03         [24]  350 	ljmp	__sdcc_program_startup
                                    351 ;--------------------------------------------------------
                                    352 ; Home
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area HOME    (CODE)
      000003                        356 __sdcc_program_startup:
      000003 02 03 F2         [24]  357 	ljmp	_main
                                    358 ;	return from main will return to caller
                                    359 ;--------------------------------------------------------
                                    360 ; code
                                    361 ;--------------------------------------------------------
                                    362 	.area CSEG    (CODE)
                                    363 ;------------------------------------------------------------
                                    364 ;Allocation info for local variables in function 'delay'
                                    365 ;------------------------------------------------------------
                                    366 ;i                         Allocated to registers 
                                    367 ;------------------------------------------------------------
                                    368 ;	main.c:8: void delay(uint i)
                                    369 ;	-----------------------------------------
                                    370 ;	 function delay
                                    371 ;	-----------------------------------------
      0000B6                        372 _delay:
                           000007   373 	ar7 = 0x07
                           000006   374 	ar6 = 0x06
                           000005   375 	ar5 = 0x05
                           000004   376 	ar4 = 0x04
                           000003   377 	ar3 = 0x03
                           000002   378 	ar2 = 0x02
                           000001   379 	ar1 = 0x01
                           000000   380 	ar0 = 0x00
      0000B6 AE 82            [24]  381 	mov	r6,dpl
      0000B8 AF 83            [24]  382 	mov	r7,dph
                                    383 ;	main.c:10: while(i--);
      0000BA                        384 00101$:
      0000BA 8E 04            [24]  385 	mov	ar4,r6
      0000BC 8F 05            [24]  386 	mov	ar5,r7
      0000BE 1E               [12]  387 	dec	r6
      0000BF BE FF 01         [24]  388 	cjne	r6,#0xff,00111$
      0000C2 1F               [12]  389 	dec	r7
      0000C3                        390 00111$:
      0000C3 EC               [12]  391 	mov	a,r4
      0000C4 4D               [12]  392 	orl	a,r5
      0000C5 70 F3            [24]  393 	jnz	00101$
                                    394 ;	main.c:11: }
      0000C7 22               [24]  395 	ret
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'DelayXus'
                                    398 ;------------------------------------------------------------
                                    399 ;x                         Allocated to registers 
                                    400 ;i                         Allocated to registers r5 
                                    401 ;------------------------------------------------------------
                                    402 ;	main.c:13: void DelayXus(uint x)
                                    403 ;	-----------------------------------------
                                    404 ;	 function DelayXus
                                    405 ;	-----------------------------------------
      0000C8                        406 _DelayXus:
      0000C8 AE 82            [24]  407 	mov	r6,dpl
      0000CA AF 83            [24]  408 	mov	r7,dph
                                    409 ;	main.c:16: while(x--)
      0000CC                        410 00102$:
      0000CC 8E 04            [24]  411 	mov	ar4,r6
      0000CE 8F 05            [24]  412 	mov	ar5,r7
      0000D0 1E               [12]  413 	dec	r6
      0000D1 BE FF 01         [24]  414 	cjne	r6,#0xff,00127$
      0000D4 1F               [12]  415 	dec	r7
      0000D5                        416 00127$:
      0000D5 EC               [12]  417 	mov	a,r4
      0000D6 4D               [12]  418 	orl	a,r5
      0000D7 60 0A            [24]  419 	jz	00108$
                                    420 ;	main.c:18: for(i=0;i<100;i++);
      0000D9 7D 64            [12]  421 	mov	r5,#0x64
      0000DB                        422 00107$:
      0000DB ED               [12]  423 	mov	a,r5
      0000DC 14               [12]  424 	dec	a
      0000DD FC               [12]  425 	mov	r4,a
      0000DE FD               [12]  426 	mov	r5,a
      0000DF 70 FA            [24]  427 	jnz	00107$
      0000E1 80 E9            [24]  428 	sjmp	00102$
      0000E3                        429 00108$:
                                    430 ;	main.c:20: }
      0000E3 22               [24]  431 	ret
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'DisplayDigits'
                                    434 ;------------------------------------------------------------
                                    435 ;i                         Allocated to registers r7 
                                    436 ;------------------------------------------------------------
                                    437 ;	main.c:29: void DisplayDigits()
                                    438 ;	-----------------------------------------
                                    439 ;	 function DisplayDigits
                                    440 ;	-----------------------------------------
      0000E4                        441 _DisplayDigits:
                                    442 ;	main.c:32: for(i=0;i<7;i++)
      0000E4 7F 00            [12]  443 	mov	r7,#0x00
      0000E6                        444 00102$:
                                    445 ;	main.c:34: LSC = i / 4;
      0000E6 8F 05            [24]  446 	mov	ar5,r7
      0000E8 7E 00            [12]  447 	mov	r6,#0x00
      0000EA 75 24 04         [24]  448 	mov	__divsint_PARM_2,#0x04
                                    449 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0000ED 8E 25            [24]  450 	mov	(__divsint_PARM_2 + 1),r6
      0000EF 8D 82            [24]  451 	mov	dpl,r5
      0000F1 8E 83            [24]  452 	mov	dph,r6
      0000F3 C0 07            [24]  453 	push	ar7
      0000F5 C0 06            [24]  454 	push	ar6
      0000F7 C0 05            [24]  455 	push	ar5
      0000F9 12 07 00         [24]  456 	lcall	__divsint
      0000FC AB 82            [24]  457 	mov	r3,dpl
      0000FE AC 83            [24]  458 	mov	r4,dph
      000100 D0 05            [24]  459 	pop	ar5
      000102 D0 06            [24]  460 	pop	ar6
                                    461 ;	assignBit
      000104 EB               [12]  462 	mov	a,r3
      000105 4C               [12]  463 	orl	a,r4
      000106 24 FF            [12]  464 	add	a,#0xff
      000108 92 A4            [24]  465 	mov	_P2_4,c
                                    466 ;	main.c:35: LSB = (i-4*LSC) / 2;
      00010A A2 A4            [12]  467 	mov	c,_P2_4
      00010C E4               [12]  468 	clr	a
      00010D 33               [12]  469 	rlc	a
      00010E 7C 00            [12]  470 	mov	r4,#0x00
      000110 25 E0            [12]  471 	add	a,acc
      000112 FB               [12]  472 	mov	r3,a
      000113 EC               [12]  473 	mov	a,r4
      000114 33               [12]  474 	rlc	a
      000115 FC               [12]  475 	mov	r4,a
      000116 EB               [12]  476 	mov	a,r3
      000117 2B               [12]  477 	add	a,r3
      000118 FB               [12]  478 	mov	r3,a
      000119 EC               [12]  479 	mov	a,r4
      00011A 33               [12]  480 	rlc	a
      00011B FC               [12]  481 	mov	r4,a
      00011C ED               [12]  482 	mov	a,r5
      00011D C3               [12]  483 	clr	c
      00011E 9B               [12]  484 	subb	a,r3
      00011F F5 82            [12]  485 	mov	dpl,a
      000121 EE               [12]  486 	mov	a,r6
      000122 9C               [12]  487 	subb	a,r4
      000123 F5 83            [12]  488 	mov	dph,a
      000125 75 24 02         [24]  489 	mov	__divsint_PARM_2,#0x02
      000128 75 25 00         [24]  490 	mov	(__divsint_PARM_2 + 1),#0x00
      00012B C0 06            [24]  491 	push	ar6
      00012D C0 05            [24]  492 	push	ar5
      00012F 12 07 00         [24]  493 	lcall	__divsint
      000132 AB 82            [24]  494 	mov	r3,dpl
      000134 AC 83            [24]  495 	mov	r4,dph
      000136 D0 05            [24]  496 	pop	ar5
      000138 D0 06            [24]  497 	pop	ar6
      00013A D0 07            [24]  498 	pop	ar7
                                    499 ;	assignBit
      00013C EB               [12]  500 	mov	a,r3
      00013D 4C               [12]  501 	orl	a,r4
      00013E 24 FF            [12]  502 	add	a,#0xff
      000140 92 A3            [24]  503 	mov	_P2_3,c
                                    504 ;	main.c:36: LSA = i - 4*LSC - 2*LSB;
      000142 A2 A4            [12]  505 	mov	c,_P2_4
      000144 E4               [12]  506 	clr	a
      000145 33               [12]  507 	rlc	a
      000146 7C 00            [12]  508 	mov	r4,#0x00
      000148 25 E0            [12]  509 	add	a,acc
      00014A FB               [12]  510 	mov	r3,a
      00014B EC               [12]  511 	mov	a,r4
      00014C 33               [12]  512 	rlc	a
      00014D FC               [12]  513 	mov	r4,a
      00014E EB               [12]  514 	mov	a,r3
      00014F 2B               [12]  515 	add	a,r3
      000150 FB               [12]  516 	mov	r3,a
      000151 EC               [12]  517 	mov	a,r4
      000152 33               [12]  518 	rlc	a
      000153 FC               [12]  519 	mov	r4,a
      000154 ED               [12]  520 	mov	a,r5
      000155 C3               [12]  521 	clr	c
      000156 9B               [12]  522 	subb	a,r3
      000157 FD               [12]  523 	mov	r5,a
      000158 EE               [12]  524 	mov	a,r6
      000159 9C               [12]  525 	subb	a,r4
      00015A FE               [12]  526 	mov	r6,a
      00015B A2 A3            [12]  527 	mov	c,_P2_3
      00015D E4               [12]  528 	clr	a
      00015E 33               [12]  529 	rlc	a
      00015F 7C 00            [12]  530 	mov	r4,#0x00
      000161 25 E0            [12]  531 	add	a,acc
      000163 FB               [12]  532 	mov	r3,a
      000164 EC               [12]  533 	mov	a,r4
      000165 33               [12]  534 	rlc	a
      000166 FC               [12]  535 	mov	r4,a
      000167 ED               [12]  536 	mov	a,r5
      000168 C3               [12]  537 	clr	c
      000169 9B               [12]  538 	subb	a,r3
      00016A FD               [12]  539 	mov	r5,a
      00016B EE               [12]  540 	mov	a,r6
      00016C 9C               [12]  541 	subb	a,r4
                                    542 ;	assignBit
      00016D 4D               [12]  543 	orl	a,r5
      00016E 24 FF            [12]  544 	add	a,#0xff
      000170 92 A2            [24]  545 	mov	_P2_2,c
                                    546 ;	main.c:37: P0 = Display[i];
      000172 EF               [12]  547 	mov	a,r7
      000173 24 18            [12]  548 	add	a,#_Display
      000175 F9               [12]  549 	mov	r1,a
      000176 87 80            [24]  550 	mov	_P0,@r1
                                    551 ;	main.c:38: delay(200);
      000178 90 00 C8         [24]  552 	mov	dptr,#0x00c8
      00017B C0 07            [24]  553 	push	ar7
      00017D 12 00 B6         [24]  554 	lcall	_delay
      000180 D0 07            [24]  555 	pop	ar7
                                    556 ;	main.c:39: P0 = 0x00;
      000182 75 80 00         [24]  557 	mov	_P0,#0x00
                                    558 ;	main.c:32: for(i=0;i<7;i++)
      000185 0F               [12]  559 	inc	r7
      000186 BF 07 00         [24]  560 	cjne	r7,#0x07,00111$
      000189                        561 00111$:
      000189 50 03            [24]  562 	jnc	00112$
      00018B 02 00 E6         [24]  563 	ljmp	00102$
      00018E                        564 00112$:
                                    565 ;	main.c:41: }
      00018E 22               [24]  566 	ret
                                    567 ;------------------------------------------------------------
                                    568 ;Allocation info for local variables in function 'Init_DS18B20'
                                    569 ;------------------------------------------------------------
                                    570 ;	main.c:50: uchar Init_DS18B20()
                                    571 ;	-----------------------------------------
                                    572 ;	 function Init_DS18B20
                                    573 ;	-----------------------------------------
      00018F                        574 _Init_DS18B20:
                                    575 ;	main.c:52: DQ = 1;
                                    576 ;	assignBit
      00018F D2 B3            [12]  577 	setb	_P3_3
                                    578 ;	main.c:53: delay(8);
      000191 90 00 08         [24]  579 	mov	dptr,#0x0008
      000194 12 00 B6         [24]  580 	lcall	_delay
                                    581 ;	main.c:54: DQ = 0;
                                    582 ;	assignBit
      000197 C2 B3            [12]  583 	clr	_P3_3
                                    584 ;	main.c:55: delay(50);
      000199 90 00 32         [24]  585 	mov	dptr,#0x0032
      00019C 12 00 B6         [24]  586 	lcall	_delay
                                    587 ;	main.c:56: DQ = 1;
                                    588 ;	assignBit
      00019F D2 B3            [12]  589 	setb	_P3_3
                                    590 ;	main.c:57: delay(7);
      0001A1 90 00 07         [24]  591 	mov	dptr,#0x0007
      0001A4 12 00 B6         [24]  592 	lcall	_delay
                                    593 ;	main.c:58: status = DQ;
                                    594 ;	assignBit
      0001A7 A2 B3            [12]  595 	mov	c,_P3_3
      0001A9 92 B2            [24]  596 	mov	_P3_2,c
                                    597 ;	main.c:59: delay(50);
      0001AB 90 00 32         [24]  598 	mov	dptr,#0x0032
      0001AE 12 00 B6         [24]  599 	lcall	_delay
                                    600 ;	main.c:60: return status;
      0001B1 A2 B2            [12]  601 	mov	c,_P3_2
      0001B3 E4               [12]  602 	clr	a
      0001B4 33               [12]  603 	rlc	a
      0001B5 F5 82            [12]  604 	mov	dpl,a
                                    605 ;	main.c:61: }
      0001B7 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'ReadOneByte'
                                    609 ;------------------------------------------------------------
                                    610 ;i                         Allocated to registers r6 
                                    611 ;dat                       Allocated to registers r7 
                                    612 ;------------------------------------------------------------
                                    613 ;	main.c:62: uchar ReadOneByte()
                                    614 ;	-----------------------------------------
                                    615 ;	 function ReadOneByte
                                    616 ;	-----------------------------------------
      0001B8                        617 _ReadOneByte:
                                    618 ;	main.c:64: uchar i, dat=0;
      0001B8 7F 00            [12]  619 	mov	r7,#0x00
                                    620 ;	main.c:65: DQ = 1;
                                    621 ;	assignBit
      0001BA D2 B3            [12]  622 	setb	_P3_3
                                    623 ;	main.c:66: delay(1);
      0001BC 90 00 01         [24]  624 	mov	dptr,#0x0001
      0001BF C0 07            [24]  625 	push	ar7
      0001C1 12 00 B6         [24]  626 	lcall	_delay
      0001C4 D0 07            [24]  627 	pop	ar7
                                    628 ;	main.c:67: for(i=0;i<8;i++)
      0001C6 7E 00            [12]  629 	mov	r6,#0x00
      0001C8                        630 00104$:
                                    631 ;	main.c:69: dat >>= 1;
      0001C8 EF               [12]  632 	mov	a,r7
      0001C9 C3               [12]  633 	clr	c
      0001CA 13               [12]  634 	rrc	a
      0001CB FF               [12]  635 	mov	r7,a
                                    636 ;	main.c:70: DQ = 0;
                                    637 ;	assignBit
      0001CC C2 B3            [12]  638 	clr	_P3_3
                                    639 ;	main.c:71: DQ = 1;
                                    640 ;	assignBit
      0001CE D2 B3            [12]  641 	setb	_P3_3
                                    642 ;	main.c:74: if(DQ)
      0001D0 30 B3 09         [24]  643 	jnb	_P3_3,00102$
                                    644 ;	main.c:76: dat |= 0x80;
      0001D3 8F 04            [24]  645 	mov	ar4,r7
      0001D5 7D 00            [12]  646 	mov	r5,#0x00
      0001D7 43 04 80         [24]  647 	orl	ar4,#0x80
      0001DA 8C 07            [24]  648 	mov	ar7,r4
      0001DC                        649 00102$:
                                    650 ;	main.c:78: delay(4);
      0001DC 90 00 04         [24]  651 	mov	dptr,#0x0004
      0001DF C0 07            [24]  652 	push	ar7
      0001E1 C0 06            [24]  653 	push	ar6
      0001E3 12 00 B6         [24]  654 	lcall	_delay
      0001E6 D0 06            [24]  655 	pop	ar6
      0001E8 D0 07            [24]  656 	pop	ar7
                                    657 ;	main.c:79: DQ = 1;
                                    658 ;	assignBit
      0001EA D2 B3            [12]  659 	setb	_P3_3
                                    660 ;	main.c:67: for(i=0;i<8;i++)
      0001EC 0E               [12]  661 	inc	r6
      0001ED BE 08 00         [24]  662 	cjne	r6,#0x08,00122$
      0001F0                        663 00122$:
      0001F0 40 D6            [24]  664 	jc	00104$
                                    665 ;	main.c:81: return dat;
      0001F2 8F 82            [24]  666 	mov	dpl,r7
                                    667 ;	main.c:82: }
      0001F4 22               [24]  668 	ret
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'WriteOneByte'
                                    671 ;------------------------------------------------------------
                                    672 ;dat                       Allocated to registers r7 
                                    673 ;i                         Allocated to registers r6 
                                    674 ;------------------------------------------------------------
                                    675 ;	main.c:83: void WriteOneByte(uchar dat)
                                    676 ;	-----------------------------------------
                                    677 ;	 function WriteOneByte
                                    678 ;	-----------------------------------------
      0001F5                        679 _WriteOneByte:
      0001F5 AF 82            [24]  680 	mov	r7,dpl
                                    681 ;	main.c:86: for(i=0;i<8;i++)
      0001F7 7E 00            [12]  682 	mov	r6,#0x00
      0001F9                        683 00102$:
                                    684 ;	main.c:88: DQ = 0;
                                    685 ;	assignBit
      0001F9 C2 B3            [12]  686 	clr	_P3_3
                                    687 ;	main.c:89: DQ = dat & 0x01;
      0001FB EF               [12]  688 	mov	a,r7
      0001FC 54 01            [12]  689 	anl	a,#0x01
      0001FE 24 FF            [12]  690 	add	a,#0xff
      000200 92 B3            [24]  691 	mov	_P3_3,c
                                    692 ;	main.c:90: delay(4);//30-60 us is ok
      000202 90 00 04         [24]  693 	mov	dptr,#0x0004
      000205 C0 07            [24]  694 	push	ar7
      000207 C0 06            [24]  695 	push	ar6
      000209 12 00 B6         [24]  696 	lcall	_delay
      00020C D0 06            [24]  697 	pop	ar6
      00020E D0 07            [24]  698 	pop	ar7
                                    699 ;	main.c:91: DQ = 1;
                                    700 ;	assignBit
      000210 D2 B3            [12]  701 	setb	_P3_3
                                    702 ;	main.c:92: dat >>= 1;
      000212 EF               [12]  703 	mov	a,r7
      000213 C3               [12]  704 	clr	c
      000214 13               [12]  705 	rrc	a
      000215 FF               [12]  706 	mov	r7,a
                                    707 ;	main.c:86: for(i=0;i<8;i++)
      000216 0E               [12]  708 	inc	r6
      000217 BE 08 00         [24]  709 	cjne	r6,#0x08,00111$
      00021A                        710 00111$:
      00021A 40 DD            [24]  711 	jc	00102$
                                    712 ;	main.c:94: }
      00021C 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'ReadTemperature'
                                    716 ;------------------------------------------------------------
                                    717 ;	main.c:95: void ReadTemperature()
                                    718 ;	-----------------------------------------
                                    719 ;	 function ReadTemperature
                                    720 ;	-----------------------------------------
      00021D                        721 _ReadTemperature:
                                    722 ;	main.c:97: if(Init_DS18B20())
      00021D 12 01 8F         [24]  723 	lcall	_Init_DS18B20
      000220 E5 82            [12]  724 	mov	a,dpl
      000222 60 04            [24]  725 	jz	00102$
                                    726 ;	main.c:98: DS18B20_IS_OK = 0;
      000224 75 23 00         [24]  727 	mov	_DS18B20_IS_OK,#0x00
      000227 22               [24]  728 	ret
      000228                        729 00102$:
                                    730 ;	main.c:101: WriteOneByte(0xcc);
      000228 75 82 CC         [24]  731 	mov	dpl,#0xcc
      00022B 12 01 F5         [24]  732 	lcall	_WriteOneByte
                                    733 ;	main.c:102: DisplayDigits();
      00022E 12 00 E4         [24]  734 	lcall	_DisplayDigits
                                    735 ;	main.c:103: WriteOneByte(0x44);
      000231 75 82 44         [24]  736 	mov	dpl,#0x44
      000234 12 01 F5         [24]  737 	lcall	_WriteOneByte
                                    738 ;	main.c:104: DisplayDigits();
      000237 12 00 E4         [24]  739 	lcall	_DisplayDigits
                                    740 ;	main.c:107: Init_DS18B20();
      00023A 12 01 8F         [24]  741 	lcall	_Init_DS18B20
                                    742 ;	main.c:108: WriteOneByte(0xcc);
      00023D 75 82 CC         [24]  743 	mov	dpl,#0xcc
      000240 12 01 F5         [24]  744 	lcall	_WriteOneByte
                                    745 ;	main.c:109: WriteOneByte(0xbe);
      000243 75 82 BE         [24]  746 	mov	dpl,#0xbe
      000246 12 01 F5         [24]  747 	lcall	_WriteOneByte
                                    748 ;	main.c:110: DisplayDigits();
      000249 12 00 E4         [24]  749 	lcall	_DisplayDigits
                                    750 ;	main.c:111: Temp_Value[0] = ReadOneByte();
      00024C 12 01 B8         [24]  751 	lcall	_ReadOneByte
      00024F E5 82            [12]  752 	mov	a,dpl
      000251 F5 21            [12]  753 	mov	_Temp_Value,a
                                    754 ;	main.c:112: Temp_Value[1] = ReadOneByte();
      000253 12 01 B8         [24]  755 	lcall	_ReadOneByte
      000256 E5 82            [12]  756 	mov	a,dpl
      000258 F5 22            [12]  757 	mov	(_Temp_Value + 0x0001),a
                                    758 ;	main.c:113: DisplayDigits();
      00025A 12 00 E4         [24]  759 	lcall	_DisplayDigits
                                    760 ;	main.c:114: DS18B20_IS_OK = 1;
      00025D 75 23 01         [24]  761 	mov	_DS18B20_IS_OK,#0x01
                                    762 ;	main.c:116: }
      000260 22               [24]  763 	ret
                                    764 ;------------------------------------------------------------
                                    765 ;Allocation info for local variables in function 'Temperature_Process'
                                    766 ;------------------------------------------------------------
                                    767 ;Temper                    Allocated to registers r4 r5 
                                    768 ;tp                        Allocated to registers r4 r5 r6 r7 
                                    769 ;------------------------------------------------------------
                                    770 ;	main.c:117: void Temperature_Process() //convert temperature from hex to decimal, then make it diplayable.
                                    771 ;	-----------------------------------------
                                    772 ;	 function Temperature_Process
                                    773 ;	-----------------------------------------
      000261                        774 _Temperature_Process:
                                    775 ;	main.c:119: int Temper = Temp_Value[1];
                                    776 ;	main.c:120: Temper <<= 8;
      000261 AF 22            [24]  777 	mov	r7,(_Temp_Value + 0x0001)
      000263 7E 00            [12]  778 	mov	r6,#0x00
                                    779 ;	main.c:121: Temper |= Temp_Value[0];
      000265 AC 21            [24]  780 	mov	r4,_Temp_Value
      000267 7D 00            [12]  781 	mov	r5,#0x00
      000269 EC               [12]  782 	mov	a,r4
      00026A 42 06            [12]  783 	orl	ar6,a
      00026C ED               [12]  784 	mov	a,r5
      00026D 42 07            [12]  785 	orl	ar7,a
                                    786 ;	main.c:122: DisplayDigits();
      00026F C0 07            [24]  787 	push	ar7
      000271 C0 06            [24]  788 	push	ar6
      000273 12 00 E4         [24]  789 	lcall	_DisplayDigits
      000276 D0 06            [24]  790 	pop	ar6
      000278 D0 07            [24]  791 	pop	ar7
                                    792 ;	main.c:124: if(Temper<0)
      00027A EF               [12]  793 	mov	a,r7
      00027B 30 E7 18         [24]  794 	jnb	acc.7,00102$
                                    795 ;	main.c:126: Display[0] = 0x40;
      00027E 75 18 40         [24]  796 	mov	_Display,#0x40
                                    797 ;	main.c:127: Temper -= 1;
      000281 EE               [12]  798 	mov	a,r6
      000282 24 FF            [12]  799 	add	a,#0xff
      000284 FC               [12]  800 	mov	r4,a
      000285 EF               [12]  801 	mov	a,r7
      000286 34 FF            [12]  802 	addc	a,#0xff
                                    803 ;	main.c:128: Temper = !Temper;
      000288 4C               [12]  804 	orl	a,r4
      000289 B4 01 00         [24]  805 	cjne	a,#0x01,00112$
      00028C                        806 00112$:
      00028C E4               [12]  807 	clr	a
      00028D 33               [12]  808 	rlc	a
      00028E FD               [12]  809 	mov	r5,a
      00028F FE               [12]  810 	mov	r6,a
      000290 33               [12]  811 	rlc	a
      000291 95 E0            [12]  812 	subb	a,acc
      000293 FF               [12]  813 	mov	r7,a
      000294 80 03            [24]  814 	sjmp	00103$
      000296                        815 00102$:
                                    816 ;	main.c:132: Display[0] = 0x00;
      000296 75 18 00         [24]  817 	mov	_Display,#0x00
      000299                        818 00103$:
                                    819 ;	main.c:134: tp = Temper;
      000299 8E 82            [24]  820 	mov	dpl,r6
      00029B 8F 83            [24]  821 	mov	dph,r7
      00029D 12 05 F3         [24]  822 	lcall	___sint2fs
      0002A0 AC 82            [24]  823 	mov	r4,dpl
      0002A2 AD 83            [24]  824 	mov	r5,dph
      0002A4 AE F0            [24]  825 	mov	r6,b
      0002A6 FF               [12]  826 	mov	r7,a
                                    827 ;	main.c:135: DisplayDigits();
      0002A7 C0 07            [24]  828 	push	ar7
      0002A9 C0 06            [24]  829 	push	ar6
      0002AB C0 05            [24]  830 	push	ar5
      0002AD C0 04            [24]  831 	push	ar4
      0002AF 12 00 E4         [24]  832 	lcall	_DisplayDigits
      0002B2 D0 04            [24]  833 	pop	ar4
      0002B4 D0 05            [24]  834 	pop	ar5
      0002B6 D0 06            [24]  835 	pop	ar6
      0002B8 D0 07            [24]  836 	pop	ar7
                                    837 ;	main.c:136: Temper = tp * 0.0625 * 100 + 0.5;
      0002BA C0 04            [24]  838 	push	ar4
      0002BC C0 05            [24]  839 	push	ar5
      0002BE C0 06            [24]  840 	push	ar6
      0002C0 C0 07            [24]  841 	push	ar7
      0002C2 90 00 00         [24]  842 	mov	dptr,#0x0000
      0002C5 75 F0 C8         [24]  843 	mov	b,#0xc8
      0002C8 74 40            [12]  844 	mov	a,#0x40
      0002CA 12 04 20         [24]  845 	lcall	___fsmul
      0002CD AC 82            [24]  846 	mov	r4,dpl
      0002CF AD 83            [24]  847 	mov	r5,dph
      0002D1 AE F0            [24]  848 	mov	r6,b
      0002D3 FF               [12]  849 	mov	r7,a
      0002D4 E5 81            [12]  850 	mov	a,sp
      0002D6 24 FC            [12]  851 	add	a,#0xfc
      0002D8 F5 81            [12]  852 	mov	sp,a
      0002DA E4               [12]  853 	clr	a
      0002DB C0 E0            [24]  854 	push	acc
      0002DD C0 E0            [24]  855 	push	acc
      0002DF C0 E0            [24]  856 	push	acc
      0002E1 74 3F            [12]  857 	mov	a,#0x3f
      0002E3 C0 E0            [24]  858 	push	acc
      0002E5 8C 82            [24]  859 	mov	dpl,r4
      0002E7 8D 83            [24]  860 	mov	dph,r5
      0002E9 8E F0            [24]  861 	mov	b,r6
      0002EB EF               [12]  862 	mov	a,r7
      0002EC 12 05 9A         [24]  863 	lcall	___fsadd
      0002EF AC 82            [24]  864 	mov	r4,dpl
      0002F1 AD 83            [24]  865 	mov	r5,dph
      0002F3 AE F0            [24]  866 	mov	r6,b
      0002F5 FF               [12]  867 	mov	r7,a
      0002F6 E5 81            [12]  868 	mov	a,sp
      0002F8 24 FC            [12]  869 	add	a,#0xfc
      0002FA F5 81            [12]  870 	mov	sp,a
      0002FC 8C 82            [24]  871 	mov	dpl,r4
      0002FE 8D 83            [24]  872 	mov	dph,r5
      000300 8E F0            [24]  873 	mov	b,r6
      000302 EF               [12]  874 	mov	a,r7
      000303 12 06 00         [24]  875 	lcall	___fs2sint
      000306 AE 82            [24]  876 	mov	r6,dpl
      000308 AF 83            [24]  877 	mov	r7,dph
                                    878 ;	main.c:137: DisplayDigits();
      00030A C0 07            [24]  879 	push	ar7
      00030C C0 06            [24]  880 	push	ar6
      00030E 12 00 E4         [24]  881 	lcall	_DisplayDigits
      000311 D0 06            [24]  882 	pop	ar6
      000313 D0 07            [24]  883 	pop	ar7
                                    884 ;	main.c:138: Display[1] = smgduan[Temper/10000];
      000315 75 24 10         [24]  885 	mov	__divsint_PARM_2,#0x10
      000318 75 25 27         [24]  886 	mov	(__divsint_PARM_2 + 1),#0x27
      00031B 8E 82            [24]  887 	mov	dpl,r6
      00031D 8F 83            [24]  888 	mov	dph,r7
      00031F C0 07            [24]  889 	push	ar7
      000321 C0 06            [24]  890 	push	ar6
      000323 12 07 00         [24]  891 	lcall	__divsint
      000326 AC 82            [24]  892 	mov	r4,dpl
      000328 D0 06            [24]  893 	pop	ar6
      00032A D0 07            [24]  894 	pop	ar7
      00032C EC               [12]  895 	mov	a,r4
      00032D 24 08            [12]  896 	add	a,#_smgduan
      00032F F9               [12]  897 	mov	r1,a
      000330 87 05            [24]  898 	mov	ar5,@r1
      000332 8D 19            [24]  899 	mov	(_Display + 0x0001),r5
                                    900 ;	main.c:139: DisplayDigits();
      000334 C0 07            [24]  901 	push	ar7
      000336 C0 06            [24]  902 	push	ar6
      000338 12 00 E4         [24]  903 	lcall	_DisplayDigits
      00033B D0 06            [24]  904 	pop	ar6
      00033D D0 07            [24]  905 	pop	ar7
                                    906 ;	main.c:140: Display[2] = smgduan[Temper%10000/1000];
      00033F 75 24 10         [24]  907 	mov	__modsint_PARM_2,#0x10
      000342 75 25 27         [24]  908 	mov	(__modsint_PARM_2 + 1),#0x27
      000345 8E 82            [24]  909 	mov	dpl,r6
      000347 8F 83            [24]  910 	mov	dph,r7
      000349 C0 07            [24]  911 	push	ar7
      00034B C0 06            [24]  912 	push	ar6
      00034D 12 06 9D         [24]  913 	lcall	__modsint
      000350 75 24 E8         [24]  914 	mov	__divsint_PARM_2,#0xe8
      000353 75 25 03         [24]  915 	mov	(__divsint_PARM_2 + 1),#0x03
      000356 12 07 00         [24]  916 	lcall	__divsint
      000359 AC 82            [24]  917 	mov	r4,dpl
      00035B D0 06            [24]  918 	pop	ar6
      00035D D0 07            [24]  919 	pop	ar7
      00035F EC               [12]  920 	mov	a,r4
      000360 24 08            [12]  921 	add	a,#_smgduan
      000362 F9               [12]  922 	mov	r1,a
      000363 87 05            [24]  923 	mov	ar5,@r1
      000365 8D 1A            [24]  924 	mov	(_Display + 0x0002),r5
                                    925 ;	main.c:141: DisplayDigits();
      000367 C0 07            [24]  926 	push	ar7
      000369 C0 06            [24]  927 	push	ar6
      00036B 12 00 E4         [24]  928 	lcall	_DisplayDigits
      00036E D0 06            [24]  929 	pop	ar6
      000370 D0 07            [24]  930 	pop	ar7
                                    931 ;	main.c:142: Display[3] = smgduan[Temper%1000/100]|0x80;
      000372 75 24 E8         [24]  932 	mov	__modsint_PARM_2,#0xe8
      000375 75 25 03         [24]  933 	mov	(__modsint_PARM_2 + 1),#0x03
      000378 8E 82            [24]  934 	mov	dpl,r6
      00037A 8F 83            [24]  935 	mov	dph,r7
      00037C C0 07            [24]  936 	push	ar7
      00037E C0 06            [24]  937 	push	ar6
      000380 12 06 9D         [24]  938 	lcall	__modsint
      000383 75 24 64         [24]  939 	mov	__divsint_PARM_2,#0x64
      000386 75 25 00         [24]  940 	mov	(__divsint_PARM_2 + 1),#0x00
      000389 12 07 00         [24]  941 	lcall	__divsint
      00038C AC 82            [24]  942 	mov	r4,dpl
      00038E D0 06            [24]  943 	pop	ar6
      000390 D0 07            [24]  944 	pop	ar7
      000392 EC               [12]  945 	mov	a,r4
      000393 24 08            [12]  946 	add	a,#_smgduan
      000395 F9               [12]  947 	mov	r1,a
      000396 87 05            [24]  948 	mov	ar5,@r1
      000398 43 05 80         [24]  949 	orl	ar5,#0x80
      00039B 8D 1B            [24]  950 	mov	(_Display + 0x0003),r5
                                    951 ;	main.c:143: DisplayDigits();
      00039D C0 07            [24]  952 	push	ar7
      00039F C0 06            [24]  953 	push	ar6
      0003A1 12 00 E4         [24]  954 	lcall	_DisplayDigits
      0003A4 D0 06            [24]  955 	pop	ar6
      0003A6 D0 07            [24]  956 	pop	ar7
                                    957 ;	main.c:144: Display[4] = smgduan[Temper%100/10];
      0003A8 75 24 64         [24]  958 	mov	__modsint_PARM_2,#0x64
      0003AB 75 25 00         [24]  959 	mov	(__modsint_PARM_2 + 1),#0x00
      0003AE 8E 82            [24]  960 	mov	dpl,r6
      0003B0 8F 83            [24]  961 	mov	dph,r7
      0003B2 C0 07            [24]  962 	push	ar7
      0003B4 C0 06            [24]  963 	push	ar6
      0003B6 12 06 9D         [24]  964 	lcall	__modsint
      0003B9 75 24 0A         [24]  965 	mov	__divsint_PARM_2,#0x0a
      0003BC 75 25 00         [24]  966 	mov	(__divsint_PARM_2 + 1),#0x00
      0003BF 12 07 00         [24]  967 	lcall	__divsint
      0003C2 AC 82            [24]  968 	mov	r4,dpl
      0003C4 D0 06            [24]  969 	pop	ar6
      0003C6 D0 07            [24]  970 	pop	ar7
      0003C8 EC               [12]  971 	mov	a,r4
      0003C9 24 08            [12]  972 	add	a,#_smgduan
      0003CB F9               [12]  973 	mov	r1,a
      0003CC 87 05            [24]  974 	mov	ar5,@r1
      0003CE 8D 1C            [24]  975 	mov	(_Display + 0x0004),r5
                                    976 ;	main.c:145: DisplayDigits();
      0003D0 C0 07            [24]  977 	push	ar7
      0003D2 C0 06            [24]  978 	push	ar6
      0003D4 12 00 E4         [24]  979 	lcall	_DisplayDigits
      0003D7 D0 06            [24]  980 	pop	ar6
      0003D9 D0 07            [24]  981 	pop	ar7
                                    982 ;	main.c:146: Display[5] = smgduan[Temper%10];
      0003DB 75 24 0A         [24]  983 	mov	__modsint_PARM_2,#0x0a
      0003DE 75 25 00         [24]  984 	mov	(__modsint_PARM_2 + 1),#0x00
      0003E1 8E 82            [24]  985 	mov	dpl,r6
      0003E3 8F 83            [24]  986 	mov	dph,r7
      0003E5 12 06 9D         [24]  987 	lcall	__modsint
      0003E8 E5 82            [12]  988 	mov	a,dpl
      0003EA 24 08            [12]  989 	add	a,#_smgduan
      0003EC F9               [12]  990 	mov	r1,a
      0003ED 87 07            [24]  991 	mov	ar7,@r1
      0003EF 8F 1D            [24]  992 	mov	(_Display + 0x0005),r7
                                    993 ;	main.c:147: }
      0003F1 22               [24]  994 	ret
                                    995 ;------------------------------------------------------------
                                    996 ;Allocation info for local variables in function 'main'
                                    997 ;------------------------------------------------------------
                                    998 ;i                         Allocated to registers r7 
                                    999 ;------------------------------------------------------------
                                   1000 ;	main.c:149: void main()
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function main
                                   1003 ;	-----------------------------------------
      0003F2                       1004 _main:
                                   1005 ;	main.c:151: Init_DS18B20();
      0003F2 12 01 8F         [24] 1006 	lcall	_Init_DS18B20
                                   1007 ;	main.c:152: delay(50000);
      0003F5 90 C3 50         [24] 1008 	mov	dptr,#0xc350
      0003F8 12 00 B6         [24] 1009 	lcall	_delay
                                   1010 ;	main.c:153: delay(25000);
      0003FB 90 61 A8         [24] 1011 	mov	dptr,#0x61a8
      0003FE 12 00 B6         [24] 1012 	lcall	_delay
                                   1013 ;	main.c:154: while(1)
      000401                       1014 00105$:
                                   1015 ;	main.c:156: ReadTemperature();
      000401 12 02 1D         [24] 1016 	lcall	_ReadTemperature
                                   1017 ;	main.c:157: Temperature_Process();
      000404 12 02 61         [24] 1018 	lcall	_Temperature_Process
                                   1019 ;	main.c:159: while(i--)
      000407 7F 0A            [12] 1020 	mov	r7,#0x0a
      000409                       1021 00101$:
      000409 8F 06            [24] 1022 	mov	ar6,r7
      00040B 1F               [12] 1023 	dec	r7
      00040C EE               [12] 1024 	mov	a,r6
      00040D 60 09            [24] 1025 	jz	00103$
                                   1026 ;	main.c:161: DisplayDigits();
      00040F C0 07            [24] 1027 	push	ar7
      000411 12 00 E4         [24] 1028 	lcall	_DisplayDigits
      000414 D0 07            [24] 1029 	pop	ar7
      000416 80 F1            [24] 1030 	sjmp	00101$
      000418                       1031 00103$:
                                   1032 ;	main.c:163: DelayXus(10);
      000418 90 00 0A         [24] 1033 	mov	dptr,#0x000a
      00041B 12 00 C8         [24] 1034 	lcall	_DelayXus
                                   1035 ;	main.c:165: }
      00041E 80 E1            [24] 1036 	sjmp	00105$
                                   1037 	.area CSEG    (CODE)
                                   1038 	.area CONST   (CODE)
                                   1039 	.area XINIT   (CODE)
                                   1040 	.area CABS    (ABS,CODE)

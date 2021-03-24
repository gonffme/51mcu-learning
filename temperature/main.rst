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
                                    342 ;	main.c:45: uchar CurrentT = 0;
      0000A7 75 20 00         [24]  343 	mov	_CurrentT,#0x00
                                    344 ;	main.c:46: uchar Temp_Value[] = {0x00, 0x00};
      0000AA 75 21 00         [24]  345 	mov	_Temp_Value,#0x00
      0000AD 75 22 00         [24]  346 	mov	(_Temp_Value + 0x0001),#0x00
                                    347 ;	main.c:47: uchar DS18B20_IS_OK = 1;
      0000B0 75 23 01         [24]  348 	mov	_DS18B20_IS_OK,#0x01
                                    349 	.area GSFINAL (CODE)
      0000B3 02 00 03         [24]  350 	ljmp	__sdcc_program_startup
                                    351 ;--------------------------------------------------------
                                    352 ; Home
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area HOME    (CODE)
      000003                        356 __sdcc_program_startup:
      000003 02 03 EF         [24]  357 	ljmp	_main
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
      0000F9 12 06 FD         [24]  456 	lcall	__divsint
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
      00012F 12 06 FD         [24]  493 	lcall	__divsint
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
                                    556 ;	main.c:32: for(i=0;i<7;i++)
      000182 0F               [12]  557 	inc	r7
      000183 BF 07 00         [24]  558 	cjne	r7,#0x07,00111$
      000186                        559 00111$:
      000186 50 03            [24]  560 	jnc	00112$
      000188 02 00 E6         [24]  561 	ljmp	00102$
      00018B                        562 00112$:
                                    563 ;	main.c:40: }
      00018B 22               [24]  564 	ret
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'Init_DS18B20'
                                    567 ;------------------------------------------------------------
                                    568 ;	main.c:49: uchar Init_DS18B20()
                                    569 ;	-----------------------------------------
                                    570 ;	 function Init_DS18B20
                                    571 ;	-----------------------------------------
      00018C                        572 _Init_DS18B20:
                                    573 ;	main.c:51: DQ = 1;
                                    574 ;	assignBit
      00018C D2 B3            [12]  575 	setb	_P3_3
                                    576 ;	main.c:52: delay(8);
      00018E 90 00 08         [24]  577 	mov	dptr,#0x0008
      000191 12 00 B6         [24]  578 	lcall	_delay
                                    579 ;	main.c:53: DQ = 0;
                                    580 ;	assignBit
      000194 C2 B3            [12]  581 	clr	_P3_3
                                    582 ;	main.c:54: delay(50);
      000196 90 00 32         [24]  583 	mov	dptr,#0x0032
      000199 12 00 B6         [24]  584 	lcall	_delay
                                    585 ;	main.c:55: DQ = 1;
                                    586 ;	assignBit
      00019C D2 B3            [12]  587 	setb	_P3_3
                                    588 ;	main.c:56: delay(7);
      00019E 90 00 07         [24]  589 	mov	dptr,#0x0007
      0001A1 12 00 B6         [24]  590 	lcall	_delay
                                    591 ;	main.c:57: status = DQ;
                                    592 ;	assignBit
      0001A4 A2 B3            [12]  593 	mov	c,_P3_3
      0001A6 92 B2            [24]  594 	mov	_P3_2,c
                                    595 ;	main.c:58: delay(50);
      0001A8 90 00 32         [24]  596 	mov	dptr,#0x0032
      0001AB 12 00 B6         [24]  597 	lcall	_delay
                                    598 ;	main.c:59: return status;
      0001AE A2 B2            [12]  599 	mov	c,_P3_2
      0001B0 E4               [12]  600 	clr	a
      0001B1 33               [12]  601 	rlc	a
      0001B2 F5 82            [12]  602 	mov	dpl,a
                                    603 ;	main.c:60: }
      0001B4 22               [24]  604 	ret
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'ReadOneByte'
                                    607 ;------------------------------------------------------------
                                    608 ;i                         Allocated to registers r6 
                                    609 ;dat                       Allocated to registers r7 
                                    610 ;------------------------------------------------------------
                                    611 ;	main.c:61: uchar ReadOneByte()
                                    612 ;	-----------------------------------------
                                    613 ;	 function ReadOneByte
                                    614 ;	-----------------------------------------
      0001B5                        615 _ReadOneByte:
                                    616 ;	main.c:63: uchar i, dat=0;
      0001B5 7F 00            [12]  617 	mov	r7,#0x00
                                    618 ;	main.c:64: DQ = 1;
                                    619 ;	assignBit
      0001B7 D2 B3            [12]  620 	setb	_P3_3
                                    621 ;	main.c:65: delay(1);
      0001B9 90 00 01         [24]  622 	mov	dptr,#0x0001
      0001BC C0 07            [24]  623 	push	ar7
      0001BE 12 00 B6         [24]  624 	lcall	_delay
      0001C1 D0 07            [24]  625 	pop	ar7
                                    626 ;	main.c:66: for(i=0;i<8;i++)
      0001C3 7E 00            [12]  627 	mov	r6,#0x00
      0001C5                        628 00104$:
                                    629 ;	main.c:68: DQ = 0;
                                    630 ;	assignBit
      0001C5 C2 B3            [12]  631 	clr	_P3_3
                                    632 ;	main.c:69: dat >>= 1;
      0001C7 EF               [12]  633 	mov	a,r7
      0001C8 C3               [12]  634 	clr	c
      0001C9 13               [12]  635 	rrc	a
      0001CA FF               [12]  636 	mov	r7,a
                                    637 ;	main.c:70: DQ = 1;
                                    638 ;	assignBit
      0001CB D2 B3            [12]  639 	setb	_P3_3
                                    640 ;	main.c:73: if(DQ)
      0001CD 30 B3 09         [24]  641 	jnb	_P3_3,00102$
                                    642 ;	main.c:75: dat |= 0x80;
      0001D0 8F 04            [24]  643 	mov	ar4,r7
      0001D2 7D 00            [12]  644 	mov	r5,#0x00
      0001D4 43 04 80         [24]  645 	orl	ar4,#0x80
      0001D7 8C 07            [24]  646 	mov	ar7,r4
      0001D9                        647 00102$:
                                    648 ;	main.c:77: delay(30);
      0001D9 90 00 1E         [24]  649 	mov	dptr,#0x001e
      0001DC C0 07            [24]  650 	push	ar7
      0001DE C0 06            [24]  651 	push	ar6
      0001E0 12 00 B6         [24]  652 	lcall	_delay
      0001E3 D0 06            [24]  653 	pop	ar6
      0001E5 D0 07            [24]  654 	pop	ar7
                                    655 ;	main.c:78: DQ = 1;
                                    656 ;	assignBit
      0001E7 D2 B3            [12]  657 	setb	_P3_3
                                    658 ;	main.c:66: for(i=0;i<8;i++)
      0001E9 0E               [12]  659 	inc	r6
      0001EA BE 08 00         [24]  660 	cjne	r6,#0x08,00122$
      0001ED                        661 00122$:
      0001ED 40 D6            [24]  662 	jc	00104$
                                    663 ;	main.c:80: return dat;
      0001EF 8F 82            [24]  664 	mov	dpl,r7
                                    665 ;	main.c:81: }
      0001F1 22               [24]  666 	ret
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'WriteOneByte'
                                    669 ;------------------------------------------------------------
                                    670 ;dat                       Allocated to registers r7 
                                    671 ;i                         Allocated to registers r6 
                                    672 ;------------------------------------------------------------
                                    673 ;	main.c:82: void WriteOneByte(uchar dat)
                                    674 ;	-----------------------------------------
                                    675 ;	 function WriteOneByte
                                    676 ;	-----------------------------------------
      0001F2                        677 _WriteOneByte:
      0001F2 AF 82            [24]  678 	mov	r7,dpl
                                    679 ;	main.c:85: for(i=0;i<8;i++)
      0001F4 7E 00            [12]  680 	mov	r6,#0x00
      0001F6                        681 00102$:
                                    682 ;	main.c:87: DQ = 0;
                                    683 ;	assignBit
      0001F6 C2 B3            [12]  684 	clr	_P3_3
                                    685 ;	main.c:88: DQ = dat & 0x01;
      0001F8 EF               [12]  686 	mov	a,r7
      0001F9 54 01            [12]  687 	anl	a,#0x01
      0001FB 24 FF            [12]  688 	add	a,#0xff
      0001FD 92 B3            [24]  689 	mov	_P3_3,c
                                    690 ;	main.c:89: delay(5);
      0001FF 90 00 05         [24]  691 	mov	dptr,#0x0005
      000202 C0 07            [24]  692 	push	ar7
      000204 C0 06            [24]  693 	push	ar6
      000206 12 00 B6         [24]  694 	lcall	_delay
      000209 D0 06            [24]  695 	pop	ar6
      00020B D0 07            [24]  696 	pop	ar7
                                    697 ;	main.c:90: DQ = 1;
                                    698 ;	assignBit
      00020D D2 B3            [12]  699 	setb	_P3_3
                                    700 ;	main.c:91: dat >>= 1;
      00020F EF               [12]  701 	mov	a,r7
      000210 C3               [12]  702 	clr	c
      000211 13               [12]  703 	rrc	a
      000212 FF               [12]  704 	mov	r7,a
                                    705 ;	main.c:85: for(i=0;i<8;i++)
      000213 0E               [12]  706 	inc	r6
      000214 BE 08 00         [24]  707 	cjne	r6,#0x08,00111$
      000217                        708 00111$:
      000217 40 DD            [24]  709 	jc	00102$
                                    710 ;	main.c:93: }
      000219 22               [24]  711 	ret
                                    712 ;------------------------------------------------------------
                                    713 ;Allocation info for local variables in function 'ReadTemperature'
                                    714 ;------------------------------------------------------------
                                    715 ;	main.c:94: void ReadTemperature()
                                    716 ;	-----------------------------------------
                                    717 ;	 function ReadTemperature
                                    718 ;	-----------------------------------------
      00021A                        719 _ReadTemperature:
                                    720 ;	main.c:96: if(Init_DS18B20())
      00021A 12 01 8C         [24]  721 	lcall	_Init_DS18B20
      00021D E5 82            [12]  722 	mov	a,dpl
      00021F 60 04            [24]  723 	jz	00102$
                                    724 ;	main.c:97: DS18B20_IS_OK = 0;
      000221 75 23 00         [24]  725 	mov	_DS18B20_IS_OK,#0x00
      000224 22               [24]  726 	ret
      000225                        727 00102$:
                                    728 ;	main.c:100: WriteOneByte(0xcc);
      000225 75 82 CC         [24]  729 	mov	dpl,#0xcc
      000228 12 01 F2         [24]  730 	lcall	_WriteOneByte
                                    731 ;	main.c:101: DisplayDigits();
      00022B 12 00 E4         [24]  732 	lcall	_DisplayDigits
                                    733 ;	main.c:102: WriteOneByte(0x44);
      00022E 75 82 44         [24]  734 	mov	dpl,#0x44
      000231 12 01 F2         [24]  735 	lcall	_WriteOneByte
                                    736 ;	main.c:103: DisplayDigits();
      000234 12 00 E4         [24]  737 	lcall	_DisplayDigits
                                    738 ;	main.c:106: Init_DS18B20();
      000237 12 01 8C         [24]  739 	lcall	_Init_DS18B20
                                    740 ;	main.c:107: WriteOneByte(0xcc);
      00023A 75 82 CC         [24]  741 	mov	dpl,#0xcc
      00023D 12 01 F2         [24]  742 	lcall	_WriteOneByte
                                    743 ;	main.c:108: WriteOneByte(0xbe);
      000240 75 82 BE         [24]  744 	mov	dpl,#0xbe
      000243 12 01 F2         [24]  745 	lcall	_WriteOneByte
                                    746 ;	main.c:109: DisplayDigits();
      000246 12 00 E4         [24]  747 	lcall	_DisplayDigits
                                    748 ;	main.c:110: Temp_Value[0] = ReadOneByte();
      000249 12 01 B5         [24]  749 	lcall	_ReadOneByte
      00024C E5 82            [12]  750 	mov	a,dpl
      00024E F5 21            [12]  751 	mov	_Temp_Value,a
                                    752 ;	main.c:111: Temp_Value[1] = ReadOneByte();
      000250 12 01 B5         [24]  753 	lcall	_ReadOneByte
      000253 E5 82            [12]  754 	mov	a,dpl
      000255 F5 22            [12]  755 	mov	(_Temp_Value + 0x0001),a
                                    756 ;	main.c:112: DisplayDigits();
      000257 12 00 E4         [24]  757 	lcall	_DisplayDigits
                                    758 ;	main.c:113: DS18B20_IS_OK = 1;
      00025A 75 23 01         [24]  759 	mov	_DS18B20_IS_OK,#0x01
                                    760 ;	main.c:115: }
      00025D 22               [24]  761 	ret
                                    762 ;------------------------------------------------------------
                                    763 ;Allocation info for local variables in function 'Temperature_Process'
                                    764 ;------------------------------------------------------------
                                    765 ;Temper                    Allocated to registers r4 r5 
                                    766 ;tp                        Allocated to registers r4 r5 r6 r7 
                                    767 ;------------------------------------------------------------
                                    768 ;	main.c:116: void Temperature_Process() //convert temperature from hex to decimal, then make it diplayable.
                                    769 ;	-----------------------------------------
                                    770 ;	 function Temperature_Process
                                    771 ;	-----------------------------------------
      00025E                        772 _Temperature_Process:
                                    773 ;	main.c:118: int Temper = Temp_Value[1];
                                    774 ;	main.c:119: Temper <<= 8;
      00025E AF 22            [24]  775 	mov	r7,(_Temp_Value + 0x0001)
      000260 7E 00            [12]  776 	mov	r6,#0x00
                                    777 ;	main.c:120: Temper |= Temp_Value[0];
      000262 AC 21            [24]  778 	mov	r4,_Temp_Value
      000264 7D 00            [12]  779 	mov	r5,#0x00
      000266 EC               [12]  780 	mov	a,r4
      000267 42 06            [12]  781 	orl	ar6,a
      000269 ED               [12]  782 	mov	a,r5
      00026A 42 07            [12]  783 	orl	ar7,a
                                    784 ;	main.c:121: DisplayDigits();
      00026C C0 07            [24]  785 	push	ar7
      00026E C0 06            [24]  786 	push	ar6
      000270 12 00 E4         [24]  787 	lcall	_DisplayDigits
      000273 D0 06            [24]  788 	pop	ar6
      000275 D0 07            [24]  789 	pop	ar7
                                    790 ;	main.c:123: if(Temper<0)
      000277 EF               [12]  791 	mov	a,r7
      000278 30 E7 18         [24]  792 	jnb	acc.7,00102$
                                    793 ;	main.c:125: Display[0] = 0x40;
      00027B 75 18 40         [24]  794 	mov	_Display,#0x40
                                    795 ;	main.c:126: Temper -= 1;
      00027E EE               [12]  796 	mov	a,r6
      00027F 24 FF            [12]  797 	add	a,#0xff
      000281 FC               [12]  798 	mov	r4,a
      000282 EF               [12]  799 	mov	a,r7
      000283 34 FF            [12]  800 	addc	a,#0xff
                                    801 ;	main.c:127: Temper = !Temper;
      000285 4C               [12]  802 	orl	a,r4
      000286 B4 01 00         [24]  803 	cjne	a,#0x01,00112$
      000289                        804 00112$:
      000289 E4               [12]  805 	clr	a
      00028A 33               [12]  806 	rlc	a
      00028B FD               [12]  807 	mov	r5,a
      00028C FE               [12]  808 	mov	r6,a
      00028D 33               [12]  809 	rlc	a
      00028E 95 E0            [12]  810 	subb	a,acc
      000290 FF               [12]  811 	mov	r7,a
      000291 80 03            [24]  812 	sjmp	00103$
      000293                        813 00102$:
                                    814 ;	main.c:131: Display[0] = 0x00;
      000293 75 18 00         [24]  815 	mov	_Display,#0x00
      000296                        816 00103$:
                                    817 ;	main.c:133: tp = Temper;
      000296 8E 82            [24]  818 	mov	dpl,r6
      000298 8F 83            [24]  819 	mov	dph,r7
      00029A 12 05 F0         [24]  820 	lcall	___sint2fs
      00029D AC 82            [24]  821 	mov	r4,dpl
      00029F AD 83            [24]  822 	mov	r5,dph
      0002A1 AE F0            [24]  823 	mov	r6,b
      0002A3 FF               [12]  824 	mov	r7,a
                                    825 ;	main.c:134: DisplayDigits();
      0002A4 C0 07            [24]  826 	push	ar7
      0002A6 C0 06            [24]  827 	push	ar6
      0002A8 C0 05            [24]  828 	push	ar5
      0002AA C0 04            [24]  829 	push	ar4
      0002AC 12 00 E4         [24]  830 	lcall	_DisplayDigits
      0002AF D0 04            [24]  831 	pop	ar4
      0002B1 D0 05            [24]  832 	pop	ar5
      0002B3 D0 06            [24]  833 	pop	ar6
      0002B5 D0 07            [24]  834 	pop	ar7
                                    835 ;	main.c:135: Temper = tp * 0.0625 * 100 + 0.5;
      0002B7 C0 04            [24]  836 	push	ar4
      0002B9 C0 05            [24]  837 	push	ar5
      0002BB C0 06            [24]  838 	push	ar6
      0002BD C0 07            [24]  839 	push	ar7
      0002BF 90 00 00         [24]  840 	mov	dptr,#0x0000
      0002C2 75 F0 C8         [24]  841 	mov	b,#0xc8
      0002C5 74 40            [12]  842 	mov	a,#0x40
      0002C7 12 04 1D         [24]  843 	lcall	___fsmul
      0002CA AC 82            [24]  844 	mov	r4,dpl
      0002CC AD 83            [24]  845 	mov	r5,dph
      0002CE AE F0            [24]  846 	mov	r6,b
      0002D0 FF               [12]  847 	mov	r7,a
      0002D1 E5 81            [12]  848 	mov	a,sp
      0002D3 24 FC            [12]  849 	add	a,#0xfc
      0002D5 F5 81            [12]  850 	mov	sp,a
      0002D7 E4               [12]  851 	clr	a
      0002D8 C0 E0            [24]  852 	push	acc
      0002DA C0 E0            [24]  853 	push	acc
      0002DC C0 E0            [24]  854 	push	acc
      0002DE 74 3F            [12]  855 	mov	a,#0x3f
      0002E0 C0 E0            [24]  856 	push	acc
      0002E2 8C 82            [24]  857 	mov	dpl,r4
      0002E4 8D 83            [24]  858 	mov	dph,r5
      0002E6 8E F0            [24]  859 	mov	b,r6
      0002E8 EF               [12]  860 	mov	a,r7
      0002E9 12 05 97         [24]  861 	lcall	___fsadd
      0002EC AC 82            [24]  862 	mov	r4,dpl
      0002EE AD 83            [24]  863 	mov	r5,dph
      0002F0 AE F0            [24]  864 	mov	r6,b
      0002F2 FF               [12]  865 	mov	r7,a
      0002F3 E5 81            [12]  866 	mov	a,sp
      0002F5 24 FC            [12]  867 	add	a,#0xfc
      0002F7 F5 81            [12]  868 	mov	sp,a
      0002F9 8C 82            [24]  869 	mov	dpl,r4
      0002FB 8D 83            [24]  870 	mov	dph,r5
      0002FD 8E F0            [24]  871 	mov	b,r6
      0002FF EF               [12]  872 	mov	a,r7
      000300 12 05 FD         [24]  873 	lcall	___fs2sint
      000303 AE 82            [24]  874 	mov	r6,dpl
      000305 AF 83            [24]  875 	mov	r7,dph
                                    876 ;	main.c:136: DisplayDigits();
      000307 C0 07            [24]  877 	push	ar7
      000309 C0 06            [24]  878 	push	ar6
      00030B 12 00 E4         [24]  879 	lcall	_DisplayDigits
      00030E D0 06            [24]  880 	pop	ar6
      000310 D0 07            [24]  881 	pop	ar7
                                    882 ;	main.c:137: Display[1] = smgduan[Temper/10000];
      000312 75 24 10         [24]  883 	mov	__divsint_PARM_2,#0x10
      000315 75 25 27         [24]  884 	mov	(__divsint_PARM_2 + 1),#0x27
      000318 8E 82            [24]  885 	mov	dpl,r6
      00031A 8F 83            [24]  886 	mov	dph,r7
      00031C C0 07            [24]  887 	push	ar7
      00031E C0 06            [24]  888 	push	ar6
      000320 12 06 FD         [24]  889 	lcall	__divsint
      000323 AC 82            [24]  890 	mov	r4,dpl
      000325 D0 06            [24]  891 	pop	ar6
      000327 D0 07            [24]  892 	pop	ar7
      000329 EC               [12]  893 	mov	a,r4
      00032A 24 08            [12]  894 	add	a,#_smgduan
      00032C F9               [12]  895 	mov	r1,a
      00032D 87 05            [24]  896 	mov	ar5,@r1
      00032F 8D 19            [24]  897 	mov	(_Display + 0x0001),r5
                                    898 ;	main.c:138: DisplayDigits();
      000331 C0 07            [24]  899 	push	ar7
      000333 C0 06            [24]  900 	push	ar6
      000335 12 00 E4         [24]  901 	lcall	_DisplayDigits
      000338 D0 06            [24]  902 	pop	ar6
      00033A D0 07            [24]  903 	pop	ar7
                                    904 ;	main.c:139: Display[2] = smgduan[Temper%10000/1000];
      00033C 75 24 10         [24]  905 	mov	__modsint_PARM_2,#0x10
      00033F 75 25 27         [24]  906 	mov	(__modsint_PARM_2 + 1),#0x27
      000342 8E 82            [24]  907 	mov	dpl,r6
      000344 8F 83            [24]  908 	mov	dph,r7
      000346 C0 07            [24]  909 	push	ar7
      000348 C0 06            [24]  910 	push	ar6
      00034A 12 06 9A         [24]  911 	lcall	__modsint
      00034D 75 24 E8         [24]  912 	mov	__divsint_PARM_2,#0xe8
      000350 75 25 03         [24]  913 	mov	(__divsint_PARM_2 + 1),#0x03
      000353 12 06 FD         [24]  914 	lcall	__divsint
      000356 AC 82            [24]  915 	mov	r4,dpl
      000358 D0 06            [24]  916 	pop	ar6
      00035A D0 07            [24]  917 	pop	ar7
      00035C EC               [12]  918 	mov	a,r4
      00035D 24 08            [12]  919 	add	a,#_smgduan
      00035F F9               [12]  920 	mov	r1,a
      000360 87 05            [24]  921 	mov	ar5,@r1
      000362 8D 1A            [24]  922 	mov	(_Display + 0x0002),r5
                                    923 ;	main.c:140: DisplayDigits();
      000364 C0 07            [24]  924 	push	ar7
      000366 C0 06            [24]  925 	push	ar6
      000368 12 00 E4         [24]  926 	lcall	_DisplayDigits
      00036B D0 06            [24]  927 	pop	ar6
      00036D D0 07            [24]  928 	pop	ar7
                                    929 ;	main.c:141: Display[3] = smgduan[Temper%1000/100]|0x80;
      00036F 75 24 E8         [24]  930 	mov	__modsint_PARM_2,#0xe8
      000372 75 25 03         [24]  931 	mov	(__modsint_PARM_2 + 1),#0x03
      000375 8E 82            [24]  932 	mov	dpl,r6
      000377 8F 83            [24]  933 	mov	dph,r7
      000379 C0 07            [24]  934 	push	ar7
      00037B C0 06            [24]  935 	push	ar6
      00037D 12 06 9A         [24]  936 	lcall	__modsint
      000380 75 24 64         [24]  937 	mov	__divsint_PARM_2,#0x64
      000383 75 25 00         [24]  938 	mov	(__divsint_PARM_2 + 1),#0x00
      000386 12 06 FD         [24]  939 	lcall	__divsint
      000389 AC 82            [24]  940 	mov	r4,dpl
      00038B D0 06            [24]  941 	pop	ar6
      00038D D0 07            [24]  942 	pop	ar7
      00038F EC               [12]  943 	mov	a,r4
      000390 24 08            [12]  944 	add	a,#_smgduan
      000392 F9               [12]  945 	mov	r1,a
      000393 87 05            [24]  946 	mov	ar5,@r1
      000395 43 05 80         [24]  947 	orl	ar5,#0x80
      000398 8D 1B            [24]  948 	mov	(_Display + 0x0003),r5
                                    949 ;	main.c:142: DisplayDigits();
      00039A C0 07            [24]  950 	push	ar7
      00039C C0 06            [24]  951 	push	ar6
      00039E 12 00 E4         [24]  952 	lcall	_DisplayDigits
      0003A1 D0 06            [24]  953 	pop	ar6
      0003A3 D0 07            [24]  954 	pop	ar7
                                    955 ;	main.c:143: Display[4] = smgduan[Temper%100/10];
      0003A5 75 24 64         [24]  956 	mov	__modsint_PARM_2,#0x64
      0003A8 75 25 00         [24]  957 	mov	(__modsint_PARM_2 + 1),#0x00
      0003AB 8E 82            [24]  958 	mov	dpl,r6
      0003AD 8F 83            [24]  959 	mov	dph,r7
      0003AF C0 07            [24]  960 	push	ar7
      0003B1 C0 06            [24]  961 	push	ar6
      0003B3 12 06 9A         [24]  962 	lcall	__modsint
      0003B6 75 24 0A         [24]  963 	mov	__divsint_PARM_2,#0x0a
      0003B9 75 25 00         [24]  964 	mov	(__divsint_PARM_2 + 1),#0x00
      0003BC 12 06 FD         [24]  965 	lcall	__divsint
      0003BF AC 82            [24]  966 	mov	r4,dpl
      0003C1 D0 06            [24]  967 	pop	ar6
      0003C3 D0 07            [24]  968 	pop	ar7
      0003C5 EC               [12]  969 	mov	a,r4
      0003C6 24 08            [12]  970 	add	a,#_smgduan
      0003C8 F9               [12]  971 	mov	r1,a
      0003C9 87 05            [24]  972 	mov	ar5,@r1
      0003CB 8D 1C            [24]  973 	mov	(_Display + 0x0004),r5
                                    974 ;	main.c:144: DisplayDigits();
      0003CD C0 07            [24]  975 	push	ar7
      0003CF C0 06            [24]  976 	push	ar6
      0003D1 12 00 E4         [24]  977 	lcall	_DisplayDigits
      0003D4 D0 06            [24]  978 	pop	ar6
      0003D6 D0 07            [24]  979 	pop	ar7
                                    980 ;	main.c:145: Display[5] = smgduan[Temper%10];
      0003D8 75 24 0A         [24]  981 	mov	__modsint_PARM_2,#0x0a
      0003DB 75 25 00         [24]  982 	mov	(__modsint_PARM_2 + 1),#0x00
      0003DE 8E 82            [24]  983 	mov	dpl,r6
      0003E0 8F 83            [24]  984 	mov	dph,r7
      0003E2 12 06 9A         [24]  985 	lcall	__modsint
      0003E5 E5 82            [12]  986 	mov	a,dpl
      0003E7 24 08            [12]  987 	add	a,#_smgduan
      0003E9 F9               [12]  988 	mov	r1,a
      0003EA 87 07            [24]  989 	mov	ar7,@r1
      0003EC 8F 1D            [24]  990 	mov	(_Display + 0x0005),r7
                                    991 ;	main.c:146: }
      0003EE 22               [24]  992 	ret
                                    993 ;------------------------------------------------------------
                                    994 ;Allocation info for local variables in function 'main'
                                    995 ;------------------------------------------------------------
                                    996 ;i                         Allocated to registers r7 
                                    997 ;------------------------------------------------------------
                                    998 ;	main.c:148: void main()
                                    999 ;	-----------------------------------------
                                   1000 ;	 function main
                                   1001 ;	-----------------------------------------
      0003EF                       1002 _main:
                                   1003 ;	main.c:150: Init_DS18B20();
      0003EF 12 01 8C         [24] 1004 	lcall	_Init_DS18B20
                                   1005 ;	main.c:151: delay(50000);
      0003F2 90 C3 50         [24] 1006 	mov	dptr,#0xc350
      0003F5 12 00 B6         [24] 1007 	lcall	_delay
                                   1008 ;	main.c:152: delay(25000);
      0003F8 90 61 A8         [24] 1009 	mov	dptr,#0x61a8
      0003FB 12 00 B6         [24] 1010 	lcall	_delay
                                   1011 ;	main.c:153: while(1)
      0003FE                       1012 00105$:
                                   1013 ;	main.c:155: ReadTemperature();
      0003FE 12 02 1A         [24] 1014 	lcall	_ReadTemperature
                                   1015 ;	main.c:156: Temperature_Process();
      000401 12 02 5E         [24] 1016 	lcall	_Temperature_Process
                                   1017 ;	main.c:158: while(i--)
      000404 7F 0A            [12] 1018 	mov	r7,#0x0a
      000406                       1019 00101$:
      000406 8F 06            [24] 1020 	mov	ar6,r7
      000408 1F               [12] 1021 	dec	r7
      000409 EE               [12] 1022 	mov	a,r6
      00040A 60 09            [24] 1023 	jz	00103$
                                   1024 ;	main.c:160: DisplayDigits();
      00040C C0 07            [24] 1025 	push	ar7
      00040E 12 00 E4         [24] 1026 	lcall	_DisplayDigits
      000411 D0 07            [24] 1027 	pop	ar7
      000413 80 F1            [24] 1028 	sjmp	00101$
      000415                       1029 00103$:
                                   1030 ;	main.c:162: DelayXus(10);
      000415 90 00 0A         [24] 1031 	mov	dptr,#0x000a
      000418 12 00 C8         [24] 1032 	lcall	_DelayXus
                                   1033 ;	main.c:164: }
      00041B 80 E1            [24] 1034 	sjmp	00105$
                                   1035 	.area CSEG    (CODE)
                                   1036 	.area CONST   (CODE)
                                   1037 	.area XINIT   (CODE)
                                   1038 	.area CABS    (ABS,CODE)

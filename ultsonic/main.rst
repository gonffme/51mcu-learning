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
                                     11 	.globl _TimerOut
                                     12 	.globl _main
                                     13 	.globl _Count
                                     14 	.globl _InitTimer
                                     15 	.globl _StartModule
                                     16 	.globl _Send_Str
                                     17 	.globl _Send_Char
                                     18 	.globl _DisplayDigits
                                     19 	.globl _DelayXus
                                     20 	.globl _delay
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 	.globl _disp1
                                    118 	.globl _disp0
                                    119 	.globl _ss
                                    120 	.globl _s
                                    121 	.globl _time
                                    122 	.globl _Display
                                    123 	.globl _smgduan
                                    124 	.globl _flag
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           000080   130 _P0	=	0x0080
                           000081   131 _SP	=	0x0081
                           000082   132 _DPL	=	0x0082
                           000083   133 _DPH	=	0x0083
                           000087   134 _PCON	=	0x0087
                           000088   135 _TCON	=	0x0088
                           000089   136 _TMOD	=	0x0089
                           00008A   137 _TL0	=	0x008a
                           00008B   138 _TL1	=	0x008b
                           00008C   139 _TH0	=	0x008c
                           00008D   140 _TH1	=	0x008d
                           000090   141 _P1	=	0x0090
                           000098   142 _SCON	=	0x0098
                           000099   143 _SBUF	=	0x0099
                           0000A0   144 _P2	=	0x00a0
                           0000A8   145 _IE	=	0x00a8
                           0000B0   146 _P3	=	0x00b0
                           0000B8   147 _IP	=	0x00b8
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000F0   150 _B	=	0x00f0
                                    151 ;--------------------------------------------------------
                                    152 ; special function bits
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0_0	=	0x0080
                           000081   157 _P0_1	=	0x0081
                           000082   158 _P0_2	=	0x0082
                           000083   159 _P0_3	=	0x0083
                           000084   160 _P0_4	=	0x0084
                           000085   161 _P0_5	=	0x0085
                           000086   162 _P0_6	=	0x0086
                           000087   163 _P0_7	=	0x0087
                           000088   164 _IT0	=	0x0088
                           000089   165 _IE0	=	0x0089
                           00008A   166 _IT1	=	0x008a
                           00008B   167 _IE1	=	0x008b
                           00008C   168 _TR0	=	0x008c
                           00008D   169 _TF0	=	0x008d
                           00008E   170 _TR1	=	0x008e
                           00008F   171 _TF1	=	0x008f
                           000090   172 _P1_0	=	0x0090
                           000091   173 _P1_1	=	0x0091
                           000092   174 _P1_2	=	0x0092
                           000093   175 _P1_3	=	0x0093
                           000094   176 _P1_4	=	0x0094
                           000095   177 _P1_5	=	0x0095
                           000096   178 _P1_6	=	0x0096
                           000097   179 _P1_7	=	0x0097
                           000098   180 _RI	=	0x0098
                           000099   181 _TI	=	0x0099
                           00009A   182 _RB8	=	0x009a
                           00009B   183 _TB8	=	0x009b
                           00009C   184 _REN	=	0x009c
                           00009D   185 _SM2	=	0x009d
                           00009E   186 _SM1	=	0x009e
                           00009F   187 _SM0	=	0x009f
                           0000A0   188 _P2_0	=	0x00a0
                           0000A1   189 _P2_1	=	0x00a1
                           0000A2   190 _P2_2	=	0x00a2
                           0000A3   191 _P2_3	=	0x00a3
                           0000A4   192 _P2_4	=	0x00a4
                           0000A5   193 _P2_5	=	0x00a5
                           0000A6   194 _P2_6	=	0x00a6
                           0000A7   195 _P2_7	=	0x00a7
                           0000A8   196 _EX0	=	0x00a8
                           0000A9   197 _ET0	=	0x00a9
                           0000AA   198 _EX1	=	0x00aa
                           0000AB   199 _ET1	=	0x00ab
                           0000AC   200 _ES	=	0x00ac
                           0000AF   201 _EA	=	0x00af
                           0000B0   202 _P3_0	=	0x00b0
                           0000B1   203 _P3_1	=	0x00b1
                           0000B2   204 _P3_2	=	0x00b2
                           0000B3   205 _P3_3	=	0x00b3
                           0000B4   206 _P3_4	=	0x00b4
                           0000B5   207 _P3_5	=	0x00b5
                           0000B6   208 _P3_6	=	0x00b6
                           0000B7   209 _P3_7	=	0x00b7
                           0000B0   210 _RXD	=	0x00b0
                           0000B1   211 _TXD	=	0x00b1
                           0000B2   212 _INT0	=	0x00b2
                           0000B3   213 _INT1	=	0x00b3
                           0000B4   214 _T0	=	0x00b4
                           0000B5   215 _T1	=	0x00b5
                           0000B6   216 _WR	=	0x00b6
                           0000B7   217 _RD	=	0x00b7
                           0000B8   218 _PX0	=	0x00b8
                           0000B9   219 _PT0	=	0x00b9
                           0000BA   220 _PX1	=	0x00ba
                           0000BB   221 _PT1	=	0x00bb
                           0000BC   222 _PS	=	0x00bc
                           0000D0   223 _P	=	0x00d0
                           0000D1   224 _F1	=	0x00d1
                           0000D2   225 _OV	=	0x00d2
                           0000D3   226 _RS0	=	0x00d3
                           0000D4   227 _RS1	=	0x00d4
                           0000D5   228 _F0	=	0x00d5
                           0000D6   229 _AC	=	0x00d6
                           0000D7   230 _CY	=	0x00d7
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable register banks
                                    233 ;--------------------------------------------------------
                                    234 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        235 	.ds 8
                                    236 ;--------------------------------------------------------
                                    237 ; internal ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area DSEG    (DATA)
      000008                        240 _flag::
      000008                        241 	.ds 1
      000009                        242 _smgduan::
      000009                        243 	.ds 16
      000019                        244 _Display::
      000019                        245 	.ds 8
      000021                        246 _time::
      000021                        247 	.ds 2
      000023                        248 _s::
      000023                        249 	.ds 2
      000025                        250 _ss::
      000025                        251 	.ds 8
      00002D                        252 _disp0::
      00002D                        253 	.ds 10
      000037                        254 _disp1::
      000037                        255 	.ds 4
                                    256 ;--------------------------------------------------------
                                    257 ; overlayable items in internal ram 
                                    258 ;--------------------------------------------------------
                                    259 	.area	OSEG    (OVR,DATA)
                                    260 	.area	OSEG    (OVR,DATA)
                                    261 	.area	OSEG    (OVR,DATA)
                                    262 	.area	OSEG    (OVR,DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; Stack segment in internal ram 
                                    265 ;--------------------------------------------------------
                                    266 	.area	SSEG
      00003D                        267 __start__stack:
      00003D                        268 	.ds	1
                                    269 
                                    270 ;--------------------------------------------------------
                                    271 ; indirectly addressable internal ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area ISEG    (DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; absolute internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area IABS    (ABS,DATA)
                                    278 	.area IABS    (ABS,DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; bit data
                                    281 ;--------------------------------------------------------
                                    282 	.area BSEG    (BIT)
                                    283 ;--------------------------------------------------------
                                    284 ; paged external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area PSEG    (PAG,XDATA)
                                    287 ;--------------------------------------------------------
                                    288 ; external ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area XSEG    (XDATA)
                                    291 ;--------------------------------------------------------
                                    292 ; absolute external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area XABS    (ABS,XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; external initialized ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XISEG   (XDATA)
                                    299 	.area HOME    (CODE)
                                    300 	.area GSINIT0 (CODE)
                                    301 	.area GSINIT1 (CODE)
                                    302 	.area GSINIT2 (CODE)
                                    303 	.area GSINIT3 (CODE)
                                    304 	.area GSINIT4 (CODE)
                                    305 	.area GSINIT5 (CODE)
                                    306 	.area GSINIT  (CODE)
                                    307 	.area GSFINAL (CODE)
                                    308 	.area CSEG    (CODE)
                                    309 ;--------------------------------------------------------
                                    310 ; interrupt vector 
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
      000000                        313 __interrupt_vect:
      000000 02 00 11         [24]  314 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  315 	reti
      000004                        316 	.ds	7
      00000B 02 04 4E         [24]  317 	ljmp	_TimerOut
                                    318 ;--------------------------------------------------------
                                    319 ; global & static initialisations
                                    320 ;--------------------------------------------------------
                                    321 	.area HOME    (CODE)
                                    322 	.area GSINIT  (CODE)
                                    323 	.area GSFINAL (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.globl __sdcc_gsinit_startup
                                    326 	.globl __sdcc_program_startup
                                    327 	.globl __start__stack
                                    328 	.globl __mcs51_genXINIT
                                    329 	.globl __mcs51_genXRAMCLEAR
                                    330 	.globl __mcs51_genRAMCLEAR
                                    331 ;	main.c:7: uchar flag=0;
      00006A 75 08 00         [24]  332 	mov	_flag,#0x00
                                    333 ;	main.c:28: uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
      00006D 75 09 3F         [24]  334 	mov	_smgduan,#0x3f
      000070 75 0A 06         [24]  335 	mov	(_smgduan + 0x0001),#0x06
      000073 75 0B 5B         [24]  336 	mov	(_smgduan + 0x0002),#0x5b
      000076 75 0C 4F         [24]  337 	mov	(_smgduan + 0x0003),#0x4f
      000079 75 0D 66         [24]  338 	mov	(_smgduan + 0x0004),#0x66
      00007C 75 0E 6D         [24]  339 	mov	(_smgduan + 0x0005),#0x6d
      00007F 75 0F 7D         [24]  340 	mov	(_smgduan + 0x0006),#0x7d
      000082 75 10 07         [24]  341 	mov	(_smgduan + 0x0007),#0x07
      000085 75 11 7F         [24]  342 	mov	(_smgduan + 0x0008),#0x7f
      000088 75 12 6F         [24]  343 	mov	(_smgduan + 0x0009),#0x6f
      00008B 75 13 77         [24]  344 	mov	(_smgduan + 0x000a),#0x77
      00008E 75 14 7C         [24]  345 	mov	(_smgduan + 0x000b),#0x7c
      000091 75 15 39         [24]  346 	mov	(_smgduan + 0x000c),#0x39
      000094 75 16 5E         [24]  347 	mov	(_smgduan + 0x000d),#0x5e
      000097 75 17 79         [24]  348 	mov	(_smgduan + 0x000e),#0x79
      00009A 75 18 71         [24]  349 	mov	(_smgduan + 0x000f),#0x71
                                    350 ;	main.c:30: uchar Display[8] = {0, 0, 0, 0, 0, 0, 0, 0};
      00009D 75 19 00         [24]  351 	mov	_Display,#0x00
      0000A0 75 1A 00         [24]  352 	mov	(_Display + 0x0001),#0x00
      0000A3 75 1B 00         [24]  353 	mov	(_Display + 0x0002),#0x00
      0000A6 75 1C 00         [24]  354 	mov	(_Display + 0x0003),#0x00
      0000A9 75 1D 00         [24]  355 	mov	(_Display + 0x0004),#0x00
      0000AC 75 1E 00         [24]  356 	mov	(_Display + 0x0005),#0x00
      0000AF 75 1F 00         [24]  357 	mov	(_Display + 0x0006),#0x00
      0000B2 75 20 00         [24]  358 	mov	(_Display + 0x0007),#0x00
                                    359 ;	main.c:92: uint ss[4] = {0, 0, 0, 0};
      0000B5 E4               [12]  360 	clr	a
      0000B6 F5 25            [12]  361 	mov	(_ss + 0),a
      0000B8 F5 26            [12]  362 	mov	(_ss + 1),a
      0000BA F5 27            [12]  363 	mov	((_ss + 0x0002) + 0),a
      0000BC F5 28            [12]  364 	mov	((_ss + 0x0002) + 1),a
      0000BE F5 29            [12]  365 	mov	((_ss + 0x0004) + 0),a
      0000C0 F5 2A            [12]  366 	mov	((_ss + 0x0004) + 1),a
      0000C2 F5 2B            [12]  367 	mov	((_ss + 0x0006) + 0),a
      0000C4 F5 2C            [12]  368 	mov	((_ss + 0x0006) + 1),a
                                    369 ;	main.c:93: uchar disp0[] = "distance ";
      0000C6 75 2D 64         [24]  370 	mov	_disp0,#0x64
      0000C9 75 2E 69         [24]  371 	mov	(_disp0 + 0x0001),#0x69
      0000CC 75 2F 73         [24]  372 	mov	(_disp0 + 0x0002),#0x73
      0000CF 75 30 74         [24]  373 	mov	(_disp0 + 0x0003),#0x74
      0000D2 75 31 61         [24]  374 	mov	(_disp0 + 0x0004),#0x61
      0000D5 75 32 6E         [24]  375 	mov	(_disp0 + 0x0005),#0x6e
      0000D8 75 33 63         [24]  376 	mov	(_disp0 + 0x0006),#0x63
      0000DB 75 34 65         [24]  377 	mov	(_disp0 + 0x0007),#0x65
      0000DE 75 35 20         [24]  378 	mov	(_disp0 + 0x0008),#0x20
                                    379 ;	1-genFromRTrack replaced	mov	(_disp0 + 0x0009),#0x00
      0000E1 F5 36            [12]  380 	mov	(_disp0 + 0x0009),a
                                    381 ;	main.c:94: uchar disp1[] = "mm\n";
      0000E3 75 37 6D         [24]  382 	mov	_disp1,#0x6d
      0000E6 75 38 6D         [24]  383 	mov	(_disp1 + 0x0001),#0x6d
      0000E9 75 39 0A         [24]  384 	mov	(_disp1 + 0x0002),#0x0a
                                    385 ;	1-genFromRTrack replaced	mov	(_disp1 + 0x0003),#0x00
      0000EC F5 3A            [12]  386 	mov	(_disp1 + 0x0003),a
                                    387 	.area GSFINAL (CODE)
      0000EE 02 00 0E         [24]  388 	ljmp	__sdcc_program_startup
                                    389 ;--------------------------------------------------------
                                    390 ; Home
                                    391 ;--------------------------------------------------------
                                    392 	.area HOME    (CODE)
                                    393 	.area HOME    (CODE)
      00000E                        394 __sdcc_program_startup:
      00000E 02 03 A9         [24]  395 	ljmp	_main
                                    396 ;	return from main will return to caller
                                    397 ;--------------------------------------------------------
                                    398 ; code
                                    399 ;--------------------------------------------------------
                                    400 	.area CSEG    (CODE)
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'delay'
                                    403 ;------------------------------------------------------------
                                    404 ;i                         Allocated to registers 
                                    405 ;------------------------------------------------------------
                                    406 ;	main.c:10: void delay(uint i)
                                    407 ;	-----------------------------------------
                                    408 ;	 function delay
                                    409 ;	-----------------------------------------
      0000F1                        410 _delay:
                           000007   411 	ar7 = 0x07
                           000006   412 	ar6 = 0x06
                           000005   413 	ar5 = 0x05
                           000004   414 	ar4 = 0x04
                           000003   415 	ar3 = 0x03
                           000002   416 	ar2 = 0x02
                           000001   417 	ar1 = 0x01
                           000000   418 	ar0 = 0x00
      0000F1 AE 82            [24]  419 	mov	r6,dpl
      0000F3 AF 83            [24]  420 	mov	r7,dph
                                    421 ;	main.c:12: while(i--);
      0000F5                        422 00101$:
      0000F5 8E 04            [24]  423 	mov	ar4,r6
      0000F7 8F 05            [24]  424 	mov	ar5,r7
      0000F9 1E               [12]  425 	dec	r6
      0000FA BE FF 01         [24]  426 	cjne	r6,#0xff,00111$
      0000FD 1F               [12]  427 	dec	r7
      0000FE                        428 00111$:
      0000FE EC               [12]  429 	mov	a,r4
      0000FF 4D               [12]  430 	orl	a,r5
      000100 70 F3            [24]  431 	jnz	00101$
                                    432 ;	main.c:13: }
      000102 22               [24]  433 	ret
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function 'DelayXus'
                                    436 ;------------------------------------------------------------
                                    437 ;x                         Allocated to registers 
                                    438 ;i                         Allocated to registers r5 
                                    439 ;------------------------------------------------------------
                                    440 ;	main.c:15: void DelayXus(uint x)
                                    441 ;	-----------------------------------------
                                    442 ;	 function DelayXus
                                    443 ;	-----------------------------------------
      000103                        444 _DelayXus:
      000103 AE 82            [24]  445 	mov	r6,dpl
      000105 AF 83            [24]  446 	mov	r7,dph
                                    447 ;	main.c:18: while(x--)
      000107                        448 00102$:
      000107 8E 04            [24]  449 	mov	ar4,r6
      000109 8F 05            [24]  450 	mov	ar5,r7
      00010B 1E               [12]  451 	dec	r6
      00010C BE FF 01         [24]  452 	cjne	r6,#0xff,00127$
      00010F 1F               [12]  453 	dec	r7
      000110                        454 00127$:
      000110 EC               [12]  455 	mov	a,r4
      000111 4D               [12]  456 	orl	a,r5
      000112 60 0A            [24]  457 	jz	00108$
                                    458 ;	main.c:20: for(i=0;i<100;i++);
      000114 7D 64            [12]  459 	mov	r5,#0x64
      000116                        460 00107$:
      000116 ED               [12]  461 	mov	a,r5
      000117 14               [12]  462 	dec	a
      000118 FC               [12]  463 	mov	r4,a
      000119 FD               [12]  464 	mov	r5,a
      00011A 70 FA            [24]  465 	jnz	00107$
      00011C 80 E9            [24]  466 	sjmp	00102$
      00011E                        467 00108$:
                                    468 ;	main.c:22: }
      00011E 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'DisplayDigits'
                                    472 ;------------------------------------------------------------
                                    473 ;i                         Allocated to registers r7 
                                    474 ;------------------------------------------------------------
                                    475 ;	main.c:31: void DisplayDigits()
                                    476 ;	-----------------------------------------
                                    477 ;	 function DisplayDigits
                                    478 ;	-----------------------------------------
      00011F                        479 _DisplayDigits:
                                    480 ;	main.c:34: for(i=0;i<8;i++)
      00011F 7F 00            [12]  481 	mov	r7,#0x00
      000121                        482 00102$:
                                    483 ;	main.c:36: LSC = i / 4;
      000121 8F 05            [24]  484 	mov	ar5,r7
      000123 7E 00            [12]  485 	mov	r6,#0x00
      000125 75 3B 04         [24]  486 	mov	__divsint_PARM_2,#0x04
                                    487 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000128 8E 3C            [24]  488 	mov	(__divsint_PARM_2 + 1),r6
      00012A 8D 82            [24]  489 	mov	dpl,r5
      00012C 8E 83            [24]  490 	mov	dph,r6
      00012E C0 07            [24]  491 	push	ar7
      000130 C0 06            [24]  492 	push	ar6
      000132 C0 05            [24]  493 	push	ar5
      000134 12 07 24         [24]  494 	lcall	__divsint
      000137 AB 82            [24]  495 	mov	r3,dpl
      000139 AC 83            [24]  496 	mov	r4,dph
      00013B D0 05            [24]  497 	pop	ar5
      00013D D0 06            [24]  498 	pop	ar6
                                    499 ;	assignBit
      00013F EB               [12]  500 	mov	a,r3
      000140 4C               [12]  501 	orl	a,r4
      000141 24 FF            [12]  502 	add	a,#0xff
      000143 92 A4            [24]  503 	mov	_P2_4,c
                                    504 ;	main.c:37: LSB = (i-4*LSC) / 2;
      000145 A2 A4            [12]  505 	mov	c,_P2_4
      000147 E4               [12]  506 	clr	a
      000148 33               [12]  507 	rlc	a
      000149 7C 00            [12]  508 	mov	r4,#0x00
      00014B 25 E0            [12]  509 	add	a,acc
      00014D FB               [12]  510 	mov	r3,a
      00014E EC               [12]  511 	mov	a,r4
      00014F 33               [12]  512 	rlc	a
      000150 FC               [12]  513 	mov	r4,a
      000151 EB               [12]  514 	mov	a,r3
      000152 2B               [12]  515 	add	a,r3
      000153 FB               [12]  516 	mov	r3,a
      000154 EC               [12]  517 	mov	a,r4
      000155 33               [12]  518 	rlc	a
      000156 FC               [12]  519 	mov	r4,a
      000157 ED               [12]  520 	mov	a,r5
      000158 C3               [12]  521 	clr	c
      000159 9B               [12]  522 	subb	a,r3
      00015A F5 82            [12]  523 	mov	dpl,a
      00015C EE               [12]  524 	mov	a,r6
      00015D 9C               [12]  525 	subb	a,r4
      00015E F5 83            [12]  526 	mov	dph,a
      000160 75 3B 02         [24]  527 	mov	__divsint_PARM_2,#0x02
      000163 75 3C 00         [24]  528 	mov	(__divsint_PARM_2 + 1),#0x00
      000166 C0 06            [24]  529 	push	ar6
      000168 C0 05            [24]  530 	push	ar5
      00016A 12 07 24         [24]  531 	lcall	__divsint
      00016D AB 82            [24]  532 	mov	r3,dpl
      00016F AC 83            [24]  533 	mov	r4,dph
      000171 D0 05            [24]  534 	pop	ar5
      000173 D0 06            [24]  535 	pop	ar6
      000175 D0 07            [24]  536 	pop	ar7
                                    537 ;	assignBit
      000177 EB               [12]  538 	mov	a,r3
      000178 4C               [12]  539 	orl	a,r4
      000179 24 FF            [12]  540 	add	a,#0xff
      00017B 92 A3            [24]  541 	mov	_P2_3,c
                                    542 ;	main.c:38: LSA = i - 4*LSC - 2*LSB;
      00017D A2 A4            [12]  543 	mov	c,_P2_4
      00017F E4               [12]  544 	clr	a
      000180 33               [12]  545 	rlc	a
      000181 7C 00            [12]  546 	mov	r4,#0x00
      000183 25 E0            [12]  547 	add	a,acc
      000185 FB               [12]  548 	mov	r3,a
      000186 EC               [12]  549 	mov	a,r4
      000187 33               [12]  550 	rlc	a
      000188 FC               [12]  551 	mov	r4,a
      000189 EB               [12]  552 	mov	a,r3
      00018A 2B               [12]  553 	add	a,r3
      00018B FB               [12]  554 	mov	r3,a
      00018C EC               [12]  555 	mov	a,r4
      00018D 33               [12]  556 	rlc	a
      00018E FC               [12]  557 	mov	r4,a
      00018F ED               [12]  558 	mov	a,r5
      000190 C3               [12]  559 	clr	c
      000191 9B               [12]  560 	subb	a,r3
      000192 FD               [12]  561 	mov	r5,a
      000193 EE               [12]  562 	mov	a,r6
      000194 9C               [12]  563 	subb	a,r4
      000195 FE               [12]  564 	mov	r6,a
      000196 A2 A3            [12]  565 	mov	c,_P2_3
      000198 E4               [12]  566 	clr	a
      000199 33               [12]  567 	rlc	a
      00019A 7C 00            [12]  568 	mov	r4,#0x00
      00019C 25 E0            [12]  569 	add	a,acc
      00019E FB               [12]  570 	mov	r3,a
      00019F EC               [12]  571 	mov	a,r4
      0001A0 33               [12]  572 	rlc	a
      0001A1 FC               [12]  573 	mov	r4,a
      0001A2 ED               [12]  574 	mov	a,r5
      0001A3 C3               [12]  575 	clr	c
      0001A4 9B               [12]  576 	subb	a,r3
      0001A5 FD               [12]  577 	mov	r5,a
      0001A6 EE               [12]  578 	mov	a,r6
      0001A7 9C               [12]  579 	subb	a,r4
                                    580 ;	assignBit
      0001A8 4D               [12]  581 	orl	a,r5
      0001A9 24 FF            [12]  582 	add	a,#0xff
      0001AB 92 A2            [24]  583 	mov	_P2_2,c
                                    584 ;	main.c:39: P0 = Display[i];
      0001AD EF               [12]  585 	mov	a,r7
      0001AE 24 19            [12]  586 	add	a,#_Display
      0001B0 F9               [12]  587 	mov	r1,a
      0001B1 87 80            [24]  588 	mov	_P0,@r1
                                    589 ;	main.c:40: delay(200);
      0001B3 90 00 C8         [24]  590 	mov	dptr,#0x00c8
      0001B6 C0 07            [24]  591 	push	ar7
      0001B8 12 00 F1         [24]  592 	lcall	_delay
      0001BB D0 07            [24]  593 	pop	ar7
                                    594 ;	main.c:34: for(i=0;i<8;i++)
      0001BD 0F               [12]  595 	inc	r7
      0001BE BF 08 00         [24]  596 	cjne	r7,#0x08,00111$
      0001C1                        597 00111$:
      0001C1 50 03            [24]  598 	jnc	00112$
      0001C3 02 01 21         [24]  599 	ljmp	00102$
      0001C6                        600 00112$:
                                    601 ;	main.c:42: }
      0001C6 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'Send_Char'
                                    605 ;------------------------------------------------------------
                                    606 ;chr                       Allocated to registers r7 
                                    607 ;------------------------------------------------------------
                                    608 ;	main.c:44: void Send_Char(uchar chr)
                                    609 ;	-----------------------------------------
                                    610 ;	 function Send_Char
                                    611 ;	-----------------------------------------
      0001C7                        612 _Send_Char:
      0001C7 AF 82            [24]  613 	mov	r7,dpl
                                    614 ;	main.c:46: ES = 0;
                                    615 ;	assignBit
      0001C9 C2 AC            [12]  616 	clr	_ES
                                    617 ;	main.c:47: SBUF = chr;
      0001CB 8F 99            [24]  618 	mov	_SBUF,r7
                                    619 ;	main.c:48: while(!TI);
      0001CD                        620 00101$:
                                    621 ;	main.c:49: TI = 0;
                                    622 ;	assignBit
      0001CD 10 99 02         [24]  623 	jbc	_TI,00114$
      0001D0 80 FB            [24]  624 	sjmp	00101$
      0001D2                        625 00114$:
                                    626 ;	main.c:50: ES = 1;
                                    627 ;	assignBit
      0001D2 D2 AC            [12]  628 	setb	_ES
                                    629 ;	main.c:51: }
      0001D4 22               [24]  630 	ret
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'Send_Str'
                                    633 ;------------------------------------------------------------
                                    634 ;str                       Allocated to registers 
                                    635 ;------------------------------------------------------------
                                    636 ;	main.c:53: void Send_Str(uchar *str)
                                    637 ;	-----------------------------------------
                                    638 ;	 function Send_Str
                                    639 ;	-----------------------------------------
      0001D5                        640 _Send_Str:
      0001D5 AD 82            [24]  641 	mov	r5,dpl
      0001D7 AE 83            [24]  642 	mov	r6,dph
      0001D9 AF F0            [24]  643 	mov	r7,b
                                    644 ;	main.c:55: while(*str != '\0')
      0001DB                        645 00104$:
      0001DB 8D 82            [24]  646 	mov	dpl,r5
      0001DD 8E 83            [24]  647 	mov	dph,r6
      0001DF 8F F0            [24]  648 	mov	b,r7
      0001E1 12 06 F5         [24]  649 	lcall	__gptrget
      0001E4 60 1B            [24]  650 	jz	00107$
                                    651 ;	main.c:57: ES = 0;
                                    652 ;	assignBit
      0001E6 C2 AC            [12]  653 	clr	_ES
                                    654 ;	main.c:58: SBUF = *str;
      0001E8 8D 82            [24]  655 	mov	dpl,r5
      0001EA 8E 83            [24]  656 	mov	dph,r6
      0001EC 8F F0            [24]  657 	mov	b,r7
      0001EE 12 06 F5         [24]  658 	lcall	__gptrget
      0001F1 F5 99            [12]  659 	mov	_SBUF,a
                                    660 ;	main.c:59: while(!TI);
      0001F3                        661 00101$:
                                    662 ;	main.c:60: TI = 0;
                                    663 ;	assignBit
      0001F3 10 99 02         [24]  664 	jbc	_TI,00127$
      0001F6 80 FB            [24]  665 	sjmp	00101$
      0001F8                        666 00127$:
                                    667 ;	main.c:61: ES = 1;
                                    668 ;	assignBit
      0001F8 D2 AC            [12]  669 	setb	_ES
                                    670 ;	main.c:62: str++;
      0001FA 0D               [12]  671 	inc	r5
      0001FB BD 00 DD         [24]  672 	cjne	r5,#0x00,00104$
      0001FE 0E               [12]  673 	inc	r6
      0001FF 80 DA            [24]  674 	sjmp	00104$
      000201                        675 00107$:
                                    676 ;	main.c:64: }
      000201 22               [24]  677 	ret
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'StartModule'
                                    680 ;------------------------------------------------------------
                                    681 ;	main.c:69: void StartModule()
                                    682 ;	-----------------------------------------
                                    683 ;	 function StartModule
                                    684 ;	-----------------------------------------
      000202                        685 _StartModule:
                                    686 ;	main.c:71: Trig = 1;
                                    687 ;	assignBit
      000202 D2 91            [12]  688 	setb	_P1_1
                                    689 ;	main.c:72: delay(2);
      000204 90 00 02         [24]  690 	mov	dptr,#0x0002
      000207 12 00 F1         [24]  691 	lcall	_delay
                                    692 ;	main.c:73: Trig = 0;	
                                    693 ;	assignBit
      00020A C2 91            [12]  694 	clr	_P1_1
                                    695 ;	main.c:74: }
      00020C 22               [24]  696 	ret
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'InitTimer'
                                    699 ;------------------------------------------------------------
                                    700 ;	main.c:76: void InitTimer()
                                    701 ;	-----------------------------------------
                                    702 ;	 function InitTimer
                                    703 ;	-----------------------------------------
      00020D                        704 _InitTimer:
                                    705 ;	main.c:78: TMOD = 0x21;
      00020D 75 89 21         [24]  706 	mov	_TMOD,#0x21
                                    707 ;	main.c:80: SCON = 0x50;
      000210 75 98 50         [24]  708 	mov	_SCON,#0x50
                                    709 ;	main.c:81: TH1 = 0xf3;
      000213 75 8D F3         [24]  710 	mov	_TH1,#0xf3
                                    711 ;	main.c:82: TL1 = 0xf3;
      000216 75 8B F3         [24]  712 	mov	_TL1,#0xf3
                                    713 ;	main.c:83: TH0 = 0;
      000219 75 8C 00         [24]  714 	mov	_TH0,#0x00
                                    715 ;	main.c:84: TL0 = 0;
      00021C 75 8A 00         [24]  716 	mov	_TL0,#0x00
                                    717 ;	main.c:85: TR1 = 1;
                                    718 ;	assignBit
      00021F D2 8E            [12]  719 	setb	_TR1
                                    720 ;	main.c:86: EA = 1;
                                    721 ;	assignBit
      000221 D2 AF            [12]  722 	setb	_EA
                                    723 ;	main.c:87: ES = 1;
                                    724 ;	assignBit
      000223 D2 AC            [12]  725 	setb	_ES
                                    726 ;	main.c:88: }
      000225 22               [24]  727 	ret
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'Count'
                                    730 ;------------------------------------------------------------
                                    731 ;di1                       Allocated to registers r6 
                                    732 ;di2                       Allocated to registers r5 
                                    733 ;di3                       Allocated to registers r4 
                                    734 ;di4                       Allocated to registers r3 
                                    735 ;------------------------------------------------------------
                                    736 ;	main.c:95: void Count()
                                    737 ;	-----------------------------------------
                                    738 ;	 function Count
                                    739 ;	-----------------------------------------
      000226                        740 _Count:
                                    741 ;	main.c:100: if(s>=4000|flag==1)
      000226 C3               [12]  742 	clr	c
      000227 E5 23            [12]  743 	mov	a,_s
      000229 94 A0            [12]  744 	subb	a,#0xa0
      00022B E5 24            [12]  745 	mov	a,(_s + 1)
      00022D 94 0F            [12]  746 	subb	a,#0x0f
      00022F B3               [12]  747 	cpl	c
      000230 E4               [12]  748 	clr	a
      000231 33               [12]  749 	rlc	a
      000232 FF               [12]  750 	mov	r7,a
      000233 74 01            [12]  751 	mov	a,#0x01
      000235 B5 08 04         [24]  752 	cjne	a,_flag,00111$
      000238 74 01            [12]  753 	mov	a,#0x01
      00023A 80 01            [24]  754 	sjmp	00112$
      00023C                        755 00111$:
      00023C E4               [12]  756 	clr	a
      00023D                        757 00112$:
      00023D FE               [12]  758 	mov	r6,a
      00023E 4F               [12]  759 	orl	a,r7
      00023F 60 12            [24]  760 	jz	00102$
                                    761 ;	main.c:102: flag = 0;
      000241 75 08 00         [24]  762 	mov	_flag,#0x00
                                    763 ;	main.c:103: Display[0] = 0x40;
      000244 75 19 40         [24]  764 	mov	_Display,#0x40
                                    765 ;	main.c:104: Display[1] = 0x40;
      000247 75 1A 40         [24]  766 	mov	(_Display + 0x0001),#0x40
                                    767 ;	main.c:105: Display[2] = 0x40;
      00024A 75 1B 40         [24]  768 	mov	(_Display + 0x0002),#0x40
                                    769 ;	main.c:106: Display[3] = 0x40;
      00024D 75 1C 40         [24]  770 	mov	(_Display + 0x0003),#0x40
      000250 02 02 D2         [24]  771 	ljmp	00103$
      000253                        772 00102$:
                                    773 ;	main.c:110: Display[0] = smgduan[s/1000]|0x80;
      000253 75 3B E8         [24]  774 	mov	__divuint_PARM_2,#0xe8
      000256 75 3C 03         [24]  775 	mov	(__divuint_PARM_2 + 1),#0x03
      000259 85 23 82         [24]  776 	mov	dpl,_s
      00025C 85 24 83         [24]  777 	mov	dph,(_s + 1)
      00025F 12 04 52         [24]  778 	lcall	__divuint
      000262 E5 82            [12]  779 	mov	a,dpl
      000264 24 09            [12]  780 	add	a,#_smgduan
      000266 F9               [12]  781 	mov	r1,a
      000267 87 07            [24]  782 	mov	ar7,@r1
      000269 43 07 80         [24]  783 	orl	ar7,#0x80
      00026C 8F 19            [24]  784 	mov	_Display,r7
                                    785 ;	main.c:111: DisplayDigits();
      00026E 12 01 1F         [24]  786 	lcall	_DisplayDigits
                                    787 ;	main.c:112: Display[1] = smgduan[s%1000/100];
      000271 75 3B E8         [24]  788 	mov	__moduint_PARM_2,#0xe8
      000274 75 3C 03         [24]  789 	mov	(__moduint_PARM_2 + 1),#0x03
      000277 85 23 82         [24]  790 	mov	dpl,_s
      00027A 85 24 83         [24]  791 	mov	dph,(_s + 1)
      00027D 12 05 7F         [24]  792 	lcall	__moduint
      000280 75 3B 64         [24]  793 	mov	__divuint_PARM_2,#0x64
      000283 75 3C 00         [24]  794 	mov	(__divuint_PARM_2 + 1),#0x00
      000286 12 04 52         [24]  795 	lcall	__divuint
      000289 E5 82            [12]  796 	mov	a,dpl
      00028B 24 09            [12]  797 	add	a,#_smgduan
      00028D F9               [12]  798 	mov	r1,a
      00028E 87 07            [24]  799 	mov	ar7,@r1
      000290 8F 1A            [24]  800 	mov	(_Display + 0x0001),r7
                                    801 ;	main.c:113: DisplayDigits();
      000292 12 01 1F         [24]  802 	lcall	_DisplayDigits
                                    803 ;	main.c:114: Display[2] = smgduan[s%100/10];
      000295 75 3B 64         [24]  804 	mov	__moduint_PARM_2,#0x64
      000298 75 3C 00         [24]  805 	mov	(__moduint_PARM_2 + 1),#0x00
      00029B 85 23 82         [24]  806 	mov	dpl,_s
      00029E 85 24 83         [24]  807 	mov	dph,(_s + 1)
      0002A1 12 05 7F         [24]  808 	lcall	__moduint
      0002A4 75 3B 0A         [24]  809 	mov	__divuint_PARM_2,#0x0a
      0002A7 75 3C 00         [24]  810 	mov	(__divuint_PARM_2 + 1),#0x00
      0002AA 12 04 52         [24]  811 	lcall	__divuint
      0002AD E5 82            [12]  812 	mov	a,dpl
      0002AF 24 09            [12]  813 	add	a,#_smgduan
      0002B1 F9               [12]  814 	mov	r1,a
      0002B2 87 07            [24]  815 	mov	ar7,@r1
      0002B4 8F 1B            [24]  816 	mov	(_Display + 0x0002),r7
                                    817 ;	main.c:115: DisplayDigits();
      0002B6 12 01 1F         [24]  818 	lcall	_DisplayDigits
                                    819 ;	main.c:116: Display[3] = smgduan[s%10];
      0002B9 75 3B 0A         [24]  820 	mov	__moduint_PARM_2,#0x0a
      0002BC 75 3C 00         [24]  821 	mov	(__moduint_PARM_2 + 1),#0x00
      0002BF 85 23 82         [24]  822 	mov	dpl,_s
      0002C2 85 24 83         [24]  823 	mov	dph,(_s + 1)
      0002C5 12 05 7F         [24]  824 	lcall	__moduint
      0002C8 E5 82            [12]  825 	mov	a,dpl
      0002CA FE               [12]  826 	mov	r6,a
      0002CB 24 09            [12]  827 	add	a,#_smgduan
      0002CD F9               [12]  828 	mov	r1,a
      0002CE 87 07            [24]  829 	mov	ar7,@r1
      0002D0 8F 1C            [24]  830 	mov	(_Display + 0x0003),r7
      0002D2                        831 00103$:
                                    832 ;	main.c:118: uchar di1 = s/1000 + '0';
      0002D2 75 3B E8         [24]  833 	mov	__divuint_PARM_2,#0xe8
      0002D5 75 3C 03         [24]  834 	mov	(__divuint_PARM_2 + 1),#0x03
      0002D8 85 23 82         [24]  835 	mov	dpl,_s
      0002DB 85 24 83         [24]  836 	mov	dph,(_s + 1)
      0002DE 12 04 52         [24]  837 	lcall	__divuint
      0002E1 AE 82            [24]  838 	mov	r6,dpl
      0002E3 74 30            [12]  839 	mov	a,#0x30
      0002E5 2E               [12]  840 	add	a,r6
      0002E6 FE               [12]  841 	mov	r6,a
                                    842 ;	main.c:119: uchar di2 = s%1000/100 + '0';
      0002E7 75 3B E8         [24]  843 	mov	__moduint_PARM_2,#0xe8
      0002EA 75 3C 03         [24]  844 	mov	(__moduint_PARM_2 + 1),#0x03
      0002ED 85 23 82         [24]  845 	mov	dpl,_s
      0002F0 85 24 83         [24]  846 	mov	dph,(_s + 1)
      0002F3 C0 06            [24]  847 	push	ar6
      0002F5 12 05 7F         [24]  848 	lcall	__moduint
      0002F8 75 3B 64         [24]  849 	mov	__divuint_PARM_2,#0x64
      0002FB 75 3C 00         [24]  850 	mov	(__divuint_PARM_2 + 1),#0x00
      0002FE 12 04 52         [24]  851 	lcall	__divuint
      000301 AD 82            [24]  852 	mov	r5,dpl
      000303 74 30            [12]  853 	mov	a,#0x30
      000305 2D               [12]  854 	add	a,r5
      000306 FD               [12]  855 	mov	r5,a
                                    856 ;	main.c:120: uchar di3 = s%100/10 + '0';
      000307 75 3B 64         [24]  857 	mov	__moduint_PARM_2,#0x64
      00030A 75 3C 00         [24]  858 	mov	(__moduint_PARM_2 + 1),#0x00
      00030D 85 23 82         [24]  859 	mov	dpl,_s
      000310 85 24 83         [24]  860 	mov	dph,(_s + 1)
      000313 C0 05            [24]  861 	push	ar5
      000315 12 05 7F         [24]  862 	lcall	__moduint
      000318 75 3B 0A         [24]  863 	mov	__divuint_PARM_2,#0x0a
      00031B 75 3C 00         [24]  864 	mov	(__divuint_PARM_2 + 1),#0x00
      00031E 12 04 52         [24]  865 	lcall	__divuint
      000321 AC 82            [24]  866 	mov	r4,dpl
      000323 74 30            [12]  867 	mov	a,#0x30
      000325 2C               [12]  868 	add	a,r4
      000326 FC               [12]  869 	mov	r4,a
                                    870 ;	main.c:121: uchar di4 = s%10 + '0';
      000327 75 3B 0A         [24]  871 	mov	__moduint_PARM_2,#0x0a
      00032A 75 3C 00         [24]  872 	mov	(__moduint_PARM_2 + 1),#0x00
      00032D 85 23 82         [24]  873 	mov	dpl,_s
      000330 85 24 83         [24]  874 	mov	dph,(_s + 1)
      000333 C0 04            [24]  875 	push	ar4
      000335 12 05 7F         [24]  876 	lcall	__moduint
      000338 AB 82            [24]  877 	mov	r3,dpl
      00033A 74 30            [12]  878 	mov	a,#0x30
      00033C 2B               [12]  879 	add	a,r3
      00033D FB               [12]  880 	mov	r3,a
                                    881 ;	main.c:122: TH1 = 0xf3;
      00033E 75 8D F3         [24]  882 	mov	_TH1,#0xf3
                                    883 ;	main.c:123: TL1 = 0xf3;
      000341 75 8B F3         [24]  884 	mov	_TL1,#0xf3
                                    885 ;	main.c:124: TR1 = 0;
                                    886 ;	assignBit
      000344 C2 8E            [12]  887 	clr	_TR1
                                    888 ;	main.c:125: delay(1);
      000346 90 00 01         [24]  889 	mov	dptr,#0x0001
      000349 C0 03            [24]  890 	push	ar3
      00034B 12 00 F1         [24]  891 	lcall	_delay
      00034E D0 03            [24]  892 	pop	ar3
      000350 D0 04            [24]  893 	pop	ar4
      000352 D0 05            [24]  894 	pop	ar5
      000354 D0 06            [24]  895 	pop	ar6
                                    896 ;	main.c:126: TR1 = 1;
                                    897 ;	assignBit
      000356 D2 8E            [12]  898 	setb	_TR1
                                    899 ;	main.c:127: Send_Str(disp0);
      000358 90 00 2D         [24]  900 	mov	dptr,#_disp0
      00035B 75 F0 40         [24]  901 	mov	b,#0x40
      00035E C0 06            [24]  902 	push	ar6
      000360 C0 05            [24]  903 	push	ar5
      000362 C0 04            [24]  904 	push	ar4
      000364 C0 03            [24]  905 	push	ar3
      000366 12 01 D5         [24]  906 	lcall	_Send_Str
      000369 D0 03            [24]  907 	pop	ar3
      00036B D0 04            [24]  908 	pop	ar4
      00036D D0 05            [24]  909 	pop	ar5
      00036F D0 06            [24]  910 	pop	ar6
                                    911 ;	main.c:128: Send_Char(di1);
      000371 8E 82            [24]  912 	mov	dpl,r6
      000373 C0 05            [24]  913 	push	ar5
      000375 C0 04            [24]  914 	push	ar4
      000377 C0 03            [24]  915 	push	ar3
      000379 12 01 C7         [24]  916 	lcall	_Send_Char
      00037C D0 03            [24]  917 	pop	ar3
      00037E D0 04            [24]  918 	pop	ar4
      000380 D0 05            [24]  919 	pop	ar5
                                    920 ;	main.c:129: Send_Char(di2);
      000382 8D 82            [24]  921 	mov	dpl,r5
      000384 C0 04            [24]  922 	push	ar4
      000386 C0 03            [24]  923 	push	ar3
      000388 12 01 C7         [24]  924 	lcall	_Send_Char
      00038B D0 03            [24]  925 	pop	ar3
      00038D D0 04            [24]  926 	pop	ar4
                                    927 ;	main.c:130: Send_Char(di3);
      00038F 8C 82            [24]  928 	mov	dpl,r4
      000391 C0 03            [24]  929 	push	ar3
      000393 12 01 C7         [24]  930 	lcall	_Send_Char
      000396 D0 03            [24]  931 	pop	ar3
                                    932 ;	main.c:131: Send_Char(di4);
      000398 8B 82            [24]  933 	mov	dpl,r3
      00039A 12 01 C7         [24]  934 	lcall	_Send_Char
                                    935 ;	main.c:132: Send_Str(disp1);
      00039D 90 00 37         [24]  936 	mov	dptr,#_disp1
      0003A0 75 F0 40         [24]  937 	mov	b,#0x40
      0003A3 12 01 D5         [24]  938 	lcall	_Send_Str
                                    939 ;	main.c:133: TR1 =0;
                                    940 ;	assignBit
      0003A6 C2 8E            [12]  941 	clr	_TR1
                                    942 ;	main.c:134: }
      0003A8 22               [24]  943 	ret
                                    944 ;------------------------------------------------------------
                                    945 ;Allocation info for local variables in function 'main'
                                    946 ;------------------------------------------------------------
                                    947 ;k                         Allocated to registers 
                                    948 ;i                         Allocated to registers r7 
                                    949 ;------------------------------------------------------------
                                    950 ;	main.c:135: void main()
                                    951 ;	-----------------------------------------
                                    952 ;	 function main
                                    953 ;	-----------------------------------------
      0003A9                        954 _main:
                                    955 ;	main.c:138: InitTimer();
      0003A9 12 02 0D         [24]  956 	lcall	_InitTimer
                                    957 ;	main.c:139: while(1)
      0003AC                        958 00111$:
                                    959 ;	main.c:145: StartModule();
      0003AC 12 02 02         [24]  960 	lcall	_StartModule
                                    961 ;	main.c:146: while(!ECHO);
      0003AF                        962 00101$:
      0003AF 30 92 FD         [24]  963 	jnb	_P1_2,00101$
                                    964 ;	main.c:147: TR0 = 1;
                                    965 ;	assignBit
      0003B2 D2 8C            [12]  966 	setb	_TR0
                                    967 ;	main.c:148: while(ECHO);
      0003B4                        968 00104$:
      0003B4 20 92 FD         [24]  969 	jb	_P1_2,00104$
                                    970 ;	main.c:149: TR0 = 0;
                                    971 ;	assignBit
      0003B7 C2 8C            [12]  972 	clr	_TR0
                                    973 ;	main.c:150: time = TH0*0x100 + TL0;
      0003B9 AF 8C            [24]  974 	mov	r7,_TH0
      0003BB 7E 00            [12]  975 	mov	r6,#0x00
      0003BD AC 8A            [24]  976 	mov	r4,_TL0
      0003BF 7D 00            [12]  977 	mov	r5,#0x00
      0003C1 EC               [12]  978 	mov	a,r4
      0003C2 2E               [12]  979 	add	a,r6
      0003C3 F5 21            [12]  980 	mov	_time,a
      0003C5 ED               [12]  981 	mov	a,r5
      0003C6 3F               [12]  982 	addc	a,r7
      0003C7 F5 22            [12]  983 	mov	(_time + 1),a
                                    984 ;	main.c:151: TH0 = 0;
                                    985 ;	1-genFromRTrack replaced	mov	_TH0,#0x00
      0003C9 8E 8C            [24]  986 	mov	_TH0,r6
                                    987 ;	main.c:152: TH1 = 0;
                                    988 ;	1-genFromRTrack replaced	mov	_TH1,#0x00
      0003CB 8E 8D            [24]  989 	mov	_TH1,r6
                                    990 ;	main.c:153: s = (time/58.0)*10;
      0003CD 85 21 82         [24]  991 	mov	dpl,_time
      0003D0 85 22 83         [24]  992 	mov	dph,(_time + 1)
      0003D3 12 05 CC         [24]  993 	lcall	___uint2fs
      0003D6 AC 82            [24]  994 	mov	r4,dpl
      0003D8 AD 83            [24]  995 	mov	r5,dph
      0003DA AE F0            [24]  996 	mov	r6,b
      0003DC FF               [12]  997 	mov	r7,a
      0003DD E4               [12]  998 	clr	a
      0003DE C0 E0            [24]  999 	push	acc
      0003E0 C0 E0            [24] 1000 	push	acc
      0003E2 74 68            [12] 1001 	mov	a,#0x68
      0003E4 C0 E0            [24] 1002 	push	acc
      0003E6 74 42            [12] 1003 	mov	a,#0x42
      0003E8 C0 E0            [24] 1004 	push	acc
      0003EA 8C 82            [24] 1005 	mov	dpl,r4
      0003EC 8D 83            [24] 1006 	mov	dph,r5
      0003EE 8E F0            [24] 1007 	mov	b,r6
      0003F0 EF               [12] 1008 	mov	a,r7
      0003F1 12 06 32         [24] 1009 	lcall	___fsdiv
      0003F4 AC 82            [24] 1010 	mov	r4,dpl
      0003F6 AD 83            [24] 1011 	mov	r5,dph
      0003F8 AE F0            [24] 1012 	mov	r6,b
      0003FA FF               [12] 1013 	mov	r7,a
      0003FB E5 81            [12] 1014 	mov	a,sp
      0003FD 24 FC            [12] 1015 	add	a,#0xfc
      0003FF F5 81            [12] 1016 	mov	sp,a
      000401 C0 04            [24] 1017 	push	ar4
      000403 C0 05            [24] 1018 	push	ar5
      000405 C0 06            [24] 1019 	push	ar6
      000407 C0 07            [24] 1020 	push	ar7
      000409 90 00 00         [24] 1021 	mov	dptr,#0x0000
      00040C 75 F0 20         [24] 1022 	mov	b,#0x20
      00040F 74 41            [12] 1023 	mov	a,#0x41
      000411 12 04 7B         [24] 1024 	lcall	___fsmul
      000414 AC 82            [24] 1025 	mov	r4,dpl
      000416 AD 83            [24] 1026 	mov	r5,dph
      000418 AE F0            [24] 1027 	mov	r6,b
      00041A FF               [12] 1028 	mov	r7,a
      00041B E5 81            [12] 1029 	mov	a,sp
      00041D 24 FC            [12] 1030 	add	a,#0xfc
      00041F F5 81            [12] 1031 	mov	sp,a
      000421 8C 82            [24] 1032 	mov	dpl,r4
      000423 8D 83            [24] 1033 	mov	dph,r5
      000425 8E F0            [24] 1034 	mov	b,r6
      000427 EF               [12] 1035 	mov	a,r7
      000428 12 05 D8         [24] 1036 	lcall	___fs2uint
      00042B 85 82 23         [24] 1037 	mov	_s,dpl
      00042E 85 83 24         [24] 1038 	mov	(_s + 1),dph
                                   1039 ;	main.c:172: Count();
      000431 12 02 26         [24] 1040 	lcall	_Count
                                   1041 ;	main.c:174: while(i--)
      000434 7F 0F            [12] 1042 	mov	r7,#0x0f
      000436                       1043 00107$:
      000436 8F 06            [24] 1044 	mov	ar6,r7
      000438 1F               [12] 1045 	dec	r7
      000439 EE               [12] 1046 	mov	a,r6
      00043A 60 09            [24] 1047 	jz	00109$
                                   1048 ;	main.c:176: DisplayDigits();
      00043C C0 07            [24] 1049 	push	ar7
      00043E 12 01 1F         [24] 1050 	lcall	_DisplayDigits
      000441 D0 07            [24] 1051 	pop	ar7
      000443 80 F1            [24] 1052 	sjmp	00107$
      000445                       1053 00109$:
                                   1054 ;	main.c:178: DelayXus(10);
      000445 90 00 0A         [24] 1055 	mov	dptr,#0x000a
      000448 12 01 03         [24] 1056 	lcall	_DelayXus
                                   1057 ;	main.c:180: }
      00044B 02 03 AC         [24] 1058 	ljmp	00111$
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function 'TimerOut'
                                   1061 ;------------------------------------------------------------
                                   1062 ;	main.c:182: void TimerOut() __interrupt 1
                                   1063 ;	-----------------------------------------
                                   1064 ;	 function TimerOut
                                   1065 ;	-----------------------------------------
      00044E                       1066 _TimerOut:
                                   1067 ;	main.c:184: flag = 1;
      00044E 75 08 01         [24] 1068 	mov	_flag,#0x01
                                   1069 ;	main.c:185: }
      000451 32               [24] 1070 	reti
                                   1071 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1072 ;	eliminated unneeded push/pop psw
                                   1073 ;	eliminated unneeded push/pop dpl
                                   1074 ;	eliminated unneeded push/pop dph
                                   1075 ;	eliminated unneeded push/pop b
                                   1076 ;	eliminated unneeded push/pop acc
                                   1077 	.area CSEG    (CODE)
                                   1078 	.area CONST   (CODE)
                                   1079 	.area XINIT   (CODE)
                                   1080 	.area CABS    (ABS,CODE)

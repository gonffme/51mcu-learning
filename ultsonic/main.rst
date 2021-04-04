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
                                     14 	.globl _max
                                     15 	.globl _min
                                     16 	.globl _InitTimer
                                     17 	.globl _StartModule
                                     18 	.globl _Send_Str
                                     19 	.globl _Send_Char
                                     20 	.globl _DisplayDigits
                                     21 	.globl _DelayXus
                                     22 	.globl _delay
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _F1
                                     30 	.globl _P
                                     31 	.globl _PS
                                     32 	.globl _PT1
                                     33 	.globl _PX1
                                     34 	.globl _PT0
                                     35 	.globl _PX0
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD
                                     43 	.globl _RXD
                                     44 	.globl _P3_7
                                     45 	.globl _P3_6
                                     46 	.globl _P3_5
                                     47 	.globl _P3_4
                                     48 	.globl _P3_3
                                     49 	.globl _P3_2
                                     50 	.globl _P3_1
                                     51 	.globl _P3_0
                                     52 	.globl _EA
                                     53 	.globl _ES
                                     54 	.globl _ET1
                                     55 	.globl _EX1
                                     56 	.globl _ET0
                                     57 	.globl _EX0
                                     58 	.globl _P2_7
                                     59 	.globl _P2_6
                                     60 	.globl _P2_5
                                     61 	.globl _P2_4
                                     62 	.globl _P2_3
                                     63 	.globl _P2_2
                                     64 	.globl _P2_1
                                     65 	.globl _P2_0
                                     66 	.globl _SM0
                                     67 	.globl _SM1
                                     68 	.globl _SM2
                                     69 	.globl _REN
                                     70 	.globl _TB8
                                     71 	.globl _RB8
                                     72 	.globl _TI
                                     73 	.globl _RI
                                     74 	.globl _P1_7
                                     75 	.globl _P1_6
                                     76 	.globl _P1_5
                                     77 	.globl _P1_4
                                     78 	.globl _P1_3
                                     79 	.globl _P1_2
                                     80 	.globl _P1_1
                                     81 	.globl _P1_0
                                     82 	.globl _TF1
                                     83 	.globl _TR1
                                     84 	.globl _TF0
                                     85 	.globl _TR0
                                     86 	.globl _IE1
                                     87 	.globl _IT1
                                     88 	.globl _IE0
                                     89 	.globl _IT0
                                     90 	.globl _P0_7
                                     91 	.globl _P0_6
                                     92 	.globl _P0_5
                                     93 	.globl _P0_4
                                     94 	.globl _P0_3
                                     95 	.globl _P0_2
                                     96 	.globl _P0_1
                                     97 	.globl _P0_0
                                     98 	.globl _B
                                     99 	.globl _ACC
                                    100 	.globl _PSW
                                    101 	.globl _IP
                                    102 	.globl _P3
                                    103 	.globl _IE
                                    104 	.globl _P2
                                    105 	.globl _SBUF
                                    106 	.globl _SCON
                                    107 	.globl _P1
                                    108 	.globl _TH1
                                    109 	.globl _TH0
                                    110 	.globl _TL1
                                    111 	.globl _TL0
                                    112 	.globl _TMOD
                                    113 	.globl _TCON
                                    114 	.globl _PCON
                                    115 	.globl _DPH
                                    116 	.globl _DPL
                                    117 	.globl _SP
                                    118 	.globl _P0
                                    119 	.globl _disp1
                                    120 	.globl _disp0
                                    121 	.globl _maxs
                                    122 	.globl _mins
                                    123 	.globl _ss
                                    124 	.globl _s
                                    125 	.globl _time
                                    126 	.globl _Display
                                    127 	.globl _smgduan
                                    128 	.globl _flag
                                    129 ;--------------------------------------------------------
                                    130 ; special function registers
                                    131 ;--------------------------------------------------------
                                    132 	.area RSEG    (ABS,DATA)
      000000                        133 	.org 0x0000
                           000080   134 _P0	=	0x0080
                           000081   135 _SP	=	0x0081
                           000082   136 _DPL	=	0x0082
                           000083   137 _DPH	=	0x0083
                           000087   138 _PCON	=	0x0087
                           000088   139 _TCON	=	0x0088
                           000089   140 _TMOD	=	0x0089
                           00008A   141 _TL0	=	0x008a
                           00008B   142 _TL1	=	0x008b
                           00008C   143 _TH0	=	0x008c
                           00008D   144 _TH1	=	0x008d
                           000090   145 _P1	=	0x0090
                           000098   146 _SCON	=	0x0098
                           000099   147 _SBUF	=	0x0099
                           0000A0   148 _P2	=	0x00a0
                           0000A8   149 _IE	=	0x00a8
                           0000B0   150 _P3	=	0x00b0
                           0000B8   151 _IP	=	0x00b8
                           0000D0   152 _PSW	=	0x00d0
                           0000E0   153 _ACC	=	0x00e0
                           0000F0   154 _B	=	0x00f0
                                    155 ;--------------------------------------------------------
                                    156 ; special function bits
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0_0	=	0x0080
                           000081   161 _P0_1	=	0x0081
                           000082   162 _P0_2	=	0x0082
                           000083   163 _P0_3	=	0x0083
                           000084   164 _P0_4	=	0x0084
                           000085   165 _P0_5	=	0x0085
                           000086   166 _P0_6	=	0x0086
                           000087   167 _P0_7	=	0x0087
                           000088   168 _IT0	=	0x0088
                           000089   169 _IE0	=	0x0089
                           00008A   170 _IT1	=	0x008a
                           00008B   171 _IE1	=	0x008b
                           00008C   172 _TR0	=	0x008c
                           00008D   173 _TF0	=	0x008d
                           00008E   174 _TR1	=	0x008e
                           00008F   175 _TF1	=	0x008f
                           000090   176 _P1_0	=	0x0090
                           000091   177 _P1_1	=	0x0091
                           000092   178 _P1_2	=	0x0092
                           000093   179 _P1_3	=	0x0093
                           000094   180 _P1_4	=	0x0094
                           000095   181 _P1_5	=	0x0095
                           000096   182 _P1_6	=	0x0096
                           000097   183 _P1_7	=	0x0097
                           000098   184 _RI	=	0x0098
                           000099   185 _TI	=	0x0099
                           00009A   186 _RB8	=	0x009a
                           00009B   187 _TB8	=	0x009b
                           00009C   188 _REN	=	0x009c
                           00009D   189 _SM2	=	0x009d
                           00009E   190 _SM1	=	0x009e
                           00009F   191 _SM0	=	0x009f
                           0000A0   192 _P2_0	=	0x00a0
                           0000A1   193 _P2_1	=	0x00a1
                           0000A2   194 _P2_2	=	0x00a2
                           0000A3   195 _P2_3	=	0x00a3
                           0000A4   196 _P2_4	=	0x00a4
                           0000A5   197 _P2_5	=	0x00a5
                           0000A6   198 _P2_6	=	0x00a6
                           0000A7   199 _P2_7	=	0x00a7
                           0000A8   200 _EX0	=	0x00a8
                           0000A9   201 _ET0	=	0x00a9
                           0000AA   202 _EX1	=	0x00aa
                           0000AB   203 _ET1	=	0x00ab
                           0000AC   204 _ES	=	0x00ac
                           0000AF   205 _EA	=	0x00af
                           0000B0   206 _P3_0	=	0x00b0
                           0000B1   207 _P3_1	=	0x00b1
                           0000B2   208 _P3_2	=	0x00b2
                           0000B3   209 _P3_3	=	0x00b3
                           0000B4   210 _P3_4	=	0x00b4
                           0000B5   211 _P3_5	=	0x00b5
                           0000B6   212 _P3_6	=	0x00b6
                           0000B7   213 _P3_7	=	0x00b7
                           0000B0   214 _RXD	=	0x00b0
                           0000B1   215 _TXD	=	0x00b1
                           0000B2   216 _INT0	=	0x00b2
                           0000B3   217 _INT1	=	0x00b3
                           0000B4   218 _T0	=	0x00b4
                           0000B5   219 _T1	=	0x00b5
                           0000B6   220 _WR	=	0x00b6
                           0000B7   221 _RD	=	0x00b7
                           0000B8   222 _PX0	=	0x00b8
                           0000B9   223 _PT0	=	0x00b9
                           0000BA   224 _PX1	=	0x00ba
                           0000BB   225 _PT1	=	0x00bb
                           0000BC   226 _PS	=	0x00bc
                           0000D0   227 _P	=	0x00d0
                           0000D1   228 _F1	=	0x00d1
                           0000D2   229 _OV	=	0x00d2
                           0000D3   230 _RS0	=	0x00d3
                           0000D4   231 _RS1	=	0x00d4
                           0000D5   232 _F0	=	0x00d5
                           0000D6   233 _AC	=	0x00d6
                           0000D7   234 _CY	=	0x00d7
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable register banks
                                    237 ;--------------------------------------------------------
                                    238 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        239 	.ds 8
                                    240 ;--------------------------------------------------------
                                    241 ; internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area DSEG    (DATA)
      000008                        244 _flag::
      000008                        245 	.ds 1
      000009                        246 _smgduan::
      000009                        247 	.ds 16
      000019                        248 _Display::
      000019                        249 	.ds 8
      000021                        250 _time::
      000021                        251 	.ds 2
      000023                        252 _s::
      000023                        253 	.ds 2
      000025                        254 _ss::
      000025                        255 	.ds 8
      00002D                        256 _mins::
      00002D                        257 	.ds 2
      00002F                        258 _maxs::
      00002F                        259 	.ds 2
      000031                        260 _disp0::
      000031                        261 	.ds 10
      00003B                        262 _disp1::
      00003B                        263 	.ds 4
                                    264 ;--------------------------------------------------------
                                    265 ; overlayable items in internal ram 
                                    266 ;--------------------------------------------------------
                                    267 	.area	OSEG    (OVR,DATA)
                                    268 	.area	OSEG    (OVR,DATA)
                                    269 	.area	OSEG    (OVR,DATA)
                                    270 	.area	OSEG    (OVR,DATA)
                                    271 	.area	OSEG    (OVR,DATA)
                                    272 	.area	OSEG    (OVR,DATA)
                                    273 ;--------------------------------------------------------
                                    274 ; Stack segment in internal ram 
                                    275 ;--------------------------------------------------------
                                    276 	.area	SSEG
      000041                        277 __start__stack:
      000041                        278 	.ds	1
                                    279 
                                    280 ;--------------------------------------------------------
                                    281 ; indirectly addressable internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area ISEG    (DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; absolute internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area IABS    (ABS,DATA)
                                    288 	.area IABS    (ABS,DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; bit data
                                    291 ;--------------------------------------------------------
                                    292 	.area BSEG    (BIT)
                                    293 ;--------------------------------------------------------
                                    294 ; paged external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area PSEG    (PAG,XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XSEG    (XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; absolute external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XABS    (ABS,XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; external initialized ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XISEG   (XDATA)
                                    309 	.area HOME    (CODE)
                                    310 	.area GSINIT0 (CODE)
                                    311 	.area GSINIT1 (CODE)
                                    312 	.area GSINIT2 (CODE)
                                    313 	.area GSINIT3 (CODE)
                                    314 	.area GSINIT4 (CODE)
                                    315 	.area GSINIT5 (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 	.area GSFINAL (CODE)
                                    318 	.area CSEG    (CODE)
                                    319 ;--------------------------------------------------------
                                    320 ; interrupt vector 
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
      000000                        323 __interrupt_vect:
      000000 02 00 11         [24]  324 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  325 	reti
      000004                        326 	.ds	7
      00000B 02 05 51         [24]  327 	ljmp	_TimerOut
                                    328 ;--------------------------------------------------------
                                    329 ; global & static initialisations
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.area GSFINAL (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.globl __sdcc_gsinit_startup
                                    336 	.globl __sdcc_program_startup
                                    337 	.globl __start__stack
                                    338 	.globl __mcs51_genXINIT
                                    339 	.globl __mcs51_genXRAMCLEAR
                                    340 	.globl __mcs51_genRAMCLEAR
                                    341 ;	main.c:7: uchar flag=0;
      00006A 75 08 00         [24]  342 	mov	_flag,#0x00
                                    343 ;	main.c:28: uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
      00006D 75 09 3F         [24]  344 	mov	_smgduan,#0x3f
      000070 75 0A 06         [24]  345 	mov	(_smgduan + 0x0001),#0x06
      000073 75 0B 5B         [24]  346 	mov	(_smgduan + 0x0002),#0x5b
      000076 75 0C 4F         [24]  347 	mov	(_smgduan + 0x0003),#0x4f
      000079 75 0D 66         [24]  348 	mov	(_smgduan + 0x0004),#0x66
      00007C 75 0E 6D         [24]  349 	mov	(_smgduan + 0x0005),#0x6d
      00007F 75 0F 7D         [24]  350 	mov	(_smgduan + 0x0006),#0x7d
      000082 75 10 07         [24]  351 	mov	(_smgduan + 0x0007),#0x07
      000085 75 11 7F         [24]  352 	mov	(_smgduan + 0x0008),#0x7f
      000088 75 12 6F         [24]  353 	mov	(_smgduan + 0x0009),#0x6f
      00008B 75 13 77         [24]  354 	mov	(_smgduan + 0x000a),#0x77
      00008E 75 14 7C         [24]  355 	mov	(_smgduan + 0x000b),#0x7c
      000091 75 15 39         [24]  356 	mov	(_smgduan + 0x000c),#0x39
      000094 75 16 5E         [24]  357 	mov	(_smgduan + 0x000d),#0x5e
      000097 75 17 79         [24]  358 	mov	(_smgduan + 0x000e),#0x79
      00009A 75 18 71         [24]  359 	mov	(_smgduan + 0x000f),#0x71
                                    360 ;	main.c:30: uchar Display[8] = {0, 0, 0, 0, 0, 0, 0, 0};
      00009D 75 19 00         [24]  361 	mov	_Display,#0x00
      0000A0 75 1A 00         [24]  362 	mov	(_Display + 0x0001),#0x00
      0000A3 75 1B 00         [24]  363 	mov	(_Display + 0x0002),#0x00
      0000A6 75 1C 00         [24]  364 	mov	(_Display + 0x0003),#0x00
      0000A9 75 1D 00         [24]  365 	mov	(_Display + 0x0004),#0x00
      0000AC 75 1E 00         [24]  366 	mov	(_Display + 0x0005),#0x00
      0000AF 75 1F 00         [24]  367 	mov	(_Display + 0x0006),#0x00
      0000B2 75 20 00         [24]  368 	mov	(_Display + 0x0007),#0x00
                                    369 ;	main.c:121: uint ss[4] = {0, 0, 0, 0};
      0000B5 E4               [12]  370 	clr	a
      0000B6 F5 25            [12]  371 	mov	(_ss + 0),a
      0000B8 F5 26            [12]  372 	mov	(_ss + 1),a
      0000BA F5 27            [12]  373 	mov	((_ss + 0x0002) + 0),a
      0000BC F5 28            [12]  374 	mov	((_ss + 0x0002) + 1),a
      0000BE F5 29            [12]  375 	mov	((_ss + 0x0004) + 0),a
      0000C0 F5 2A            [12]  376 	mov	((_ss + 0x0004) + 1),a
      0000C2 F5 2B            [12]  377 	mov	((_ss + 0x0006) + 0),a
      0000C4 F5 2C            [12]  378 	mov	((_ss + 0x0006) + 1),a
                                    379 ;	main.c:123: uchar disp0[] = "distance ";
      0000C6 75 31 64         [24]  380 	mov	_disp0,#0x64
      0000C9 75 32 69         [24]  381 	mov	(_disp0 + 0x0001),#0x69
      0000CC 75 33 73         [24]  382 	mov	(_disp0 + 0x0002),#0x73
      0000CF 75 34 74         [24]  383 	mov	(_disp0 + 0x0003),#0x74
      0000D2 75 35 61         [24]  384 	mov	(_disp0 + 0x0004),#0x61
      0000D5 75 36 6E         [24]  385 	mov	(_disp0 + 0x0005),#0x6e
      0000D8 75 37 63         [24]  386 	mov	(_disp0 + 0x0006),#0x63
      0000DB 75 38 65         [24]  387 	mov	(_disp0 + 0x0007),#0x65
      0000DE 75 39 20         [24]  388 	mov	(_disp0 + 0x0008),#0x20
                                    389 ;	1-genFromRTrack replaced	mov	(_disp0 + 0x0009),#0x00
      0000E1 F5 3A            [12]  390 	mov	(_disp0 + 0x0009),a
                                    391 ;	main.c:124: uchar disp1[] = "mm\n";
      0000E3 75 3B 6D         [24]  392 	mov	_disp1,#0x6d
      0000E6 75 3C 6D         [24]  393 	mov	(_disp1 + 0x0001),#0x6d
      0000E9 75 3D 0A         [24]  394 	mov	(_disp1 + 0x0002),#0x0a
                                    395 ;	1-genFromRTrack replaced	mov	(_disp1 + 0x0003),#0x00
      0000EC F5 3E            [12]  396 	mov	(_disp1 + 0x0003),a
                                    397 	.area GSFINAL (CODE)
      0000EE 02 00 0E         [24]  398 	ljmp	__sdcc_program_startup
                                    399 ;--------------------------------------------------------
                                    400 ; Home
                                    401 ;--------------------------------------------------------
                                    402 	.area HOME    (CODE)
                                    403 	.area HOME    (CODE)
      00000E                        404 __sdcc_program_startup:
      00000E 02 04 7E         [24]  405 	ljmp	_main
                                    406 ;	return from main will return to caller
                                    407 ;--------------------------------------------------------
                                    408 ; code
                                    409 ;--------------------------------------------------------
                                    410 	.area CSEG    (CODE)
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'delay'
                                    413 ;------------------------------------------------------------
                                    414 ;i                         Allocated to registers 
                                    415 ;------------------------------------------------------------
                                    416 ;	main.c:10: void delay(uint i)
                                    417 ;	-----------------------------------------
                                    418 ;	 function delay
                                    419 ;	-----------------------------------------
      0000F1                        420 _delay:
                           000007   421 	ar7 = 0x07
                           000006   422 	ar6 = 0x06
                           000005   423 	ar5 = 0x05
                           000004   424 	ar4 = 0x04
                           000003   425 	ar3 = 0x03
                           000002   426 	ar2 = 0x02
                           000001   427 	ar1 = 0x01
                           000000   428 	ar0 = 0x00
      0000F1 AE 82            [24]  429 	mov	r6,dpl
      0000F3 AF 83            [24]  430 	mov	r7,dph
                                    431 ;	main.c:12: while(i--);
      0000F5                        432 00101$:
      0000F5 8E 04            [24]  433 	mov	ar4,r6
      0000F7 8F 05            [24]  434 	mov	ar5,r7
      0000F9 1E               [12]  435 	dec	r6
      0000FA BE FF 01         [24]  436 	cjne	r6,#0xff,00111$
      0000FD 1F               [12]  437 	dec	r7
      0000FE                        438 00111$:
      0000FE EC               [12]  439 	mov	a,r4
      0000FF 4D               [12]  440 	orl	a,r5
      000100 70 F3            [24]  441 	jnz	00101$
                                    442 ;	main.c:13: }
      000102 22               [24]  443 	ret
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'DelayXus'
                                    446 ;------------------------------------------------------------
                                    447 ;x                         Allocated to registers 
                                    448 ;i                         Allocated to registers r5 
                                    449 ;------------------------------------------------------------
                                    450 ;	main.c:15: void DelayXus(uint x)
                                    451 ;	-----------------------------------------
                                    452 ;	 function DelayXus
                                    453 ;	-----------------------------------------
      000103                        454 _DelayXus:
      000103 AE 82            [24]  455 	mov	r6,dpl
      000105 AF 83            [24]  456 	mov	r7,dph
                                    457 ;	main.c:18: while(x--)
      000107                        458 00102$:
      000107 8E 04            [24]  459 	mov	ar4,r6
      000109 8F 05            [24]  460 	mov	ar5,r7
      00010B 1E               [12]  461 	dec	r6
      00010C BE FF 01         [24]  462 	cjne	r6,#0xff,00127$
      00010F 1F               [12]  463 	dec	r7
      000110                        464 00127$:
      000110 EC               [12]  465 	mov	a,r4
      000111 4D               [12]  466 	orl	a,r5
      000112 60 0A            [24]  467 	jz	00108$
                                    468 ;	main.c:20: for(i=0;i<100;i++);
      000114 7D 64            [12]  469 	mov	r5,#0x64
      000116                        470 00107$:
      000116 ED               [12]  471 	mov	a,r5
      000117 14               [12]  472 	dec	a
      000118 FC               [12]  473 	mov	r4,a
      000119 FD               [12]  474 	mov	r5,a
      00011A 70 FA            [24]  475 	jnz	00107$
      00011C 80 E9            [24]  476 	sjmp	00102$
      00011E                        477 00108$:
                                    478 ;	main.c:22: }
      00011E 22               [24]  479 	ret
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'DisplayDigits'
                                    482 ;------------------------------------------------------------
                                    483 ;i                         Allocated to registers r7 
                                    484 ;------------------------------------------------------------
                                    485 ;	main.c:31: void DisplayDigits()
                                    486 ;	-----------------------------------------
                                    487 ;	 function DisplayDigits
                                    488 ;	-----------------------------------------
      00011F                        489 _DisplayDigits:
                                    490 ;	main.c:34: for(i=0;i<8;i++)
      00011F 7F 00            [12]  491 	mov	r7,#0x00
      000121                        492 00102$:
                                    493 ;	main.c:36: LSC = i / 4;
      000121 8F 05            [24]  494 	mov	ar5,r7
      000123 7E 00            [12]  495 	mov	r6,#0x00
      000125 75 3F 04         [24]  496 	mov	__divsint_PARM_2,#0x04
                                    497 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000128 8E 40            [24]  498 	mov	(__divsint_PARM_2 + 1),r6
      00012A 8D 82            [24]  499 	mov	dpl,r5
      00012C 8E 83            [24]  500 	mov	dph,r6
      00012E C0 07            [24]  501 	push	ar7
      000130 C0 06            [24]  502 	push	ar6
      000132 C0 05            [24]  503 	push	ar5
      000134 12 08 27         [24]  504 	lcall	__divsint
      000137 AB 82            [24]  505 	mov	r3,dpl
      000139 AC 83            [24]  506 	mov	r4,dph
      00013B D0 05            [24]  507 	pop	ar5
      00013D D0 06            [24]  508 	pop	ar6
                                    509 ;	assignBit
      00013F EB               [12]  510 	mov	a,r3
      000140 4C               [12]  511 	orl	a,r4
      000141 24 FF            [12]  512 	add	a,#0xff
      000143 92 A4            [24]  513 	mov	_P2_4,c
                                    514 ;	main.c:37: LSB = (i-4*LSC) / 2;
      000145 A2 A4            [12]  515 	mov	c,_P2_4
      000147 E4               [12]  516 	clr	a
      000148 33               [12]  517 	rlc	a
      000149 7C 00            [12]  518 	mov	r4,#0x00
      00014B 25 E0            [12]  519 	add	a,acc
      00014D FB               [12]  520 	mov	r3,a
      00014E EC               [12]  521 	mov	a,r4
      00014F 33               [12]  522 	rlc	a
      000150 FC               [12]  523 	mov	r4,a
      000151 EB               [12]  524 	mov	a,r3
      000152 2B               [12]  525 	add	a,r3
      000153 FB               [12]  526 	mov	r3,a
      000154 EC               [12]  527 	mov	a,r4
      000155 33               [12]  528 	rlc	a
      000156 FC               [12]  529 	mov	r4,a
      000157 ED               [12]  530 	mov	a,r5
      000158 C3               [12]  531 	clr	c
      000159 9B               [12]  532 	subb	a,r3
      00015A F5 82            [12]  533 	mov	dpl,a
      00015C EE               [12]  534 	mov	a,r6
      00015D 9C               [12]  535 	subb	a,r4
      00015E F5 83            [12]  536 	mov	dph,a
      000160 75 3F 02         [24]  537 	mov	__divsint_PARM_2,#0x02
      000163 75 40 00         [24]  538 	mov	(__divsint_PARM_2 + 1),#0x00
      000166 C0 06            [24]  539 	push	ar6
      000168 C0 05            [24]  540 	push	ar5
      00016A 12 08 27         [24]  541 	lcall	__divsint
      00016D AB 82            [24]  542 	mov	r3,dpl
      00016F AC 83            [24]  543 	mov	r4,dph
      000171 D0 05            [24]  544 	pop	ar5
      000173 D0 06            [24]  545 	pop	ar6
      000175 D0 07            [24]  546 	pop	ar7
                                    547 ;	assignBit
      000177 EB               [12]  548 	mov	a,r3
      000178 4C               [12]  549 	orl	a,r4
      000179 24 FF            [12]  550 	add	a,#0xff
      00017B 92 A3            [24]  551 	mov	_P2_3,c
                                    552 ;	main.c:38: LSA = i - 4*LSC - 2*LSB;
      00017D A2 A4            [12]  553 	mov	c,_P2_4
      00017F E4               [12]  554 	clr	a
      000180 33               [12]  555 	rlc	a
      000181 7C 00            [12]  556 	mov	r4,#0x00
      000183 25 E0            [12]  557 	add	a,acc
      000185 FB               [12]  558 	mov	r3,a
      000186 EC               [12]  559 	mov	a,r4
      000187 33               [12]  560 	rlc	a
      000188 FC               [12]  561 	mov	r4,a
      000189 EB               [12]  562 	mov	a,r3
      00018A 2B               [12]  563 	add	a,r3
      00018B FB               [12]  564 	mov	r3,a
      00018C EC               [12]  565 	mov	a,r4
      00018D 33               [12]  566 	rlc	a
      00018E FC               [12]  567 	mov	r4,a
      00018F ED               [12]  568 	mov	a,r5
      000190 C3               [12]  569 	clr	c
      000191 9B               [12]  570 	subb	a,r3
      000192 FD               [12]  571 	mov	r5,a
      000193 EE               [12]  572 	mov	a,r6
      000194 9C               [12]  573 	subb	a,r4
      000195 FE               [12]  574 	mov	r6,a
      000196 A2 A3            [12]  575 	mov	c,_P2_3
      000198 E4               [12]  576 	clr	a
      000199 33               [12]  577 	rlc	a
      00019A 7C 00            [12]  578 	mov	r4,#0x00
      00019C 25 E0            [12]  579 	add	a,acc
      00019E FB               [12]  580 	mov	r3,a
      00019F EC               [12]  581 	mov	a,r4
      0001A0 33               [12]  582 	rlc	a
      0001A1 FC               [12]  583 	mov	r4,a
      0001A2 ED               [12]  584 	mov	a,r5
      0001A3 C3               [12]  585 	clr	c
      0001A4 9B               [12]  586 	subb	a,r3
      0001A5 FD               [12]  587 	mov	r5,a
      0001A6 EE               [12]  588 	mov	a,r6
      0001A7 9C               [12]  589 	subb	a,r4
                                    590 ;	assignBit
      0001A8 4D               [12]  591 	orl	a,r5
      0001A9 24 FF            [12]  592 	add	a,#0xff
      0001AB 92 A2            [24]  593 	mov	_P2_2,c
                                    594 ;	main.c:39: P0 = Display[i];
      0001AD EF               [12]  595 	mov	a,r7
      0001AE 24 19            [12]  596 	add	a,#_Display
      0001B0 F9               [12]  597 	mov	r1,a
      0001B1 87 80            [24]  598 	mov	_P0,@r1
                                    599 ;	main.c:40: delay(200);
      0001B3 90 00 C8         [24]  600 	mov	dptr,#0x00c8
      0001B6 C0 07            [24]  601 	push	ar7
      0001B8 12 00 F1         [24]  602 	lcall	_delay
      0001BB D0 07            [24]  603 	pop	ar7
                                    604 ;	main.c:34: for(i=0;i<8;i++)
      0001BD 0F               [12]  605 	inc	r7
      0001BE BF 08 00         [24]  606 	cjne	r7,#0x08,00111$
      0001C1                        607 00111$:
      0001C1 50 03            [24]  608 	jnc	00112$
      0001C3 02 01 21         [24]  609 	ljmp	00102$
      0001C6                        610 00112$:
                                    611 ;	main.c:42: }
      0001C6 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'Send_Char'
                                    615 ;------------------------------------------------------------
                                    616 ;chr                       Allocated to registers r7 
                                    617 ;------------------------------------------------------------
                                    618 ;	main.c:44: void Send_Char(uchar chr)
                                    619 ;	-----------------------------------------
                                    620 ;	 function Send_Char
                                    621 ;	-----------------------------------------
      0001C7                        622 _Send_Char:
      0001C7 AF 82            [24]  623 	mov	r7,dpl
                                    624 ;	main.c:46: ES = 0;
                                    625 ;	assignBit
      0001C9 C2 AC            [12]  626 	clr	_ES
                                    627 ;	main.c:47: SBUF = chr;
      0001CB 8F 99            [24]  628 	mov	_SBUF,r7
                                    629 ;	main.c:48: while(!TI);
      0001CD                        630 00101$:
                                    631 ;	main.c:49: TI = 0;
                                    632 ;	assignBit
      0001CD 10 99 02         [24]  633 	jbc	_TI,00114$
      0001D0 80 FB            [24]  634 	sjmp	00101$
      0001D2                        635 00114$:
                                    636 ;	main.c:50: ES = 1;
                                    637 ;	assignBit
      0001D2 D2 AC            [12]  638 	setb	_ES
                                    639 ;	main.c:51: }
      0001D4 22               [24]  640 	ret
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'Send_Str'
                                    643 ;------------------------------------------------------------
                                    644 ;str                       Allocated to registers 
                                    645 ;------------------------------------------------------------
                                    646 ;	main.c:53: void Send_Str(uchar *str)
                                    647 ;	-----------------------------------------
                                    648 ;	 function Send_Str
                                    649 ;	-----------------------------------------
      0001D5                        650 _Send_Str:
      0001D5 AD 82            [24]  651 	mov	r5,dpl
      0001D7 AE 83            [24]  652 	mov	r6,dph
      0001D9 AF F0            [24]  653 	mov	r7,b
                                    654 ;	main.c:55: while(*str != '\0')
      0001DB                        655 00104$:
      0001DB 8D 82            [24]  656 	mov	dpl,r5
      0001DD 8E 83            [24]  657 	mov	dph,r6
      0001DF 8F F0            [24]  658 	mov	b,r7
      0001E1 12 07 F8         [24]  659 	lcall	__gptrget
      0001E4 60 1B            [24]  660 	jz	00107$
                                    661 ;	main.c:57: ES = 0;
                                    662 ;	assignBit
      0001E6 C2 AC            [12]  663 	clr	_ES
                                    664 ;	main.c:58: SBUF = *str;
      0001E8 8D 82            [24]  665 	mov	dpl,r5
      0001EA 8E 83            [24]  666 	mov	dph,r6
      0001EC 8F F0            [24]  667 	mov	b,r7
      0001EE 12 07 F8         [24]  668 	lcall	__gptrget
      0001F1 F5 99            [12]  669 	mov	_SBUF,a
                                    670 ;	main.c:59: while(!TI);
      0001F3                        671 00101$:
                                    672 ;	main.c:60: TI = 0;
                                    673 ;	assignBit
      0001F3 10 99 02         [24]  674 	jbc	_TI,00127$
      0001F6 80 FB            [24]  675 	sjmp	00101$
      0001F8                        676 00127$:
                                    677 ;	main.c:61: ES = 1;
                                    678 ;	assignBit
      0001F8 D2 AC            [12]  679 	setb	_ES
                                    680 ;	main.c:62: str++;
      0001FA 0D               [12]  681 	inc	r5
      0001FB BD 00 DD         [24]  682 	cjne	r5,#0x00,00104$
      0001FE 0E               [12]  683 	inc	r6
      0001FF 80 DA            [24]  684 	sjmp	00104$
      000201                        685 00107$:
                                    686 ;	main.c:64: }
      000201 22               [24]  687 	ret
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'StartModule'
                                    690 ;------------------------------------------------------------
                                    691 ;	main.c:69: void StartModule()
                                    692 ;	-----------------------------------------
                                    693 ;	 function StartModule
                                    694 ;	-----------------------------------------
      000202                        695 _StartModule:
                                    696 ;	main.c:71: Trig = 1;
                                    697 ;	assignBit
      000202 D2 91            [12]  698 	setb	_P1_1
                                    699 ;	main.c:72: delay(2);
      000204 90 00 02         [24]  700 	mov	dptr,#0x0002
      000207 12 00 F1         [24]  701 	lcall	_delay
                                    702 ;	main.c:73: Trig = 0;	
                                    703 ;	assignBit
      00020A C2 91            [12]  704 	clr	_P1_1
                                    705 ;	main.c:74: }
      00020C 22               [24]  706 	ret
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'InitTimer'
                                    709 ;------------------------------------------------------------
                                    710 ;	main.c:80: void InitTimer()
                                    711 ;	-----------------------------------------
                                    712 ;	 function InitTimer
                                    713 ;	-----------------------------------------
      00020D                        714 _InitTimer:
                                    715 ;	main.c:82: TMOD = 0x21;
      00020D 75 89 21         [24]  716 	mov	_TMOD,#0x21
                                    717 ;	main.c:83: PCON |= 0x80;
      000210 AE 87            [24]  718 	mov	r6,_PCON
      000212 43 06 80         [24]  719 	orl	ar6,#0x80
      000215 8E 87            [24]  720 	mov	_PCON,r6
                                    721 ;	main.c:85: SCON = 0x50;
      000217 75 98 50         [24]  722 	mov	_SCON,#0x50
                                    723 ;	main.c:86: TH1 = SPEED;
      00021A 75 8D FF         [24]  724 	mov	_TH1,#0xff
                                    725 ;	main.c:87: TL1 = SPEED;
      00021D 75 8B FF         [24]  726 	mov	_TL1,#0xff
                                    727 ;	main.c:88: TH0 = 0;
      000220 75 8C 00         [24]  728 	mov	_TH0,#0x00
                                    729 ;	main.c:89: TL0 = 0;
      000223 75 8A 00         [24]  730 	mov	_TL0,#0x00
                                    731 ;	main.c:90: TR1 = 1;
                                    732 ;	assignBit
      000226 D2 8E            [12]  733 	setb	_TR1
                                    734 ;	main.c:91: EA = 1;
                                    735 ;	assignBit
      000228 D2 AF            [12]  736 	setb	_EA
                                    737 ;	main.c:92: ES = 1;
                                    738 ;	assignBit
      00022A D2 AC            [12]  739 	setb	_ES
                                    740 ;	main.c:93: }
      00022C 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'min'
                                    744 ;------------------------------------------------------------
                                    745 ;s                         Allocated to registers r5 r6 r7 
                                    746 ;temp                      Allocated to registers r3 r4 
                                    747 ;i                         Allocated to registers r2 
                                    748 ;------------------------------------------------------------
                                    749 ;	main.c:95: uint min(uint * s)
                                    750 ;	-----------------------------------------
                                    751 ;	 function min
                                    752 ;	-----------------------------------------
      00022D                        753 _min:
                                    754 ;	main.c:97: uint temp=*s;
      00022D AD 82            [24]  755 	mov	r5,dpl
      00022F AE 83            [24]  756 	mov	r6,dph
      000231 AF F0            [24]  757 	mov	r7,b
      000233 12 07 F8         [24]  758 	lcall	__gptrget
      000236 FB               [12]  759 	mov	r3,a
      000237 A3               [24]  760 	inc	dptr
      000238 12 07 F8         [24]  761 	lcall	__gptrget
      00023B FC               [12]  762 	mov	r4,a
                                    763 ;	main.c:99: for(i=0;i<3;i++)
      00023C 7A 00            [12]  764 	mov	r2,#0x00
      00023E                        765 00104$:
                                    766 ;	main.c:101: s+=1;
      00023E 74 02            [12]  767 	mov	a,#0x02
      000240 2D               [12]  768 	add	a,r5
      000241 FD               [12]  769 	mov	r5,a
      000242 E4               [12]  770 	clr	a
      000243 3E               [12]  771 	addc	a,r6
      000244 FE               [12]  772 	mov	r6,a
                                    773 ;	main.c:102: if(temp>*s)temp=*s;
      000245 8D 82            [24]  774 	mov	dpl,r5
      000247 8E 83            [24]  775 	mov	dph,r6
      000249 8F F0            [24]  776 	mov	b,r7
      00024B 12 07 F8         [24]  777 	lcall	__gptrget
      00024E F8               [12]  778 	mov	r0,a
      00024F A3               [24]  779 	inc	dptr
      000250 12 07 F8         [24]  780 	lcall	__gptrget
      000253 F9               [12]  781 	mov	r1,a
      000254 C3               [12]  782 	clr	c
      000255 E8               [12]  783 	mov	a,r0
      000256 9B               [12]  784 	subb	a,r3
      000257 E9               [12]  785 	mov	a,r1
      000258 9C               [12]  786 	subb	a,r4
      000259 50 04            [24]  787 	jnc	00105$
      00025B 88 03            [24]  788 	mov	ar3,r0
      00025D 89 04            [24]  789 	mov	ar4,r1
      00025F                        790 00105$:
                                    791 ;	main.c:99: for(i=0;i<3;i++)
      00025F 0A               [12]  792 	inc	r2
      000260 BA 03 00         [24]  793 	cjne	r2,#0x03,00122$
      000263                        794 00122$:
      000263 40 D9            [24]  795 	jc	00104$
                                    796 ;	main.c:104: return temp;
      000265 8B 82            [24]  797 	mov	dpl,r3
      000267 8C 83            [24]  798 	mov	dph,r4
                                    799 ;	main.c:105: }
      000269 22               [24]  800 	ret
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'max'
                                    803 ;------------------------------------------------------------
                                    804 ;s                         Allocated to registers r5 r6 r7 
                                    805 ;temp                      Allocated to registers r3 r4 
                                    806 ;i                         Allocated to registers r2 
                                    807 ;------------------------------------------------------------
                                    808 ;	main.c:107: uint max(uint * s)
                                    809 ;	-----------------------------------------
                                    810 ;	 function max
                                    811 ;	-----------------------------------------
      00026A                        812 _max:
                                    813 ;	main.c:109: uint temp=*s;
      00026A AD 82            [24]  814 	mov	r5,dpl
      00026C AE 83            [24]  815 	mov	r6,dph
      00026E AF F0            [24]  816 	mov	r7,b
      000270 12 07 F8         [24]  817 	lcall	__gptrget
      000273 FB               [12]  818 	mov	r3,a
      000274 A3               [24]  819 	inc	dptr
      000275 12 07 F8         [24]  820 	lcall	__gptrget
      000278 FC               [12]  821 	mov	r4,a
                                    822 ;	main.c:111: for(i=0;i<3;i++)
      000279 7A 00            [12]  823 	mov	r2,#0x00
      00027B                        824 00104$:
                                    825 ;	main.c:113: s+=1;
      00027B 74 02            [12]  826 	mov	a,#0x02
      00027D 2D               [12]  827 	add	a,r5
      00027E FD               [12]  828 	mov	r5,a
      00027F E4               [12]  829 	clr	a
      000280 3E               [12]  830 	addc	a,r6
      000281 FE               [12]  831 	mov	r6,a
                                    832 ;	main.c:114: if(temp<*s)temp=*s;
      000282 8D 82            [24]  833 	mov	dpl,r5
      000284 8E 83            [24]  834 	mov	dph,r6
      000286 8F F0            [24]  835 	mov	b,r7
      000288 12 07 F8         [24]  836 	lcall	__gptrget
      00028B F8               [12]  837 	mov	r0,a
      00028C A3               [24]  838 	inc	dptr
      00028D 12 07 F8         [24]  839 	lcall	__gptrget
      000290 F9               [12]  840 	mov	r1,a
      000291 C3               [12]  841 	clr	c
      000292 EB               [12]  842 	mov	a,r3
      000293 98               [12]  843 	subb	a,r0
      000294 EC               [12]  844 	mov	a,r4
      000295 99               [12]  845 	subb	a,r1
      000296 50 04            [24]  846 	jnc	00105$
      000298 88 03            [24]  847 	mov	ar3,r0
      00029A 89 04            [24]  848 	mov	ar4,r1
      00029C                        849 00105$:
                                    850 ;	main.c:111: for(i=0;i<3;i++)
      00029C 0A               [12]  851 	inc	r2
      00029D BA 03 00         [24]  852 	cjne	r2,#0x03,00122$
      0002A0                        853 00122$:
      0002A0 40 D9            [24]  854 	jc	00104$
                                    855 ;	main.c:116: return temp;
      0002A2 8B 82            [24]  856 	mov	dpl,r3
      0002A4 8C 83            [24]  857 	mov	dph,r4
                                    858 ;	main.c:117: }
      0002A6 22               [24]  859 	ret
                                    860 ;------------------------------------------------------------
                                    861 ;Allocation info for local variables in function 'Count'
                                    862 ;------------------------------------------------------------
                                    863 ;di1                       Allocated to registers r6 
                                    864 ;di2                       Allocated to registers r5 
                                    865 ;di3                       Allocated to registers r4 
                                    866 ;di4                       Allocated to registers r3 
                                    867 ;------------------------------------------------------------
                                    868 ;	main.c:125: void Count()
                                    869 ;	-----------------------------------------
                                    870 ;	 function Count
                                    871 ;	-----------------------------------------
      0002A7                        872 _Count:
                                    873 ;	main.c:130: mins = min(ss);
      0002A7 90 00 25         [24]  874 	mov	dptr,#_ss
      0002AA 75 F0 40         [24]  875 	mov	b,#0x40
      0002AD 12 02 2D         [24]  876 	lcall	_min
      0002B0 85 82 2D         [24]  877 	mov	_mins,dpl
      0002B3 85 83 2E         [24]  878 	mov	(_mins + 1),dph
                                    879 ;	main.c:131: maxs = max(ss);
      0002B6 90 00 25         [24]  880 	mov	dptr,#_ss
      0002B9 75 F0 40         [24]  881 	mov	b,#0x40
      0002BC 12 02 6A         [24]  882 	lcall	_max
      0002BF 85 82 2F         [24]  883 	mov	_maxs,dpl
      0002C2 85 83 30         [24]  884 	mov	(_maxs + 1),dph
                                    885 ;	main.c:132: s = (ss[0]+ss[1]+ss[2]+ss[3]-mins-maxs)/2;
      0002C5 E5 27            [12]  886 	mov	a,(_ss + 0x0002)
      0002C7 25 25            [12]  887 	add	a,_ss
      0002C9 FE               [12]  888 	mov	r6,a
      0002CA E5 28            [12]  889 	mov	a,((_ss + 0x0002) + 1)
      0002CC 35 26            [12]  890 	addc	a,(_ss + 1)
      0002CE FF               [12]  891 	mov	r7,a
      0002CF E5 29            [12]  892 	mov	a,(_ss + 0x0004)
      0002D1 2E               [12]  893 	add	a,r6
      0002D2 FE               [12]  894 	mov	r6,a
      0002D3 E5 2A            [12]  895 	mov	a,((_ss + 0x0004) + 1)
      0002D5 3F               [12]  896 	addc	a,r7
      0002D6 FF               [12]  897 	mov	r7,a
      0002D7 E5 2B            [12]  898 	mov	a,(_ss + 0x0006)
      0002D9 2E               [12]  899 	add	a,r6
      0002DA FE               [12]  900 	mov	r6,a
      0002DB E5 2C            [12]  901 	mov	a,((_ss + 0x0006) + 1)
      0002DD 3F               [12]  902 	addc	a,r7
      0002DE FF               [12]  903 	mov	r7,a
      0002DF EE               [12]  904 	mov	a,r6
      0002E0 C3               [12]  905 	clr	c
      0002E1 95 2D            [12]  906 	subb	a,_mins
      0002E3 FE               [12]  907 	mov	r6,a
      0002E4 EF               [12]  908 	mov	a,r7
      0002E5 95 2E            [12]  909 	subb	a,(_mins + 1)
      0002E7 FF               [12]  910 	mov	r7,a
      0002E8 EE               [12]  911 	mov	a,r6
      0002E9 C3               [12]  912 	clr	c
      0002EA 95 2F            [12]  913 	subb	a,_maxs
      0002EC FE               [12]  914 	mov	r6,a
      0002ED EF               [12]  915 	mov	a,r7
      0002EE 95 30            [12]  916 	subb	a,(_maxs + 1)
      0002F0 8E 23            [24]  917 	mov	_s,r6
      0002F2 C3               [12]  918 	clr	c
      0002F3 13               [12]  919 	rrc	a
      0002F4 C5 23            [12]  920 	xch	a,_s
      0002F6 13               [12]  921 	rrc	a
      0002F7 C5 23            [12]  922 	xch	a,_s
      0002F9 F5 24            [12]  923 	mov	(_s + 1),a
                                    924 ;	main.c:133: if(s>=4000|flag==1)
      0002FB C3               [12]  925 	clr	c
      0002FC E5 23            [12]  926 	mov	a,_s
      0002FE 94 A0            [12]  927 	subb	a,#0xa0
      000300 E5 24            [12]  928 	mov	a,(_s + 1)
      000302 94 0F            [12]  929 	subb	a,#0x0f
      000304 B3               [12]  930 	cpl	c
      000305 E4               [12]  931 	clr	a
      000306 33               [12]  932 	rlc	a
      000307 FF               [12]  933 	mov	r7,a
      000308 74 01            [12]  934 	mov	a,#0x01
      00030A B5 08 04         [24]  935 	cjne	a,_flag,00111$
      00030D 74 01            [12]  936 	mov	a,#0x01
      00030F 80 01            [24]  937 	sjmp	00112$
      000311                        938 00111$:
      000311 E4               [12]  939 	clr	a
      000312                        940 00112$:
      000312 FE               [12]  941 	mov	r6,a
      000313 4F               [12]  942 	orl	a,r7
      000314 60 12            [24]  943 	jz	00102$
                                    944 ;	main.c:135: flag = 0;
      000316 75 08 00         [24]  945 	mov	_flag,#0x00
                                    946 ;	main.c:136: Display[0] = 0x40;
      000319 75 19 40         [24]  947 	mov	_Display,#0x40
                                    948 ;	main.c:137: Display[1] = 0x40;
      00031C 75 1A 40         [24]  949 	mov	(_Display + 0x0001),#0x40
                                    950 ;	main.c:138: Display[2] = 0x40;
      00031F 75 1B 40         [24]  951 	mov	(_Display + 0x0002),#0x40
                                    952 ;	main.c:139: Display[3] = 0x40;
      000322 75 1C 40         [24]  953 	mov	(_Display + 0x0003),#0x40
      000325 02 03 A7         [24]  954 	ljmp	00103$
      000328                        955 00102$:
                                    956 ;	main.c:143: Display[0] = smgduan[s/1000]|0x80;
      000328 75 3F E8         [24]  957 	mov	__divuint_PARM_2,#0xe8
      00032B 75 40 03         [24]  958 	mov	(__divuint_PARM_2 + 1),#0x03
      00032E 85 23 82         [24]  959 	mov	dpl,_s
      000331 85 24 83         [24]  960 	mov	dph,(_s + 1)
      000334 12 05 55         [24]  961 	lcall	__divuint
      000337 E5 82            [12]  962 	mov	a,dpl
      000339 24 09            [12]  963 	add	a,#_smgduan
      00033B F9               [12]  964 	mov	r1,a
      00033C 87 07            [24]  965 	mov	ar7,@r1
      00033E 43 07 80         [24]  966 	orl	ar7,#0x80
      000341 8F 19            [24]  967 	mov	_Display,r7
                                    968 ;	main.c:144: DisplayDigits();
      000343 12 01 1F         [24]  969 	lcall	_DisplayDigits
                                    970 ;	main.c:145: Display[1] = smgduan[s%1000/100];
      000346 75 3F E8         [24]  971 	mov	__moduint_PARM_2,#0xe8
      000349 75 40 03         [24]  972 	mov	(__moduint_PARM_2 + 1),#0x03
      00034C 85 23 82         [24]  973 	mov	dpl,_s
      00034F 85 24 83         [24]  974 	mov	dph,(_s + 1)
      000352 12 06 82         [24]  975 	lcall	__moduint
      000355 75 3F 64         [24]  976 	mov	__divuint_PARM_2,#0x64
      000358 75 40 00         [24]  977 	mov	(__divuint_PARM_2 + 1),#0x00
      00035B 12 05 55         [24]  978 	lcall	__divuint
      00035E E5 82            [12]  979 	mov	a,dpl
      000360 24 09            [12]  980 	add	a,#_smgduan
      000362 F9               [12]  981 	mov	r1,a
      000363 87 07            [24]  982 	mov	ar7,@r1
      000365 8F 1A            [24]  983 	mov	(_Display + 0x0001),r7
                                    984 ;	main.c:146: DisplayDigits();
      000367 12 01 1F         [24]  985 	lcall	_DisplayDigits
                                    986 ;	main.c:147: Display[2] = smgduan[s%100/10];
      00036A 75 3F 64         [24]  987 	mov	__moduint_PARM_2,#0x64
      00036D 75 40 00         [24]  988 	mov	(__moduint_PARM_2 + 1),#0x00
      000370 85 23 82         [24]  989 	mov	dpl,_s
      000373 85 24 83         [24]  990 	mov	dph,(_s + 1)
      000376 12 06 82         [24]  991 	lcall	__moduint
      000379 75 3F 0A         [24]  992 	mov	__divuint_PARM_2,#0x0a
      00037C 75 40 00         [24]  993 	mov	(__divuint_PARM_2 + 1),#0x00
      00037F 12 05 55         [24]  994 	lcall	__divuint
      000382 E5 82            [12]  995 	mov	a,dpl
      000384 24 09            [12]  996 	add	a,#_smgduan
      000386 F9               [12]  997 	mov	r1,a
      000387 87 07            [24]  998 	mov	ar7,@r1
      000389 8F 1B            [24]  999 	mov	(_Display + 0x0002),r7
                                   1000 ;	main.c:148: DisplayDigits();
      00038B 12 01 1F         [24] 1001 	lcall	_DisplayDigits
                                   1002 ;	main.c:149: Display[3] = smgduan[s%10];
      00038E 75 3F 0A         [24] 1003 	mov	__moduint_PARM_2,#0x0a
      000391 75 40 00         [24] 1004 	mov	(__moduint_PARM_2 + 1),#0x00
      000394 85 23 82         [24] 1005 	mov	dpl,_s
      000397 85 24 83         [24] 1006 	mov	dph,(_s + 1)
      00039A 12 06 82         [24] 1007 	lcall	__moduint
      00039D E5 82            [12] 1008 	mov	a,dpl
      00039F FE               [12] 1009 	mov	r6,a
      0003A0 24 09            [12] 1010 	add	a,#_smgduan
      0003A2 F9               [12] 1011 	mov	r1,a
      0003A3 87 07            [24] 1012 	mov	ar7,@r1
      0003A5 8F 1C            [24] 1013 	mov	(_Display + 0x0003),r7
      0003A7                       1014 00103$:
                                   1015 ;	main.c:151: uchar di1 = s/1000 + '0';
      0003A7 75 3F E8         [24] 1016 	mov	__divuint_PARM_2,#0xe8
      0003AA 75 40 03         [24] 1017 	mov	(__divuint_PARM_2 + 1),#0x03
      0003AD 85 23 82         [24] 1018 	mov	dpl,_s
      0003B0 85 24 83         [24] 1019 	mov	dph,(_s + 1)
      0003B3 12 05 55         [24] 1020 	lcall	__divuint
      0003B6 AE 82            [24] 1021 	mov	r6,dpl
      0003B8 74 30            [12] 1022 	mov	a,#0x30
      0003BA 2E               [12] 1023 	add	a,r6
      0003BB FE               [12] 1024 	mov	r6,a
                                   1025 ;	main.c:152: uchar di2 = s%1000/100 + '0';
      0003BC 75 3F E8         [24] 1026 	mov	__moduint_PARM_2,#0xe8
      0003BF 75 40 03         [24] 1027 	mov	(__moduint_PARM_2 + 1),#0x03
      0003C2 85 23 82         [24] 1028 	mov	dpl,_s
      0003C5 85 24 83         [24] 1029 	mov	dph,(_s + 1)
      0003C8 C0 06            [24] 1030 	push	ar6
      0003CA 12 06 82         [24] 1031 	lcall	__moduint
      0003CD 75 3F 64         [24] 1032 	mov	__divuint_PARM_2,#0x64
      0003D0 75 40 00         [24] 1033 	mov	(__divuint_PARM_2 + 1),#0x00
      0003D3 12 05 55         [24] 1034 	lcall	__divuint
      0003D6 AD 82            [24] 1035 	mov	r5,dpl
      0003D8 74 30            [12] 1036 	mov	a,#0x30
      0003DA 2D               [12] 1037 	add	a,r5
      0003DB FD               [12] 1038 	mov	r5,a
                                   1039 ;	main.c:153: uchar di3 = s%100/10 + '0';
      0003DC 75 3F 64         [24] 1040 	mov	__moduint_PARM_2,#0x64
      0003DF 75 40 00         [24] 1041 	mov	(__moduint_PARM_2 + 1),#0x00
      0003E2 85 23 82         [24] 1042 	mov	dpl,_s
      0003E5 85 24 83         [24] 1043 	mov	dph,(_s + 1)
      0003E8 C0 05            [24] 1044 	push	ar5
      0003EA 12 06 82         [24] 1045 	lcall	__moduint
      0003ED 75 3F 0A         [24] 1046 	mov	__divuint_PARM_2,#0x0a
      0003F0 75 40 00         [24] 1047 	mov	(__divuint_PARM_2 + 1),#0x00
      0003F3 12 05 55         [24] 1048 	lcall	__divuint
      0003F6 AC 82            [24] 1049 	mov	r4,dpl
      0003F8 74 30            [12] 1050 	mov	a,#0x30
      0003FA 2C               [12] 1051 	add	a,r4
      0003FB FC               [12] 1052 	mov	r4,a
                                   1053 ;	main.c:154: uchar di4 = s%10 + '0';
      0003FC 75 3F 0A         [24] 1054 	mov	__moduint_PARM_2,#0x0a
      0003FF 75 40 00         [24] 1055 	mov	(__moduint_PARM_2 + 1),#0x00
      000402 85 23 82         [24] 1056 	mov	dpl,_s
      000405 85 24 83         [24] 1057 	mov	dph,(_s + 1)
      000408 C0 04            [24] 1058 	push	ar4
      00040A 12 06 82         [24] 1059 	lcall	__moduint
      00040D AB 82            [24] 1060 	mov	r3,dpl
      00040F 74 30            [12] 1061 	mov	a,#0x30
      000411 2B               [12] 1062 	add	a,r3
      000412 FB               [12] 1063 	mov	r3,a
                                   1064 ;	main.c:155: TH1 = SPEED;
      000413 75 8D FF         [24] 1065 	mov	_TH1,#0xff
                                   1066 ;	main.c:156: TL1 = SPEED;
      000416 75 8B FF         [24] 1067 	mov	_TL1,#0xff
                                   1068 ;	main.c:157: TR1 = 0;
                                   1069 ;	assignBit
      000419 C2 8E            [12] 1070 	clr	_TR1
                                   1071 ;	main.c:158: delay(1);
      00041B 90 00 01         [24] 1072 	mov	dptr,#0x0001
      00041E C0 03            [24] 1073 	push	ar3
      000420 12 00 F1         [24] 1074 	lcall	_delay
      000423 D0 03            [24] 1075 	pop	ar3
      000425 D0 04            [24] 1076 	pop	ar4
      000427 D0 05            [24] 1077 	pop	ar5
      000429 D0 06            [24] 1078 	pop	ar6
                                   1079 ;	main.c:159: TR1 = 1;
                                   1080 ;	assignBit
      00042B D2 8E            [12] 1081 	setb	_TR1
                                   1082 ;	main.c:160: Send_Str(disp0);
      00042D 90 00 31         [24] 1083 	mov	dptr,#_disp0
      000430 75 F0 40         [24] 1084 	mov	b,#0x40
      000433 C0 06            [24] 1085 	push	ar6
      000435 C0 05            [24] 1086 	push	ar5
      000437 C0 04            [24] 1087 	push	ar4
      000439 C0 03            [24] 1088 	push	ar3
      00043B 12 01 D5         [24] 1089 	lcall	_Send_Str
      00043E D0 03            [24] 1090 	pop	ar3
      000440 D0 04            [24] 1091 	pop	ar4
      000442 D0 05            [24] 1092 	pop	ar5
      000444 D0 06            [24] 1093 	pop	ar6
                                   1094 ;	main.c:161: Send_Char(di1);
      000446 8E 82            [24] 1095 	mov	dpl,r6
      000448 C0 05            [24] 1096 	push	ar5
      00044A C0 04            [24] 1097 	push	ar4
      00044C C0 03            [24] 1098 	push	ar3
      00044E 12 01 C7         [24] 1099 	lcall	_Send_Char
      000451 D0 03            [24] 1100 	pop	ar3
      000453 D0 04            [24] 1101 	pop	ar4
      000455 D0 05            [24] 1102 	pop	ar5
                                   1103 ;	main.c:162: Send_Char(di2);
      000457 8D 82            [24] 1104 	mov	dpl,r5
      000459 C0 04            [24] 1105 	push	ar4
      00045B C0 03            [24] 1106 	push	ar3
      00045D 12 01 C7         [24] 1107 	lcall	_Send_Char
      000460 D0 03            [24] 1108 	pop	ar3
      000462 D0 04            [24] 1109 	pop	ar4
                                   1110 ;	main.c:163: Send_Char(di3);
      000464 8C 82            [24] 1111 	mov	dpl,r4
      000466 C0 03            [24] 1112 	push	ar3
      000468 12 01 C7         [24] 1113 	lcall	_Send_Char
      00046B D0 03            [24] 1114 	pop	ar3
                                   1115 ;	main.c:164: Send_Char(di4);
      00046D 8B 82            [24] 1116 	mov	dpl,r3
      00046F 12 01 C7         [24] 1117 	lcall	_Send_Char
                                   1118 ;	main.c:165: Send_Str(disp1);
      000472 90 00 3B         [24] 1119 	mov	dptr,#_disp1
      000475 75 F0 40         [24] 1120 	mov	b,#0x40
      000478 12 01 D5         [24] 1121 	lcall	_Send_Str
                                   1122 ;	main.c:166: TR1 =0;
                                   1123 ;	assignBit
      00047B C2 8E            [12] 1124 	clr	_TR1
                                   1125 ;	main.c:167: }
      00047D 22               [24] 1126 	ret
                                   1127 ;------------------------------------------------------------
                                   1128 ;Allocation info for local variables in function 'main'
                                   1129 ;------------------------------------------------------------
                                   1130 ;k                         Allocated to registers r7 
                                   1131 ;i                         Allocated to registers r6 
                                   1132 ;------------------------------------------------------------
                                   1133 ;	main.c:168: void main()
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function main
                                   1136 ;	-----------------------------------------
      00047E                       1137 _main:
                                   1138 ;	main.c:170: uchar k=0;
      00047E 7F 00            [12] 1139 	mov	r7,#0x00
                                   1140 ;	main.c:171: InitTimer();
      000480 C0 07            [24] 1141 	push	ar7
      000482 12 02 0D         [24] 1142 	lcall	_InitTimer
      000485 D0 07            [24] 1143 	pop	ar7
                                   1144 ;	main.c:172: while(1)
      000487                       1145 00113$:
                                   1146 ;	main.c:174: if(k>=4)
      000487 BF 04 00         [24] 1147 	cjne	r7,#0x04,00150$
      00048A                       1148 00150$:
      00048A 40 02            [24] 1149 	jc	00102$
                                   1150 ;	main.c:176: k = 0;
      00048C 7F 00            [12] 1151 	mov	r7,#0x00
      00048E                       1152 00102$:
                                   1153 ;	main.c:178: StartModule();
      00048E C0 07            [24] 1154 	push	ar7
      000490 12 02 02         [24] 1155 	lcall	_StartModule
      000493 D0 07            [24] 1156 	pop	ar7
                                   1157 ;	main.c:179: while(!ECHO);
      000495                       1158 00103$:
      000495 30 92 FD         [24] 1159 	jnb	_P1_2,00103$
                                   1160 ;	main.c:180: TR0 = 1;
                                   1161 ;	assignBit
      000498 D2 8C            [12] 1162 	setb	_TR0
                                   1163 ;	main.c:181: while(ECHO);
      00049A                       1164 00106$:
      00049A 20 92 FD         [24] 1165 	jb	_P1_2,00106$
                                   1166 ;	main.c:182: TR0 = 0;
                                   1167 ;	assignBit
      00049D C2 8C            [12] 1168 	clr	_TR0
                                   1169 ;	main.c:183: time = TH0*0x100 + TL0;
      00049F AE 8C            [24] 1170 	mov	r6,_TH0
      0004A1 7D 00            [12] 1171 	mov	r5,#0x00
      0004A3 AB 8A            [24] 1172 	mov	r3,_TL0
      0004A5 7C 00            [12] 1173 	mov	r4,#0x00
      0004A7 EB               [12] 1174 	mov	a,r3
      0004A8 2D               [12] 1175 	add	a,r5
      0004A9 F5 21            [12] 1176 	mov	_time,a
      0004AB EC               [12] 1177 	mov	a,r4
      0004AC 3E               [12] 1178 	addc	a,r6
      0004AD F5 22            [12] 1179 	mov	(_time + 1),a
                                   1180 ;	main.c:184: TH0 = 0;
                                   1181 ;	1-genFromRTrack replaced	mov	_TH0,#0x00
      0004AF 8D 8C            [24] 1182 	mov	_TH0,r5
                                   1183 ;	main.c:185: TH1 = 0;
                                   1184 ;	1-genFromRTrack replaced	mov	_TH1,#0x00
      0004B1 8D 8D            [24] 1185 	mov	_TH1,r5
                                   1186 ;	main.c:186: s = (time/58.0)*10;
      0004B3 85 21 82         [24] 1187 	mov	dpl,_time
      0004B6 85 22 83         [24] 1188 	mov	dph,(_time + 1)
      0004B9 C0 07            [24] 1189 	push	ar7
      0004BB 12 06 CF         [24] 1190 	lcall	___uint2fs
      0004BE AB 82            [24] 1191 	mov	r3,dpl
      0004C0 AC 83            [24] 1192 	mov	r4,dph
      0004C2 AD F0            [24] 1193 	mov	r5,b
      0004C4 FE               [12] 1194 	mov	r6,a
      0004C5 E4               [12] 1195 	clr	a
      0004C6 C0 E0            [24] 1196 	push	acc
      0004C8 C0 E0            [24] 1197 	push	acc
      0004CA 74 68            [12] 1198 	mov	a,#0x68
      0004CC C0 E0            [24] 1199 	push	acc
      0004CE 74 42            [12] 1200 	mov	a,#0x42
      0004D0 C0 E0            [24] 1201 	push	acc
      0004D2 8B 82            [24] 1202 	mov	dpl,r3
      0004D4 8C 83            [24] 1203 	mov	dph,r4
      0004D6 8D F0            [24] 1204 	mov	b,r5
      0004D8 EE               [12] 1205 	mov	a,r6
      0004D9 12 07 35         [24] 1206 	lcall	___fsdiv
      0004DC AB 82            [24] 1207 	mov	r3,dpl
      0004DE AC 83            [24] 1208 	mov	r4,dph
      0004E0 AD F0            [24] 1209 	mov	r5,b
      0004E2 FE               [12] 1210 	mov	r6,a
      0004E3 E5 81            [12] 1211 	mov	a,sp
      0004E5 24 FC            [12] 1212 	add	a,#0xfc
      0004E7 F5 81            [12] 1213 	mov	sp,a
      0004E9 C0 03            [24] 1214 	push	ar3
      0004EB C0 04            [24] 1215 	push	ar4
      0004ED C0 05            [24] 1216 	push	ar5
      0004EF C0 06            [24] 1217 	push	ar6
      0004F1 90 00 00         [24] 1218 	mov	dptr,#0x0000
      0004F4 75 F0 20         [24] 1219 	mov	b,#0x20
      0004F7 74 41            [12] 1220 	mov	a,#0x41
      0004F9 12 05 7E         [24] 1221 	lcall	___fsmul
      0004FC AB 82            [24] 1222 	mov	r3,dpl
      0004FE AC 83            [24] 1223 	mov	r4,dph
      000500 AD F0            [24] 1224 	mov	r5,b
      000502 FE               [12] 1225 	mov	r6,a
      000503 E5 81            [12] 1226 	mov	a,sp
      000505 24 FC            [12] 1227 	add	a,#0xfc
      000507 F5 81            [12] 1228 	mov	sp,a
      000509 8B 82            [24] 1229 	mov	dpl,r3
      00050B 8C 83            [24] 1230 	mov	dph,r4
      00050D 8D F0            [24] 1231 	mov	b,r5
      00050F EE               [12] 1232 	mov	a,r6
      000510 12 06 DB         [24] 1233 	lcall	___fs2uint
      000513 AD 82            [24] 1234 	mov	r5,dpl
      000515 AE 83            [24] 1235 	mov	r6,dph
      000517 D0 07            [24] 1236 	pop	ar7
      000519 8D 23            [24] 1237 	mov	_s,r5
      00051B 8E 24            [24] 1238 	mov	(_s + 1),r6
                                   1239 ;	main.c:187: ss[k] = (time/58.0)*10;
      00051D EF               [12] 1240 	mov	a,r7
      00051E 2F               [12] 1241 	add	a,r7
      00051F 24 25            [12] 1242 	add	a,#_ss
      000521 F8               [12] 1243 	mov	r0,a
      000522 A6 05            [24] 1244 	mov	@r0,ar5
      000524 08               [12] 1245 	inc	r0
      000525 A6 06            [24] 1246 	mov	@r0,ar6
                                   1247 ;	main.c:188: k++;
      000527 0F               [12] 1248 	inc	r7
                                   1249 ;	main.c:205: Count();
      000528 C0 07            [24] 1250 	push	ar7
      00052A 12 02 A7         [24] 1251 	lcall	_Count
      00052D D0 07            [24] 1252 	pop	ar7
                                   1253 ;	main.c:207: while(i--)
      00052F 7E 0F            [12] 1254 	mov	r6,#0x0f
      000531                       1255 00109$:
      000531 8E 05            [24] 1256 	mov	ar5,r6
      000533 1E               [12] 1257 	dec	r6
      000534 ED               [12] 1258 	mov	a,r5
      000535 60 0D            [24] 1259 	jz	00111$
                                   1260 ;	main.c:209: DisplayDigits();
      000537 C0 07            [24] 1261 	push	ar7
      000539 C0 06            [24] 1262 	push	ar6
      00053B 12 01 1F         [24] 1263 	lcall	_DisplayDigits
      00053E D0 06            [24] 1264 	pop	ar6
      000540 D0 07            [24] 1265 	pop	ar7
      000542 80 ED            [24] 1266 	sjmp	00109$
      000544                       1267 00111$:
                                   1268 ;	main.c:211: DelayXus(10);
      000544 90 00 0A         [24] 1269 	mov	dptr,#0x000a
      000547 C0 07            [24] 1270 	push	ar7
      000549 12 01 03         [24] 1271 	lcall	_DelayXus
      00054C D0 07            [24] 1272 	pop	ar7
                                   1273 ;	main.c:213: }
      00054E 02 04 87         [24] 1274 	ljmp	00113$
                                   1275 ;------------------------------------------------------------
                                   1276 ;Allocation info for local variables in function 'TimerOut'
                                   1277 ;------------------------------------------------------------
                                   1278 ;	main.c:215: void TimerOut() __interrupt 1
                                   1279 ;	-----------------------------------------
                                   1280 ;	 function TimerOut
                                   1281 ;	-----------------------------------------
      000551                       1282 _TimerOut:
                                   1283 ;	main.c:217: flag = 1;
      000551 75 08 01         [24] 1284 	mov	_flag,#0x01
                                   1285 ;	main.c:218: }
      000554 32               [24] 1286 	reti
                                   1287 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1288 ;	eliminated unneeded push/pop psw
                                   1289 ;	eliminated unneeded push/pop dpl
                                   1290 ;	eliminated unneeded push/pop dph
                                   1291 ;	eliminated unneeded push/pop b
                                   1292 ;	eliminated unneeded push/pop acc
                                   1293 	.area CSEG    (CODE)
                                   1294 	.area CONST   (CODE)
                                   1295 	.area XINIT   (CODE)
                                   1296 	.area CABS    (ABS,CODE)

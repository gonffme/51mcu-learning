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
                                     11 	.globl _serial
                                     12 	.globl _main
                                     13 	.globl _Init_Timer
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _flag
                                    111 	.globl _a
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
      000008                        227 _a::
      000008                        228 	.ds 1
      000009                        229 _flag::
      000009                        230 	.ds 1
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable items in internal ram 
                                    233 ;--------------------------------------------------------
                                    234 ;--------------------------------------------------------
                                    235 ; Stack segment in internal ram 
                                    236 ;--------------------------------------------------------
                                    237 	.area	SSEG
      00000A                        238 __start__stack:
      00000A                        239 	.ds	1
                                    240 
                                    241 ;--------------------------------------------------------
                                    242 ; indirectly addressable internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area ISEG    (DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; absolute internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area IABS    (ABS,DATA)
                                    249 	.area IABS    (ABS,DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; bit data
                                    252 ;--------------------------------------------------------
                                    253 	.area BSEG    (BIT)
                                    254 ;--------------------------------------------------------
                                    255 ; paged external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area PSEG    (PAG,XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XSEG    (XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XABS    (ABS,XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; external initialized ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XISEG   (XDATA)
                                    270 	.area HOME    (CODE)
                                    271 	.area GSINIT0 (CODE)
                                    272 	.area GSINIT1 (CODE)
                                    273 	.area GSINIT2 (CODE)
                                    274 	.area GSINIT3 (CODE)
                                    275 	.area GSINIT4 (CODE)
                                    276 	.area GSINIT5 (CODE)
                                    277 	.area GSINIT  (CODE)
                                    278 	.area GSFINAL (CODE)
                                    279 	.area CSEG    (CODE)
                                    280 ;--------------------------------------------------------
                                    281 ; interrupt vector 
                                    282 ;--------------------------------------------------------
                                    283 	.area HOME    (CODE)
      000000                        284 __interrupt_vect:
      000000 02 00 29         [24]  285 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  286 	reti
      000004                        287 	.ds	7
      00000B 32               [24]  288 	reti
      00000C                        289 	.ds	7
      000013 32               [24]  290 	reti
      000014                        291 	.ds	7
      00001B 32               [24]  292 	reti
      00001C                        293 	.ds	7
      000023 02 00 B1         [24]  294 	ljmp	_serial
                                    295 ;--------------------------------------------------------
                                    296 ; global & static initialisations
                                    297 ;--------------------------------------------------------
                                    298 	.area HOME    (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.globl __sdcc_gsinit_startup
                                    303 	.globl __sdcc_program_startup
                                    304 	.globl __start__stack
                                    305 	.globl __mcs51_genXINIT
                                    306 	.globl __mcs51_genXRAMCLEAR
                                    307 	.globl __mcs51_genRAMCLEAR
                                    308 	.area GSFINAL (CODE)
      000082 02 00 26         [24]  309 	ljmp	__sdcc_program_startup
                                    310 ;--------------------------------------------------------
                                    311 ; Home
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
                                    314 	.area HOME    (CODE)
      000026                        315 __sdcc_program_startup:
      000026 02 00 98         [24]  316 	ljmp	_main
                                    317 ;	return from main will return to caller
                                    318 ;--------------------------------------------------------
                                    319 ; code
                                    320 ;--------------------------------------------------------
                                    321 	.area CSEG    (CODE)
                                    322 ;------------------------------------------------------------
                                    323 ;Allocation info for local variables in function 'Init_Timer'
                                    324 ;------------------------------------------------------------
                                    325 ;	main.c:8: void Init_Timer()
                                    326 ;	-----------------------------------------
                                    327 ;	 function Init_Timer
                                    328 ;	-----------------------------------------
      000085                        329 _Init_Timer:
                           000007   330 	ar7 = 0x07
                           000006   331 	ar6 = 0x06
                           000005   332 	ar5 = 0x05
                           000004   333 	ar4 = 0x04
                           000003   334 	ar3 = 0x03
                           000002   335 	ar2 = 0x02
                           000001   336 	ar1 = 0x01
                           000000   337 	ar0 = 0x00
                                    338 ;	main.c:10: TMOD = 0x20;
      000085 75 89 20         [24]  339 	mov	_TMOD,#0x20
                                    340 ;	main.c:11: TH1 = 0xf3;
      000088 75 8D F3         [24]  341 	mov	_TH1,#0xf3
                                    342 ;	main.c:12: TL1 = 0xf3;
      00008B 75 8B F3         [24]  343 	mov	_TL1,#0xf3
                                    344 ;	main.c:13: TR1 = 1;
                                    345 ;	assignBit
      00008E D2 8E            [12]  346 	setb	_TR1
                                    347 ;	main.c:14: SCON = 0x50;//	SM0 = 0;SM1 = 1;REN = 1;
      000090 75 98 50         [24]  348 	mov	_SCON,#0x50
                                    349 ;	main.c:15: EA = 1;
                                    350 ;	assignBit
      000093 D2 AF            [12]  351 	setb	_EA
                                    352 ;	main.c:16: ES = 1;
                                    353 ;	assignBit
      000095 D2 AC            [12]  354 	setb	_ES
                                    355 ;	main.c:17: }
      000097 22               [24]  356 	ret
                                    357 ;------------------------------------------------------------
                                    358 ;Allocation info for local variables in function 'main'
                                    359 ;------------------------------------------------------------
                                    360 ;	main.c:19: main()
                                    361 ;	-----------------------------------------
                                    362 ;	 function main
                                    363 ;	-----------------------------------------
      000098                        364 _main:
                                    365 ;	main.c:21: Init_Timer();
      000098 12 00 85         [24]  366 	lcall	_Init_Timer
                                    367 ;	main.c:22: while(1)
      00009B                        368 00107$:
                                    369 ;	main.c:24: if(flag==1)
      00009B 74 01            [12]  370 	mov	a,#0x01
      00009D B5 09 FB         [24]  371 	cjne	a,_flag,00107$
                                    372 ;	main.c:26: ES = 0;
                                    373 ;	assignBit
      0000A0 C2 AC            [12]  374 	clr	_ES
                                    375 ;	main.c:27: flag = 0;
      0000A2 75 09 00         [24]  376 	mov	_flag,#0x00
                                    377 ;	main.c:28: SBUF = a;
      0000A5 85 08 99         [24]  378 	mov	_SBUF,_a
                                    379 ;	main.c:29: while(!TI);
      0000A8                        380 00101$:
                                    381 ;	main.c:30: TI = 0;
                                    382 ;	assignBit
      0000A8 10 99 02         [24]  383 	jbc	_TI,00129$
      0000AB 80 FB            [24]  384 	sjmp	00101$
      0000AD                        385 00129$:
                                    386 ;	main.c:31: ES = 1;
                                    387 ;	assignBit
      0000AD D2 AC            [12]  388 	setb	_ES
                                    389 ;	main.c:34: }
      0000AF 80 EA            [24]  390 	sjmp	00107$
                                    391 ;------------------------------------------------------------
                                    392 ;Allocation info for local variables in function 'serial'
                                    393 ;------------------------------------------------------------
                                    394 ;	main.c:36: void serial() __interrupt 4
                                    395 ;	-----------------------------------------
                                    396 ;	 function serial
                                    397 ;	-----------------------------------------
      0000B1                        398 _serial:
      0000B1 C0 E0            [24]  399 	push	acc
      0000B3 C0 D0            [24]  400 	push	psw
                                    401 ;	main.c:38: flag = 1;
      0000B5 75 09 01         [24]  402 	mov	_flag,#0x01
                                    403 ;	main.c:39: if(SBUF==0x55)
      0000B8 74 55            [12]  404 	mov	a,#0x55
      0000BA B5 99 04         [24]  405 	cjne	a,_SBUF,00102$
                                    406 ;	main.c:41: led = 0;
                                    407 ;	assignBit
      0000BD C2 B2            [12]  408 	clr	_P3_2
      0000BF 80 02            [24]  409 	sjmp	00103$
      0000C1                        410 00102$:
                                    411 ;	main.c:45: led = 1;
                                    412 ;	assignBit
      0000C1 D2 B2            [12]  413 	setb	_P3_2
      0000C3                        414 00103$:
                                    415 ;	main.c:47: a = SBUF;
      0000C3 85 99 08         [24]  416 	mov	_a,_SBUF
                                    417 ;	main.c:48: RI = 0;
                                    418 ;	assignBit
      0000C6 C2 98            [12]  419 	clr	_RI
                                    420 ;	main.c:49: }
      0000C8 D0 D0            [24]  421 	pop	psw
      0000CA D0 E0            [24]  422 	pop	acc
      0000CC 32               [24]  423 	reti
                                    424 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    425 ;	eliminated unneeded push/pop dpl
                                    426 ;	eliminated unneeded push/pop dph
                                    427 ;	eliminated unneeded push/pop b
                                    428 	.area CSEG    (CODE)
                                    429 	.area CONST   (CODE)
                                    430 	.area XINIT   (CODE)
                                    431 	.area CABS    (ABS,CODE)

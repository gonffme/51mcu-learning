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
                                     13 	.globl _Send_Str
                                     14 	.globl _Send_Char
                                     15 	.globl _Init_Timer
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
                                    112 	.globl _flag
                                    113 	.globl _a
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
      000008                        229 _a::
      000008                        230 	.ds 1
      000009                        231 _flag::
      000009                        232 	.ds 1
      00000A                        233 _main_string2_196609_11:
      00000A                        234 	.ds 14
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram 
                                    237 ;--------------------------------------------------------
                                    238 	.area	OSEG    (OVR,DATA)
                                    239 	.area	OSEG    (OVR,DATA)
                                    240 ;--------------------------------------------------------
                                    241 ; Stack segment in internal ram 
                                    242 ;--------------------------------------------------------
                                    243 	.area	SSEG
      000018                        244 __start__stack:
      000018                        245 	.ds	1
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
      000000 02 00 29         [24]  291 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  292 	reti
      000004                        293 	.ds	7
      00000B 32               [24]  294 	reti
      00000C                        295 	.ds	7
      000013 32               [24]  296 	reti
      000014                        297 	.ds	7
      00001B 32               [24]  298 	reti
      00001C                        299 	.ds	7
      000023 02 01 39         [24]  300 	ljmp	_serial
                                    301 ;--------------------------------------------------------
                                    302 ; global & static initialisations
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.area GSFINAL (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.globl __sdcc_gsinit_startup
                                    309 	.globl __sdcc_program_startup
                                    310 	.globl __start__stack
                                    311 	.globl __mcs51_genXINIT
                                    312 	.globl __mcs51_genXRAMCLEAR
                                    313 	.globl __mcs51_genRAMCLEAR
                                    314 	.area GSFINAL (CODE)
      000082 02 00 26         [24]  315 	ljmp	__sdcc_program_startup
                                    316 ;--------------------------------------------------------
                                    317 ; Home
                                    318 ;--------------------------------------------------------
                                    319 	.area HOME    (CODE)
                                    320 	.area HOME    (CODE)
      000026                        321 __sdcc_program_startup:
      000026 02 00 D3         [24]  322 	ljmp	_main
                                    323 ;	return from main will return to caller
                                    324 ;--------------------------------------------------------
                                    325 ; code
                                    326 ;--------------------------------------------------------
                                    327 	.area CSEG    (CODE)
                                    328 ;------------------------------------------------------------
                                    329 ;Allocation info for local variables in function 'Init_Timer'
                                    330 ;------------------------------------------------------------
                                    331 ;	main.c:8: void Init_Timer()
                                    332 ;	-----------------------------------------
                                    333 ;	 function Init_Timer
                                    334 ;	-----------------------------------------
      000085                        335 _Init_Timer:
                           000007   336 	ar7 = 0x07
                           000006   337 	ar6 = 0x06
                           000005   338 	ar5 = 0x05
                           000004   339 	ar4 = 0x04
                           000003   340 	ar3 = 0x03
                           000002   341 	ar2 = 0x02
                           000001   342 	ar1 = 0x01
                           000000   343 	ar0 = 0x00
                                    344 ;	main.c:10: TMOD = 0x21;
      000085 75 89 21         [24]  345 	mov	_TMOD,#0x21
                                    346 ;	main.c:11: TH1 = 0xf3;
      000088 75 8D F3         [24]  347 	mov	_TH1,#0xf3
                                    348 ;	main.c:12: TL1 = 0xf3;
      00008B 75 8B F3         [24]  349 	mov	_TL1,#0xf3
                                    350 ;	main.c:13: TR1 = 1;
                                    351 ;	assignBit
      00008E D2 8E            [12]  352 	setb	_TR1
                                    353 ;	main.c:14: SCON = 0x50;//	SM0 = 0;SM1 = 1;REN = 1;
      000090 75 98 50         [24]  354 	mov	_SCON,#0x50
                                    355 ;	main.c:15: EA = 1;
                                    356 ;	assignBit
      000093 D2 AF            [12]  357 	setb	_EA
                                    358 ;	main.c:16: ES = 1;
                                    359 ;	assignBit
      000095 D2 AC            [12]  360 	setb	_ES
                                    361 ;	main.c:17: }
      000097 22               [24]  362 	ret
                                    363 ;------------------------------------------------------------
                                    364 ;Allocation info for local variables in function 'Send_Char'
                                    365 ;------------------------------------------------------------
                                    366 ;chr                       Allocated to registers r7 
                                    367 ;------------------------------------------------------------
                                    368 ;	main.c:19: void Send_Char(uchar chr)
                                    369 ;	-----------------------------------------
                                    370 ;	 function Send_Char
                                    371 ;	-----------------------------------------
      000098                        372 _Send_Char:
      000098 AF 82            [24]  373 	mov	r7,dpl
                                    374 ;	main.c:21: ES = 0;
                                    375 ;	assignBit
      00009A C2 AC            [12]  376 	clr	_ES
                                    377 ;	main.c:22: SBUF = chr;
      00009C 8F 99            [24]  378 	mov	_SBUF,r7
                                    379 ;	main.c:23: while(!TI);
      00009E                        380 00101$:
                                    381 ;	main.c:24: TI = 0;
                                    382 ;	assignBit
      00009E 10 99 02         [24]  383 	jbc	_TI,00114$
      0000A1 80 FB            [24]  384 	sjmp	00101$
      0000A3                        385 00114$:
                                    386 ;	main.c:25: ES = 1;
                                    387 ;	assignBit
      0000A3 D2 AC            [12]  388 	setb	_ES
                                    389 ;	main.c:26: }
      0000A5 22               [24]  390 	ret
                                    391 ;------------------------------------------------------------
                                    392 ;Allocation info for local variables in function 'Send_Str'
                                    393 ;------------------------------------------------------------
                                    394 ;str                       Allocated to registers 
                                    395 ;------------------------------------------------------------
                                    396 ;	main.c:28: void Send_Str(uchar *str)
                                    397 ;	-----------------------------------------
                                    398 ;	 function Send_Str
                                    399 ;	-----------------------------------------
      0000A6                        400 _Send_Str:
      0000A6 AD 82            [24]  401 	mov	r5,dpl
      0000A8 AE 83            [24]  402 	mov	r6,dph
      0000AA AF F0            [24]  403 	mov	r7,b
                                    404 ;	main.c:30: while(*str != '\0')
      0000AC                        405 00104$:
      0000AC 8D 82            [24]  406 	mov	dpl,r5
      0000AE 8E 83            [24]  407 	mov	dph,r6
      0000B0 8F F0            [24]  408 	mov	b,r7
      0000B2 12 01 55         [24]  409 	lcall	__gptrget
      0000B5 60 1B            [24]  410 	jz	00107$
                                    411 ;	main.c:32: ES = 0;
                                    412 ;	assignBit
      0000B7 C2 AC            [12]  413 	clr	_ES
                                    414 ;	main.c:33: SBUF = *str;
      0000B9 8D 82            [24]  415 	mov	dpl,r5
      0000BB 8E 83            [24]  416 	mov	dph,r6
      0000BD 8F F0            [24]  417 	mov	b,r7
      0000BF 12 01 55         [24]  418 	lcall	__gptrget
      0000C2 F5 99            [12]  419 	mov	_SBUF,a
                                    420 ;	main.c:34: while(!TI);
      0000C4                        421 00101$:
                                    422 ;	main.c:35: TI = 0;
                                    423 ;	assignBit
      0000C4 10 99 02         [24]  424 	jbc	_TI,00127$
      0000C7 80 FB            [24]  425 	sjmp	00101$
      0000C9                        426 00127$:
                                    427 ;	main.c:36: ES = 1;
                                    428 ;	assignBit
      0000C9 D2 AC            [12]  429 	setb	_ES
                                    430 ;	main.c:37: str++;
      0000CB 0D               [12]  431 	inc	r5
      0000CC BD 00 DD         [24]  432 	cjne	r5,#0x00,00104$
      0000CF 0E               [12]  433 	inc	r6
      0000D0 80 DA            [24]  434 	sjmp	00104$
      0000D2                        435 00107$:
                                    436 ;	main.c:39: }
      0000D2 22               [24]  437 	ret
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'main'
                                    440 ;------------------------------------------------------------
                                    441 ;string2                   Allocated with name '_main_string2_196609_11'
                                    442 ;a                         Allocated to registers 
                                    443 ;------------------------------------------------------------
                                    444 ;	main.c:41: main()
                                    445 ;	-----------------------------------------
                                    446 ;	 function main
                                    447 ;	-----------------------------------------
      0000D3                        448 _main:
                                    449 ;	main.c:43: Init_Timer();
      0000D3 12 00 85         [24]  450 	lcall	_Init_Timer
                                    451 ;	main.c:44: while(1)
      0000D6                        452 00108$:
                                    453 ;	main.c:46: if(flag==1)
      0000D6 74 01            [12]  454 	mov	a,#0x01
      0000D8 B5 09 11         [24]  455 	cjne	a,_flag,00105$
                                    456 ;	main.c:48: ES = 0;
                                    457 ;	assignBit
      0000DB C2 AC            [12]  458 	clr	_ES
                                    459 ;	main.c:49: flag = 0;
      0000DD 75 09 00         [24]  460 	mov	_flag,#0x00
                                    461 ;	main.c:50: SBUF = a;
      0000E0 85 08 99         [24]  462 	mov	_SBUF,_a
                                    463 ;	main.c:51: while(!TI);
      0000E3                        464 00101$:
                                    465 ;	main.c:52: TI = 0;
                                    466 ;	assignBit
      0000E3 10 99 02         [24]  467 	jbc	_TI,00130$
      0000E6 80 FB            [24]  468 	sjmp	00101$
      0000E8                        469 00130$:
                                    470 ;	main.c:53: ES = 1;
                                    471 ;	assignBit
      0000E8 D2 AC            [12]  472 	setb	_ES
      0000EA 80 EA            [24]  473 	sjmp	00108$
      0000EC                        474 00105$:
                                    475 ;	main.c:59: Send_Char('h');
      0000EC 75 82 68         [24]  476 	mov	dpl,#0x68
      0000EF 12 00 98         [24]  477 	lcall	_Send_Char
                                    478 ;	main.c:60: Send_Char('\n');
      0000F2 75 82 0A         [24]  479 	mov	dpl,#0x0a
      0000F5 12 00 98         [24]  480 	lcall	_Send_Char
                                    481 ;	main.c:63: uchar string2[] = "hello, world\n";
      0000F8 75 0A 68         [24]  482 	mov	_main_string2_196609_11,#0x68
      0000FB 75 0B 65         [24]  483 	mov	(_main_string2_196609_11 + 0x0001),#0x65
      0000FE 75 0C 6C         [24]  484 	mov	(_main_string2_196609_11 + 0x0002),#0x6c
      000101 75 0D 6C         [24]  485 	mov	(_main_string2_196609_11 + 0x0003),#0x6c
      000104 75 0E 6F         [24]  486 	mov	(_main_string2_196609_11 + 0x0004),#0x6f
      000107 75 0F 2C         [24]  487 	mov	(_main_string2_196609_11 + 0x0005),#0x2c
      00010A 75 10 20         [24]  488 	mov	(_main_string2_196609_11 + 0x0006),#0x20
      00010D 75 11 77         [24]  489 	mov	(_main_string2_196609_11 + 0x0007),#0x77
      000110 75 12 6F         [24]  490 	mov	(_main_string2_196609_11 + 0x0008),#0x6f
      000113 75 13 72         [24]  491 	mov	(_main_string2_196609_11 + 0x0009),#0x72
      000116 75 14 6C         [24]  492 	mov	(_main_string2_196609_11 + 0x000a),#0x6c
      000119 75 15 64         [24]  493 	mov	(_main_string2_196609_11 + 0x000b),#0x64
      00011C 75 16 0A         [24]  494 	mov	(_main_string2_196609_11 + 0x000c),#0x0a
      00011F 75 17 00         [24]  495 	mov	(_main_string2_196609_11 + 0x000d),#0x00
                                    496 ;	main.c:64: Send_Str(string2);
      000122 90 00 0A         [24]  497 	mov	dptr,#_main_string2_196609_11
      000125 75 F0 40         [24]  498 	mov	b,#0x40
      000128 12 00 A6         [24]  499 	lcall	_Send_Str
                                    500 ;	main.c:66: Send_Char(a);
      00012B 75 82 30         [24]  501 	mov	dpl,#0x30
      00012E 12 00 98         [24]  502 	lcall	_Send_Char
                                    503 ;	main.c:67: Send_Char('\n');
      000131 75 82 0A         [24]  504 	mov	dpl,#0x0a
      000134 12 00 98         [24]  505 	lcall	_Send_Char
                                    506 ;	main.c:70: }
      000137 80 9D            [24]  507 	sjmp	00108$
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'serial'
                                    510 ;------------------------------------------------------------
                                    511 ;	main.c:72: void serial() __interrupt 4
                                    512 ;	-----------------------------------------
                                    513 ;	 function serial
                                    514 ;	-----------------------------------------
      000139                        515 _serial:
      000139 C0 E0            [24]  516 	push	acc
      00013B C0 D0            [24]  517 	push	psw
                                    518 ;	main.c:74: flag = 1;
      00013D 75 09 01         [24]  519 	mov	_flag,#0x01
                                    520 ;	main.c:75: if(SBUF==0x55)
      000140 74 55            [12]  521 	mov	a,#0x55
      000142 B5 99 04         [24]  522 	cjne	a,_SBUF,00102$
                                    523 ;	main.c:77: led = 0;
                                    524 ;	assignBit
      000145 C2 B2            [12]  525 	clr	_P3_2
      000147 80 02            [24]  526 	sjmp	00103$
      000149                        527 00102$:
                                    528 ;	main.c:81: led = 1;
                                    529 ;	assignBit
      000149 D2 B2            [12]  530 	setb	_P3_2
      00014B                        531 00103$:
                                    532 ;	main.c:83: a = SBUF;
      00014B 85 99 08         [24]  533 	mov	_a,_SBUF
                                    534 ;	main.c:84: RI = 0;
                                    535 ;	assignBit
      00014E C2 98            [12]  536 	clr	_RI
                                    537 ;	main.c:85: }
      000150 D0 D0            [24]  538 	pop	psw
      000152 D0 E0            [24]  539 	pop	acc
      000154 32               [24]  540 	reti
                                    541 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    542 ;	eliminated unneeded push/pop dpl
                                    543 ;	eliminated unneeded push/pop dph
                                    544 ;	eliminated unneeded push/pop b
                                    545 	.area CSEG    (CODE)
                                    546 	.area CONST   (CODE)
                                    547 	.area XINIT   (CODE)
                                    548 	.area CABS    (ABS,CODE)

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
                                     11 	.globl _Time1
                                     12 	.globl _main
                                     13 	.globl _Timer1Init
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
                                    110 	.globl _timer1
                                    111 	.globl _value
                                    112 	.globl _count
                                    113 	.globl _DIR
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
      000008                        229 _DIR::
      000008                        230 	.ds 1
      000009                        231 _count::
      000009                        232 	.ds 2
      00000B                        233 _value::
      00000B                        234 	.ds 2
      00000D                        235 _timer1::
      00000D                        236 	.ds 2
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable items in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 ;--------------------------------------------------------
                                    241 ; Stack segment in internal ram 
                                    242 ;--------------------------------------------------------
                                    243 	.area	SSEG
      00000F                        244 __start__stack:
      00000F                        245 	.ds	1
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
      000000 02 00 21         [24]  291 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  292 	reti
      000004                        293 	.ds	7
      00000B 32               [24]  294 	reti
      00000C                        295 	.ds	7
      000013 32               [24]  296 	reti
      000014                        297 	.ds	7
      00001B 02 00 F5         [24]  298 	ljmp	_Time1
                                    299 ;--------------------------------------------------------
                                    300 ; global & static initialisations
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.area GSFINAL (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.globl __sdcc_gsinit_startup
                                    307 	.globl __sdcc_program_startup
                                    308 	.globl __start__stack
                                    309 	.globl __mcs51_genXINIT
                                    310 	.globl __mcs51_genXRAMCLEAR
                                    311 	.globl __mcs51_genRAMCLEAR
                                    312 	.area GSFINAL (CODE)
      00007A 02 00 1E         [24]  313 	ljmp	__sdcc_program_startup
                                    314 ;--------------------------------------------------------
                                    315 ; Home
                                    316 ;--------------------------------------------------------
                                    317 	.area HOME    (CODE)
                                    318 	.area HOME    (CODE)
      00001E                        319 __sdcc_program_startup:
      00001E 02 00 91         [24]  320 	ljmp	_main
                                    321 ;	return from main will return to caller
                                    322 ;--------------------------------------------------------
                                    323 ; code
                                    324 ;--------------------------------------------------------
                                    325 	.area CSEG    (CODE)
                                    326 ;------------------------------------------------------------
                                    327 ;Allocation info for local variables in function 'Timer1Init'
                                    328 ;------------------------------------------------------------
                                    329 ;	main.c:11: void Timer1Init()
                                    330 ;	-----------------------------------------
                                    331 ;	 function Timer1Init
                                    332 ;	-----------------------------------------
      00007D                        333 _Timer1Init:
                           000007   334 	ar7 = 0x07
                           000006   335 	ar6 = 0x06
                           000005   336 	ar5 = 0x05
                           000004   337 	ar4 = 0x04
                           000003   338 	ar3 = 0x03
                           000002   339 	ar2 = 0x02
                           000001   340 	ar1 = 0x01
                           000000   341 	ar0 = 0x00
                                    342 ;	main.c:13: TMOD |= 0x10;
      00007D AE 89            [24]  343 	mov	r6,_TMOD
      00007F 43 06 10         [24]  344 	orl	ar6,#0x10
      000082 8E 89            [24]  345 	mov	_TMOD,r6
                                    346 ;	main.c:15: TH1 = 0xff;
      000084 75 8D FF         [24]  347 	mov	_TH1,#0xff
                                    348 ;	main.c:16: TL1 = 0xff; //1us
      000087 75 8B FF         [24]  349 	mov	_TL1,#0xff
                                    350 ;	main.c:18: ET1 = 1;
                                    351 ;	assignBit
      00008A D2 AB            [12]  352 	setb	_ET1
                                    353 ;	main.c:19: EA = 1;
                                    354 ;	assignBit
      00008C D2 AF            [12]  355 	setb	_EA
                                    356 ;	main.c:20: TR1 = 1;
                                    357 ;	assignBit
      00008E D2 8E            [12]  358 	setb	_TR1
                                    359 ;	main.c:21: }
      000090 22               [24]  360 	ret
                                    361 ;------------------------------------------------------------
                                    362 ;Allocation info for local variables in function 'main'
                                    363 ;------------------------------------------------------------
                                    364 ;	main.c:24: void main()
                                    365 ;	-----------------------------------------
                                    366 ;	 function main
                                    367 ;	-----------------------------------------
      000091                        368 _main:
                                    369 ;	main.c:26: Timer1Init();
      000091 12 00 7D         [24]  370 	lcall	_Timer1Init
                                    371 ;	main.c:27: while(1)
      000094                        372 00117$:
                                    373 ;	main.c:29: if(count>100)
      000094 C3               [12]  374 	clr	c
      000095 74 64            [12]  375 	mov	a,#0x64
      000097 95 09            [12]  376 	subb	a,_count
      000099 E4               [12]  377 	clr	a
      00009A 95 0A            [12]  378 	subb	a,(_count + 1)
      00009C 50 1E            [24]  379 	jnc	00106$
                                    380 ;	main.c:31: count = 0;
      00009E E4               [12]  381 	clr	a
      00009F F5 09            [12]  382 	mov	_count,a
      0000A1 F5 0A            [12]  383 	mov	(_count + 1),a
                                    384 ;	main.c:32: if(DIR == 1)
      0000A3 04               [12]  385 	inc	a
      0000A4 B5 08 08         [24]  386 	cjne	a,_DIR,00102$
                                    387 ;	main.c:34: value++;
      0000A7 05 0B            [12]  388 	inc	_value
      0000A9 E4               [12]  389 	clr	a
      0000AA B5 0B 02         [24]  390 	cjne	a,_value,00156$
      0000AD 05 0C            [12]  391 	inc	(_value + 1)
      0000AF                        392 00156$:
      0000AF                        393 00102$:
                                    394 ;	main.c:36: if(DIR == 0)
      0000AF E5 08            [12]  395 	mov	a,_DIR
      0000B1 70 09            [24]  396 	jnz	00106$
                                    397 ;	main.c:38: value--;
      0000B3 15 0B            [12]  398 	dec	_value
      0000B5 74 FF            [12]  399 	mov	a,#0xff
      0000B7 B5 0B 02         [24]  400 	cjne	a,_value,00158$
      0000BA 15 0C            [12]  401 	dec	(_value + 1)
      0000BC                        402 00158$:
      0000BC                        403 00106$:
                                    404 ;	main.c:42: if(value == 1000)
      0000BC 74 E8            [12]  405 	mov	a,#0xe8
      0000BE B5 0B 08         [24]  406 	cjne	a,_value,00108$
      0000C1 74 03            [12]  407 	mov	a,#0x03
      0000C3 B5 0C 03         [24]  408 	cjne	a,(_value + 1),00108$
                                    409 ;	main.c:44: DIR = 0;
      0000C6 75 08 00         [24]  410 	mov	_DIR,#0x00
      0000C9                        411 00108$:
                                    412 ;	main.c:46: if(value == 0)
      0000C9 E5 0B            [12]  413 	mov	a,_value
      0000CB 45 0C            [12]  414 	orl	a,(_value + 1)
      0000CD 70 03            [24]  415 	jnz	00110$
                                    416 ;	main.c:48: DIR = 1;
      0000CF 75 08 01         [24]  417 	mov	_DIR,#0x01
      0000D2                        418 00110$:
                                    419 ;	main.c:51: if(timer1 > 1000)
      0000D2 C3               [12]  420 	clr	c
      0000D3 74 E8            [12]  421 	mov	a,#0xe8
      0000D5 95 0D            [12]  422 	subb	a,_timer1
      0000D7 74 03            [12]  423 	mov	a,#0x03
      0000D9 95 0E            [12]  424 	subb	a,(_timer1 + 1)
      0000DB 50 05            [24]  425 	jnc	00112$
                                    426 ;	main.c:53: timer1 = 0;
      0000DD E4               [12]  427 	clr	a
      0000DE F5 0D            [12]  428 	mov	_timer1,a
      0000E0 F5 0E            [12]  429 	mov	(_timer1 + 1),a
      0000E2                        430 00112$:
                                    431 ;	main.c:55: if(timer1 < value)
      0000E2 C3               [12]  432 	clr	c
      0000E3 E5 0D            [12]  433 	mov	a,_timer1
      0000E5 95 0B            [12]  434 	subb	a,_value
      0000E7 E5 0E            [12]  435 	mov	a,(_timer1 + 1)
      0000E9 95 0C            [12]  436 	subb	a,(_value + 1)
      0000EB 50 04            [24]  437 	jnc	00114$
                                    438 ;	main.c:57: PWM = 1;
                                    439 ;	assignBit
      0000ED D2 A1            [12]  440 	setb	_P2_1
      0000EF 80 A3            [24]  441 	sjmp	00117$
      0000F1                        442 00114$:
                                    443 ;	main.c:61: PWM = 0;
                                    444 ;	assignBit
      0000F1 C2 A1            [12]  445 	clr	_P2_1
                                    446 ;	main.c:64: }
      0000F3 80 9F            [24]  447 	sjmp	00117$
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function 'Time1'
                                    450 ;------------------------------------------------------------
                                    451 ;	main.c:66: void Time1(void) __interrupt 3
                                    452 ;	-----------------------------------------
                                    453 ;	 function Time1
                                    454 ;	-----------------------------------------
      0000F5                        455 _Time1:
      0000F5 C0 E0            [24]  456 	push	acc
      0000F7 C0 D0            [24]  457 	push	psw
                                    458 ;	main.c:68: TH1 = 0xff;
      0000F9 75 8D FF         [24]  459 	mov	_TH1,#0xff
                                    460 ;	main.c:69: TL1 = 0xff;
      0000FC 75 8B FF         [24]  461 	mov	_TL1,#0xff
                                    462 ;	main.c:71: timer1++;
      0000FF 05 0D            [12]  463 	inc	_timer1
      000101 E4               [12]  464 	clr	a
      000102 B5 0D 02         [24]  465 	cjne	a,_timer1,00103$
      000105 05 0E            [12]  466 	inc	(_timer1 + 1)
      000107                        467 00103$:
                                    468 ;	main.c:72: count++;
      000107 05 09            [12]  469 	inc	_count
      000109 E4               [12]  470 	clr	a
      00010A B5 09 02         [24]  471 	cjne	a,_count,00104$
      00010D 05 0A            [12]  472 	inc	(_count + 1)
      00010F                        473 00104$:
                                    474 ;	main.c:73: }
      00010F D0 D0            [24]  475 	pop	psw
      000111 D0 E0            [24]  476 	pop	acc
      000113 32               [24]  477 	reti
                                    478 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    479 ;	eliminated unneeded push/pop dpl
                                    480 ;	eliminated unneeded push/pop dph
                                    481 ;	eliminated unneeded push/pop b
                                    482 	.area CSEG    (CODE)
                                    483 	.area CONST   (CODE)
                                    484 	.area XINIT   (CODE)
                                    485 	.area CABS    (ABS,CODE)

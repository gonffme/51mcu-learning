                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module iic
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _nop
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _At24c02Write_PARM_2
                                    109 	.globl _I2cStart
                                    110 	.globl _I2cStop
                                    111 	.globl _I2cSendByte
                                    112 	.globl _I2cReadByte
                                    113 	.globl _At24c02Write
                                    114 	.globl _At24c02Read
                                    115 ;--------------------------------------------------------
                                    116 ; special function registers
                                    117 ;--------------------------------------------------------
                                    118 	.area RSEG    (ABS,DATA)
      000000                        119 	.org 0x0000
                           000080   120 _P0	=	0x0080
                           000081   121 _SP	=	0x0081
                           000082   122 _DPL	=	0x0082
                           000083   123 _DPH	=	0x0083
                           000087   124 _PCON	=	0x0087
                           000088   125 _TCON	=	0x0088
                           000089   126 _TMOD	=	0x0089
                           00008A   127 _TL0	=	0x008a
                           00008B   128 _TL1	=	0x008b
                           00008C   129 _TH0	=	0x008c
                           00008D   130 _TH1	=	0x008d
                           000090   131 _P1	=	0x0090
                           000098   132 _SCON	=	0x0098
                           000099   133 _SBUF	=	0x0099
                           0000A0   134 _P2	=	0x00a0
                           0000A8   135 _IE	=	0x00a8
                           0000B0   136 _P3	=	0x00b0
                           0000B8   137 _IP	=	0x00b8
                           0000D0   138 _PSW	=	0x00d0
                           0000E0   139 _ACC	=	0x00e0
                           0000F0   140 _B	=	0x00f0
                                    141 ;--------------------------------------------------------
                                    142 ; special function bits
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0_0	=	0x0080
                           000081   147 _P0_1	=	0x0081
                           000082   148 _P0_2	=	0x0082
                           000083   149 _P0_3	=	0x0083
                           000084   150 _P0_4	=	0x0084
                           000085   151 _P0_5	=	0x0085
                           000086   152 _P0_6	=	0x0086
                           000087   153 _P0_7	=	0x0087
                           000088   154 _IT0	=	0x0088
                           000089   155 _IE0	=	0x0089
                           00008A   156 _IT1	=	0x008a
                           00008B   157 _IE1	=	0x008b
                           00008C   158 _TR0	=	0x008c
                           00008D   159 _TF0	=	0x008d
                           00008E   160 _TR1	=	0x008e
                           00008F   161 _TF1	=	0x008f
                           000090   162 _P1_0	=	0x0090
                           000091   163 _P1_1	=	0x0091
                           000092   164 _P1_2	=	0x0092
                           000093   165 _P1_3	=	0x0093
                           000094   166 _P1_4	=	0x0094
                           000095   167 _P1_5	=	0x0095
                           000096   168 _P1_6	=	0x0096
                           000097   169 _P1_7	=	0x0097
                           000098   170 _RI	=	0x0098
                           000099   171 _TI	=	0x0099
                           00009A   172 _RB8	=	0x009a
                           00009B   173 _TB8	=	0x009b
                           00009C   174 _REN	=	0x009c
                           00009D   175 _SM2	=	0x009d
                           00009E   176 _SM1	=	0x009e
                           00009F   177 _SM0	=	0x009f
                           0000A0   178 _P2_0	=	0x00a0
                           0000A1   179 _P2_1	=	0x00a1
                           0000A2   180 _P2_2	=	0x00a2
                           0000A3   181 _P2_3	=	0x00a3
                           0000A4   182 _P2_4	=	0x00a4
                           0000A5   183 _P2_5	=	0x00a5
                           0000A6   184 _P2_6	=	0x00a6
                           0000A7   185 _P2_7	=	0x00a7
                           0000A8   186 _EX0	=	0x00a8
                           0000A9   187 _ET0	=	0x00a9
                           0000AA   188 _EX1	=	0x00aa
                           0000AB   189 _ET1	=	0x00ab
                           0000AC   190 _ES	=	0x00ac
                           0000AF   191 _EA	=	0x00af
                           0000B0   192 _P3_0	=	0x00b0
                           0000B1   193 _P3_1	=	0x00b1
                           0000B2   194 _P3_2	=	0x00b2
                           0000B3   195 _P3_3	=	0x00b3
                           0000B4   196 _P3_4	=	0x00b4
                           0000B5   197 _P3_5	=	0x00b5
                           0000B6   198 _P3_6	=	0x00b6
                           0000B7   199 _P3_7	=	0x00b7
                           0000B0   200 _RXD	=	0x00b0
                           0000B1   201 _TXD	=	0x00b1
                           0000B2   202 _INT0	=	0x00b2
                           0000B3   203 _INT1	=	0x00b3
                           0000B4   204 _T0	=	0x00b4
                           0000B5   205 _T1	=	0x00b5
                           0000B6   206 _WR	=	0x00b6
                           0000B7   207 _RD	=	0x00b7
                           0000B8   208 _PX0	=	0x00b8
                           0000B9   209 _PT0	=	0x00b9
                           0000BA   210 _PX1	=	0x00ba
                           0000BB   211 _PT1	=	0x00bb
                           0000BC   212 _PS	=	0x00bc
                           0000D0   213 _P	=	0x00d0
                           0000D1   214 _F1	=	0x00d1
                           0000D2   215 _OV	=	0x00d2
                           0000D3   216 _RS0	=	0x00d3
                           0000D4   217 _RS1	=	0x00d4
                           0000D5   218 _F0	=	0x00d5
                           0000D6   219 _AC	=	0x00d6
                           0000D7   220 _CY	=	0x00d7
                                    221 ;--------------------------------------------------------
                                    222 ; overlayable register banks
                                    223 ;--------------------------------------------------------
                                    224 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        225 	.ds 8
                                    226 ;--------------------------------------------------------
                                    227 ; internal ram data
                                    228 ;--------------------------------------------------------
                                    229 	.area DSEG    (DATA)
      000021                        230 _At24c02Write_PARM_2:
      000021                        231 	.ds 1
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram 
                                    234 ;--------------------------------------------------------
                                    235 ;--------------------------------------------------------
                                    236 ; indirectly addressable internal ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area ISEG    (DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; absolute internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area IABS    (ABS,DATA)
                                    243 	.area IABS    (ABS,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; bit data
                                    246 ;--------------------------------------------------------
                                    247 	.area BSEG    (BIT)
                                    248 ;--------------------------------------------------------
                                    249 ; paged external ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area PSEG    (PAG,XDATA)
                                    252 ;--------------------------------------------------------
                                    253 ; external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area XSEG    (XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XABS    (ABS,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; external initialized ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XISEG   (XDATA)
                                    264 	.area HOME    (CODE)
                                    265 	.area GSINIT0 (CODE)
                                    266 	.area GSINIT1 (CODE)
                                    267 	.area GSINIT2 (CODE)
                                    268 	.area GSINIT3 (CODE)
                                    269 	.area GSINIT4 (CODE)
                                    270 	.area GSINIT5 (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area CSEG    (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; global & static initialisations
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; Home
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area HOME    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; code
                                    288 ;--------------------------------------------------------
                                    289 	.area CSEG    (CODE)
                                    290 ;------------------------------------------------------------
                                    291 ;Allocation info for local variables in function 'nop'
                                    292 ;------------------------------------------------------------
                                    293 ;	iic.c:5: void nop()
                                    294 ;	-----------------------------------------
                                    295 ;	 function nop
                                    296 ;	-----------------------------------------
      00026E                        297 _nop:
                           000007   298 	ar7 = 0x07
                           000006   299 	ar6 = 0x06
                           000005   300 	ar5 = 0x05
                           000004   301 	ar4 = 0x04
                           000003   302 	ar3 = 0x03
                           000002   303 	ar2 = 0x02
                           000001   304 	ar1 = 0x01
                           000000   305 	ar0 = 0x00
                                    306 ;	iic.c:6: {}
      00026E 22               [24]  307 	ret
                                    308 ;------------------------------------------------------------
                                    309 ;Allocation info for local variables in function 'I2cStart'
                                    310 ;------------------------------------------------------------
                                    311 ;	iic.c:12: void I2cStart()
                                    312 ;	-----------------------------------------
                                    313 ;	 function I2cStart
                                    314 ;	-----------------------------------------
      00026F                        315 _I2cStart:
                                    316 ;	iic.c:14: SDA = 1;
                                    317 ;	assignBit
      00026F D2 B0            [12]  318 	setb	_P3_0
                                    319 ;	iic.c:15: _Nop();
      000271 12 02 6E         [24]  320 	lcall	_nop
                                    321 ;	iic.c:16: _Nop();
      000274 12 02 6E         [24]  322 	lcall	_nop
                                    323 ;	iic.c:17: _Nop();
      000277 12 02 6E         [24]  324 	lcall	_nop
                                    325 ;	iic.c:18: _Nop();
      00027A 12 02 6E         [24]  326 	lcall	_nop
                                    327 ;	iic.c:19: _Nop();
      00027D 12 02 6E         [24]  328 	lcall	_nop
                                    329 ;	iic.c:20: _Nop();
      000280 12 02 6E         [24]  330 	lcall	_nop
                                    331 ;	iic.c:21: _Nop();
      000283 12 02 6E         [24]  332 	lcall	_nop
                                    333 ;	iic.c:22: _Nop();
      000286 12 02 6E         [24]  334 	lcall	_nop
                                    335 ;	iic.c:23: SCL = 1;
                                    336 ;	assignBit
      000289 D2 B1            [12]  337 	setb	_P3_1
                                    338 ;	iic.c:24: _Nop();
      00028B 12 02 6E         [24]  339 	lcall	_nop
                                    340 ;	iic.c:25: _Nop();
      00028E 12 02 6E         [24]  341 	lcall	_nop
                                    342 ;	iic.c:26: _Nop();
      000291 12 02 6E         [24]  343 	lcall	_nop
                                    344 ;	iic.c:27: _Nop();
      000294 12 02 6E         [24]  345 	lcall	_nop
                                    346 ;	iic.c:28: _Nop();
      000297 12 02 6E         [24]  347 	lcall	_nop
                                    348 ;	iic.c:29: _Nop();
      00029A 12 02 6E         [24]  349 	lcall	_nop
                                    350 ;	iic.c:30: _Nop();
      00029D 12 02 6E         [24]  351 	lcall	_nop
                                    352 ;	iic.c:31: _Nop();
      0002A0 12 02 6E         [24]  353 	lcall	_nop
                                    354 ;	iic.c:32: _Nop();
      0002A3 12 02 6E         [24]  355 	lcall	_nop
                                    356 ;	iic.c:33: _Nop();
      0002A6 12 02 6E         [24]  357 	lcall	_nop
                                    358 ;	iic.c:34: SDA = 0;
                                    359 ;	assignBit
      0002A9 C2 B0            [12]  360 	clr	_P3_0
                                    361 ;	iic.c:35: _Nop();
      0002AB 12 02 6E         [24]  362 	lcall	_nop
                                    363 ;	iic.c:36: _Nop();
      0002AE 12 02 6E         [24]  364 	lcall	_nop
                                    365 ;	iic.c:37: _Nop();
      0002B1 12 02 6E         [24]  366 	lcall	_nop
                                    367 ;	iic.c:38: _Nop();
      0002B4 12 02 6E         [24]  368 	lcall	_nop
                                    369 ;	iic.c:39: _Nop();
      0002B7 12 02 6E         [24]  370 	lcall	_nop
                                    371 ;	iic.c:40: _Nop();
      0002BA 12 02 6E         [24]  372 	lcall	_nop
                                    373 ;	iic.c:41: _Nop();
      0002BD 12 02 6E         [24]  374 	lcall	_nop
                                    375 ;	iic.c:42: _Nop();
      0002C0 12 02 6E         [24]  376 	lcall	_nop
                                    377 ;	iic.c:43: _Nop();
      0002C3 12 02 6E         [24]  378 	lcall	_nop
                                    379 ;	iic.c:44: _Nop();
      0002C6 12 02 6E         [24]  380 	lcall	_nop
                                    381 ;	iic.c:45: SCL = 0;
                                    382 ;	assignBit
      0002C9 C2 B1            [12]  383 	clr	_P3_1
                                    384 ;	iic.c:46: _Nop();
      0002CB 12 02 6E         [24]  385 	lcall	_nop
                                    386 ;	iic.c:47: _Nop();
      0002CE 12 02 6E         [24]  387 	lcall	_nop
                                    388 ;	iic.c:48: _Nop();
      0002D1 12 02 6E         [24]  389 	lcall	_nop
                                    390 ;	iic.c:49: _Nop();
      0002D4 12 02 6E         [24]  391 	lcall	_nop
                                    392 ;	iic.c:50: _Nop();
                                    393 ;	iic.c:51: }
      0002D7 02 02 6E         [24]  394 	ljmp	_nop
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'I2cStop'
                                    397 ;------------------------------------------------------------
                                    398 ;	iic.c:53: void I2cStop()
                                    399 ;	-----------------------------------------
                                    400 ;	 function I2cStop
                                    401 ;	-----------------------------------------
      0002DA                        402 _I2cStop:
                                    403 ;	iic.c:55: SDA = 0;
                                    404 ;	assignBit
      0002DA C2 B0            [12]  405 	clr	_P3_0
                                    406 ;	iic.c:56: _Nop();
      0002DC 12 02 6E         [24]  407 	lcall	_nop
                                    408 ;	iic.c:57: SCL = 1;
                                    409 ;	assignBit
      0002DF D2 B1            [12]  410 	setb	_P3_1
                                    411 ;	iic.c:58: _Nop();
      0002E1 12 02 6E         [24]  412 	lcall	_nop
                                    413 ;	iic.c:59: _Nop();
      0002E4 12 02 6E         [24]  414 	lcall	_nop
                                    415 ;	iic.c:60: _Nop();
      0002E7 12 02 6E         [24]  416 	lcall	_nop
                                    417 ;	iic.c:61: _Nop();
      0002EA 12 02 6E         [24]  418 	lcall	_nop
                                    419 ;	iic.c:62: _Nop();
      0002ED 12 02 6E         [24]  420 	lcall	_nop
                                    421 ;	iic.c:63: SDA = 1;
                                    422 ;	assignBit
      0002F0 D2 B0            [12]  423 	setb	_P3_0
                                    424 ;	iic.c:64: _Nop();
      0002F2 12 02 6E         [24]  425 	lcall	_nop
                                    426 ;	iic.c:65: _Nop();
      0002F5 12 02 6E         [24]  427 	lcall	_nop
                                    428 ;	iic.c:66: _Nop();
      0002F8 12 02 6E         [24]  429 	lcall	_nop
                                    430 ;	iic.c:67: _Nop();
      0002FB 12 02 6E         [24]  431 	lcall	_nop
                                    432 ;	iic.c:68: _Nop();
                                    433 ;	iic.c:69: }
      0002FE 02 02 6E         [24]  434 	ljmp	_nop
                                    435 ;------------------------------------------------------------
                                    436 ;Allocation info for local variables in function 'I2cSendByte'
                                    437 ;------------------------------------------------------------
                                    438 ;dat                       Allocated to registers r7 
                                    439 ;a                         Allocated to registers r6 
                                    440 ;b                         Allocated to registers 
                                    441 ;------------------------------------------------------------
                                    442 ;	iic.c:71: uchar I2cSendByte(uchar dat)
                                    443 ;	-----------------------------------------
                                    444 ;	 function I2cSendByte
                                    445 ;	-----------------------------------------
      000301                        446 _I2cSendByte:
      000301 AF 82            [24]  447 	mov	r7,dpl
                                    448 ;	iic.c:74: for(a=0;a<8;a++)
      000303 7E 00            [12]  449 	mov	r6,#0x00
      000305                        450 00108$:
                                    451 ;	iic.c:76: if((dat<<a)&0x80) 
      000305 8F 04            [24]  452 	mov	ar4,r7
      000307 7D 00            [12]  453 	mov	r5,#0x00
      000309 8E F0            [24]  454 	mov	b,r6
      00030B 05 F0            [12]  455 	inc	b
      00030D 80 06            [24]  456 	sjmp	00130$
      00030F                        457 00129$:
      00030F EC               [12]  458 	mov	a,r4
      000310 2C               [12]  459 	add	a,r4
      000311 FC               [12]  460 	mov	r4,a
      000312 ED               [12]  461 	mov	a,r5
      000313 33               [12]  462 	rlc	a
      000314 FD               [12]  463 	mov	r5,a
      000315                        464 00130$:
      000315 D5 F0 F7         [24]  465 	djnz	b,00129$
      000318 EC               [12]  466 	mov	a,r4
      000319 30 E7 04         [24]  467 	jnb	acc.7,00102$
                                    468 ;	iic.c:78: SDA = 1;
                                    469 ;	assignBit
      00031C D2 B0            [12]  470 	setb	_P3_0
      00031E 80 02            [24]  471 	sjmp	00103$
      000320                        472 00102$:
                                    473 ;	iic.c:82: SDA = 0;
                                    474 ;	assignBit
      000320 C2 B0            [12]  475 	clr	_P3_0
      000322                        476 00103$:
                                    477 ;	iic.c:84: _Nop();
      000322 C0 07            [24]  478 	push	ar7
      000324 C0 06            [24]  479 	push	ar6
      000326 12 02 6E         [24]  480 	lcall	_nop
                                    481 ;	iic.c:85: _Nop();
      000329 12 02 6E         [24]  482 	lcall	_nop
                                    483 ;	iic.c:86: SCL = 1;
                                    484 ;	assignBit
      00032C D2 B1            [12]  485 	setb	_P3_1
                                    486 ;	iic.c:87: _Nop();
      00032E 12 02 6E         [24]  487 	lcall	_nop
                                    488 ;	iic.c:88: _Nop();
      000331 12 02 6E         [24]  489 	lcall	_nop
                                    490 ;	iic.c:89: _Nop();
      000334 12 02 6E         [24]  491 	lcall	_nop
                                    492 ;	iic.c:90: _Nop();
      000337 12 02 6E         [24]  493 	lcall	_nop
                                    494 ;	iic.c:91: _Nop();
      00033A 12 02 6E         [24]  495 	lcall	_nop
                                    496 ;	iic.c:92: _Nop();
      00033D 12 02 6E         [24]  497 	lcall	_nop
                                    498 ;	iic.c:93: _Nop();
      000340 12 02 6E         [24]  499 	lcall	_nop
                                    500 ;	iic.c:94: _Nop();
      000343 12 02 6E         [24]  501 	lcall	_nop
                                    502 ;	iic.c:95: SCL = 0;
                                    503 ;	assignBit
      000346 C2 B1            [12]  504 	clr	_P3_1
                                    505 ;	iic.c:96: _Nop();
      000348 12 02 6E         [24]  506 	lcall	_nop
                                    507 ;	iic.c:97: _Nop();
      00034B 12 02 6E         [24]  508 	lcall	_nop
      00034E D0 06            [24]  509 	pop	ar6
      000350 D0 07            [24]  510 	pop	ar7
                                    511 ;	iic.c:74: for(a=0;a<8;a++)
      000352 0E               [12]  512 	inc	r6
      000353 BE 08 00         [24]  513 	cjne	r6,#0x08,00132$
      000356                        514 00132$:
      000356 40 AD            [24]  515 	jc	00108$
                                    516 ;	iic.c:99: SDA = 1;
                                    517 ;	assignBit
      000358 D2 B0            [12]  518 	setb	_P3_0
                                    519 ;	iic.c:100: _Nop();
      00035A 12 02 6E         [24]  520 	lcall	_nop
                                    521 ;	iic.c:101: _Nop();
      00035D 12 02 6E         [24]  522 	lcall	_nop
                                    523 ;	iic.c:102: _Nop();
      000360 12 02 6E         [24]  524 	lcall	_nop
                                    525 ;	iic.c:103: SCL = 1;
                                    526 ;	assignBit
      000363 D2 B1            [12]  527 	setb	_P3_1
                                    528 ;	iic.c:104: _Nop();
      000365 12 02 6E         [24]  529 	lcall	_nop
                                    530 ;	iic.c:105: _Nop();
      000368 12 02 6E         [24]  531 	lcall	_nop
                                    532 ;	iic.c:106: _Nop();
      00036B 12 02 6E         [24]  533 	lcall	_nop
                                    534 ;	iic.c:107: _Nop();
      00036E 12 02 6E         [24]  535 	lcall	_nop
                                    536 ;	iic.c:108: _Nop();
      000371 12 02 6E         [24]  537 	lcall	_nop
                                    538 ;	iic.c:118: if(SDA)
      000374 30 B0 1A         [24]  539 	jnb	_P3_0,00106$
                                    540 ;	iic.c:120: SCL = 0;
                                    541 ;	assignBit
      000377 C2 B1            [12]  542 	clr	_P3_1
                                    543 ;	iic.c:121: _Nop();
      000379 12 02 6E         [24]  544 	lcall	_nop
                                    545 ;	iic.c:122: _Nop();
      00037C 12 02 6E         [24]  546 	lcall	_nop
                                    547 ;	iic.c:123: _Nop();
      00037F 12 02 6E         [24]  548 	lcall	_nop
                                    549 ;	iic.c:124: _Nop();
      000382 12 02 6E         [24]  550 	lcall	_nop
                                    551 ;	iic.c:125: SDA = 1;
                                    552 ;	assignBit
      000385 D2 B0            [12]  553 	setb	_P3_0
                                    554 ;	iic.c:126: _Nop();
      000387 12 02 6E         [24]  555 	lcall	_nop
                                    556 ;	iic.c:127: _Nop();
      00038A 12 02 6E         [24]  557 	lcall	_nop
                                    558 ;	iic.c:128: return 0;
      00038D 75 82 00         [24]  559 	mov	dpl,#0x00
      000390 22               [24]  560 	ret
      000391                        561 00106$:
                                    562 ;	iic.c:132: SCL = 0;
                                    563 ;	assignBit
      000391 C2 B1            [12]  564 	clr	_P3_1
                                    565 ;	iic.c:133: _Nop();
      000393 12 02 6E         [24]  566 	lcall	_nop
                                    567 ;	iic.c:134: _Nop();
      000396 12 02 6E         [24]  568 	lcall	_nop
                                    569 ;	iic.c:135: _Nop();
      000399 12 02 6E         [24]  570 	lcall	_nop
                                    571 ;	iic.c:136: _Nop();
      00039C 12 02 6E         [24]  572 	lcall	_nop
                                    573 ;	iic.c:137: SDA = 1;
                                    574 ;	assignBit
      00039F D2 B0            [12]  575 	setb	_P3_0
                                    576 ;	iic.c:138: _Nop();
      0003A1 12 02 6E         [24]  577 	lcall	_nop
                                    578 ;	iic.c:139: _Nop();
      0003A4 12 02 6E         [24]  579 	lcall	_nop
                                    580 ;	iic.c:140: return 1;
      0003A7 75 82 01         [24]  581 	mov	dpl,#0x01
                                    582 ;	iic.c:142: }	
      0003AA 22               [24]  583 	ret
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'I2cReadByte'
                                    586 ;------------------------------------------------------------
                                    587 ;a                         Allocated to registers r6 
                                    588 ;dat                       Allocated to registers r5 
                                    589 ;------------------------------------------------------------
                                    590 ;	iic.c:144: uchar I2cReadByte()
                                    591 ;	-----------------------------------------
                                    592 ;	 function I2cReadByte
                                    593 ;	-----------------------------------------
      0003AB                        594 _I2cReadByte:
                                    595 ;	iic.c:146: uchar a=0,dat=0;
      0003AB 7F 00            [12]  596 	mov	r7,#0x00
                                    597 ;	iic.c:147: SDA = 1;
                                    598 ;	assignBit
      0003AD D2 B0            [12]  599 	setb	_P3_0
                                    600 ;	iic.c:148: for(a=0;a<8;a++)
      0003AF 7E 00            [12]  601 	mov	r6,#0x00
      0003B1                        602 00102$:
                                    603 ;	iic.c:150: _Nop();
      0003B1 C0 07            [24]  604 	push	ar7
      0003B3 C0 06            [24]  605 	push	ar6
      0003B5 12 02 6E         [24]  606 	lcall	_nop
                                    607 ;	iic.c:151: SCL = 0;
                                    608 ;	assignBit
      0003B8 C2 B1            [12]  609 	clr	_P3_1
                                    610 ;	iic.c:152: _Nop();
      0003BA 12 02 6E         [24]  611 	lcall	_nop
                                    612 ;	iic.c:153: _Nop();
      0003BD 12 02 6E         [24]  613 	lcall	_nop
                                    614 ;	iic.c:154: _Nop();
      0003C0 12 02 6E         [24]  615 	lcall	_nop
                                    616 ;	iic.c:155: _Nop();
      0003C3 12 02 6E         [24]  617 	lcall	_nop
                                    618 ;	iic.c:156: _Nop();
      0003C6 12 02 6E         [24]  619 	lcall	_nop
                                    620 ;	iic.c:157: SCL = 1;
                                    621 ;	assignBit
      0003C9 D2 B1            [12]  622 	setb	_P3_1
                                    623 ;	iic.c:158: _Nop();
      0003CB 12 02 6E         [24]  624 	lcall	_nop
                                    625 ;	iic.c:159: _Nop();
      0003CE 12 02 6E         [24]  626 	lcall	_nop
      0003D1 D0 06            [24]  627 	pop	ar6
      0003D3 D0 07            [24]  628 	pop	ar7
                                    629 ;	iic.c:160: dat<<=1;
      0003D5 8F 05            [24]  630 	mov	ar5,r7
      0003D7 ED               [12]  631 	mov	a,r5
      0003D8 2D               [12]  632 	add	a,r5
      0003D9 FD               [12]  633 	mov	r5,a
                                    634 ;	iic.c:161: dat |= SDA;	
      0003DA A2 B0            [12]  635 	mov	c,_P3_0
      0003DC E4               [12]  636 	clr	a
      0003DD 33               [12]  637 	rlc	a
      0003DE 4D               [12]  638 	orl	a,r5
      0003DF FF               [12]  639 	mov	r7,a
                                    640 ;	iic.c:162: _Nop();
      0003E0 C0 07            [24]  641 	push	ar7
      0003E2 C0 06            [24]  642 	push	ar6
      0003E4 12 02 6E         [24]  643 	lcall	_nop
                                    644 ;	iic.c:163: _Nop();
      0003E7 12 02 6E         [24]  645 	lcall	_nop
      0003EA D0 06            [24]  646 	pop	ar6
      0003EC D0 07            [24]  647 	pop	ar7
                                    648 ;	iic.c:148: for(a=0;a<8;a++)
      0003EE 0E               [12]  649 	inc	r6
      0003EF BE 08 00         [24]  650 	cjne	r6,#0x08,00117$
      0003F2                        651 00117$:
      0003F2 40 BD            [24]  652 	jc	00102$
                                    653 ;	iic.c:165: SCL = 0;
                                    654 ;	assignBit
      0003F4 C2 B1            [12]  655 	clr	_P3_1
                                    656 ;	iic.c:166: _Nop();
      0003F6 C0 07            [24]  657 	push	ar7
      0003F8 12 02 6E         [24]  658 	lcall	_nop
                                    659 ;	iic.c:167: _Nop();
      0003FB 12 02 6E         [24]  660 	lcall	_nop
      0003FE D0 07            [24]  661 	pop	ar7
                                    662 ;	iic.c:168: return dat;
      000400 8F 82            [24]  663 	mov	dpl,r7
                                    664 ;	iic.c:169: }
      000402 22               [24]  665 	ret
                                    666 ;------------------------------------------------------------
                                    667 ;Allocation info for local variables in function 'At24c02Write'
                                    668 ;------------------------------------------------------------
                                    669 ;dat                       Allocated with name '_At24c02Write_PARM_2'
                                    670 ;addr                      Allocated to registers r7 
                                    671 ;------------------------------------------------------------
                                    672 ;	iic.c:171: void At24c02Write(uchar addr, uchar dat)
                                    673 ;	-----------------------------------------
                                    674 ;	 function At24c02Write
                                    675 ;	-----------------------------------------
      000403                        676 _At24c02Write:
      000403 AF 82            [24]  677 	mov	r7,dpl
                                    678 ;	iic.c:173: I2cStart();
      000405 C0 07            [24]  679 	push	ar7
      000407 12 02 6F         [24]  680 	lcall	_I2cStart
                                    681 ;	iic.c:174: state = I2cSendByte(0xa0);
      00040A 75 82 A0         [24]  682 	mov	dpl,#0xa0
      00040D 12 03 01         [24]  683 	lcall	_I2cSendByte
      000410 AE 82            [24]  684 	mov	r6,dpl
      000412 D0 07            [24]  685 	pop	ar7
                                    686 ;	assignBit
      000414 EE               [12]  687 	mov	a,r6
      000415 24 FF            [12]  688 	add	a,#0xff
      000417 92 A7            [24]  689 	mov	_P2_7,c
                                    690 ;	iic.c:176: state1= I2cSendByte(addr);
      000419 8F 82            [24]  691 	mov	dpl,r7
      00041B 12 03 01         [24]  692 	lcall	_I2cSendByte
                                    693 ;	assignBit
      00041E E5 82            [12]  694 	mov	a,dpl
      000420 24 FF            [12]  695 	add	a,#0xff
      000422 92 A6            [24]  696 	mov	_P2_6,c
                                    697 ;	iic.c:178: state2= I2cSendByte(dat);
      000424 85 21 82         [24]  698 	mov	dpl,_At24c02Write_PARM_2
      000427 12 03 01         [24]  699 	lcall	_I2cSendByte
                                    700 ;	assignBit
      00042A E5 82            [12]  701 	mov	a,dpl
      00042C 24 FF            [12]  702 	add	a,#0xff
      00042E 92 A5            [24]  703 	mov	_P2_5,c
                                    704 ;	iic.c:179: I2cStop();
                                    705 ;	iic.c:180: }
      000430 02 02 DA         [24]  706 	ljmp	_I2cStop
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'At24c02Read'
                                    709 ;------------------------------------------------------------
                                    710 ;addr                      Allocated to registers r7 
                                    711 ;num                       Allocated to registers r7 
                                    712 ;------------------------------------------------------------
                                    713 ;	iic.c:182: char At24c02Read(uchar addr)
                                    714 ;	-----------------------------------------
                                    715 ;	 function At24c02Read
                                    716 ;	-----------------------------------------
      000433                        717 _At24c02Read:
      000433 AF 82            [24]  718 	mov	r7,dpl
                                    719 ;	iic.c:185: I2cStart();
      000435 C0 07            [24]  720 	push	ar7
      000437 12 02 6F         [24]  721 	lcall	_I2cStart
                                    722 ;	iic.c:186: I2cSendByte(0xa0);
      00043A 75 82 A0         [24]  723 	mov	dpl,#0xa0
      00043D 12 03 01         [24]  724 	lcall	_I2cSendByte
      000440 D0 07            [24]  725 	pop	ar7
                                    726 ;	iic.c:187: I2cSendByte(addr);
      000442 8F 82            [24]  727 	mov	dpl,r7
      000444 12 03 01         [24]  728 	lcall	_I2cSendByte
                                    729 ;	iic.c:188: I2cStart();
      000447 12 02 6F         [24]  730 	lcall	_I2cStart
                                    731 ;	iic.c:189: I2cSendByte(0xa1);
      00044A 75 82 A1         [24]  732 	mov	dpl,#0xa1
      00044D 12 03 01         [24]  733 	lcall	_I2cSendByte
                                    734 ;	iic.c:190: num = I2cReadByte();	
      000450 12 03 AB         [24]  735 	lcall	_I2cReadByte
      000453 AF 82            [24]  736 	mov	r7,dpl
                                    737 ;	iic.c:191: I2cStop();
      000455 C0 07            [24]  738 	push	ar7
      000457 12 02 DA         [24]  739 	lcall	_I2cStop
      00045A D0 07            [24]  740 	pop	ar7
                                    741 ;	iic.c:192: return num;
      00045C 8F 82            [24]  742 	mov	dpl,r7
                                    743 ;	iic.c:193: }
      00045E 22               [24]  744 	ret
                                    745 	.area CSEG    (CODE)
                                    746 	.area CONST   (CODE)
                                    747 	.area XINIT   (CODE)
                                    748 	.area CABS    (ABS,CODE)

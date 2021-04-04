#ifndef __DS1302_H
#define __DS1302_H

#ifndef uchar
#define uchar unsigned char
#endif
#ifndef uint
#define uint unsigned int
#endif

#include <8051.h>
#define DSIO P3_4
#define RST P3_7
#define SCLK P3_6

void Ds1302GW(uchar dat);
void Ds1302Write(uchar addr, uchar dat);
void Ds1302Init();
uchar Ds1302GR();
uchar Ds1302Read(uchar addr);
void Ds1302ReadTime();

extern uchar TIME[7];

#endif

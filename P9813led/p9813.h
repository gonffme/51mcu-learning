#ifndef __P9813_H
#define __P9813_H

#define CLK P0_6
#define DAT P0_7

typedef unsigned char uchar;
typedef unsigned int uint;
typedef unsigned long int u32;

void Delayms(uint i);
void Init_P9813(void);
u32 SetData(uchar b,uchar g,uchar r);
void SendData(u32 data);
void TestData(u32 data);

#endif

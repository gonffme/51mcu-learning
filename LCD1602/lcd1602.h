#ifndef __LCD1602_H
#define __LCD1602_H

#ifndef uchar
#define uchar unsigned char
#endif
#ifndef uint 
#define uint unsigned int
#endif

//#define LCD1602_4PINS


#define LCD1602_E P2_5
#define LCD1602_RW P2_6
#define LCD1602_RS P2_7
#define LCD1602_DATAPINS P0

void LcdWriteCom(uchar com);
void LcdWriteData(uchar dat);
void Lcd1602Init();



#endif

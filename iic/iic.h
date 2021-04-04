#ifndef __IIC_H
#define __IIC_H
typedef unsigned char uchar;
typedef unsigned int uint;

#include "8051.h"

#define SCL P3_1
#define SDA P3_0

void I2cStart();
void I2cStop();
uchar I2cSendByte(uchar dat);
uchar I2cReadByte();
void At24c02Write(uchar addr,uchar dat);
uchar At24c02Read(uchar addr);


#endif

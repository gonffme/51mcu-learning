#include "8051.h"

typedef unsigned char u8;
typedef unsigned int u16;

void delay(u16 i)
{
	while(i--);
}

void longdelay()
{
	u8 i=100;
	while(i>0)
	{
		delay(1000);
		i--;
	}
}

void main()
{
	while(1)
	{
		P0=0x33;
		P1=0x33;
		P2=0x33;
		P3=0x33;
		longdelay();
		P0=0xcc;
		P1=0xcc;
		P2=0xcc;
		P3=0xcc;
		longdelay();
	}
}

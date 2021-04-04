#include "8051.h"

typedef unsigned char u8;
typedef unsigned int u16;

void delay(u16 i)
{
	while(i--);
}

void delaymore(u8 j)
{
	while(j>0)
	{
		delay(10);
		j--;
	}
}

void main()
{
	P2 = 0x00;
	while(1)
	{
		P0=0x10;
		delaymore(50);
		P0=0x20;
		delaymore(50);
		P0=0x40;
		delaymore(50);
		P0=0x80;
		delaymore(50);
	}
}



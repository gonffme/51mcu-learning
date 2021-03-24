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
		delay(100);
		j--;
	}
}

void main()
{
	P2 = 0x00;
	while(1)
	{
		P0=0x70;
		delaymore(100);
		P0=0xb0;
		delaymore(100);
		P0=0xd0;
		delaymore(100);
		P0=0xe0;
		delaymore(100);
	}
}



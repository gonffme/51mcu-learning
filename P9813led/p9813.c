#include "8051.h"
#include "p9813.h"

#define delay3 {1-1; 1-1; 1-1;}
#define delay2 {1-1; 1-1;}
#define delay {1-1;}

void Delayms(uint i)
{
	uint j;
	while(i--)
	{
		j=100;
		while(j--);
	}
}

void Init_P9813(void)
{
	uchar i;
	DAT = 0;
	for(i=0;i<32;i++)
	{
		CLK = 0;
		delay;	
		CLK = 1;
		delay;
	}
}


u32 SetData(uchar b,uchar g,uchar r)
{
	u32 temp=0;
	u32 a;
	a = 0x0003;
	temp |= a<<30;
	a = ((~b)&0x00c0);
	temp |= a<<22;
	a = ((~g)&0x00c0);
	temp |= a<<20;
	a = ((~r)&0x00c0);
	temp |= a<<18;
	a = b;
	temp |= a<<16;
	a = g;
	temp |= a<<8;
	a = r;
	temp |= a<<0;
	return temp;
}

void SendData(u32 data)
{
	uchar i;
	for(i=0;i<32;i++)
	{
		if(data&0x80000000)
		{
			DAT = 1;
		}
		else
		{
			DAT = 0;
		}
		data <<= 1;
		delay;
		CLK = 0;
		delay;
		CLK = 1;
	}
}

void TestData(u32 data)
{
	uchar i;
	for(i=0;i<4;i++)
	{
		P2 = data>>24;
		Delayms(1000);
		Delayms(1000);
		data <<= 8;
		Delayms(1000);
		Delayms(1000);
	}
}

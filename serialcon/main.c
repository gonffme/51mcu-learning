#include "8051.h"

typedef unsigned char uchar;
typedef unsigned int uint;

#define led P3_2
uchar a, flag;
void Init_Timer()
{
	TMOD = 0x20;
	TH1 = 0xf3;
	TL1 = 0xf3;
	TR1 = 1;
	SCON = 0x50;//	SM0 = 0;SM1 = 1;REN = 1;
	EA = 1;
	ES = 1;
}

main()
{
	Init_Timer();
	while(1)
	{
		if(flag==1)
		{
			ES = 0;
			flag = 0;
			SBUF = a;
			while(!TI);
			TI = 0;
			ES = 1;
		}
	}
}

void serial() __interrupt 4
{
	flag = 1;
	if(SBUF==0x55)
	{
		led = 0;
	}
	else
	{
		led = 1;
	}
	a = SBUF;
	RI = 0;
}

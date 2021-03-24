#include "8051.h"

typedef unsigned char u8;
typedef unsigned int u16;

#define PWM P2_1
u8 DIR ;

u16 count, value, timer1;

void Timer1Init()
{
	TMOD |= 0x10;

	TH1 = 0xff;
	TL1 = 0xff; //1us

	ET1 = 1;
	EA = 1;
	TR1 = 1;
}


void main()
{
	Timer1Init();
	while(1)
	{
		if(count>100)
		{
			count = 0;
			if(DIR == 1)
			{
				value++;
			}
			if(DIR == 0)
			{
				value--;
			}	
		}

		if(value == 1000)
		{
			DIR = 0;
		}
		if(value == 0)
		{
			DIR = 1;
		}

		if(timer1 > 1000)
		{
			timer1 = 0;
		}
		if(timer1 < value)
		{
			PWM = 1;
		}
		else
		{
			PWM = 0;
		}
	}
}

void Time1(void) __interrupt 3
{
	TH1 = 0xff;
	TL1 = 0xff;

	timer1++;
	count++;
}

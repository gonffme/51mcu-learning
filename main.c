#include "8051.h"
#include "stdio.h"

typedef unsigned char uchar;
typedef unsigned int uint;

uchar flag=0;

//***********************************delay functions******************************************
void delay(uint i)
{
	while(i--);
}

void DelayXus(uint x)
{
	uchar i;
	while(x--)
	{
		for(i=0;i<100;i++);
	}
}

//********************************LED segment Display driver****************************
#define LSA P2_2
#define LSB P2_3
#define LSC P2_4
uchar smgduan[] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 
		   0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71};
uchar Display[8] = {0, 0, 0, 0, 0, 0, 0, 0};
void DisplayDigits()
{
	uchar i;
	for(i=0;i<8;i++)
	{
		LSC = i / 4;
		LSB = (i-4*LSC) / 2;
		LSA = i - 4*LSC - 2*LSB;
		P0 = Display[i];
		delay(200);
	}
}
/*int putchar(int c)
{
	while(!(SCON & 0x02));
	SCON &= !0x02;
	SBUF = c;
	return c;
}
*/

#define Trig P1_1
#define ECHO P1_2

void StartModule()
{
	Trig = 1;
	delay(2);
	Trig = 0;	
}

void InitTimer()
{
	TMOD = 0x01;
	TH0 = 0;
	TL0 = 0;
	ET0 = 1;
	EA = 1;
}

uint time;
uint s;
uint ss[4] = {0, 0, 0, 0};
void Count()
{
	s = (ss[0] + ss[1] + ss[2] + ss[3])/4;
//	printf("distance: %dmm\n", s);
	if(s>=4000|flag==1)
	{
		flag = 0;
		Display[0] = 0x40;
		Display[1] = 0x40;
		Display[2] = 0x40;
		Display[3] = 0x40;
	}
	else
	{
		Display[0] = smgduan[s/1000]|0x80;
		DisplayDigits();
		Display[1] = smgduan[s%1000/100];
		DisplayDigits();
		Display[2] = smgduan[s%100/10];
		DisplayDigits();
		Display[3] = smgduan[s%10];
	}
}
void main()
{
	uchar k=0;
	InitTimer();
	while(1)
	{
		 if(k>=4)
		 {
		 	k = 0;
		 }
		 StartModule();
		 while(!ECHO);
		 TR0 = 1;
		 while(ECHO);
		 TR0 = 0;
		 time = TH0*0x100 + TL0;
		 TH0 = 0;
		 TH1 = 0;
		 ss[k] = (time/58.0)*10;
		 k++;
	/*	for(k=0;k<4;k++)
		{
			StartModule();
			while(!ECHO);
			TR0 = 1;
			while(ECHO);
			TR0 = 0;
			time = TH0*0x100 + TL0;
			TH0 = 0;
			TH1 = 1;
			ss[k] = (time/58.0)*10;
			DisplayDigits();
			DisplayDigits();
			DisplayDigits();
		}
	*/	
		Count();
		uchar i=15;
		while(i--)
		{
			DisplayDigits();
		}
		DelayXus(10);
	}
}

void TimerOut() __interrupt 1
{
	flag = 1;
}

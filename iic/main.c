#include "8051.h"
#include "iic.h"


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
	for(i=4;i<8;i++)
	{
		LSC = i / 4;
		LSB = (i-4*LSC) / 2;
		LSA = i - 4*LSC - 2*LSB;
		P0 = Display[i];
		delay(100);
		P0 = 0x00;
	}
}

#define k1 P1_0
#define k2 P1_1
#define k3 P1_2
#define k4 P1_3
uchar num=0;
void Keypros()
{
	if(k1 == 0)
	{
		delay(1000);
		if(k1==0)
		{
			while(!k1);
			At24c02Write(0x01,num);
		}
	}
	if(k2 == 0)
	{
		delay(1000);
		if(k2==0)
		{
			while(!k2);
			num=At24c02Read(0x01);
		}
	}
	if(k3 == 0)
	{
		delay(1000);
		if(k3==0)
		{
			num += 1;
			if(num>=255)
			{num=0;}
		}
		while(!k3);
	}
	if(k4 == 0)
	{
		delay(1000);
		if(k4 == 0)
		{
			num =0;
		}
		while(!k4);
	}
}

void Digitspros()
{
	Display[4] = smgduan[num/1000];
	Display[5] = smgduan[num%1000/100];
	Display[6] = smgduan[num%100/10];
	Display[7] = smgduan[num%10];
}

void main()
{
	while(1)
	{
		Keypros();
		Digitspros();
		DisplayDigits();
	}
}

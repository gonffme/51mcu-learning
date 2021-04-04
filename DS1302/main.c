#include "8051.h"
#include "ds1302.h"

//typedef unsigned char uchar;
//typedef unsigned int uint;

//***********************************delay functions******************************************
void delay(uint i)
{
	while(i--);
}

void DelayXms(uint x)
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
uchar Display[8] = {0, 0, 0x09, 0, 0, 0x09, 0, 0};
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
		P0 = 0x00;
	}
}

void DataProcess()
{
	Ds1302ReadTime();
	Display[0] = smgduan[TIME[2]/16];
	Display[1] = smgduan[TIME[2]&0x0f];
	
	Display[3] = smgduan[TIME[1]/16];
	Display[4] = smgduan[TIME[1]&0x0f];

	Display[6] = smgduan[TIME[0]/16];
	Display[7] = smgduan[TIME[0]&0x0f];
}

void main()
{
	Ds1302Init();
	DelayXms(10);
	while(1)
	{
		DataProcess();
		DisplayDigits();
	}
}

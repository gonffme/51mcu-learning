#include "8051.h"

typedef unsigned char uchar;
typedef unsigned int uint;


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
	for(i=0;i<7;i++)
	{
		LSC = i / 4;
		LSB = (i-4*LSC) / 2;
		LSA = i - 4*LSC - 2*LSB;
		P0 = Display[i];
		delay(200);
	}
}

//**********************************************DS18B20 temperatrue driver******************************************************
#define status P3_2
#define DQ P3_3
uchar CurrentT = 0;
uchar Temp_Value[] = {0x00, 0x00};
uchar DS18B20_IS_OK = 1;

uchar Init_DS18B20()
{
	DQ = 1;
	delay(8);
	DQ = 0;
	delay(50);
	DQ = 1;
	delay(7);
	status = DQ;
	delay(50);
	return status;
}
uchar ReadOneByte()
{
	uchar i, dat=0;
	DQ = 1;
	delay(1);
	for(i=0;i<8;i++)
	{
		DQ = 0;
		dat >>= 1;
		DQ = 1;
		1 - 1;
		1 - 1; //key process: 2us delay is enough. don't make it too long.
		if(DQ)
		{
			dat |= 0x80;
		}
		delay(30);
		DQ = 1;
	}
	return dat;
}
void WriteOneByte(uchar dat)
{
	uchar i;
	for(i=0;i<8;i++)
	{
		DQ = 0;
		DQ = dat & 0x01;
		delay(5);
		DQ = 1;
		dat >>= 1;
	}
}
void ReadTemperature()
{
	if(Init_DS18B20())
		DS18B20_IS_OK = 0;
	else
	{
		WriteOneByte(0xcc);
		DisplayDigits();
		WriteOneByte(0x44);
		DisplayDigits();
		//delay(50000);
		//delay(25000);
		Init_DS18B20();
		WriteOneByte(0xcc);
		WriteOneByte(0xbe);
		DisplayDigits();
		Temp_Value[0] = ReadOneByte();
		Temp_Value[1] = ReadOneByte();
		DisplayDigits();
		DS18B20_IS_OK = 1;
	}
}
void Temperature_Process() //convert temperature from hex to decimal, then make it diplayable.
{
	int Temper = Temp_Value[1];
	Temper <<= 8;
	Temper |= Temp_Value[0];
	DisplayDigits();
	float tp;
	if(Temper<0)
	{
		Display[0] = 0x40;
		Temper -= 1;
		Temper = !Temper;
	}
	else
	{
		Display[0] = 0x00;
	}	
	tp = Temper;
	DisplayDigits();
	Temper = tp * 0.0625 * 100 + 0.5;
	DisplayDigits();
	Display[1] = smgduan[Temper/10000];
	DisplayDigits();
	Display[2] = smgduan[Temper%10000/1000];
	DisplayDigits();
	Display[3] = smgduan[Temper%1000/100]|0x80;
	DisplayDigits();
	Display[4] = smgduan[Temper%100/10];
	DisplayDigits();
	Display[5] = smgduan[Temper%10];
}

void main()
{
	Init_DS18B20();
	delay(50000);
	delay(25000);
	while(1)
	{
		ReadTemperature();
		Temperature_Process();
		uchar i=10;
		while(i--)
		{
			DisplayDigits();
		}
		DelayXus(10);
	}	
}

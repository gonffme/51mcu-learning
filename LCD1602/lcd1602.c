#include "8051.h"
#include "lcd1602.h"

//***********************************delay functions******************************************
void delay(uint i)
{
	while(i--);
}

void DelayXms(uint x)
{
	uchar a,b;
	for(;x>0;x--)
	{
		for(b=199;b>0;b--)
		{
			for(a=1;a>0;a--);
		}
	}
}



#ifndef LCD1602_4PINS
void LcdWriteCom(uchar com)
{
	LCD1602_E = 0; //enable to r/w
	LCD1602_RS = 0; //writing to commands
	LCD1602_RW = 0; //write
	LCD1602_DATAPINS = com;
	DelayXms(1);
	LCD1602_E = 1;
	DelayXms(5);
	LCD1602_E = 0;
}
#else 
void LcdWriteCom(uchar com)
{
	LCD1602_E = 0;
	LCD1602_RS = 0;
	LCD1602_RW = 0;
	LCD1602_DATAPINS = com;
	DelayXms(1);
	LCD1602_E = 1;
	DelayXms(5);
	LCD1602_E = 0;
	LCD1602_DATAPINS = com<<4;
	DelayXms(1);

	LCD1602_E = 1;
	DelayXms(5);
	LCD1602_E = 0;
}
#endif

#ifndef LCD1602_4PINS
void Lcd1602Init()
{
	LcdWriteCom(0x38); //start showing
	LcdWriteCom(0x0c); //show without pointer
	LcdWriteCom(0x06); //mode: move after writing 
	LcdWriteCom(0x01); //clear screen
}
#else
void Lcd1602Init()
{
	LcdWriteCom(0x32);
	LcdWriteCom(0x28);
	LcdWriteCom(0x0c);
	LcdWriteCom(0x06);
	LcdWriteCom(0x01);
	LcdWriteCom(0x80);
}
#endif

#ifndef LCD1602_4PINS
void LcdWriteData(uchar dat)
{
	LCD1602_E = 0;
	LCD1602_RS = 1; //writing to data
	LCD1602_RW = 0;

	LCD1602_DATAPINS = dat;
	DelayXms(1);
	LCD1602_E = 1;
	DelayXms(5);
	LCD1602_E = 0;
}
#else
void LcdWriteData(uchar dat)
{
	LCD1602_E = 0;
	LCD1602_RS = 1;
	LCD1602_RW = 0;

	LCD1602_DATAPINS = dat;
	DelayXms(1);
	LCD1602_E = 1;
	DelayXms(5);
	LCD1602_E = 0;
	LCD1602_DATAPINS = dat<<4;
	DelayXms(1);

	LCD1602_E = 1;
	DelayXms(5);
	LCD1602_E = 0;
}
#endif

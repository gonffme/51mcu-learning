#include "8051.h"
#include "ds1302.h"

void _nop()
{
}

#define nop _nop()
char READ_RTC_ADDR[7]={0x81,0x83,0x85,0x87,0x89,0x8b,0x8d};
char WRITE_RTC_ADDR[7]={0x80,0x82,0x84,0x86,0x88,0x8a,0x8c};

uchar TIME[7]={0x55,0x15,0x12,0x07,0x05,0x06,0x16};

void Ds1302GW(uchar dat) //general writing in the communication protocol
{
	uchar n;
	for(n=0;n<8;n++)
	{
		DSIO = dat&0x01; //lower bits first
		SCLK = 1; //uprising edge transmit
		SCLK = 0;
		_nop();
		dat >>= 1;
	}
}
void Ds1302Write(uchar addr, uchar dat)
{
	RST = 0;
	SCLK = 0;
	_nop();
	RST = 1; //enable reset
	Ds1302GW(addr);
	Ds1302GW(dat);
	RST = 0;
	_nop();
	SCLK = 1;
}

void Ds1302Init()
{
	uchar n;
	Ds1302Write(0x80,0x00);
	Ds1302Write(0x8e,0x00);
	Ds1302Write(0x80,0x80);
	for(n=0;n<7;n++)
	{
		Ds1302Write(WRITE_RTC_ADDR[n],TIME[n]);
	}
	Ds1302Write(0x8e,0x80);
}

uchar Ds1302GR()
{
	uchar n,temp=0x00;
	for(n=0;n<8;n++)
	{
		temp >>= 1;
		if(DSIO==1)
		{
			temp |= 0x80;
		}
		else
		{
			temp &= 0x7f;
		}
		SCLK = 1;
		SCLK = 0;
	}
	return temp;
}
uchar Ds1302Read(uchar addr)
{
	uchar dat;
	RST = 1;
	_nop();
	addr |= 0x01;
	Ds1302GW(addr);
	dat=Ds1302GR();
	//SCLK = 1;
	//SCLK = 0;
	//DSIO = 1;
	RST = 0; //make Ds1302 have time to get stable
	_nop();
	SCLK = 1;
	_nop();
	DSIO = 0;
	_nop();
	DSIO = 1;
	_nop();
	return dat;
}

void Ds1302ReadTime()
{
	uchar n;
	for(n=0;n<7;n++)
	{
		TIME[n] = Ds1302Read(READ_RTC_ADDR[n]);
	}
}



//***************************** I2c on eeprom(At24c02) chip *******************
#include "8051.h"
#include "iic.h"

void nop()
{}
#define _Nop() nop()
#define state P2_7
#define state1 P2_6
#define state2 P2_5

void I2cStart()
{
	SDA = 1;
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	SCL = 1;
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	SDA = 0;
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	SCL = 0;
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
}

void I2cStop()
{
	SDA = 0;
	_Nop();
	SCL = 1;
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	SDA = 1;
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
}

uchar I2cSendByte(uchar dat)
{
	uchar a = 0, b = 0;
	for(a=0;a<8;a++)
	{
		if((dat<<a)&0x80) 
		{
			SDA = 1;
		}
		else 
		{
			SDA = 0;
		}
		_Nop();
		_Nop();
		SCL = 1;
		_Nop();
		_Nop();
		_Nop();
		_Nop();
		_Nop();
		_Nop();
		_Nop();
		_Nop();
		SCL = 0;
		_Nop();
		_Nop();
	}
	SDA = 1;
	_Nop();
	_Nop();
	_Nop();
	SCL = 1;
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	_Nop();
	/*while(SDA)
	{
		b++;
		if(b>200)
		{
			SCL = 0;
			return 0;
		}
	}*/
	if(SDA)
	{
		SCL = 0;
		_Nop();
		_Nop();
		_Nop();
		_Nop();
		SDA = 1;
		_Nop();
		_Nop();
		return 0;
	}
	else
	{
		SCL = 0;
		_Nop();
		_Nop();
		_Nop();
		_Nop();
		SDA = 1;
		_Nop();
		_Nop();
		return 1;
	}
}	

uchar I2cReadByte()
{
	uchar a=0,dat=0;
	SDA = 1;
	for(a=0;a<8;a++)
	{
		_Nop();
		SCL = 0;
		_Nop();
		_Nop();
		_Nop();
		_Nop();
		_Nop();
		SCL = 1;
		_Nop();
		_Nop();
		dat<<=1;
		dat |= SDA;	
		_Nop();
		_Nop();
	}
	SCL = 0;
	_Nop();
	_Nop();
	return dat;
}

void At24c02Write(uchar addr, uchar dat)
{
	I2cStart();
	state = I2cSendByte(0xa0);
	//	I2cSendByte(0xa0);
	state1= I2cSendByte(addr);
	//	I2cSendByte(addr);
	state2= I2cSendByte(dat);
	I2cStop();
}

char At24c02Read(uchar addr)
{
	uchar num;
	I2cStart();
	I2cSendByte(0xa0);
	I2cSendByte(addr);
	I2cStart();
	I2cSendByte(0xa1);
	num = I2cReadByte();	
	I2cStop();
	return num;
}

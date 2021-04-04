#include "8051.h"

typedef unsigned char uchar;
typedef unsigned int uint;

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
uchar Display[8] = {0, 0, 0x76, 0, 0, 0, 0, 0};
void DisplayDigits()
{
	uchar i;
	for(i=0;i<2;i++)
	{
		LSC = i / 4;
		LSB = (i-4*LSC) / 2;
		LSA = i - 4*LSC - 2*LSB;
		P0 = Display[i];
		delay(200);
	}
}

#define IRIN P3_2
uchar IrValue[6];
uchar Time;
void IrInit()
{
	IT0 = 1;
	EX0 = 1;
	EA = 1;

	IRIN = 1;
}

void main()
{
	IrInit();
	while(1)
	{
		Display[0] = smgduan[IrValue[2]/16];
		Display[1] = smgduan[IrValue[2]&0x0f];
		DisplayDigits();
	}
}

void ReadIr() __interrupt 0
{
	uchar j,k;
	uint err;
	Time = 0;
	delay(700);
	if(IRIN==0)
	{
		err = 1000;
		while((IRIN==0)&&(err>0))
		{
			delay(1);
			err--;
		}
		if(IRIN==1)
		{
			err = 500;
			while((IRIN==1)&&(err>0))
			{
				delay(1);
				err--;
			}
			for(k=0;k<4;k++)
			{
				for(j=0;j<8;j++)
				{
					err = 60;
					while((IRIN==0)&&(err>0))
					{
						delay(10);
						err--;
					}
					err = 500;
					while((IRIN==1)&&(err>0))
					{
						delay(10);
						err--;
						Time++;
						if(Time>30)
						{
							return;
						}
					}
					IrValue[k]>>=1;
					if(Time>=8)
					{
						IrValue[k]|=0x80;
					}
					Time = 0;
				}
			}
		}
		if(IrValue[2]!= (!IrValue[3]))
		{
			return;
		}
	}
}

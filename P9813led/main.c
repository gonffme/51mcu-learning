#include "8051.h"
#include "p9813.h"

void delayus(uint i)
{
	while(i--);
}
void main()
{	
	u32 data, dataH, dataL;
	u32 a = 0;
	while(1)
	{
		data = SetData(0xff, 0x00, 0x00);
		SendData(a);
		SendData(data);
		SendData(data);
		delayus(50000);
		delayus(50000);
		data = SetData(0x00, 0xff, 0x00);
		SendData(a);
		SendData(data);
		SendData(data);
		delayus(50000);
		delayus(50000);
		data = SetData(0x00, 0x00, 0xff);
		SendData(a);
		SendData(data);
		SendData(data);
		delayus(50000);
		delayus(50000);
		dataH=SetData(0xff,0xff,0x00);
		dataL=SetData(0xff,0x00,0x01);
		SendData(a);
		SendData(dataH);
		SendData(dataL);
		delayus(50000);
		delayus(50000);

		uint b,g,r;
		uchar b1,b2,g1,g2,r1,r2;
		
		for(r=0xfff8;r>=0x0007;r--)
		{
			for(g=0xfff8;g>=0x0007;g--)
			{
				for(b=0xfff8;b>=0x0007;b--)
				{
					b1 = b>>8;
					b2 = b&0xff;
					g1 = g>>8;
					g2 = g&0xff;
					r1 = r>>8;
					r2 = r&0xff;
					dataH=SetData(b1,g1,r1);
					dataL=SetData(b2,g2,r2);
					SendData(a);
					SendData(dataH);
					SendData(dataL);
					Delayms(1);
					b-=50;
				}
				g-=30;
			}
			r-=10;
		}
	}
}


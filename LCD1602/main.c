#include "8051.h"
#include "lcd1602.h"


void main()
{
	uchar i=0,flag=0;
	uchar DispStr[]="hello, lcd! and hello, world!";
	Lcd1602Init();
	LcdWriteCom(0x80); //set starting point
	while(flag==0)
	{
		if(*(DispStr+i)!='\0')
		{
			LcdWriteData(*(DispStr+i));
			i++;
			if(i%16==0)
			{
				LcdWriteCom(0xc0);
			}
		}
		else{flag = 1;}
	}
	while(1);
}

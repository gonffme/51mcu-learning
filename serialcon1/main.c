#include "8051.h"

typedef unsigned char uchar;
typedef unsigned int uint;

#define led P3_2
uchar a, flag;
void Init_Timer()
{
	TMOD = 0x21;
	TH1 = 0xf3;
	TL1 = 0xf3;
	TR1 = 1;
	SCON = 0x50;//	SM0 = 0;SM1 = 1;REN = 1;
	EA = 1;
	ES = 1;
}

void Send_Char(uchar chr)
{
	ES = 0;
	SBUF = chr;
	while(!TI);
	TI = 0;
	ES = 1;
}

void Send_Str(uchar *str)
{
	while(*str != '\0')
	{
		ES = 0;
		SBUF = *str;
		while(!TI);
		TI = 0;
		ES = 1;
		str++;
	}
}

main()
{
	Init_Timer();
	while(1)
	{
		if(flag==1)
		{
			ES = 0;
			flag = 0;
			SBUF = a;
			while(!TI);
			TI = 0;
			ES = 1;
		}
		else
		{
			//uchar string0[] = "sending char:";
			//Send_Str(string0);
			Send_Char('h');
			Send_Char('\n');
			//uchar string1[] = "sending string:";
			//Send_Str(string1);
			uchar string2[] = "hello, world\n";
			Send_Str(string2);
			uchar a = 0 + '0';
			Send_Char(a);
			Send_Char('\n');
		}
	}
}

void serial() __interrupt 4
{
	flag = 1;
	if(SBUF==0x55)
	{
		led = 0;
	}
	else
	{
		led = 1;
	}
	a = SBUF;
	RI = 0;
}

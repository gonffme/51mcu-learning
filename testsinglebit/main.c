#include "8051.h"

#define x P2_0

void delay(unsigned int i)
{
	unsigned int j = 1000;
	for(;i>0;i--)
	{
		j = 1000;
		while(j--);
	}
}

void main()
{
	while(1)
	{
		x = 0;
		delay(10);
		x = 1;
		delay(10);
	}
}

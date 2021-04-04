#include "8051.h"
#include "delay.h"

typedef unsigned char uchar;
typedef unsigned int uint;

void main()
{
	P0 = 0x01;
	while(1)
	{
		delay(10000);
		P0 += 1;
	}
}

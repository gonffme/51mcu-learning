CC = sdcc

mian.hex: main.ihx
	packihx main.ihx > main.hex

main.ihx: main.rel ds1302.rel
	$(CC) main.rel ds1302.rel

main.rel: main.c ds1302.h
	$(CC) -c main.c

ds1302.rel: ds1302.c
	$(CC) -c ds1302.c

clean: 
	rm -rf main.hex main.asm main.ihx main.lk main.lst
	rm -rf main.map main.mem main.rel main.rst main.sym
	rm -rf ds1302.asm ds1302.lst ds1302.rel ds1302.rst ds1302.sym
	rm -rf testhex.bin

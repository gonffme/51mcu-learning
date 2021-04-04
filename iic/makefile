CC = sdcc

mian.hex: main.ihx
	packihx main.ihx > main.hex

main.ihx: main.rel iic.rel
	$(CC) main.rel iic.rel

main.rel: main.c iic.h
	$(CC) -c main.c

iic.rel: iic.c
	$(CC) -c iic.c

clean: 
	rm -rf main.hex main.asm main.ihx main.lk main.lst
	rm -rf main.map main.mem main.rel main.rst main.sym
	rm -rf iic.asm iic.lst iic.rel iic.rst iic.sym
	rm -rf testhex.bin

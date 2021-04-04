CC	= sdcc

main.hex: main.ihx
	packihx main.ihx > main.hex

main.ihx: main.rel delay.rel
	$(CC) main.rel delay.rel

main.rel: main.c delay.h
	$(CC) -c main.c

delay.rel: delay.c
	$(CC) -c delay.c

clean: 
	rm -rf main.hex main.asm main.ihx main.lk main.lst
	rm -rf main.map main.mem main.rel main.rst main.sym
	rm -rf delay.asm delay.lst delay.rel delay.rst delay.sym

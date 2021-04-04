CC = sdcc

mian.hex: main.ihx
	packihx main.ihx > main.hex

main.ihx: main.rel lcd1602.rel
	$(CC) *.rel -o main.ihx
	
%.rel: %.c 
	$(CC) -c $<


clean: 
	rm -rf *.hex *.asm *.ihx *.lk *.lst *.map *.mem *.rel *.rst *.sym
	rm -rf testhex.bin

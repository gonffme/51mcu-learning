CC = sdcc

mian.hex: main.ihx
	packihx main.ihx > main.hex

main.ihx: main.rel p9813.rel
	$(CC) *.rel 
	
%.rel: %.c 
	$(CC) -c $<


clean: 
	rm -rf *.hex *.asm *.ihx *.lk *.lst *.map *.mem *.rel *.rst *.sym
	rm -rf testhex.bin

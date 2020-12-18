donothing.ihx:
	sdcc donothing.c

donothing.fw: donothing.ihx
	../linux/tools/firmware/ihex2fw $< $@

1234jump.ihx: 1234jump.s
	sdas8051 -o 1234jump.s
	sdld -i 1234jump

1234jump.fw: 1234jump.ihx
	../linux/tools/firmware/ihex2fw $< $@

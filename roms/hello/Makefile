all:	hello.vhdl hello.dis int_test.vhdl int_test.dis

INCLUDES=-I../include

%.vhdl:     	%.ram footer.vhdl header.vhdl
				cat header.vhdl > $@
				cat $< >> $@
				cat footer.vhdl >> $@

%.ram:			%.bin
				java -classpath ../../simulator/zpusim.jar com.zylin.zpu.simulator.tools.MakeRam $< >$@
				
%.elf:			%.c ../include/gmzpu_io.h
				zpu-elf-gcc -O3 -phi ${INCLUDES} `pwd`/$< -o $@ -Wl,--relax -Wl,--gc-sections  -g

%.dis:			%.elf
				zpu-elf-objdump --disassemble-all >$@ $<

%.bin:			%.elf
				zpu-elf-objcopy -O binary $< $@

clean:
				rm -f *.bin *.elf *.dis *.ram

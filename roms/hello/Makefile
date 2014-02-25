all:	hello.vhdl hello.dis int_test.vhdl int_test.dis

%.vhdl:     	%.ram footer.vhdl header.vhdl
				cat header.vhdl > $@
				cat $< >> $@
				cat footer.vhdl >> $@

%.ram:			%.bin
				java -classpath ../../simulator/zpusim.jar com.zylin.zpu.simulator.tools.MakeRam $< >$@
				
%.elf:			%.c
				zpu-elf-gcc -O3 -phi `pwd`/$< -o $@ -Wl,--relax -Wl,--gc-sections  -g

%.dis:			%.elf
				zpu-elf-objdump --disassemble-all >$@ $<

%.bin:			%.elf
				zpu-elf-objcopy -O binary $< $@

clean:
				rm -f *.bin *.elf *.dis *.ram

all:	${TARGET}.vhdl ${TARGET}.dis ${TARGET}.bin ${TARGET}.elf ${TARGET}.ram

INCLUDES=-I../include

%.vhdl:     	%.ram ../vhdl/footer.vhdl ../vhdl/header.vhdl
				cat ../vhdl/header.vhdl > $@
				cat $< >> $@
				cat ../vhdl/footer.vhdl >> $@

%.ram:			%.bin
				java -classpath ../../simulator/zpusim.jar com.zylin.zpu.simulator.tools.MakeRam $< >$@
				
%.elf:			%.c ../include/gmzpu_io.h
				zpu-elf-gcc -O3 -phi ${INCLUDES} `pwd`/$< -o $@ -Wl,--relax -Wl,--gc-sections  -g

%.dis:			%.elf
				zpu-elf-objdump --disassemble-all >$@ $<

%.bin:			%.elf
				zpu-elf-objcopy -O binary $< $@

clean:
				rm -f *.bin *.elf *.dis *.ram *.vhdl

all:	hello.vhdl hello.dis

hello.vhdl:     hello.ram footer.vhdl header.vhdl
				cat header.vhdl > hello.vhdl
				cat hello.ram >> hello.vhdl
				cat footer.vhdl >> hello.vhdl

hello.ram:		hello.bin
				java -classpath ../../simulator/zpusim.jar com.zylin.zpu.simulator.tools.MakeRam hello.bin >hello.ram
				
hello.elf:		hello.c
				zpu-elf-gcc -O3 -phi `pwd`/hello.c -o hello.elf -Wl,--relax -Wl,--gc-sections  -g

hello.dis:		hello.elf
				zpu-elf-objdump --disassemble-all >hello.dis hello.elf

hello.bin:		hello.elf
				zpu-elf-objcopy -O binary hello.elf hello.bin

clean:
				rm -f hello.bin hello.elf hello.dis hello.ram hello.vhdl

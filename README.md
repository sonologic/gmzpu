gmZPU
=====

gmZPU is a System-on-Chip (SoC) core based on the zpu medium core.

In progress:
- implement wishbone controller
- implement non-interactive unit test suite

Todo:
- implement synthesizable PhiIO
- increase address width
- add memory management
- add process contexts
- virtual memory
- add dma

Done:
- add interrupt controller


Goals:
- for me to learn vhdl

Long term goals:
- experiment with security-by-design microprocessors
- experiment with security-by-design operating system

Getting started
---------------

Instructions for linux. If you know how to do this in windows, let me know.

First install Altera's ModelSim (comes with Quartus II):

http://www.altera.com/products/software/quartus-ii/web-edition/qts-we-index.html

Then make sure to put the modelsim binary dir in your path. If you installed
quartus to /opt/quartus, something like this:

~/gmzpu $ export PATH=${PATH}:/opt/quartus/13.1/modelsim_ase/bin/

Then run the unit tests:

~/gmczpu $ cd vhdl
~/gmzpu/vhdl $ ./test.sh
[OK  ] ~/gmzpu/vhdl/ZetaIO/interrupt/test/interrupt_line.do
[OK  ] ~/gmzpu/vhdl/ZetaIO/interrupt/test/interrupt_regs.do
[OK  ] ~/gmzpu/vhdl/ZetaIO/interrupt/test/pic.do
[OK  ] ~/gmzpu/vhdl/ZetaIO/timer/test/timer.do
[OK  ] ~/gmzpu/vhdl/ZetaIO/timer/test/timers.do
5/5 tests passed, 0 failed


Some of the unit tests can be run in the gui mode of vsim:

~/gmzpu/vhdl $ cd ZetaIO/timer/test
~/gmzpu/vhdl/ZetaIO/timer/test $ vsim -do timers.dont




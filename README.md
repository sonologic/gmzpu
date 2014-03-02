gmZPU
=====

gmZPU is a System-on-Chip (SoC) core based on the zpu medium core.

Todo:
- implement wishbone controller
- add interrupt controller
- add memory management
- increase address width
- add dma

Goals:
- for me to learn vhdl

Long term goals:
- experiment with security-by-design microprocessors
- experiment with security-by-design operating system

Getting started
---------------

First install Altera's ModelSim.

Then:

cd sim

vsim -do test.do              # run hello world on medium zpu core

vsim -do zwishbone__decode.do # run testbench for zwishbone controller
                              # decode component



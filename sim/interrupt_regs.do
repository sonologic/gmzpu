# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# vsim -do interrupt_regs.do

set BreakOnAssertion 1

vlib gmzpu
vcom -work gmzpu ../vhdl/interrupt/interrupt_pkg.vhdl
vcom -work gmzpu ../vhdl/interrupt/interrupt.vhdl

vlib work
vcom -work work ../vhdl/testbenches/interrupt_regs_tb.vhdl

# run tb
vsim interrupt_regs_TB

view wave

do wave_interrupt_regs.do

view structure
#view signals

run -all

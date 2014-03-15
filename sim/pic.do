# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do gmzpu.do

set BreakOnAssertion 1

vlib gmzpu
vcom -work gmzpu ../vhdl/interrupt/interrupt_pkg.vhdl
vcom -work gmzpu ../vhdl/interrupt/interrupt.vhdl

vlib work
vcom -work work ../vhdl/testbenches/pic_tb.vhdl

# run tb
vsim pic_TB

view wave

do wave_pic.do

view structure
#view signals

run -all

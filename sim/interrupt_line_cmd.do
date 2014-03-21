# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do gmzpu.do

set BreakOnAssertion 1

vlib zpu
vcom -work zpu ../vhdl/devices/txt_util.vhdl

vlib gmzpu
vcom -work gmzpu ../vhdl/interrupt/interrupt_pkg.vhdl
vcom -work gmzpu ../vhdl/interrupt/interrupt.vhdl

vlib work
vcom -work work ../vhdl/testbenches/interrupt_line_tb.vhdl

# run tb
vsim interrupt_line_TB

run -all

exit

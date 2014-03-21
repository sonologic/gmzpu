# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do gmzpu.do

set BreakOnAssertion 1

vlib gmzpu
vcom -work gmzpu ../vhdl/zwishbone/zwishbone_pkg.vhdl
vcom -work gmzpu ../vhdl/zwishbone/zwishbone.vhdl

vlib work
vcom -work work ../vhdl/testbenches/zwishbone_regs_tb.vhdl

# run ZPU
vsim zwishbone_regs_TB

run -all

exit

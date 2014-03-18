# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do gmzpu.do

set BreakOnAssertion 1

vlib gmzpu
vcom -work gmzpu ../vhdl/timer/timer_pkg.vhdl
vcom -work gmzpu ../vhdl/timer/timer.vhdl

vlib work
vcom -work work ../vhdl/testbenches/timer_tb.vhdl

# run tb
vsim timer_TB

view wave

do wave_timer.do

view structure
#view signals

run -all

# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do gmzpu.do

#set BreakOnAssertion 1

vlib gmzpu
vcom -work gmzpu ../timer_pkg.vhdl
vcom -work gmzpu ../timer.vhdl

vlib work
vcom -work work timer_tb.vhdl

# run tb
vsim timer_TB

#view wave

#do wave_timer.do

#view structure
#view signals

run -all

exit

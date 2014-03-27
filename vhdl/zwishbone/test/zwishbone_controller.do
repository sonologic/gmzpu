# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do gmzpu.do

#set BreakOnAssertion 1

vlib gmzpu
vcom -work gmzpu ../zwishbone_pkg.vhdl
vcom -work gmzpu ../zwishbone2.vhdl

vlib work
vcom -work work zwishbone_controller_tb.vhdl

# run tb
vsim zwishbone_controller_TB

view wave

do wave/wave_zwishbone_controller.do
#add wave -recursive *

#view structure
#view signals

run -all

#exit

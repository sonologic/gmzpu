# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do simzpu_medium.do

set BreakOnAssertion 1
vlib zpu

vcom -work zpu ../vhdl/zpu_pkg.vhdl
vcom -work zpu ../vhdl/wishbone.vhdl

vlib work
vcom -work work ../vhdl/testbenches/zpu_wishbone_intercon.vhdl

# run ZPU
vsim zpu_wishbone_intercon_tb

view wave

add wave -recursive *
configure wave -timelineunits us

#add wave -recursive *
view structure
#view signals



# Enough to run tiny programs
run 1000 ms

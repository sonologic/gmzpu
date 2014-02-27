# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do simzpu_medium.do

set BreakOnAssertion 1
vlib zpu

vcom -work zpu ../vhdl/zpu_pkg.vhdl
vcom -work zpu ../vhdl/wishbone.vhdl

vlib wb_slaves
vcom -work wb_slaves ../vhdl/wb_slaves/wb_slaves_pkg.vhdl
vcom -work wb_slaves ../vhdl/wb_slaves/WBOPRT08.vhdl

vlib work
vcom -work work ../vhdl/testbenches/zpu_wishbone_WBOPRT08.vhdl

# run ZPU
vsim zpu_wishbone_WBOPRT08_tb

view wave

add wave -recursive *
configure wave -timelineunits us

#add wave -recursive *
view structure
#view signals



# Enough to run tiny programs
run 1000 ms

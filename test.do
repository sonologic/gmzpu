# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do simzpu_medium.do

set BreakOnAssertion 1
vlib zpu

vcom -work zpu roms/hello_bram.vhdl
vcom -work zpu roms/hello_dbram.vhdl

vcom -work zpu zpu_pkg.vhdl
vcom -work zpu zpu_small.vhdl
vcom -work zpu zpu_medium.vhdl

vcom -work zpu helpers/zpu_med1.vhdl
vcom -work zpu helpers/zpu_small1.vhdl

vcom -work zpu  devices/txt_util.vhdl
vcom -work zpu  devices/phi_io.vhdl
vcom -work zpu  devices/timer.vhdl
vcom -work zpu  devices/gpio.vhdl
vcom -work zpu  devices/rx_unit.vhdl
vcom -work zpu  devices/tx_unit.vhdl
vcom -work zpu  devices/br_gen.vhdl
vcom -work zpu  devices/trace.vhdl

vlib work
#vcom top.vhd
#vcom top_tb.vhd
vcom roms/rom_pkg.vhdl
vcom testbenches/dmips_med1_tb.vhdl

# run ZPU
vsim DMIPS_Med1_TB
view wave
add wave -recursive *
#add wave -recursive fpga_top/*
view structure
#view signals

# Enough to run tiny programs
run 10000 ms

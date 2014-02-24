# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do simzpu_medium.do

set BreakOnAssertion 1
vlib zpu


vcom -work zpu ../vhdl/roms/hello_bram.vhdl
vcom -work zpu ../vhdl/roms/hello_dbram.vhdl
vcom -work zpu ../vhdl/roms/rom_pkg.vhdl

vcom -work zpu ../vhdl/zpu_pkg.vhdl
vcom -work zpu ../vhdl/zpu_small.vhdl
vcom -work zpu ../vhdl/zpu_medium.vhdl

vcom -work zpu ../vhdl/helpers/zpu_med1.vhdl
vcom -work zpu ../vhdl/helpers/zpu_small1.vhdl

vcom -work zpu  ../vhdl/devices/txt_util.vhdl
vcom -work zpu  ../vhdl/devices/phi_io.vhdl
vcom -work zpu  ../vhdl/devices/timer.vhdl
vcom -work zpu  ../vhdl/devices/gpio.vhdl
vcom -work zpu  ../vhdl/devices/rx_unit.vhdl
vcom -work zpu  ../vhdl/devices/tx_unit.vhdl
vcom -work zpu  ../vhdl/devices/br_gen.vhdl
vcom -work zpu  ../vhdl/devices/trace.vhdl

vlib work
vcom -work work ../vhdl/roms/rom_pkg.vhdl
vcom -work work ../vhdl/testbenches/dmips_med1_tb.vhdl

# run ZPU
vsim DMIPS_Med1_TB
view wave
add wave -recursive *
view structure
#view signals

# Enough to run tiny programs
run 10000 ms

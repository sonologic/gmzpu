# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do gmzpu.do

set BreakOnAssertion 1

vlib gmzpu
vcom -work gmzpu ../vhdl/zwishbone/zwishbone_pkg.vhdl
vcom -work gmzpu ../vhdl/zwishbone/zwishbone.vhdl
vcom -work gmzpu ../vhdl/interrupt/interrupt_pkg.vhdl
vcom -work gmzpu ../vhdl/interrupt/interrupt.vhdl

vlib zpu
#vcom -work zpu ../vhdl/roms/hello_bram.vhdl
#vcom -work zpu ../vhdl/roms/my_hello.vhdl
#vcom -work zpu ../vhdl/roms/hello.vhdl
#vcom -work zpu ../vhdl/roms/int_test.vhdl
vcom -work zpu ../vhdl/roms/zwc_test.vhdl
#vcom -work zpu ../vhdl/roms/hello_dbram.vhdl
vcom -work zpu ../vhdl/roms/rom_pkg.vhdl

vcom -work zpu ../vhdl/zpu_pkg.vhdl
#vcom -work zpu ../vhdl/zpu_small.vhdl
vcom -work zpu ../vhdl/zpu_medium.vhdl

vcom -work zpu ../vhdl/helpers/gmzpu.vhdl
#vcom -work zpu ../vhdl/helpers/zpu_small1.vhdl

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
vcom -work work ../vhdl/testbenches/gmzpu_tb.vhdl

# run ZPU
vsim gmZPU_TB

view wave

do wave_gmzpu.do

view structure

# Enough to run tiny programs
run 10000 ms

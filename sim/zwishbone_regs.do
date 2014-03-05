# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do gmzpu.do

set BreakOnAssertion 1
#vlib zpu
#vcom -work zpu ../vhdl/roms/hello_bram.vhdl
#vcom -work zpu ../vhdl/roms/my_hello.vhdl
#vcom -work zpu ../vhdl/roms/hello.vhdl
#vcom -work zpu ../vhdl/roms/int_test.vhdl
#vcom -work zpu ../vhdl/roms/hello_dbram.vhdl
#vcom -work zpu ../vhdl/roms/rom_pkg.vhdl

#vcom -work zpu ../vhdl/zpu_pkg.vhdl
#vcom -work zpu ../vhdl/zpu_small.vhdl
#vcom -work zpu ../vhdl/zpu_medium.vhdl

#vcom -work zpu ../vhdl/helpers/gmzpu.vhdl
#vcom -work zpu ../vhdl/helpers/zpu_small1.vhdl

#vcom -work zpu  ../vhdl/devices/txt_util.vhdl
#vcom -work zpu  ../vhdl/devices/phi_io.vhdl
#vcom -work zpu  ../vhdl/devices/timer.vhdl
#vcom -work zpu  ../vhdl/devices/gpio.vhdl
#vcom -work zpu  ../vhdl/devices/rx_unit.vhdl
#vcom -work zpu  ../vhdl/devices/tx_unit.vhdl
#vcom -work zpu  ../vhdl/devices/br_gen.vhdl
#vcom -work zpu  ../vhdl/devices/trace.vhdl

vlib gmzpu
vcom -work gmzpu ../vhdl/zwishbone/zwishbone_pkg.vhdl
vcom -work gmzpu ../vhdl/zwishbone/zwishbone.vhdl

vlib work
vcom -work work ../vhdl/testbenches/zwishbone_regs_tb.vhdl

# run ZPU
vsim zwishbone_regs_TB

view wave

do wave_zwishbone_regs.do

#add wave -recursive *
view structure
#view signals



# Enough to run tiny programs
# run 1000 ms
run -all

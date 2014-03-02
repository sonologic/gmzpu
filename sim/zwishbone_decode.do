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
vcom -work work ../vhdl/testbenches/zwishbone_decode_tb.vhdl

# run ZPU
vsim zwishbone_decode_TB

view wave


onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /zwishbone_decode_tb/clk
add wave -noupdate /zwishbone_decode_tb/reset
add wave -noupdate /zwishbone_decode_tb/enable
add wave -noupdate /zwishbone_decode_tb/we
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/adr
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/dat_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/dat_i
add wave -noupdate /zwishbone_decode_tb/bus_en_o
add wave -noupdate /zwishbone_decode_tb/reg_en_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/reg_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/reg_i
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/bus_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/bus_i
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/radr_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/badr_o
add wave -noupdate /zwishbone_decode_tb/cs_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/adr_i
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/dat_i
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/dat_o
add wave -noupdate /zwishbone_decode_tb/c_decode/ena_i
add wave -noupdate /zwishbone_decode_tb/c_decode/rst_i
add wave -noupdate /zwishbone_decode_tb/c_decode/we_i
add wave -noupdate /zwishbone_decode_tb/c_decode/reg_en_o
add wave -noupdate /zwishbone_decode_tb/c_decode/bus_en_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/radr_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/badr_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/reg_i
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/reg_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/bus_i
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/bus_o
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/cs_o
add wave -noupdate /zwishbone_decode_tb/c_decode/reg_en_r
add wave -noupdate /zwishbone_decode_tb/c_decode/bus_en_r
add wave -noupdate /zwishbone_decode_tb/c_decode/en_r
add wave -noupdate /zwishbone_decode_tb/c_decode/re_r
add wave -noupdate /zwishbone_decode_tb/c_decode/we_r
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/cs_r
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/adr
add wave -noupdate -radix hexadecimal /zwishbone_decode_tb/c_decode/io_adr_r
add wave -noupdate /zwishbone_decode_tb/c_decode/bus_re_r
add wave -noupdate /zwishbone_decode_tb/c_decode/bus_we_r
add wave -noupdate /zwishbone_decode_tb/c_decode/reg_re_r
add wave -noupdate /zwishbone_decode_tb/c_decode/reg_we_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {50122 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 292
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {109568 ps}
#add wave -recursive *

#add wave -recursive *
view structure
#view signals



# Enough to run tiny programs
# run 1000 ms
run -all

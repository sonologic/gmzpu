# Xilinx WebPack modelsim script
#
# cd C:/workspace/zpu/zpu/hdl/example_medium
# do simzpu_medium.do

set BreakOnAssertion 1
vlib zpu


#vcom -work zpu ../vhdl/roms/hello_bram.vhdl
#vcom -work zpu ../vhdl/roms/my_hello.vhdl
vcom -work zpu ../vhdl/roms/hello.vhdl
#vcom -work zpu ../vhdl/roms/hello_dbram.vhdl
vcom -work zpu ../vhdl/roms/rom_pkg.vhdl

vcom -work zpu ../vhdl/zpu_pkg.vhdl
#vcom -work zpu ../vhdl/zpu_small.vhdl
vcom -work zpu ../vhdl/zpu_medium.vhdl

vcom -work zpu ../vhdl/helpers/zpu_med1.vhdl
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
vcom -work work ../vhdl/testbenches/dmips_med1_tb.vhdl

# run ZPU
vsim DMIPS_Med1_TB

view wave

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group TB /dmips_med1_tb/clk
add wave -noupdate -group TB /dmips_med1_tb/reset
add wave -noupdate -group TB /dmips_med1_tb/interrupt
add wave -noupdate -group TB /dmips_med1_tb/break
add wave -noupdate -group TB /dmips_med1_tb/dbg
add wave -noupdate -group TB /dmips_med1_tb/rs232_tx
add wave -noupdate -group TB /dmips_med1_tb/rs232_rx
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/clk_i
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/rst_i
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/interrupt_i
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/break_o
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/dbg_o
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/rs232_tx_o
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/rs232_rx_i
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/gpio_in
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/gpio_out
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/gpio_dir
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/mem_busy
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/mem_read
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/mem_write
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/mem_addr
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/mem_we
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/mem_re
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/ram_busy
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/ram_read
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/ram_addr
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/ram_we
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/ram_re
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/ram_ready_r
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/io_busy
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/io_re
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/io_we
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/io_read
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/io_ready
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/io_reading_r
add wave -noupdate -group {ZPU port} /dmips_med1_tb/zpu/io_addr
add wave -noupdate -group Memory /dmips_med1_tb/zpu/memory/clk_i
add wave -noupdate -group Memory /dmips_med1_tb/zpu/memory/we_i
add wave -noupdate -group Memory /dmips_med1_tb/zpu/memory/re_i
add wave -noupdate -group Memory /dmips_med1_tb/zpu/memory/addr_i
add wave -noupdate -group Memory /dmips_med1_tb/zpu/memory/write_i
add wave -noupdate -group Memory /dmips_med1_tb/zpu/memory/read_o
add wave -noupdate -group Memory /dmips_med1_tb/zpu/memory/busy_o
add wave -noupdate -group Memory /dmips_med1_tb/zpu/memory/addr_r
add wave -noupdate -group Memory /dmips_med1_tb/zpu/memory/ram
add wave -noupdate -group IO -group Control /dmips_med1_tb/zpu/io_map/clk_i
add wave -noupdate -group IO -group Control /dmips_med1_tb/zpu/io_map/reset_i
add wave -noupdate -group IO -group Control /dmips_med1_tb/zpu/io_map/busy_o
add wave -noupdate -group IO -group Control /dmips_med1_tb/zpu/io_map/we_i
add wave -noupdate -group IO -group Control /dmips_med1_tb/zpu/io_map/re_i
add wave -noupdate -group IO -group Control /dmips_med1_tb/zpu/io_map/data_i
add wave -noupdate -group IO -group Control /dmips_med1_tb/zpu/io_map/data_o
add wave -noupdate -group IO -group Control /dmips_med1_tb/zpu/io_map/addr_i
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/rs232_rx_i
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/rs232_tx_o
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/br_clk_i
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/rx_br
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/uart_read
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/rx_avail
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/rx_data
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/tx_br
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/uart_write
add wave -noupdate -group IO -group UART /dmips_med1_tb/zpu/io_map/tx_busy
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_core/clk_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_core/reset_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_core/enable_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_core/read_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_core/rxd_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_core/rxav_o
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_core/datao_o
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_core/r_r
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_core/bavail_r
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/clk_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/reset_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/enable_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/load_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/txd_o
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/busy_o
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/datai_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/tbuff_r
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/t_r
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/loaded_r
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_core/txd_r
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_timer/clk_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_timer/reset_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_timer/ce_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/rx_timer/o_o
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_timer/clk_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_timer/reset_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_timer/ce_i
add wave -noupdate -group IO -group {UART tx/rx} /dmips_med1_tb/zpu/io_map/tx_timer/o_o
add wave -noupdate -group IO -group timer /dmips_med1_tb/zpu/io_map/is_timer
add wave -noupdate -group IO -group timer /dmips_med1_tb/zpu/io_map/timerinst/clk_i
add wave -noupdate -group IO -group timer /dmips_med1_tb/zpu/io_map/timerinst/reset_i
add wave -noupdate -group IO -group timer /dmips_med1_tb/zpu/io_map/timerinst/we_i
add wave -noupdate -group IO -group timer -radix hexadecimal /dmips_med1_tb/zpu/io_map/timer_read
add wave -noupdate -group IO -group timer /dmips_med1_tb/zpu/io_map/timer_we
add wave -noupdate -group IO -group timer -radix hexadecimal /dmips_med1_tb/zpu/io_map/timerinst/data_i
add wave -noupdate -group IO -group timer /dmips_med1_tb/zpu/io_map/timerinst/addr_i
add wave -noupdate -group IO -group timer -radix hexadecimal /dmips_med1_tb/zpu/io_map/timerinst/data_o
add wave -noupdate -group IO -group timer /dmips_med1_tb/zpu/io_map/timerinst/sample
add wave -noupdate -group IO -group timer /dmips_med1_tb/zpu/io_map/timerinst/reset
add wave -noupdate -group IO -group timer -radix hexadecimal /dmips_med1_tb/zpu/io_map/timerinst/cnt
add wave -noupdate -group IO -group timer -radix hexadecimal /dmips_med1_tb/zpu/io_map/timerinst/cnt_smp
add wave -noupdate -group GPIO /dmips_med1_tb/zpu/io_map/gpio_we
add wave -noupdate -group GPIO /dmips_med1_tb/zpu/io_map/is_gpio
add wave -noupdate -group GPIO /dmips_med1_tb/zpu/io_map/gpio_read
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_in
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_out
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_dir
add wave -noupdate -group GPIO /dmips_med1_tb/zpu/io_map/gpio_i0/clk_i
add wave -noupdate -group GPIO /dmips_med1_tb/zpu/io_map/gpio_i0/reset_i
add wave -noupdate -group GPIO /dmips_med1_tb/zpu/io_map/gpio_i0/we_i
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_i0/data_i
add wave -noupdate -group GPIO /dmips_med1_tb/zpu/io_map/gpio_i0/addr_i
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_i0/data_o
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_i0/port_in
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_i0/port_out
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_i0/port_dir
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_i0/port_in_reg
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_i0/port_in_sync
add wave -noupdate -group GPIO -radix hexadecimal /dmips_med1_tb/zpu/io_map/gpio_i0/direction
add wave -noupdate -expand -group {ZPU control} /dmips_med1_tb/zpu/zpu/clk_i
add wave -noupdate -expand -group {ZPU control} /dmips_med1_tb/zpu/zpu/reset_i
add wave -noupdate -expand -group {ZPU control} /dmips_med1_tb/zpu/zpu/interrupt_i
add wave -noupdate -expand -group {ZPU control} /dmips_med1_tb/zpu/zpu/enable_i
add wave -noupdate -expand -group {ZPU control} /dmips_med1_tb/zpu/zpu/break_o
add wave -noupdate -expand -group {ZPU control} /dmips_med1_tb/zpu/zpu/in_irq_r
add wave -noupdate -expand -group {ZPU control} /dmips_med1_tb/zpu/zpu/idim_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /dmips_med1_tb/zpu/zpu/pc_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /dmips_med1_tb/zpu/zpu/sp_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /dmips_med1_tb/zpu/zpu/inc_sp
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /dmips_med1_tb/zpu/zpu/inc_inc_sp
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /dmips_med1_tb/zpu/zpu/a_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /dmips_med1_tb/zpu/zpu/b_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /dmips_med1_tb/zpu/zpu/fetched_w_r
add wave -noupdate -expand -group {ZPU registers} /dmips_med1_tb/zpu/zpu/state
add wave -noupdate -expand -group {ZPU registers} /dmips_med1_tb/zpu/zpu/insn
add wave -noupdate -expand -group {ZPU registers} /dmips_med1_tb/zpu/zpu/insns
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /dmips_med1_tb/zpu/zpu/opcode_r
add wave -noupdate -expand -group {ZPU Memory} /dmips_med1_tb/zpu/zpu/mem_busy_i
add wave -noupdate -expand -group {ZPU Memory} /dmips_med1_tb/zpu/zpu/write_en_r
add wave -noupdate -expand -group {ZPU Memory} /dmips_med1_tb/zpu/zpu/read_en_r
add wave -noupdate -expand -group {ZPU Memory} -radix hexadecimal /dmips_med1_tb/zpu/zpu/addr_r
add wave -noupdate -expand -group {ZPU Memory} -radix hexadecimal /dmips_med1_tb/zpu/zpu/data_i
add wave -noupdate -expand -group {ZPU Memory} -radix hexadecimal /dmips_med1_tb/zpu/zpu/data_o
add wave -noupdate -expand -group {ZPU Memory} -radix hexadecimal /dmips_med1_tb/zpu/zpu/addr_o
add wave -noupdate -expand -group {ZPU Memory} /dmips_med1_tb/zpu/zpu/write_en_o
add wave -noupdate -expand -group {ZPU Memory} /dmips_med1_tb/zpu/zpu/read_en_o
add wave -noupdate -group {ZPU mul} -radix hexadecimal /dmips_med1_tb/zpu/zpu/bin_op_res1_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /dmips_med1_tb/zpu/zpu/bin_op_res2_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /dmips_med1_tb/zpu/zpu/mult_res1_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /dmips_med1_tb/zpu/zpu/mult_res2_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /dmips_med1_tb/zpu/zpu/mult_res3_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /dmips_med1_tb/zpu/zpu/mult_a_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /dmips_med1_tb/zpu/zpu/mult_b_r
add wave -noupdate /dmips_med1_tb/zpu/zpu/dbg_o
add wave -noupdate /dmips_med1_tb/trace_mod/clk_i
add wave -noupdate /dmips_med1_tb/trace_mod/dbg_i
add wave -noupdate /dmips_med1_tb/trace_mod/stop_i
add wave -noupdate /dmips_med1_tb/trace_mod/busy_i
add wave -noupdate /dmips_med1_tb/trace_mod/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1835128 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 340
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
configure wave -timelineunits ps
update
WaveRestoreZoom {1701840 ps} {1957632 ps}

#add wave -recursive *
view structure
#view signals



# Enough to run tiny programs
run 10000 ms

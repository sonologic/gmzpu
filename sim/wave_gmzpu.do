onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB -group edge_tb /gmzpu_tb/clk
add wave -noupdate -expand -group TB -group edge_tb /gmzpu_tb/reset
add wave -noupdate -expand -group TB -group edge_tb /gmzpu_tb/interrupt
add wave -noupdate -expand -group TB -group edge_tb /gmzpu_tb/break
add wave -noupdate -expand -group TB -group edge_tb /gmzpu_tb/dbg
add wave -noupdate -expand -group TB -group edge_tb /gmzpu_tb/rs232_tx
add wave -noupdate -expand -group TB -group edge_tb /gmzpu_tb/rs232_rx
add wave -noupdate -expand -group TB -expand -group zpuu -group BRAM /gmzpu_tb/zpu/memory/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group BRAM /gmzpu_tb/zpu/memory/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group BRAM /gmzpu_tb/zpu/memory/re_i
add wave -noupdate -expand -group TB -expand -group zpuu -group BRAM -radix hexadecimal /gmzpu_tb/zpu/memory/addr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group BRAM -radix hexadecimal /gmzpu_tb/zpu/memory/write_i
add wave -noupdate -expand -group TB -expand -group zpuu -group BRAM -radix hexadecimal /gmzpu_tb/zpu/memory/read_o
add wave -noupdate -expand -group TB -expand -group zpuu -group BRAM /gmzpu_tb/zpu/memory/busy_o
add wave -noupdate -expand -group TB -expand -group zpuu -group BRAM -radix hexadecimal /gmzpu_tb/zpu/memory/addr_r
add wave -noupdate -expand -group TB -expand -group zpuu -group BRAM /gmzpu_tb/zpu/memory/ram
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO /gmzpu_tb/zpu/io_map/gpio_we
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO /gmzpu_tb/zpu/io_map/is_gpio
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO /gmzpu_tb/zpu/io_map/gpio_read
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_in
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_out
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_dir
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO /gmzpu_tb/zpu/io_map/gpio_i0/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO /gmzpu_tb/zpu/io_map/gpio_i0/reset_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO /gmzpu_tb/zpu/io_map/gpio_i0/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_i0/data_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO /gmzpu_tb/zpu/io_map/gpio_i0/addr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_i0/data_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_i0/port_in
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_i0/port_out
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_i0/port_dir
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_i0/port_in_reg
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_i0/port_in_sync
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group GPIO -radix hexadecimal /gmzpu_tb/zpu/io_map/gpio_i0/direction
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group Control /gmzpu_tb/zpu/io_map/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group Control /gmzpu_tb/zpu/io_map/reset_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group Control /gmzpu_tb/zpu/io_map/busy_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group Control /gmzpu_tb/zpu/io_map/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group Control /gmzpu_tb/zpu/io_map/re_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group Control /gmzpu_tb/zpu/io_map/data_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group Control /gmzpu_tb/zpu/io_map/data_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group Control /gmzpu_tb/zpu/io_map/addr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/rs232_rx_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/rs232_tx_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/br_clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/rx_br
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/uart_read
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/rx_avail
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/rx_data
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/tx_br
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/uart_write
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group UART /gmzpu_tb/zpu/io_map/tx_busy
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_core/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_core/reset_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_core/enable_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_core/read_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_core/rxd_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_core/rxav_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_core/datao_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_core/r_r
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_core/bavail_r
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/reset_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/enable_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/load_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/txd_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/busy_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/datai_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/tbuff_r
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/t_r
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/loaded_r
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_core/txd_r
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_timer/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_timer/reset_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_timer/ce_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/rx_timer/o_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_timer/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_timer/reset_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_timer/ce_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group {UART tx/rx} /gmzpu_tb/zpu/io_map/tx_timer/o_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer /gmzpu_tb/zpu/io_map/is_timer
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer /gmzpu_tb/zpu/io_map/timerinst/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer /gmzpu_tb/zpu/io_map/timerinst/reset_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer /gmzpu_tb/zpu/io_map/timerinst/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer -radix hexadecimal /gmzpu_tb/zpu/io_map/timer_read
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer /gmzpu_tb/zpu/io_map/timer_we
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer -radix hexadecimal /gmzpu_tb/zpu/io_map/timerinst/data_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer /gmzpu_tb/zpu/io_map/timerinst/addr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer -radix hexadecimal /gmzpu_tb/zpu/io_map/timerinst/data_o
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer /gmzpu_tb/zpu/io_map/timerinst/sample
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer /gmzpu_tb/zpu/io_map/timerinst/reset
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer -radix hexadecimal /gmzpu_tb/zpu/io_map/timerinst/cnt
add wave -noupdate -expand -group TB -expand -group zpuu -group IO -group timer -radix hexadecimal /gmzpu_tb/zpu/io_map/timerinst/cnt_smp
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group {zwc <-> zpu} /gmzpu_tb/zpu/zwc/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group {zwc <-> zpu} /gmzpu_tb/zpu/zwc/rst_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group {zwc <-> zpu} /gmzpu_tb/zpu/zwc/ena_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group {zwc <-> zpu} /gmzpu_tb/zpu/zwc/busy_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group {zwc <-> zpu} /gmzpu_tb/zpu/zwc/ready_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group {zwc <-> zpu} -radix hexadecimal /gmzpu_tb/zpu/zwc/adr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group {zwc <-> zpu} /gmzpu_tb/zpu/zwc/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group {zwc <-> zpu} -radix hexadecimal /gmzpu_tb/zpu/zwc/dat_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group {zwc <-> zpu} -radix hexadecimal /gmzpu_tb/zpu/zwc/dat_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb -radix hexadecimal -childformat {{/gmzpu_tb/zpu/zwc/wb_dat_i(31) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(30) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(29) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(28) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(27) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(26) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(25) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(24) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(23) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(22) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(21) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(20) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(19) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(18) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(17) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(16) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(15) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(14) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(13) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(12) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(11) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(10) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(9) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(8) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(7) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(6) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(5) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(4) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(3) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(2) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(1) -radix hexadecimal} {/gmzpu_tb/zpu/zwc/wb_dat_i(0) -radix hexadecimal}} -subitemconfig {/gmzpu_tb/zpu/zwc/wb_dat_i(31) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(30) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(29) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(28) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(27) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(26) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(25) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(24) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(23) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(22) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(21) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(20) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(19) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(18) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(17) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(16) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(15) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(14) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(13) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(12) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(11) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(10) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(9) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(8) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(7) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(6) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(5) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(4) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(3) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(2) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(1) {-height 16 -radix hexadecimal} /gmzpu_tb/zpu/zwc/wb_dat_i(0) {-height 16 -radix hexadecimal}} /gmzpu_tb/zpu/zwc/wb_dat_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb -radix hexadecimal /gmzpu_tb/zpu/zwc/wb_dat_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb -radix hexadecimal /gmzpu_tb/zpu/zwc/wb_tgd_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb -radix hexadecimal /gmzpu_tb/zpu/zwc/wb_tgd_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb -radix hexadecimal /gmzpu_tb/zpu/zwc/wb_adr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb /gmzpu_tb/zpu/zwc/wb_cyc_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb -radix binary /gmzpu_tb/zpu/zwc/wb_stb_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb /gmzpu_tb/zpu/zwc/wb_ack_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb /gmzpu_tb/zpu/zwc/wb_stall_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb /gmzpu_tb/zpu/zwc/wb_err_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb /gmzpu_tb/zpu/zwc/wb_lock_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb /gmzpu_tb/zpu/zwc/wb_rty_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb -radix hexadecimal /gmzpu_tb/zpu/zwc/wb_sel_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb -radix hexadecimal /gmzpu_tb/zpu/zwc/wb_tga_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb -radix hexadecimal /gmzpu_tb/zpu/zwc/wb_tgc_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group wb /gmzpu_tb/zpu/zwc/wb_we_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric -radix hexadecimal /gmzpu_tb/zpu/zwc/config
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric /gmzpu_tb/zpu/zwc/status_err_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric /gmzpu_tb/zpu/zwc/status_rty_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric /gmzpu_tb/zpu/zwc/reg_en
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric /gmzpu_tb/zpu/zwc/bus_en
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric -radix hexadecimal /gmzpu_tb/zpu/zwc/radr
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric -radix hexadecimal /gmzpu_tb/zpu/zwc/badr
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric /gmzpu_tb/zpu/zwc/cs
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric /gmzpu_tb/zpu/zwc/to_rst
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric /gmzpu_tb/zpu/zwc/to_inc
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -group fabric /gmzpu_tb/zpu/zwc/timeout
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/rst_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/en_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/adr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/busy_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/ready_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs -radix hexadecimal /gmzpu_tb/zpu/zwc/regs/dat_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs -radix hexadecimal /gmzpu_tb/zpu/zwc/regs/dat_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/busy_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/ready_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs -radix hexadecimal /gmzpu_tb/zpu/zwc/regs/cfg_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/err_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/rty_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/to_rst_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/to_inc_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/to_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs -radix hexadecimal /gmzpu_tb/zpu/zwc/regs/reg_config
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs -radix hexadecimal /gmzpu_tb/zpu/zwc/regs/reg_status
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group regs /gmzpu_tb/zpu/zwc/regs/reading_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode -radix hexadecimal /gmzpu_tb/zpu/zwc/dec/adr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/ena_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/rst_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/reg_en_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/bus_en_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode -radix hexadecimal /gmzpu_tb/zpu/zwc/dec/radr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode -radix hexadecimal /gmzpu_tb/zpu/zwc/dec/badr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode -radix hexadecimal /gmzpu_tb/zpu/zwc/dec/cs_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/reg_en_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/bus_en_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/en_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/re_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/we_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/cs_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/adr
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group decode /gmzpu_tb/zpu/zwc/dec/io_adr_r
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/rst_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/en_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/busy_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/ready_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/to_rst_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/to_inc_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/to_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/adr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus -radix hexadecimal /gmzpu_tb/zpu/zwc/zwbbus/dat_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus -radix hexadecimal /gmzpu_tb/zpu/zwc/zwbbus/dat_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/cs_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus -radix hexadecimal /gmzpu_tb/zpu/zwc/zwbbus/b_dat_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus -radix hexadecimal /gmzpu_tb/zpu/zwc/zwbbus/b_dat_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus -radix hexadecimal /gmzpu_tb/zpu/zwc/zwbbus/b_tgd_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus -radix hexadecimal /gmzpu_tb/zpu/zwc/zwbbus/b_tgd_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_ack_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_adr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_cyc_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_stall_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_err_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_lock_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_rty_i
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_sel_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_stb_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_tga_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus -radix hexadecimal /gmzpu_tb/zpu/zwc/zwbbus/b_tgc_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/b_we_o
add wave -noupdate -expand -group TB -expand -group zpuu -group ZWC -expand -group bus /gmzpu_tb/zpu/zwc/zwbbus/cyc_r
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/icr_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/icr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/imr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/ier_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/itr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/rising
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/falling
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/level
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/set
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/rst
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -group icrs0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/prev_q
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/rst_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -radix hexadecimal /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/adr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -radix hexadecimal /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/dat_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -radix hexadecimal /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/dat_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/en_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/ready_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -radix hexadecimal /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/ICR
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -radix hexadecimal /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/IMR
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -radix hexadecimal /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/ITR
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -radix hexadecimal /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/IER
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 -radix hexadecimal /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/irq
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/icr_we
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -group reg0 /gmzpu_tb/zpu/pic/reg_generator(0)/regsX/ready_r
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/irq_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/int_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/rst_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/en_r
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/regen_r
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/ready_r
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/irq_r
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/cs_r
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/adr_r
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/wb_cyc_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/wb_stb_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/ack_r
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/wb_ack_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/wb_we_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/wb_adr_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/wb_dat_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/wb_dat_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/wb_tgd_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/wb_tgd_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/wb_stall_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/wb_err_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/wb_lock_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic /gmzpu_tb/zpu/pic/wb_rty_o
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/wb_sel_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/wb_tga_i
add wave -noupdate -expand -group TB -expand -group zpuu -group pic -radix hexadecimal /gmzpu_tb/zpu/pic/wb_tgc_i
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/clk_i
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/rst_i
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/interrupt_i
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/break_o
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/dbg_o
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/rs232_tx_o
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/rs232_rx_i
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/gpio_in
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/gpio_out
add wave -noupdate -expand -group TB -expand -group zpuu -group edge /gmzpu_tb/zpu/gpio_dir
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/mem_busy
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/mem_read
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/mem_write
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/mem_addr
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/mem_we
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/mem_re
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -divider ram
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/ram_busy
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/ram_read
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/ram_addr
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/ram_we
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/ram_re
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/ram_ready_r
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -divider phi_io
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/phi_io_busy
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/phi_io_re
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/phi_io_we
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/phi_io_read
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/phi_io_ready
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/phi_io_reading_r
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/phi_io_addr
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -divider zwc
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/zw_ena
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/zw_busy
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/zw_addr
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/zw_re
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control /gmzpu_tb/zpu/zw_we
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/zw_dat_i
add wave -noupdate -expand -group TB -expand -group zpuu -expand -group mem_control -radix hexadecimal /gmzpu_tb/zpu/zw_dat_o
add wave -noupdate -expand -group {ZPU control} /gmzpu_tb/zpu/zpu/clk_i
add wave -noupdate -expand -group {ZPU control} /gmzpu_tb/zpu/zpu/reset_i
add wave -noupdate -expand -group {ZPU control} /gmzpu_tb/zpu/zpu/interrupt_i
add wave -noupdate -expand -group {ZPU control} /gmzpu_tb/zpu/zpu/enable_i
add wave -noupdate -expand -group {ZPU control} /gmzpu_tb/zpu/zpu/break_o
add wave -noupdate -expand -group {ZPU control} /gmzpu_tb/zpu/zpu/in_irq_r
add wave -noupdate -expand -group {ZPU control} /gmzpu_tb/zpu/zpu/idim_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /gmzpu_tb/zpu/zpu/pc_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /gmzpu_tb/zpu/zpu/sp_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /gmzpu_tb/zpu/zpu/inc_sp
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /gmzpu_tb/zpu/zpu/inc_inc_sp
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /gmzpu_tb/zpu/zpu/a_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /gmzpu_tb/zpu/zpu/b_r
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /gmzpu_tb/zpu/zpu/fetched_w_r
add wave -noupdate -expand -group {ZPU registers} /gmzpu_tb/zpu/zpu/state
add wave -noupdate -expand -group {ZPU registers} /gmzpu_tb/zpu/zpu/insn
add wave -noupdate -expand -group {ZPU registers} /gmzpu_tb/zpu/zpu/insns
add wave -noupdate -expand -group {ZPU registers} -radix hexadecimal /gmzpu_tb/zpu/zpu/opcode_r
add wave -noupdate -expand -group {ZPU Memory} /gmzpu_tb/zpu/zpu/mem_busy_i
add wave -noupdate -expand -group {ZPU Memory} /gmzpu_tb/zpu/zpu/write_en_r
add wave -noupdate -expand -group {ZPU Memory} /gmzpu_tb/zpu/zpu/read_en_r
add wave -noupdate -expand -group {ZPU Memory} -radix hexadecimal /gmzpu_tb/zpu/zpu/addr_r
add wave -noupdate -expand -group {ZPU Memory} -radix hexadecimal /gmzpu_tb/zpu/zpu/data_i
add wave -noupdate -expand -group {ZPU Memory} -radix hexadecimal /gmzpu_tb/zpu/zpu/data_o
add wave -noupdate -expand -group {ZPU Memory} -radix hexadecimal /gmzpu_tb/zpu/zpu/addr_o
add wave -noupdate -expand -group {ZPU Memory} /gmzpu_tb/zpu/zpu/write_en_o
add wave -noupdate -expand -group {ZPU Memory} /gmzpu_tb/zpu/zpu/read_en_o
add wave -noupdate -group {ZPU mul} -radix hexadecimal /gmzpu_tb/zpu/zpu/bin_op_res1_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /gmzpu_tb/zpu/zpu/bin_op_res2_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /gmzpu_tb/zpu/zpu/mult_res1_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /gmzpu_tb/zpu/zpu/mult_res2_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /gmzpu_tb/zpu/zpu/mult_res3_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /gmzpu_tb/zpu/zpu/mult_a_r
add wave -noupdate -group {ZPU mul} -radix hexadecimal /gmzpu_tb/zpu/zpu/mult_b_r
add wave -noupdate /gmzpu_tb/zpu/zpu/dbg_o
add wave -noupdate /gmzpu_tb/trace_mod/clk_i
add wave -noupdate /gmzpu_tb/trace_mod/dbg_i
add wave -noupdate /gmzpu_tb/trace_mod/stop_i
add wave -noupdate /gmzpu_tb/trace_mod/busy_i
add wave -noupdate /gmzpu_tb/trace_mod/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12395002 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 396
configure wave -valuecolwidth 190
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
WaveRestoreZoom {102322514404 ps} {102322723398 ps}

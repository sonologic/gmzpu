onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group testbench /gmzpu_tb/clk
add wave -noupdate -group testbench /gmzpu_tb/reset
add wave -noupdate -group testbench /gmzpu_tb/interrupt
add wave -noupdate -group testbench /gmzpu_tb/break
add wave -noupdate -group testbench /gmzpu_tb/dbg
add wave -noupdate -group testbench /gmzpu_tb/rs232_tx
add wave -noupdate -group testbench /gmzpu_tb/rs232_rx
add wave -noupdate -expand -group soc /gmzpu_tb/soc/clk_i
add wave -noupdate -expand -group soc /gmzpu_tb/soc/rst_i
add wave -noupdate -expand -group soc /gmzpu_tb/soc/interrupt_i
add wave -noupdate -expand -group soc /gmzpu_tb/soc/break_o
add wave -noupdate -expand -group soc /gmzpu_tb/soc/dbg_o
add wave -noupdate -expand -group soc /gmzpu_tb/soc/rs232_tx_o
add wave -noupdate -expand -group soc /gmzpu_tb/soc/rs232_rx_i
add wave -noupdate -expand -group soc -radix hexadecimal /gmzpu_tb/soc/gpio_in
add wave -noupdate -expand -group soc -radix hexadecimal /gmzpu_tb/soc/gpio_out
add wave -noupdate -expand -group soc -radix hexadecimal /gmzpu_tb/soc/gpio_dir
add wave -noupdate -expand -group soc /gmzpu_tb/soc/irq_r
add wave -noupdate -expand -group soc -group memctl /gmzpu_tb/soc/mem_busy
add wave -noupdate -expand -group soc -group memctl -radix hexadecimal /gmzpu_tb/soc/mem_read
add wave -noupdate -expand -group soc -group memctl -radix hexadecimal /gmzpu_tb/soc/mem_write
add wave -noupdate -expand -group soc -group memctl -radix hexadecimal /gmzpu_tb/soc/mem_addr
add wave -noupdate -expand -group soc -group memctl /gmzpu_tb/soc/mem_we
add wave -noupdate -expand -group soc -group memctl /gmzpu_tb/soc/mem_re
add wave -noupdate -expand -group soc -group ramctl /gmzpu_tb/soc/ram_busy
add wave -noupdate -expand -group soc -group ramctl -radix hexadecimal /gmzpu_tb/soc/ram_read
add wave -noupdate -expand -group soc -group ramctl -radix hexadecimal /gmzpu_tb/soc/ram_addr
add wave -noupdate -expand -group soc -group ramctl /gmzpu_tb/soc/ram_we
add wave -noupdate -expand -group soc -group ramctl /gmzpu_tb/soc/ram_re
add wave -noupdate -expand -group soc -group ramctl /gmzpu_tb/soc/ram_ready_r
add wave -noupdate -expand -group soc -group phictl /gmzpu_tb/soc/phi_io_busy
add wave -noupdate -expand -group soc -group phictl /gmzpu_tb/soc/phi_io_re
add wave -noupdate -expand -group soc -group phictl /gmzpu_tb/soc/phi_io_we
add wave -noupdate -expand -group soc -group phictl -radix hexadecimal /gmzpu_tb/soc/phi_io_read
add wave -noupdate -expand -group soc -group phictl /gmzpu_tb/soc/phi_io_ready
add wave -noupdate -expand -group soc -group phictl /gmzpu_tb/soc/phi_io_reading_r
add wave -noupdate -expand -group soc -group phictl /gmzpu_tb/soc/phi_io_addr
add wave -noupdate -expand -group soc -group zwcctl /gmzpu_tb/soc/zw_ena
add wave -noupdate -expand -group soc -group zwcctl /gmzpu_tb/soc/zw_busy
add wave -noupdate -expand -group soc -group zwcctl /gmzpu_tb/soc/zw_ready
add wave -noupdate -expand -group soc -group zwcctl /gmzpu_tb/soc/zw_addr
add wave -noupdate -expand -group soc -group zwcctl /gmzpu_tb/soc/zw_re
add wave -noupdate -expand -group soc -group zwcctl /gmzpu_tb/soc/zw_we
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/zw_dat_i
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/zw_dat_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_dat_i
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_dat_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_tgd_i
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_tgd_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_ack_i
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_adr_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_cyc_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_stall_i
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_err_i
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_lock_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_rty_i
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_sel_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_stb_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_tga_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_tgc_o
add wave -noupdate -expand -group soc -group obsolete_wb /gmzpu_tb/soc/wb_we_o
add wave -noupdate -expand -group soc -group ram /gmzpu_tb/soc/memory/clk_i
add wave -noupdate -expand -group soc -group ram /gmzpu_tb/soc/memory/we_i
add wave -noupdate -expand -group soc -group ram /gmzpu_tb/soc/memory/re_i
add wave -noupdate -expand -group soc -group ram /gmzpu_tb/soc/memory/addr_i
add wave -noupdate -expand -group soc -group ram /gmzpu_tb/soc/memory/write_i
add wave -noupdate -expand -group soc -group ram /gmzpu_tb/soc/memory/read_o
add wave -noupdate -expand -group soc -group ram /gmzpu_tb/soc/memory/busy_o
add wave -noupdate -expand -group soc -group ram /gmzpu_tb/soc/memory/addr_r
add wave -noupdate -expand -group soc -group ram /gmzpu_tb/soc/memory/ram
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/clk_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/reset_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/busy_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/we_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/re_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/data_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/data_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/addr_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rs232_rx_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rs232_tx_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/br_clk_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_in
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_out
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_dir
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timer_read
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timer_we
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/is_timer
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_br
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/uart_read
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_avail
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_data
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_br
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/uart_write
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_busy
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_we
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/is_gpio
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_read
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/clk_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/reset_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/we_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/data_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/addr_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/data_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/sample
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/reset
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/cnt
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/timerinst/cnt_smp
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_core/clk_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_core/reset_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_core/enable_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_core/read_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_core/rxd_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_core/rxav_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_core/datao_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_core/r_r
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_core/bavail_r
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/clk_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/reset_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/enable_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/load_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/txd_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/busy_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/datai_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/tbuff_r
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/t_r
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/loaded_r
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_core/txd_r
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_timer/clk_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_timer/reset_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_timer/ce_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/rx_timer/o_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_timer/clk_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_timer/reset_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_timer/ce_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/tx_timer/o_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/clk_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/reset_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/we_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/data_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/addr_i
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/data_o
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/port_in
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/port_out
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/port_dir
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/port_in_reg
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/port_in_sync
add wave -noupdate -expand -group soc -group phiIO /gmzpu_tb/soc/io_map/gpio_i0/direction
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/ena_i
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/busy_o
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/ready_o
add wave -noupdate -expand -group soc -expand -group zwc0 -radix hexadecimal /gmzpu_tb/soc/zwc0/adr_i
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -radix hexadecimal /gmzpu_tb/soc/zwc0/dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -radix hexadecimal /gmzpu_tb/soc/zwc0/dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/int_ctrl_r
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/int_pic_r
add wave -noupdate -expand -group soc -expand -group zwc0 /gmzpu_tb/soc/zwc0/int_timer_r
add wave -noupdate -expand -group soc -expand -group zwc0 -radix hexadecimal /gmzpu_tb/soc/zwc0/int_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 /gmzpu_tb/soc/zwc0/wb_cyc_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 -radix hexadecimal /gmzpu_tb/soc/zwc0/wb_stb_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 /gmzpu_tb/soc/zwc0/wb_ack_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 /gmzpu_tb/soc/zwc0/wb_we_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 -radix hexadecimal /gmzpu_tb/soc/zwc0/wb_dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 -radix hexadecimal /gmzpu_tb/soc/zwc0/wb_dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 -radix hexadecimal /gmzpu_tb/soc/zwc0/wb_tgd_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 -radix hexadecimal /gmzpu_tb/soc/zwc0/wb_tgd_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 -radix hexadecimal /gmzpu_tb/soc/zwc0/wb_adr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 /gmzpu_tb/soc/zwc0/wb_stall_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 /gmzpu_tb/soc/zwc0/wb_err_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 /gmzpu_tb/soc/zwc0/wb_lock_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 /gmzpu_tb/soc/zwc0/wb_rty_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 -radix hexadecimal /gmzpu_tb/soc/zwc0/wb_sel_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 -radix hexadecimal /gmzpu_tb/soc/zwc0/wb_tga_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group wb0 -radix hexadecimal /gmzpu_tb/soc/zwc0/wb_tgc_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/ena_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/busy_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/ready_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/adr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/wb_dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/wb_dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/wb_tgd_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/wb_tgd_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/wb_ack_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/wb_adr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/wb_cyc_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/wb_stall_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/wb_err_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/wb_lock_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/wb_rty_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/wb_sel_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/wb_stb_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/wb_tga_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/wb_tgc_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/wb_we_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/config
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/status_err_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/status_rty_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/reg_en
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/bus_en
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/radr
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/badr
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/reg_busy_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/reg_ready_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwc_busy_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwc_ready_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/cs
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/to_rst
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/to_inc
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/timeout
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/busy_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/ready_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/en_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/regs/adr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/regs/dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/regs/dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/to_inc_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/to_rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/to_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/regs/cfg_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/err_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/rty_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/regs/reg_config
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/regs/reg_status
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/regs/reg_to_cmp
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/regs/reg_to_val
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/to_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/regs/reading_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/dec/adr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/ena_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/reg_en_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/bus_en_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/dec/radr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/dec/badr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/cs_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/reg_en_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/bus_en_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/en_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/re_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/dec/we_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/dec/adr
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/dec/io_adr_r
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/busy_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/ready_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/en_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/zwbbus/adr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/zwbbus/dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller -radix hexadecimal /gmzpu_tb/soc/zwc0/controller/zwbbus/dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/cs_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/to_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/to_inc_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/to_rst_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_tgd_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_tgd_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_ack_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_adr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_cyc_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_stall_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_err_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_lock_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_rty_i
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_sel_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_stb_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_tga_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_tgc_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/b_we_o
add wave -noupdate -expand -group soc -expand -group zwc0 -group zwishbone_controller /gmzpu_tb/soc/zwc0/controller/zwbbus/cyc_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic /gmzpu_tb/soc/zwc0/pic/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic /gmzpu_tb/soc/zwc0/pic/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic /gmzpu_tb/soc/zwc0/pic/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/wb_dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/wb_dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/wb_tgd_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/wb_tgd_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic /gmzpu_tb/soc/zwc0/pic/wb_ack_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/wb_adr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic /gmzpu_tb/soc/zwc0/pic/wb_cyc_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic /gmzpu_tb/soc/zwc0/pic/wb_stall_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic /gmzpu_tb/soc/zwc0/pic/wb_err_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic /gmzpu_tb/soc/zwc0/pic/wb_lock_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic /gmzpu_tb/soc/zwc0/pic/wb_rty_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/wb_sel_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic /gmzpu_tb/soc/zwc0/pic/wb_stb_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/wb_tga_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/wb_tgc_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group wishbone_pic /gmzpu_tb/soc/zwc0/pic/wb_we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic /gmzpu_tb/soc/zwc0/pic/regen_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic /gmzpu_tb/soc/zwc0/pic/ready_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic /gmzpu_tb/soc/zwc0/pic/irq_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic /gmzpu_tb/soc/zwc0/pic/cs_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic /gmzpu_tb/soc/zwc0/pic/adr_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic /gmzpu_tb/soc/zwc0/pic/ack_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/adr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/en_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/ready_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/ICR
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/IMR
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/ITR
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/IER
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/irq
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_we
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/ready_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs -radix hexadecimal /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/dat_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(31)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(30)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(29)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(28)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(27)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(26)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(25)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(24)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(23)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(22)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(21)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(20)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(19)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(18)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(17)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(16)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/int_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/icr_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/icr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/imr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/ier_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/itr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/q
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group pic -group regs /gmzpu_tb/soc/zwc0/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/sample_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/wb_cyc_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/wb_stb_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/wb_ack_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/wb_we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -radix hexadecimal /gmzpu_tb/soc/zwc0/timrs/wb_dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -radix hexadecimal /gmzpu_tb/soc/zwc0/timrs/wb_dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -radix hexadecimal /gmzpu_tb/soc/zwc0/timrs/wb_tgd_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -radix hexadecimal /gmzpu_tb/soc/zwc0/timrs/wb_tgd_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/wb_adr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/wb_stall_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/wb_err_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/wb_lock_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/wb_rty_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -radix hexadecimal /gmzpu_tb/soc/zwc0/timrs/wb_sel_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -radix hexadecimal /gmzpu_tb/soc/zwc0/timrs/wb_tga_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -radix hexadecimal /gmzpu_tb/soc/zwc0/timrs/wb_tgc_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/irq_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/irq_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/ten_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/cs_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/addr_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/en_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/we_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/dat_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/we_d
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/dat_d
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer /gmzpu_tb/soc/zwc0/timrs/addr_d
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/inc_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/addr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/en_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/thresh_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/CNT
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/THR
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/halt_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/thresh_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer0 /gmzpu_tb/soc/zwc0/timrs/timer_gen(0)/timerX/dat_en_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/inc_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/addr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/en_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/thresh_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/CNT
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/THR
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/halt_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/thresh_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer1 /gmzpu_tb/soc/zwc0/timrs/timer_gen(1)/timerX/dat_en_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/inc_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/addr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/en_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/thresh_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/CNT
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/THR
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/halt_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/thresh_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer2 /gmzpu_tb/soc/zwc0/timrs/timer_gen(2)/timerX/dat_en_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/clk_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/rst_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/inc_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/addr_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/dat_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/dat_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/we_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/en_i
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/thresh_o
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/CNT
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/THR
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/halt_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/thresh_r
add wave -noupdate -expand -group soc -expand -group zwc0 -expand -group timer -group timer3 /gmzpu_tb/soc/zwc0/timrs/timer_gen(3)/timerX/dat_en_r
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/clk_i
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/reset_i
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/interrupt_i
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/enable_i
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/break_o
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/dbg_o
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/mem_busy_i
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/data_i
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/data_o
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/addr_o
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/write_en_o
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/read_en_o
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/pc_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/sp_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/inc_sp
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/inc_inc_sp
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/a_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/b_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/bin_op_res1_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/bin_op_res2_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/mult_res1_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/mult_res2_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/mult_res3_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/mult_a_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/mult_b_r
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/idim_r
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/write_en_r
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/read_en_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/addr_r
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/fetched_w_r
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/in_irq_r
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/state
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/insn
add wave -noupdate -expand -group soc -expand -group zpu /gmzpu_tb/soc/zpu/insns
add wave -noupdate -expand -group soc -expand -group zpu -radix hexadecimal /gmzpu_tb/soc/zpu/opcode_r
add wave -noupdate -group trace /gmzpu_tb/trace_mod/clk_i
add wave -noupdate -group trace /gmzpu_tb/trace_mod/dbg_i
add wave -noupdate -group trace /gmzpu_tb/trace_mod/stop_i
add wave -noupdate -group trace /gmzpu_tb/trace_mod/busy_i
add wave -noupdate -group trace /gmzpu_tb/trace_mod/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {601479636 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 368
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
WaveRestoreZoom {601390243 ps} {601589757 ps}

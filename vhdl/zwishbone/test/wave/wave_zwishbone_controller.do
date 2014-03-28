onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group testbench /zwishbone_controller_tb/clk
add wave -noupdate -group testbench /zwishbone_controller_tb/rst_i
add wave -noupdate -group testbench /zwishbone_controller_tb/adr_i
add wave -noupdate -group testbench /zwishbone_controller_tb/re_i
add wave -noupdate -group testbench /zwishbone_controller_tb/we_i
add wave -noupdate -group testbench /zwishbone_controller_tb/dat_i
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_dat_i
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_ack_i
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_stall_i
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_err_i
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_rty_i
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_tgd_i
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_cyc_o
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_stb_o
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_we_o
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_lock_o
add wave -noupdate -group testbench /zwishbone_controller_tb/busy_o
add wave -noupdate -group testbench /zwishbone_controller_tb/ready_o
add wave -noupdate -group testbench /zwishbone_controller_tb/dat_o
add wave -noupdate -group testbench /zwishbone_controller_tb/irq_o
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_dat_o
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_tgc_o
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_adr_o
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_tga_o
add wave -noupdate -group testbench /zwishbone_controller_tb/wb_sel_o
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/clk_i
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/rst_i
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/busy_o
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/ready_o
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/adr_i
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/we_i
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/re_i
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/dat_i
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/dat_o
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/irq_o
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/wb_dat_i
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/wb_dat_o
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/wb_tgd_i
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/wb_tgd_o
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/wb_cyc_o
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/wb_stb_o
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/wb_ack_i
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/wb_we_o
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/wb_adr_o
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/wb_stall_i
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/wb_err_i
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/wb_lock_o
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/wb_rty_i
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/wb_sel_o
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/wb_tga_o
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/wb_tgc_o
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/state
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/next_state
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/reg_re_r
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/reg_we_r
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/reg_dat_ir
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/reg_dat_or
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/to_r
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/to_inc_r
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/to_rst_r
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/err_r
add wave -noupdate -expand -group dut /zwishbone_controller_tb/dut/rty_r
add wave -noupdate -expand -group dut -radix hexadecimal /zwishbone_controller_tb/dut/config_r
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/reading_r
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/clk_i
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/rst_i
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/irq_o
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/re_i
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/we_i
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /zwishbone_controller_tb/dut/registers/adr_i
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /zwishbone_controller_tb/dut/registers/dat_i
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /zwishbone_controller_tb/dut/registers/dat_o
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/to_r
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/to_inc_i
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/to_rst_i
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/to_rst_r
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/to_o
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /zwishbone_controller_tb/dut/registers/cfg_o
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/err_i
add wave -noupdate -expand -group dut -expand -group regs /zwishbone_controller_tb/dut/registers/rty_i
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /zwishbone_controller_tb/dut/registers/reg_config
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /zwishbone_controller_tb/dut/registers/reg_status
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /zwishbone_controller_tb/dut/registers/reg_to_cmp
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /zwishbone_controller_tb/dut/registers/reg_to_val
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {202824 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 375
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
WaveRestoreZoom {92185 ps} {289885 ps}

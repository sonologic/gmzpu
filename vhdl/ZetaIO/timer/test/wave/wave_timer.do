onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group testbench /timer_tb/clk
add wave -noupdate -expand -group testbench /timer_tb/rst_i
add wave -noupdate -expand -group testbench /timer_tb/inc_i
add wave -noupdate -expand -group testbench /timer_tb/addr_i
add wave -noupdate -expand -group testbench -radix hexadecimal /timer_tb/dat_o
add wave -noupdate -expand -group testbench -radix hexadecimal /timer_tb/dat_i
add wave -noupdate -expand -group testbench /timer_tb/we_i
add wave -noupdate -expand -group testbench /timer_tb/en_i
add wave -noupdate -expand -group testbench /timer_tb/thresh_o
add wave -noupdate -expand -group dut /timer_tb/dut/clk_i
add wave -noupdate -expand -group dut /timer_tb/dut/rst_i
add wave -noupdate -expand -group dut /timer_tb/dut/inc_i
add wave -noupdate -expand -group dut /timer_tb/dut/addr_i
add wave -noupdate -expand -group dut -radix hexadecimal /timer_tb/dut/dat_o
add wave -noupdate -expand -group dut -radix hexadecimal /timer_tb/dut/dat_i
add wave -noupdate -expand -group dut /timer_tb/dut/we_i
add wave -noupdate -expand -group dut /timer_tb/dut/en_i
add wave -noupdate -expand -group dut /timer_tb/dut/thresh_o
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /timer_tb/dut/CNT
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /timer_tb/dut/THR
add wave -noupdate -expand -group dut -expand -group regs -radix hexadecimal /timer_tb/dut/CFG
add wave -noupdate -expand -group dut /timer_tb/dut/halt_r
add wave -noupdate -expand -group dut /timer_tb/dut/thresh_r
add wave -noupdate -expand -group dut /timer_tb/dut/dat_en_r
add wave -noupdate -expand -group dut -expand -group cfg /timer_tb/dut/cfg_hlt_r
add wave -noupdate -expand -group dut -expand -group cfg /timer_tb/dut/cfg_rst_r
add wave -noupdate -expand -group dut -expand -group cfg /timer_tb/dut/cfg_stk_r
add wave -noupdate -expand -group dut -expand -group cfg /timer_tb/dut/cfg_ien_r
add wave -noupdate -expand -group dut -expand -group cfg /timer_tb/dut/cfg_ten_r
add wave -noupdate -expand -group dut -expand -group crossdomain /timer_tb/dut/clk_to_inc_rst_r
add wave -noupdate -expand -group dut -expand -group crossdomain /timer_tb/dut/inc_to_clk_rst_r
add wave -noupdate -expand -group dut -expand -group crossdomain /timer_tb/dut/clk_to_inc_ack_r
add wave -noupdate -expand -group dut -expand -group crossdomain /timer_tb/dut/inc_to_clk_ack_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {325846 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 251
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
WaveRestoreZoom {268065 ps} {497895 ps}

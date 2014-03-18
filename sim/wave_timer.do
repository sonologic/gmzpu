onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /timer_tb/clk
add wave -noupdate /timer_tb/rst_i
add wave -noupdate /timer_tb/inc_i
add wave -noupdate /timer_tb/addr_i
add wave -noupdate -radix hexadecimal /timer_tb/dat_o
add wave -noupdate -radix hexadecimal /timer_tb/dat_i
add wave -noupdate /timer_tb/we_i
add wave -noupdate /timer_tb/re_i
add wave -noupdate /timer_tb/thresh_o
add wave -noupdate /timer_tb/th_hlt_i
add wave -noupdate /timer_tb/th_rst_i
add wave -noupdate /timer_tb/th_stk_i
add wave -noupdate -expand -group dut /timer_tb/dut/clk_i
add wave -noupdate -expand -group dut /timer_tb/dut/rst_i
add wave -noupdate -expand -group dut /timer_tb/dut/inc_i
add wave -noupdate -expand -group dut /timer_tb/dut/addr_i
add wave -noupdate -expand -group dut -radix hexadecimal /timer_tb/dut/dat_o
add wave -noupdate -expand -group dut -radix hexadecimal /timer_tb/dut/dat_i
add wave -noupdate -expand -group dut /timer_tb/dut/we_i
add wave -noupdate -expand -group dut /timer_tb/dut/re_i
add wave -noupdate -expand -group dut /timer_tb/dut/thresh_o
add wave -noupdate -expand -group dut /timer_tb/dut/th_hlt_i
add wave -noupdate -expand -group dut /timer_tb/dut/th_rst_i
add wave -noupdate -expand -group dut /timer_tb/dut/th_stk_i
add wave -noupdate -expand -group dut -radix hexadecimal /timer_tb/dut/CNT
add wave -noupdate -expand -group dut -radix hexadecimal /timer_tb/dut/THR
add wave -noupdate -expand -group dut /timer_tb/dut/halt_r
add wave -noupdate -expand -group dut /timer_tb/dut/thresh_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {115822 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 201
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
WaveRestoreZoom {0 ps} {242785 ps}

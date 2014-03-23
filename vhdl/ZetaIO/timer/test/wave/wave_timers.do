onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group testbench /timers_tb/clk
add wave -noupdate -expand -group testbench /timers_tb/rst_i
add wave -noupdate -expand -group testbench /timers_tb/wb_we_i
add wave -noupdate -expand -group testbench /timers_tb/wb_cyc_i
add wave -noupdate -expand -group testbench /timers_tb/wb_stb_i
add wave -noupdate -expand -group testbench /timers_tb/wb_adr_i
add wave -noupdate -expand -group testbench -radix hexadecimal /timers_tb/wb_dat_i
add wave -noupdate -expand -group testbench -radix hexadecimal /timers_tb/wb_dat_o
add wave -noupdate -expand -group testbench /timers_tb/irq_o
add wave -noupdate -expand -group testbench /timers_tb/wb_ack_o
add wave -noupdate -expand -group testbench -radix hexadecimal /timers_tb/wb_tgd_o
add wave -noupdate -expand -group testbench /timers_tb/wb_stall_o
add wave -noupdate -expand -group testbench /timers_tb/wb_err_o
add wave -noupdate -expand -group testbench /timers_tb/wb_rty_o
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/rst_i
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/clk_i
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_cyc_i
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_stb_i
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_we_i
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_ack_o
add wave -noupdate -expand -group dut -expand -group wb -radix hexadecimal /timers_tb/dut/wb_dat_o
add wave -noupdate -expand -group dut -expand -group wb -radix hexadecimal /timers_tb/dut/wb_dat_i
add wave -noupdate -expand -group dut -expand -group wb -radix hexadecimal /timers_tb/dut/wb_tgd_o
add wave -noupdate -expand -group dut -expand -group wb -radix hexadecimal /timers_tb/dut/wb_tgd_i
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_adr_i
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_stall_o
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_err_o
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_lock_i
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_rty_o
add wave -noupdate -expand -group dut -expand -group wb -radix hexadecimal /timers_tb/dut/wb_sel_i
add wave -noupdate -expand -group dut -expand -group wb /timers_tb/dut/wb_tga_i
add wave -noupdate -expand -group dut -expand -group wb -radix hexadecimal /timers_tb/dut/wb_tgc_i
add wave -noupdate -expand -group dut -expand -group timer_ctr /timers_tb/dut/irq_o
add wave -noupdate -expand -group dut -expand -group timer_ctr /timers_tb/dut/irq_r
add wave -noupdate -expand -group dut -expand -group timer_ctr /timers_tb/dut/ten_r
add wave -noupdate -expand -group dut -expand -group timer_ctr /timers_tb/dut/cs_r
add wave -noupdate -expand -group dut -expand -group timer_ctr /timers_tb/dut/addr_r
add wave -noupdate -expand -group dut -expand -group timer_ctr /timers_tb/dut/en_r
add wave -noupdate -expand -group dut -expand -group timer_ctr /timers_tb/dut/we_r
add wave -noupdate -expand -group dut -expand -group timer_ctr -radix hexadecimal /timers_tb/dut/dat_r
add wave -noupdate -expand -group dut -expand -group timer_ctr /timers_tb/dut/we_d
add wave -noupdate -expand -group dut -expand -group timer_ctr -radix hexadecimal /timers_tb/dut/dat_d
add wave -noupdate -expand -group dut -expand -group timer_ctr /timers_tb/dut/addr_d
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/clk_i
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/rst_i
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/inc_i
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/addr_i
add wave -noupdate -expand -group dut -expand -group timer0 -radix hexadecimal /timers_tb/dut/timer_gen(0)/timerX/dat_o
add wave -noupdate -expand -group dut -expand -group timer0 -radix hexadecimal /timers_tb/dut/timer_gen(0)/timerX/dat_i
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/we_i
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/en_i
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/thresh_o
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/th_hlt_i
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/th_rst_i
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/th_stk_i
add wave -noupdate -expand -group dut -expand -group timer0 -radix hexadecimal /timers_tb/dut/timer_gen(0)/timerX/CNT
add wave -noupdate -expand -group dut -expand -group timer0 -radix hexadecimal /timers_tb/dut/timer_gen(0)/timerX/THR
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/halt_r
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/thresh_r
add wave -noupdate -expand -group dut -expand -group timer0 /timers_tb/dut/timer_gen(0)/timerX/dat_en_r
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/clk_i
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/rst_i
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/inc_i
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/addr_i
add wave -noupdate -expand -group dut -expand -group timer1 -radix hexadecimal /timers_tb/dut/timer_gen(1)/timerX/dat_o
add wave -noupdate -expand -group dut -expand -group timer1 -radix hexadecimal /timers_tb/dut/timer_gen(1)/timerX/dat_i
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/we_i
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/en_i
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/thresh_o
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/th_hlt_i
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/th_rst_i
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/th_stk_i
add wave -noupdate -expand -group dut -expand -group timer1 -radix hexadecimal /timers_tb/dut/timer_gen(1)/timerX/CNT
add wave -noupdate -expand -group dut -expand -group timer1 -radix hexadecimal /timers_tb/dut/timer_gen(1)/timerX/THR
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/halt_r
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/thresh_r
add wave -noupdate -expand -group dut -expand -group timer1 /timers_tb/dut/timer_gen(1)/timerX/dat_en_r
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/clk_i
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/rst_i
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/inc_i
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/addr_i
add wave -noupdate -expand -group dut -expand -group timer2 -radix hexadecimal /timers_tb/dut/timer_gen(2)/timerX/dat_o
add wave -noupdate -expand -group dut -expand -group timer2 -radix hexadecimal /timers_tb/dut/timer_gen(2)/timerX/dat_i
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/we_i
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/en_i
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/thresh_o
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/th_hlt_i
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/th_rst_i
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/th_stk_i
add wave -noupdate -expand -group dut -expand -group timer2 -radix hexadecimal /timers_tb/dut/timer_gen(2)/timerX/CNT
add wave -noupdate -expand -group dut -expand -group timer2 -radix hexadecimal /timers_tb/dut/timer_gen(2)/timerX/THR
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/halt_r
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/thresh_r
add wave -noupdate -expand -group dut -expand -group timer2 /timers_tb/dut/timer_gen(2)/timerX/dat_en_r
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/clk_i
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/rst_i
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/inc_i
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/addr_i
add wave -noupdate -expand -group dut -expand -group timer3 -radix hexadecimal /timers_tb/dut/timer_gen(3)/timerX/dat_o
add wave -noupdate -expand -group dut -expand -group timer3 -radix hexadecimal /timers_tb/dut/timer_gen(3)/timerX/dat_i
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/we_i
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/en_i
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/thresh_o
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/th_hlt_i
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/th_rst_i
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/th_stk_i
add wave -noupdate -expand -group dut -expand -group timer3 -radix hexadecimal /timers_tb/dut/timer_gen(3)/timerX/CNT
add wave -noupdate -expand -group dut -expand -group timer3 -radix hexadecimal /timers_tb/dut/timer_gen(3)/timerX/THR
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/halt_r
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/thresh_r
add wave -noupdate -expand -group dut -expand -group timer3 /timers_tb/dut/timer_gen(3)/timerX/dat_en_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {124592 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 327
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {210071 ps}

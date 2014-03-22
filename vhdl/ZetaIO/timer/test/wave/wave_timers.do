onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group tb /timers_tb/clk
add wave -noupdate -expand -group tb /timers_tb/rst_i
add wave -noupdate -expand -group tb /timers_tb/we_i
add wave -noupdate -expand -group tb /timers_tb/en_i
add wave -noupdate -expand -group tb /timers_tb/addr_i
add wave -noupdate -expand -group tb -radix hexadecimal /timers_tb/dat_i
add wave -noupdate -expand -group tb -radix hexadecimal /timers_tb/dat_o
add wave -noupdate -expand -group tb /timers_tb/irq_o
add wave -noupdate -expand -group dut /timers_tb/dut/clk_i
add wave -noupdate -expand -group dut /timers_tb/dut/rst_i
add wave -noupdate -expand -group dut /timers_tb/dut/we_i
add wave -noupdate -expand -group dut /timers_tb/dut/en_i
add wave -noupdate -expand -group dut /timers_tb/dut/addr_i
add wave -noupdate -expand -group dut -radix hexadecimal /timers_tb/dut/dat_i
add wave -noupdate -expand -group dut -radix hexadecimal /timers_tb/dut/dat_o
add wave -noupdate -expand -group dut /timers_tb/dut/irq_o
add wave -noupdate -expand -group dut /timers_tb/dut/irq_r
add wave -noupdate -expand -group dut -radix binary /timers_tb/dut/cs_r
add wave -noupdate -expand -group dut /timers_tb/dut/ten_r
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/clk_i
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/rst_i
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/inc_i
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/addr_i
add wave -noupdate -expand -group dut -group timer3 -radix hexadecimal /timers_tb/dut/timer_gen(3)/timerX/dat_o
add wave -noupdate -expand -group dut -group timer3 -radix hexadecimal /timers_tb/dut/timer_gen(3)/timerX/dat_i
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/we_i
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/en_i
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/thresh_o
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/th_hlt_i
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/th_rst_i
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/th_stk_i
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/CNT
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/THR
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/halt_r
add wave -noupdate -expand -group dut -group timer3 /timers_tb/dut/timer_gen(3)/timerX/thresh_r
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/clk_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/rst_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/inc_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/addr_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/dat_o
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/dat_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/we_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/en_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/thresh_o
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/th_hlt_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/th_rst_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/th_stk_i
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/CNT
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/THR
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/halt_r
add wave -noupdate -expand -group dut -group timer2 /timers_tb/dut/timer_gen(2)/timerX/thresh_r
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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {87810 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 377
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
WaveRestoreZoom {0 ps} {197120 ps}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group testbench /pic_tb/clk
add wave -noupdate -expand -group testbench /pic_tb/irq_o
add wave -noupdate -expand -group testbench -radix hexadecimal /pic_tb/int_i
add wave -noupdate -expand -group testbench /pic_tb/rst_i
add wave -noupdate -expand -group testbench /pic_tb/clk_i
add wave -noupdate -expand -group testbench -radix hexadecimal /pic_tb/wb_dat_o
add wave -noupdate -expand -group testbench -radix hexadecimal /pic_tb/wb_dat_i
add wave -noupdate -expand -group testbench /pic_tb/wb_cyc_i
add wave -noupdate -expand -group testbench /pic_tb/wb_stb_i
add wave -noupdate -expand -group testbench /pic_tb/wb_ack_o
add wave -noupdate -expand -group testbench /pic_tb/wb_we_i
add wave -noupdate -expand -group testbench -radix hexadecimal /pic_tb/wb_adr_i
add wave -noupdate -expand -group testbench /pic_tb/wb_stall_o
add wave -noupdate -expand -group testbench /pic_tb/wb_err_o
add wave -noupdate -expand -group testbench /pic_tb/wb_lock_i
add wave -noupdate -expand -group testbench /pic_tb/wb_rty_o
add wave -noupdate -expand -group testbench -radix hexadecimal /pic_tb/wb_sel_i
add wave -noupdate -expand -group testbench -radix hexadecimal /pic_tb/wb_tga_i
add wave -noupdate -expand -group testbench -radix hexadecimal /pic_tb/wb_tgc_i
add wave -noupdate -expand -group testbench -radix hexadecimal /pic_tb/wb_tgd_o
add wave -noupdate -expand -group testbench -radix hexadecimal /pic_tb/wb_tgd_i
add wave -noupdate -expand -group pic /pic_tb/pic/irq_o
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/int_i
add wave -noupdate -expand -group pic /pic_tb/pic/rst_i
add wave -noupdate -expand -group pic /pic_tb/pic/clk_i
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/wb_dat_o
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/wb_dat_i
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/wb_tgd_o
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/wb_tgd_i
add wave -noupdate -expand -group pic /pic_tb/pic/wb_ack_o
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/wb_adr_i
add wave -noupdate -expand -group pic /pic_tb/pic/wb_cyc_i
add wave -noupdate -expand -group pic /pic_tb/pic/wb_stall_o
add wave -noupdate -expand -group pic /pic_tb/pic/wb_err_o
add wave -noupdate -expand -group pic /pic_tb/pic/wb_lock_i
add wave -noupdate -expand -group pic /pic_tb/pic/wb_rty_o
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/wb_sel_i
add wave -noupdate -expand -group pic /pic_tb/pic/wb_stb_i
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/wb_tga_i
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/wb_tgc_i
add wave -noupdate -expand -group pic /pic_tb/pic/wb_we_i
add wave -noupdate -expand -group pic /pic_tb/pic/en_r
add wave -noupdate -expand -group pic /pic_tb/pic/regen_r
add wave -noupdate -expand -group pic /pic_tb/pic/ready_r
add wave -noupdate -expand -group pic /pic_tb/pic/irq_r
add wave -noupdate -expand -group pic -radix hexadecimal /pic_tb/pic/cs_r
add wave -noupdate -expand -group pic /pic_tb/pic/adr_r
add wave -noupdate -expand -group pic /pic_tb/pic/ack_r
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/rst_i
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 -radix hexadecimal /pic_tb/pic/reg_generator(1)/regsX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/adr_i
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 -radix hexadecimal /pic_tb/pic/reg_generator(1)/regsX/dat_i
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 -radix hexadecimal /pic_tb/pic/reg_generator(1)/regsX/dat_o
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/en_i
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/ready_o
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 -radix hexadecimal /pic_tb/pic/reg_generator(1)/regsX/ICR
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 -radix hexadecimal /pic_tb/pic/reg_generator(1)/regsX/IMR
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 -radix hexadecimal /pic_tb/pic/reg_generator(1)/regsX/ITR
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 -radix hexadecimal /pic_tb/pic/reg_generator(1)/regsX/IER
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 -radix hexadecimal /pic_tb/pic/reg_generator(1)/regsX/irq
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/icr_we
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/ready_r
add wave -noupdate -expand -group regs -expand -group bank1 -expand -group reg1 /pic_tb/pic/reg_generator(1)/regsX/reading_r
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(15)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(14)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(13)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(12)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(11)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(10)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(9)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(8)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(7)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(6)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(5)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(4)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(3)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(2)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(1)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank1 -group icr1 /pic_tb/pic/reg_generator(1)/regsX/icr_generator(0)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/rst_i
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 -radix hexadecimal /pic_tb/pic/reg_generator(0)/regsX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/adr_i
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 -radix hexadecimal /pic_tb/pic/reg_generator(0)/regsX/dat_i
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 -radix hexadecimal /pic_tb/pic/reg_generator(0)/regsX/dat_o
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/en_i
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/ready_o
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 -radix hexadecimal /pic_tb/pic/reg_generator(0)/regsX/ICR
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 -radix hexadecimal /pic_tb/pic/reg_generator(0)/regsX/IMR
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 -radix hexadecimal /pic_tb/pic/reg_generator(0)/regsX/ITR
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 -radix hexadecimal /pic_tb/pic/reg_generator(0)/regsX/IER
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 -radix hexadecimal /pic_tb/pic/reg_generator(0)/regsX/irq
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/icr_we
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/ready_r
add wave -noupdate -expand -group regs -expand -group bank0 -expand -group reg0 /pic_tb/pic/reg_generator(0)/regsX/reading_r
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(15)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(14)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(13)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(12)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(11)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(10)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(9)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(8)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(7)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(6)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(5)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(4)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(3)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(2)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(1)/ICRX/prev_q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/clk_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/int_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/irq_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/icr_o
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/icr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/imr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/ier_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/itr_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/we_i
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/rising
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/falling
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/level
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/set
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/rst
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/q
add wave -noupdate -expand -group regs -expand -group bank0 -group icr0 /pic_tb/pic/reg_generator(0)/regsX/icr_generator(0)/ICRX/prev_q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {119967 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 339
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
WaveRestoreZoom {0 ps} {207028 ps}

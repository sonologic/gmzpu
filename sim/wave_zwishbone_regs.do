onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /zwishbone_regs_tb/clk
add wave -noupdate /zwishbone_regs_tb/reset
add wave -noupdate /zwishbone_regs_tb/en_i
add wave -noupdate /zwishbone_regs_tb/we_i
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/adr_i
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/dat_o
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/dat_i
add wave -noupdate /zwishbone_regs_tb/to_rst_i
add wave -noupdate /zwishbone_regs_tb/to_inc_i
add wave -noupdate /zwishbone_regs_tb/to_o
add wave -noupdate /zwishbone_regs_tb/err_i
add wave -noupdate /zwishbone_regs_tb/rty_i
add wave -noupdate /zwishbone_regs_tb/busy_o
add wave -noupdate /zwishbone_regs_tb/ready_o
add wave -noupdate -divider inside
add wave -noupdate /zwishbone_regs_tb/c_regs/clk_i
add wave -noupdate /zwishbone_regs_tb/c_regs/rst_i
add wave -noupdate /zwishbone_regs_tb/c_regs/en_i
add wave -noupdate /zwishbone_regs_tb/c_regs/we_i
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/c_regs/adr_i
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/c_regs/dat_i
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/c_regs/dat_o
add wave -noupdate /zwishbone_regs_tb/c_regs/busy_o
add wave -noupdate /zwishbone_regs_tb/c_regs/ready_o
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/c_regs/cfg_o
add wave -noupdate /zwishbone_regs_tb/c_regs/err_i
add wave -noupdate /zwishbone_regs_tb/c_regs/rty_i
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/c_regs/reg_config
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/c_regs/reg_status
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/c_regs/reg_to_cmp
add wave -noupdate -radix hexadecimal /zwishbone_regs_tb/c_regs/reg_to_val
add wave -noupdate /zwishbone_regs_tb/c_regs/ready_r
add wave -noupdate /zwishbone_regs_tb/c_regs/reading_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 271
configure wave -valuecolwidth 82
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
WaveRestoreZoom {0 ps} {229312 ps}

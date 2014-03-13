onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group testbench /interrupt_line_tb/clk
add wave -noupdate -expand -group testbench /interrupt_line_tb/int_i
add wave -noupdate -expand -group testbench /interrupt_line_tb/icr_i
add wave -noupdate -expand -group testbench /interrupt_line_tb/imr_i
add wave -noupdate -expand -group testbench /interrupt_line_tb/ier_i
add wave -noupdate -expand -group testbench /interrupt_line_tb/itr_i
add wave -noupdate -expand -group testbench /interrupt_line_tb/we_i
add wave -noupdate -expand -group testbench /interrupt_line_tb/irq_o
add wave -noupdate -expand -group testbench /interrupt_line_tb/icr_o
add wave -noupdate -expand -group internal /interrupt_line_tb/line/int_i
add wave -noupdate -expand -group internal /interrupt_line_tb/line/irq_o
add wave -noupdate -expand -group internal /interrupt_line_tb/line/icr_o
add wave -noupdate -expand -group internal /interrupt_line_tb/line/icr_i
add wave -noupdate -expand -group internal /interrupt_line_tb/line/imr_i
add wave -noupdate -expand -group internal /interrupt_line_tb/line/ier_i
add wave -noupdate -expand -group internal /interrupt_line_tb/line/itr_i
add wave -noupdate -expand -group internal /interrupt_line_tb/line/we_i
add wave -noupdate -expand -group internal /interrupt_line_tb/line/rising
add wave -noupdate -expand -group internal /interrupt_line_tb/line/falling
add wave -noupdate -expand -group internal /interrupt_line_tb/line/level
add wave -noupdate -expand -group internal /interrupt_line_tb/line/set
add wave -noupdate -expand -group internal /interrupt_line_tb/line/rst
add wave -noupdate -expand -group internal /interrupt_line_tb/line/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5960 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 211
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
WaveRestoreZoom {0 ps} {120097 ps}

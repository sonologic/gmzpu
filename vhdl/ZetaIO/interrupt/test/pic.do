set BreakOnAssertion 1

vlib gmzpu
vcom -work gmzpu ../interrupt_pkg.vhdl
vcom -work gmzpu ../interrupt.vhdl

vlib work
vcom -work work pic_tb.vhdl

# run tb
vsim pic_TB

run -all

exit

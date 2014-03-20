set BreakOnAssertion 1

vlib gmzpu
vcom -work gmzpu ../interrupt_pkg.vhdl
vcom -work gmzpu ../interrupt.vhdl

vlib work
vcom -work work interrupt_regs_tb.vhdl

# run tb
vsim interrupt_regs_TB

run -all

exit

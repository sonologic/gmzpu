C_RED=\e[0;31m
C_GREEN=\e[0;32m
C_NONE=\e[0m

all:	test

test:	test_pic test_zwc

test_pic:	test_interrupt_line test_interrupt_regs

test_interrupt_line:	interrupt_line_cmd.do
	@vsim -c -assertfile assert.log -do $< > /dev/null
	@if [ `wc -l assert.log | cut -d\  -f 1` -eq 0 ]; then echo -e "[${C_GREEN}OK  ${C_NONE}] $<"; else echo -e "[${C_RED}FAIL${C_NONE}] $<"; fi

test_interrupt_regs:	interrupt_regs_cmd.do
	@vsim -c -assertfile assert.log -do $< > /dev/null
	@if [ `wc -l assert.log | cut -d\  -f 1` -eq 0 ]; then echo -e "[${C_GREEN}OK  ${C_NONE}] $<"; else echo -e "[${C_RED}FAIL${C_NONE}] $<"; fi

test_zwc:	test_zwc_regs

test_zwc_regs:			zwishbone_regs_cmd.do
	@vsim -c -assertfile assert.log -do $< > /dev/null
	@if [ `wc -l assert.log | cut -d\  -f 1` -eq 0 ]; then echo -e "[${C_GREEN}OK  ${C_NONE}] $<"; else echo -e "[${C_RED}FAIL${C_NONE}] $<"; fi


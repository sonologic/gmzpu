ROMS
====

Several ROM's have been included for testing:

hello/      - print "Hello, world..." on phiIO RS232
int_test/   - simple interrupt handler test
zwc_test/   - basic zwishbone controller test

The following resources are available to the aforementioned ROM's:

include/    - include files with gmZPU specific I/O macro's
make/       - generic make includes (rom.mk)
vhdl/       - header.vhdl and footer.vhdl implementing pre-loaded ram

ROM's are in fact just RAM pre-loaded with the ROM image.


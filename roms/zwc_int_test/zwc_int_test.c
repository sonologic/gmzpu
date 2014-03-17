/*
 * Shows usage of interrupts. Goes along with zpu_core_small_wip.vhd.
 */
#include <stdio.h>
#include <sys/types.h>
#include <gmzpu_io.h>

volatile int counter;

/* Example of single, fixed interval non-maskable, nested interrupt. The interrupt signal is
 * held high for enough cycles to guarantee that it will be noticed, i.e. longer than
 * any io access + 4 cycles roughly.
 * 
 * Any non-trivial interrupt controller would have support for
 * acknowledging interrupts(i.e. keep interrupts asserted until
 * software acknowledges them via memory mapped IO).
 */
void  _zpu_interrupt(void)
{
	/* interrupts are enabled so we need to finish up quickly,
	 * lest we will get infinite recursion!*/
	counter++;

    /* blindly ack all interrupts */
    write_raw(PIC_ICR, 0x0);
}

static const char *hex_digits="0123456789abcdef";

void print_hex(__uint32_t dat)
{
    int i;
    char out[9];

    for(i=7;i>=0;i--) {
        out[i]=hex_digits[dat & 0xf];
        dat = dat >> 4;
    }
    out[8]=0;

    puts(out);
}

int main(int argc, char **argv)
{
    __uint32_t config=0;
    __uint32_t status=0;
    __uint32_t bus=0;
	int t;

    puts("--");

    // init zwc0
    write_raw(ZWC_CONFIG, 0x0);

    config = read_raw(ZWC_CONFIG);
    status = read_raw(ZWC_STATUS);

    puts("zwc c:");
    print_hex(config);
    puts("zwc s:");
    print_hex(status);

    // init pic, enable ext interrupt
    write_raw(PIC_IMR, INT_EXT);

	t=counter;
	for (;;)
	{
        if (t==counter)
        {
            puts("No interrupt\n");
        } else
        {
            puts("Got interrupt\n");
            t=counter;
        }
	}
}

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
	int t;

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

        config = read_raw((__uint32_t *)ZWC_CONFIG);
        status = read_raw((__uint32_t *)ZWC_STATUS);
        puts("c:");
        print_hex(config);
        puts("s:");
        print_hex(status);
        //printf("config = 0x%x, status=0x%s\n", config, status);

        write_raw((__uint32_t *)ZWC_CONFIG, 0x87654321);
        write_raw((__uint32_t *)ZWC_STATUS, 0x12345678);
        config = read_raw((__uint32_t *)ZWC_CONFIG);
        status = read_raw((__uint32_t *)ZWC_STATUS);
        puts("c:");
        print_hex(config);
        puts("s:");
        print_hex(status);
        //printf("config = 0x%x, status=0x%s\n", config, status);
	}
    
}

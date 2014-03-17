#include <sys/types.h>

/* 18 bits => 0x00000 - 0x3FFFF => 256kb */
#define	ADDR_W			18

#define ZWC_CS_W		4
#define ZWC_WB_ADR_W		ADDR_W - ZMC_CS_W - 3
#define ZWC_CS_SIZE		( (1<<ZWC_WB_ADR_W)-1 )


/*
 * raw access to memory and i/o
 */

static inline __uint32_t _read_raw(__uint32_t *ptr) 
{
    return *((volatile __uint32_t *)ptr);
}

#define read_raw(REG)       _read_raw((__uint32_t *)REG)

static inline void _write_raw(__uint32_t *ptr, __uint32_t data)
{
    *((volatile __uint32_t *)ptr) = data;
}

#define write_raw(REG,D)    _write_raw((__uint32_t *)REG,D)

/*
 * 0x00000 - 0x1FFFF: RAM
 * 0x20000 - 0x2FFFF: phiIO
 * 0x30000 - 0x3FFFF: zwishbone
 *
 *
 */
#define		IO_MASK			(1<<(ADDR_W-1))
#define		ZWC_MASK		(1<<(ADDR_W-2))
#define     ZWC_BUS_MASK    (1<<(ADDR_W-3))

/*
 * 0x30000          : ZWC_CONFIG
 * 0x30004          : ZWC_STATUS
 * 0x38000 - 0x37ff : ZWC_0_BASE
 * 0x38800 - 0x38ff : ZWC_1_BASE
 * 0x38900 - 0x39ff : ZWC_2_BASE
 * 0x38a00 - 0x3aff : ZWC_3_BASE
 */

#define		ZWC_CONFIG		(IO_MASK | ZWC_MASK)
#define		ZWC_STATUS		(IO_MASK | ZWC_MASK | 4)

#define		ZWC_0_BASE		(IO_MASK | ZWC_MASK | ZWC_BUS_MASK)
#define		ZWC_1_BASE		(ZWC_0_BASE + ZWC_CS_SIZE)
#define		ZWC_2_BASE		(ZWC_1_BASE + ZWC_CS_SIZE)
#define		ZWC_3_BASE		(ZWC_2_BASE + ZWC_CS_SIZE)
/* etc... */

/* PIC on zwc0.0 */
#define     PIC_BASE        (ZWC_0_BASE)
#define     PIC_ICR         (ZWC_0_BASE | 0x00)
#define     PIC_IMR         (ZWC_0_BASE | 0x04)
#define     PIC_ITR         (ZWC_0_BASE | 0x08)
#define     PIC_IER         (ZWC_0_BASE | 0x0c)

/* interrupt bits */
#define     INT_EXT     (1<<0)      /* external interrupt   */
#define     INT_ZWC0    (1<<1)      /* zwishbone controller */
#define     INT_IRQ2    (1<<2)
#define     INT_IRQ3    (1<<3)
#define     INT_IRQ4    (1<<4)
#define     INT_IRQ5    (1<<5)
#define     INT_IRQ6    (1<<6)
#define     INT_IRQ7    (1<<7)
#define     INT_IRQ8    (1<<8)
#define     INT_IRQ9    (1<<9)
#define     INT_IRQ10   (1<<10)
#define     INT_IRQ11   (1<<11)
#define     INT_IRQ12   (1<<12)
#define     INT_IRQ13   (1<<13)
#define     INT_IRQ14   (1<<14)
#define     INT_IRQ15   (1<<15)
#define     INT_IRQ16   (1<<16)
#define     INT_IRQ17   (1<<17)
#define     INT_IRQ18   (1<<18)
#define     INT_IRQ19   (1<<19)
#define     INT_IRQ20   (1<<20)
#define     INT_IRQ21   (1<<21)
#define     INT_IRQ22   (1<<22)
#define     INT_IRQ23   (1<<23)
#define     INT_IRQ24   (1<<24)
#define     INT_IRQ25   (1<<25)
#define     INT_IRQ26   (1<<26)
#define     INT_IRQ27   (1<<27)
#define     INT_IRQ28   (1<<28)
#define     INT_IRQ29   (1<<29)
#define     INT_IRQ30   (1<<30)
#define     INT_IRQ31   (1<<31)


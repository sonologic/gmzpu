#include <sys/types.h>

/* 18 bits => 0x00000 - 0x3FFFF => 256kb */
#define	ADDR_W			18

#define ZWC_CS_W		4
#define ZWC_WB_ADR_W		ADDR_W - ZMC_CS_W - 3
#define ZWC_CS_SIZE		( (1<<ZWC_WB_ADR_W)-1 )


/*
 * raw access to memory and i/o
 */

static inline __uint32_t read_raw(__uint32_t *ptr) 
{
    return *((volatile __uint32_t *)ptr);
}

static inline void write_raw(__uint32_t *ptr, __uint32_t data)
{
    *((volatile __uint32_t *)ptr) = data;
}

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


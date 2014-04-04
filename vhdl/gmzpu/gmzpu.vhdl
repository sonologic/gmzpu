------------------------------------------------------------------------------
----                                                                      ----
----  gmZPU core
----                                                                      ----
----  http://github.com/sonologic/gmzpu                                   ----
----                                                                      ----
----  Description:                                                        ----
----  ZPU is a 32 bits small stack cpu. This is a helper that joins the   ----
----  medium version, the PHI I/O basic layout, a program BRAM and a.     ----
----  wishbone controller.                                                ----
----                                                                      ----
----  To Do:                                                              ----
----  - Add interrupt controller.                                         ----
----                                                                      ----
----  Author:                                                             ----
----    - Salvador E. Tropea, salvador inti.gob.ar                        ----
----    - "Koen Martens" <gmc sonologic.nl>                               ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Copyright (c) 2008 Salvador E. Tropea <salvador inti.gob.ar>         ----
---- Copyright (c) 2008 Instituto Nacional de Tecnología Industrial       ----
---- Copyright (c) 2014 Koen Martens                                      ----
----                                                                      ----
---- Distributed under the BSD license                                    ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Design unit:      gmZPU                                              ----
---- File name:        gmzpu.vhdl                                         ----
---- Note:             None                                               ----
---- Limitations:      None known                                         ----
---- Errors:           None known                                         ----
---- Library:          gmzpu                                              ----
---- Dependencies:     IEEE.std_logic_1164                                ----
----                   IEEE.numeric_std                                   ----
---- Target FPGA:      n/a                                                ----
---- Language:         VHDL                                               ----
---- Wishbone:         No                                                 ----
---- Synthesis tools:  Modelsim                                           ----
---- Simulation tools: Modelsim                                           ----
---- Text editor:      vim                                                ----
----                                                                      ----
------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library zpu;
use zpu.zpupkg.all;

library gmzpu;
use gmzpu.zwishbone.all;
use gmzpu.soc.all;

library zetaio;
use zetaio.pic.all;
use zetaio.tim.all;

-- RAM declaration
library work;
use work.zpu_memory.all;

entity gmZPU is
   generic(
      WORD_SIZE  : natural:=32;  -- 32 bits data path
      D_CARE_VAL : std_logic:='X'; -- Fill value
      CLK_FREQ   : positive:=50; -- 50 MHz clock
      BRATE      : positive:=9600; -- RS232 baudrate
      ADDR_W     : natural:=18;  -- 18 bits address space=256 kB, 128 kB I/O
      BRAM_W     : natural:=15); -- 15 bits RAM space=32 kB
   port(
      clk_i      : in  std_logic;  -- CPU clock
      rst_i      : in  std_logic;  -- Reset
      interrupt_i: in  std_logic;  -- Reset
      break_o    : out std_logic;  -- Break executed
      dbg_o      : out zpu_dbgo_t; -- Debug info
      rs232_tx_o : out std_logic;  -- UART Tx
      rs232_rx_i : in  std_logic;  -- UART Rx
      gpio_in    : in  std_logic_vector(31 downto 0);
      gpio_out   : out std_logic_vector(31 downto 0);
      gpio_dir   : out std_logic_vector(31 downto 0)  -- 1 = in, 0 = out
      );
end entity gmZPU;

architecture Structural of gmZPU is
    constant BYTE_BITS  : integer:=WORD_SIZE/16; -- # of bits in a word that addresses bytes
    constant IO_BIT     : integer:=ADDR_W-1; -- Address bit to determine this is an I/O
                                            -- 0 = memory, 1= I/O
    constant ZW_BIT     : integer:=ADDR_W-2; -- Address bit to determine zwishbone from phiIO
                                            -- 0 = phiIO, 1 = zwishbone
    constant BRDIVISOR  : positive:=CLK_FREQ*1e6/BRATE/4;

    -- zwishbone
    constant CS_WIDTH   : natural:=4;
    -- devices on the bus
    constant WB_CS_PIC  : natural:=0;

    -- PIC interrupt mapping
    --constant PIC_INT_EXT    : natural:=0;
    --constant PIC_INT_ZWC    : natural:=1;
    --constant PIC_INT_UNUSED : natural:=2;
   

    -- I/O & memory (ZPU)
    signal mem_busy     : std_logic;
    signal mem_read     : unsigned(WORD_SIZE-1 downto 0);
    signal mem_write    : unsigned(WORD_SIZE-1 downto 0);
    signal mem_addr     : unsigned(ADDR_W-1 downto 0);
    signal mem_we       : std_logic;
    signal mem_re       : std_logic;

    -- Memory (SinglePort_RAM)
    signal ram_busy     : std_logic;
    signal ram_read     : unsigned(WORD_SIZE-1 downto 0);
    signal ram_addr     : unsigned(BRAM_W-1 downto BYTE_BITS);
    signal ram_we       : std_logic;
    signal ram_re       : std_logic;
    signal ram_ready_r  : std_logic:='0';

    -- I/O (ZPU_IO)
    signal phi_io_busy      : std_logic;
    signal phi_io_re        : std_logic;
    signal phi_io_we        : std_logic;
    signal phi_io_read      : unsigned(WORD_SIZE-1 downto 0);
    signal phi_io_ready     : std_logic;
    signal phi_io_reading_r : std_logic:='0';
    signal phi_io_addr      : unsigned(2 downto 0);

    -- I/O (zwishbone)
    signal zw_busy          : std_logic;
    signal zw_ready         : std_logic;
    signal zw_addr          : unsigned(ADDR_W-3 downto 0);
    signal zw_re            : std_logic;
    signal zw_we            : std_logic;
    signal zw_dat_i         : unsigned(WORD_SIZE-1 downto 0);
    signal zw_dat_o         : unsigned(WORD_SIZE-1 downto 0);
    --
    signal wb_dat_i         : unsigned(WORD_SIZE-1 downto 0);
    signal wb_dat_o         : unsigned(WORD_SIZE-1 downto 0);
    signal wb_tgd_i         : unsigned(WORD_SIZE-1 downto 0);
    signal wb_tgd_o         : unsigned(WORD_SIZE-1 downto 0);
    signal wb_ack_i         : std_logic;
    signal wb_adr_o         : unsigned(ADDR_W-4-CS_WIDTH downto 0);
    signal wb_cyc_o      : std_logic;
    signal wb_stall_i    : std_logic;
    signal wb_err_i      : std_logic;
    signal wb_lock_o     : std_logic;
    signal wb_rty_i      : std_logic;
    signal wb_sel_o      : std_logic_vector(WORD_SIZE-1 downto 0);
    signal wb_stb_o      : std_logic_vector((2**CS_WIDTH)-1 downto 0);
    signal wb_tga_o      : unsigned(ADDR_W-4-CS_WIDTH downto 0);
    signal wb_tgc_o      : unsigned(WORD_SIZE-1 downto 0); -- size correct?
    signal wb_we_o       : std_logic;
   
    -- interrupt
    signal irq_r            : std_logic; 
begin
   memory: SinglePortRAM
      generic map(
         WORD_SIZE => WORD_SIZE, BYTE_BITS => BYTE_BITS, BRAM_W => BRAM_W)
      port map(
         clk_i => clk_i,
         we_i => ram_we, re_i => ram_re, addr_i => ram_addr,
         write_i => mem_write, read_o => ram_read, busy_o => ram_busy);
   ram_addr <= mem_addr(BRAM_W-1 downto BYTE_BITS);
   ram_we   <= mem_we and not(mem_addr(IO_BIT));
   ram_re   <= mem_re and not(mem_addr(IO_BIT));

   -- I/O: Phi layout
   io_map: ZPUPhiIO
      generic map(
         BRDIVISOR => BRDIVISOR, 
         LOG_FILE  => "zpu_med1_io.log"
         )
      port map(
         clk_i      => clk_i, 
         reset_i    => rst_i, 
         busy_o     => phi_io_busy, 
         we_i       => phi_io_we,
         re_i       => phi_io_re, 
         data_i     => mem_write, 
         data_o     => phi_io_read,
         addr_i     => phi_io_addr, 
         rs232_rx_i => rs232_rx_i, 
         rs232_tx_o => rs232_tx_o,
         br_clk_i   => '1',
         gpio_in    => gpio_in,
         gpio_out   => gpio_out,
         gpio_dir   => gpio_dir
         );
   phi_io_addr  <= mem_addr(4 downto 2);
   -- Here we decode 0x8xxxx as I/O and not just 0x80A00xx
   -- Note: We define the address space as 256 kB, so writing to 0x80A00xx
   -- will be as wrting to 0x200xx and hence we decode it as I/O space.
   phi_io_we    <= mem_we and mem_addr(IO_BIT) and not mem_addr(ZW_BIT);
   phi_io_re    <= mem_re and mem_addr(IO_BIT) and not mem_addr(ZW_BIT);
   phi_io_ready <= (phi_io_reading_r or phi_io_re) and not phi_io_busy;

    -- I/O: zwishbone
    zwc0: zwc
        generic map(
            DATA_WIDTH => WORD_SIZE, ADR_WIDTH => ADDR_W-2, CS_WIDTH => 4
        )
        port map(
            clk_i => clk_i, rst_i => rst_i, re_i => zw_re, busy_o => zw_busy, ready_o => zw_ready, irq_o => irq_r,
            adr_i => zw_addr, we_i => zw_we, dat_i => zw_dat_i, dat_o => zw_dat_o,
            int_i => interrupt_i
        );
    -- ADDR_W = 18, IO_BIT = 17, ZW_BIT = 16
    zw_we   <= mem_we and mem_addr(IO_BIT) and mem_addr(ZW_BIT);
    zw_re   <= mem_re and mem_addr(IO_BIT) and mem_addr(ZW_BIT);
    zw_addr <= mem_addr(ADDR_W-3 downto 0);

    zw_dat_i <= mem_write;

    -- interrupt line connect
    --int_r(WORD_SIZE-1 downto PIC_INT_UNUSED) <= (others => '0');
    --int_r(PIC_INT_EXT) <= interrupt_i;
    --int_r(PIC_INT_ZWC) <= zwc_irq_r;

    zpu : ZPUMediumCore
       generic map(
          WORD_SIZE => WORD_SIZE, ADDR_W => ADDR_W, MEM_W => BRAM_W,
          D_CARE_VAL => D_CARE_VAL)
       port map(
          clk_i => clk_i, reset_i => rst_i, interrupt_i => irq_r, enable_i => '1',
          break_o => break_o, dbg_o => dbg_o,
          -- Memory
          mem_busy_i => mem_busy, data_i => mem_read, data_o => mem_write,
          addr_o => mem_addr, write_en_o => mem_we, read_en_o => mem_re);
    mem_busy <= (phi_io_busy or ram_busy) or zw_busy;
 
    -- Memory reads either come from IO or DRAM. We need to pick the right one.
    memory_control:
    process (ram_read, ram_ready_r, phi_io_ready, phi_io_read, zw_dat_o, zw_ready)
    begin
       mem_read <= (others => '0');
       if ram_ready_r='1' then
          mem_read <= ram_read;
       end if;
       if phi_io_ready='1' then
          mem_read <= phi_io_read;
       end if;
       if zw_ready='1' then
         mem_read <= unsigned(zw_dat_o);
       end if;
    end process memory_control;
 
    memory_control_sync:
    process (clk_i)
    begin
       if rising_edge(clk_i) then
          if rst_i='1' then
             phi_io_reading_r <= '0';
             ram_ready_r  <= '0';
          else
             phi_io_reading_r <= phi_io_busy or phi_io_re;
             ram_ready_r  <= ram_re;
          end if;
       end if;
    end process memory_control_sync;

end architecture Structural; -- Entity: gmZPU


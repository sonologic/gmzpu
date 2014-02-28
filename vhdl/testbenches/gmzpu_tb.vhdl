------------------------------------------------------------------------------
----                                                                      ----
----  gmZPU testbench                                                     ----
----                                                                      ----
----  http://github.com/sonologic/gmzpu                                   ----
----                                                                      ----
----  Description:                                                        ----
----  This is the testbench for the gmZPU core                            ----
----                                                                      ----
----  To Do:                                                              ----
----  -                                                                   ----
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
---- Design unit:      gmZPU_TB                                           ----
---- File name:        gmzpu_tb.vhdl                                      ----
---- Note:             None                                               ----
---- Limitations:      None known                                         ----
---- Errors:           None known                                         ----
---- Library:          zpu                                                ----
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
use zpu.txt_util.all;

library work;
use work.zpu_memory.all;

entity gmZPU_TB is
end entity gmZPU_TB;

architecture Behave of gmZPU_TB is
   constant WORD_SIZE  : natural:=32; -- 32 bits data path
   constant ADDR_W     : natural:=18; -- 18 bits address space=256 kB, 128 kB I/O
   constant BRAM_W     : natural:=15; -- 15 bits RAM space=32 kB
   constant D_CARE_VAL : std_logic:='0'; -- Fill value
   constant CLK_FREQ   : positive:=50; -- 50 MHz clock
   constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period
   constant BRATE      : positive:=115200;

   component gmZPU is
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
         interrupt_i: in  std_logic;  -- Interrupt
         break_o    : out std_logic;  -- Break executed
         dbg_o      : out zpu_dbgo_t; -- Debug info
         rs232_tx_o : out std_logic;  -- UART Tx
         rs232_rx_i : in  std_logic;  -- UART Rx
         gpio_in    : in  std_logic_vector(31 downto 0);
         gpio_out   : out std_logic_vector(31 downto 0);
         gpio_dir   : out std_logic_vector(31 downto 0)  -- 1 = in, 0 = out
         );
   end component gmZPU;

   signal clk          : std_logic;
   signal reset        : std_logic:='1';
   signal interrupt    : std_logic:='0';

   signal break        : std_logic;
   signal dbg          : zpu_dbgo_t; -- Debug info
   signal rs232_tx     : std_logic;
   signal rs232_rx     : std_logic;
begin
   zpu : gmZPU
      generic map(
         WORD_SIZE => WORD_SIZE, D_CARE_VAL => D_CARE_VAL,
         CLK_FREQ => CLK_FREQ, BRATE => BRATE, ADDR_W => ADDR_W,
         BRAM_W => BRAM_W)
      port map(
         clk_i => clk, rst_i => reset, interrupt_i => interrupt, rs232_tx_o => rs232_tx,
         rs232_rx_i => rs232_rx, break_o => break, dbg_o => dbg,
         gpio_in => (others => '0'));

   trace_mod : Trace
      generic map(
         ADDR_W => ADDR_W, WORD_SIZE => WORD_SIZE,
         LOG_FILE => "dmips_med1.log")
      port map(
         clk_i => clk, dbg_i => dbg, stop_i => break, busy_i => '0');

   do_clock:
   process
   begin
      clk <= '0';
      wait for CLK_S_PER;
      clk <= '1';
      wait for CLK_S_PER;
      if break='1' then
         print("* Break asserted, end of test");
         wait;
      end if;
   end process do_clock;

   do_intr:
   process
   begin
     wait for 2 ms;
     interrupt <= '1';
     wait for 4 us;
     interrupt <= '0';
     wait for 20 ms;
   end process do_intr;

   do_reset:
   process
   begin
      wait until rising_edge(clk);
      reset <= '0';
   end process do_reset;
end architecture Behave; -- Entity: gmZPU_TB

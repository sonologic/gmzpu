------------------------------------------------------------------------------
----                                                                      ----
----  Testbench for the ZPU Wishbone bridge                               ----
----                                                                      ----
----  Description:                                                        ----
----                                                                      ----
----  To Do:                                                              ----
----  -                                                                   ----
----                                                                      ----
----  Author:                                                             ----
----    - Koen Martens, gmc sonologic.nl                                  ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Copyright (c) 
----                                                                      ----
---- Distributed under the BSD license                                    ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Design unit:      
---- File name:        
---- Note:             None                                               ----
---- Limitations:      None known                                         ----
---- Errors:           None known                                         ----
---- Library:          work                                               ----
---- Dependencies:     IEEE.std_logic_1164                                ----
----                   IEEE.numeric_std                                   ----
---- Target FPGA:      
---- Language:         VHDL                                               ----
---- Wishbone:         No                                                 ----
---- Synthesis tools:  N/A                                                ----
---- Simulation tools: 
---- Text editor:     
----                                                                      ----
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library zpu;
use zpu.wishbone.all;

entity zpu_wishbone_bridge_tb is
end entity zpu_wishbone_bridge_tb;

architecture Behave of zpu_wishbone_bridge_tb is
    constant DATA_WIDTH  : natural:=32; -- 32 bits data path
    constant ADR_MSB    : natural:=31;
    constant ADR_LSB    : natural:=2;

   constant D_CARE_VAL : std_logic:='0'; -- Fill value
   constant CLK_FREQ   : positive:=50; -- 50 MHz clock
   constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period


    -- testbench
    signal break       : std_logic:='0';

    --
    signal clk         : std_logic;
    signal dat_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal dat_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal rst         : std_logic;
    -- data tagging
    signal tgd_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal tgd_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- MASTER signals
    signal ack_i       : std_logic;
    signal adr_o       : std_logic_vector(ADR_MSB downto ADR_LSB);
    signal cyc_o       : std_logic;
    signal stall_i     : std_logic;
    signal err_i       : std_logic;
    signal lock_o      : std_logic;
    signal rty_i       : std_logic;
    signal sel_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal stb_o       : std_logic;
    signal tga_o       : std_logic_vector(ADR_MSB downto ADR_LSB);
    signal tgc_o       : std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
    signal we_o        : std_logic;

begin
    wb_br : zpu_wishbone_bridge
        generic map(
            DATA_WIDTH => DATA_WIDTH,
            ADR_MSB => ADR_MSB,
            ADR_LSB => ADR_LSB
        )
        port map(
            clk_i => clk,
            dat_i => dat_i,
            dat_o => dat_o,
            rst_i => rst,
            tgd_i => tgd_i,
            tgd_o => tgd_o,
            ack_i => ack_i,
            cyc_o => cyc_o,
            stall_i => stall_i,
            err_i => err_i,
            lock_o => lock_o,
            rty_i => rty_i,
            sel_o => sel_o,
            stb_o => stb_o,
            tga_o => tga_o,
            tgc_o => tgc_o,
            we_o => we_o
        );

   do_clock:
   process
   begin
      clk <= '0';
      wait for CLK_S_PER;
      clk <= '1';
      wait for CLK_S_PER;
      if break='1' then
         -- print("* Break asserted, end of test");
         wait;
      end if;
   end process do_clock;

   do_reset:
   process
   begin
      wait until rising_edge(clk);
      rst <= '0';
      wait for 9.2345 us;
      rst <= '1';
      wait for 9.395 us;
      rst <= '0';
   end process do_reset;
end architecture Behave; -- Entity: zpu_wishbone_bridge_tb

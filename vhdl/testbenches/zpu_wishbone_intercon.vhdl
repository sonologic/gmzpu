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

entity zpu_wishbone_intercon_tb is
end entity zpu_wishbone_intercon_tb;

architecture Behave of zpu_wishbone_intercon_tb is
    constant ADR_MSB    : natural:=31;
    constant ADR_LSB    : natural:=0;
    constant PAGE_BIT   : natural:=4;
    constant NUNITS     : natural:=8;

   constant CLK_FREQ   : positive:=50; -- 50 MHz clock
   constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period


    -- testbench
    signal break       : std_logic:='0';
    signal clk          : std_logic;

    -- wishbone
    signal wb_rst         : std_logic;
    signal wb_stb          : std_logic;
    signal wb_cyc          : std_logic;
    signal wb_adr_i        : std_logic_vector(ADR_MSB downto ADR_LSB);
    signal wb_adr_o        : std_logic_vector(PAGE_BIT-1 downto 0);
    signal stb          : std_logic_vector(NUNITS-1 downto 0);

begin
    INTERCON : zpu_wishbone_intercon
        generic map(
            ADR_MSB => ADR_MSB,
            ADR_LSB => ADR_LSB,
            PAGE_BIT => PAGE_BIT,
            NUNITS => NUNITS
        )
        port map(
            rst_i   => wb_rst,
            stb_i   => wb_stb,
            cyc_i   => wb_cyc,
            adr_i   => wb_adr_i,
            adr_o   => wb_adr_o,
            stb_o   => stb
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

    do_sim:
    process
    begin
        wb_rst <= '0';
        wb_stb <= '0';
        wb_cyc <= '0';

        wait for 1 us;

        wb_adr_i <= std_logic_vector(to_unsigned(10, 32));
        wb_stb <= '1';
        wb_cyc <= '1';

        wait for 1 us;

        wb_stb <= '0';

        wait for 1 us;
        
        wb_cyc <= '0';

        wait for 1 us;

        wb_adr_i <= std_logic_vector(to_unsigned(54, 32));
        wb_stb <= '1';
        wb_cyc <= '1';

        wait for 1 us;

        wb_stb <= '0';

        wait for 1 us;
        
        wb_cyc <= '0';

        wait for 1 us;
        
    end process do_sim;

end architecture Behave; -- Entity: zpu_wishbone_bridge_tb



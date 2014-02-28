------------------------------------------------------------------------------
----                                                                      ----
----  zwishbone testbench                                                 ----
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
---- Design unit:      zwishbone_TB                                           ----
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

library gmzpu;
use gmzpu.zwishbone;

entity zwishbone_TB is
end entity zwishbone_TB;

architecture Behave of zwishbone_TB is
   constant CLK_FREQ   : positive:=50; -- 50 MHz clock
   constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period

    component zwishbone_c_regs is
            generic(
                ADR_WIDTH   : natural:=16;
                DATA_WIDTH  : natural:=32
            );
            port (
                clk_i       : in std_logic;
                rst_i       : in std_logic;
                -- c_decode
                en_i        : in std_logic;
                we_i        : in std_logic;
                adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
                dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
                dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                -- config register value (0x0000, for c_control)
                cfg_o       : out std_logic_vector(DATA_WIDTH-1 downto 0)
            );
    end component zwishbone_c_regs;


   signal clk          : std_logic;
   signal reset        : std_logic:='1';

   signal break        : std_logic;

    signal enable       : std_logic;
    signal we       : std_logic;
    signal adr      : std_logic_vector(15 downto 0);
    signal dat_o    : std_logic_vector(31 downto 0);
    signal dat_i    : std_logic_vector(31 downto 0);
    signal cfg      : std_logic_vector(31 downto 0);
begin
   c_regs : zwishbone_c_regs
        generic map(
            ADR_WIDTH => 16,
            DATA_WIDTH => 32
        )
        port map(
            clk_i => clk,
            rst_i => reset,
            en_i => enable,
            we_i => we,
            adr_i => adr,
            dat_i => dat_o,
            dat_o => dat_i,
            cfg_o => cfg
        );


   do_clock:
   process
   begin
      clk <= '0';
      wait for CLK_S_PER;
      clk <= '1';
      wait for CLK_S_PER;
   end process do_clock;

   do_reset:
   process
   begin
      wait until rising_edge(clk);
      reset <= '0';
   end process do_reset;

    do_test:
    process(clk)
        variable state  : integer:=0;
    begin

        if rising_edge(clk) then
            if reset='1' then
                adr <= (others => '0');
                dat_o <= (others => '0');
                enable <= '0';
                we <= '0';
            else
                case state is
                    when 0 =>
                        adr <= (others => '0');
                        dat_o <= std_logic_vector(to_unsigned(2, dat_o'length));
                        we <= '1';
                        enable <= '1';
                        state := state + 1;
                    when 1 =>
                        adr <= (others => '0');
                        dat_o <= std_logic_vector(to_unsigned(2, dat_o'length));
                        we <= '1';
                        enable <= '1';
                        state := state + 1;
                    when 2 =>
                        we <= '0';
                        enable <= '0';
                        state := state + 1;
                    when 3 =>
                        we <= '0';
                        enable <= '0';
                        state := state + 1;
                    when 4 =>
                        adr <= (others => '0');
                        enable <= '1';
                        state := state + 1;
                    when 5 =>
                        adr <= (others => '0');
                        enable <= '1';
                        state := state +1;
                    when others =>
                        state := state + 1;
                end case;
            end if;
        end if;
    end process do_test;
end architecture Behave; -- Entity: zwishbone_TB

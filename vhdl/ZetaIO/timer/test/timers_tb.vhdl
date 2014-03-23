-----------------------------------------------------------------------------
----                                                                      ----
----  gmzpu timer component testbench                                     ----
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
---- Design unit:      zwishbone_TB                                       ----
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
use gmzpu.timer;

entity timers_TB is
end entity timers_TB;

architecture Behave of timers_TB is
    constant CLK_FREQ   : positive:=50; -- 50 MHz clock
    constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period
    constant ADR_WIDTH  : natural:=4;
    constant DATA_WIDTH : natural:=32;

    component timers is
        generic (
            DATA_WIDTH : natural:=32;
            ADR_WIDTH : natural:=5;
            N_TIMERS  : natural:=4
        );
        port (
            clk_i       : in std_logic;
            rst_i       : in std_logic;
            en_i        : in std_logic;
            we_i        : in std_logic;
            addr_i      : in unsigned(ADR_WIDTH-1 downto 0);
            dat_i       : in unsigned(DATA_WIDTH-1 downto 0);
            dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
            irq_o       : out std_logic
        );
    end component timers;

    type sample is record
        -- inputs
        rst_i       : std_logic;
        we_i        : std_logic;
        en_i        : std_logic;
        addr_i      : unsigned(ADR_WIDTH-1 downto 0);
        dat_i       : unsigned(DATA_WIDTH-1 downto 0);
        -- outputs
        dat_o       : unsigned(DATA_WIDTH-1 downto 0);
        irq_o       : std_logic;
    end record;
    type sample_array is array(natural range <>) of sample;
    constant test_data : sample_array :=
        (
        --   rst we  en  addr_i  dat_i         dat_o        irq_o
            ('1','0','0',"0000", X"00000000",  X"00000000", '0'),
            ('1','0','0',"0000", X"00000000",  X"00000000", '0'),
            ('0','0','0',"0000", X"00000000",  X"00000000", '0'),
            -- write 
            ('0','1','1',"0001", X"11111111",  X"00000000", '0'),
            ('0','0','0',"0000", X"00000000",  X"00000000", '0'),
            ('0','0','0',"0000", X"00000000",  X"00000000", '0'),
            ('0','1','1',"0101", X"44444444",  X"00000000", '0'),
            ('0','0','0',"0000", X"00000000",  X"00000000", '0'),
            ('0','0','0',"0000", X"00000000",  X"00000000", '0'),
            -- read
            ('0','0','1',"0101", X"00000000",  X"00000000", '0'),
            ('0','0','0',"0101", X"00000000",  X"44444444", '0'),
            ('0','0','0',"0000", X"00000000",  X"00000000", '0'),
            -- terminate
            ('0','0','0',"0000", X"00000000",  X"00000000", '0')
        );
        

    signal clk      : std_logic;

        -- inputs
    signal rst_i       : std_logic;
    signal we_i        : std_logic;
    signal en_i        : std_logic;
    signal addr_i      : unsigned(ADR_WIDTH-1 downto 0);
    signal dat_i       : unsigned(DATA_WIDTH-1 downto 0);
    -- outputs
    signal dat_o       : unsigned(DATA_WIDTH-1 downto 0);
    signal irq_o       : std_logic;

begin
    dut : timers
        generic map(ADR_WIDTH => ADR_WIDTH, DATA_WIDTH => DATA_WIDTH)
        port map(clk_i => clk, rst_i => rst_i, we_i => we_i, en_i => en_i, addr_i => addr_i, dat_i => dat_i,
                 dat_o => dat_o, irq_o => irq_o);

    dat_o <= (others => 'L');

    process
        variable cycle_count    : integer:=0;
    begin
        for i in test_data'range loop

            rst_i <= test_data(i).rst_i;
            we_i <= test_data(i).we_i;
            en_i <= test_data(i).en_i;
            addr_i <= test_data(i).addr_i;
            dat_i <= test_data(i).dat_i;

            clk <= '1';
            wait for CLK_S_PER;
            clk <= '0';
            wait for CLK_S_PER;

            assert (dat_o = test_data(i).dat_o) report "dat_o output mismatch" severity error;
            assert (irq_o = test_data(i).irq_o) report "irq_o output mismatch" severity error;
            -- assert (icr_o = test_data(i).icr_o) report "icr_o output mismatch" severity failure;

        end loop;
        clk <= '0';
        wait;
    end process;     

end architecture Behave;

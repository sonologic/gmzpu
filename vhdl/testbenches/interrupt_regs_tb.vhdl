------------------------------------------------------------------------------
----                                                                      ----
----  gmzpu interrupt regs component testbench                            ----
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
use gmzpu.pic;

entity interrupt_regs_TB is
end entity interrupt_regs_TB;

architecture Behave of interrupt_regs_TB is
    constant CLK_FREQ   : positive:=50; -- 50 MHz clock
    constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period
    constant DATA_WIDTH : natural:=32;
    constant ADR_WIDTH  : natural:=2;

    component interrupt_regs is
        generic (
            DATA_WIDTH  : natural:=32
        );
        port (
            rst_i       : in  std_logic;
            clk_i       : in  std_logic;
            int_i       : in  std_logic_vector(DATA_WIDTH-1 downto 0);
            adr_i       : in  std_logic_vector(1 downto 0);
            dat_i       : in  std_logic_vector(DATA_WIDTH-1 downto 0);
            dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
            we_i        : in std_logic;
            en_i        : in std_logic;
            ready_o     : out std_logic;
            irq_o       : out std_logic
        );
    end component interrupt_regs;

    type sample is record
        -- inputs
        rst_i       : std_logic;
        int_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
        adr_i       : std_logic_vector(ADR_WIDTH-1 downto 0);
        dat_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
        we_i        : std_logic;
        en_i        : std_logic;
        -- outputs
    end record;
    type sample_array is array(natural range <>) of sample;
    constant test_data : sample_array :=
        (
        --   rst  int          adr   dat_i        we   en
            ('1', X"00000000", "00", X"00000000", '0', '0'),
            ('1', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "01", X"ffffffff", '1', '1'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "01", X"00000000", '0', '1'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000010", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '1'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0'),
            ('0', X"00000000", "00", X"00000000", '0', '0')
        );
        

    signal clk      : std_logic;

    signal rst_i       : std_logic;
    signal int_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal adr_i       : std_logic_vector(1 downto 0);
    signal dat_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal dat_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal we_i        : std_logic;
    signal en_i        : std_logic;
    signal irq_o       : std_logic;
    signal ready_o     : std_logic;

begin
    regs : interrupt_regs
        generic map(
            DATA_WIDTH => DATA_WIDTH
        )
        port map(rst_i => rst_i, clk_i => clk, int_i => int_i, adr_i => adr_i,
                 dat_i => dat_i, dat_o => dat_o,
                 en_i => en_i, we_i => we_i, irq_o => irq_o, ready_o => ready_o);

    process
        variable cycle_count    : integer:=0;
    begin
        for i in test_data'range loop
            clk <= '0';
            wait for CLK_S_PER;

            rst_i <= test_data(i).rst_i;
            int_i <= test_data(i).int_i;
            adr_i <= test_data(i).adr_i;
            dat_i <= test_data(i).dat_i;
            we_i <= test_data(i).we_i;
            en_i <= test_data(i).en_i;

            clk <= '1';
            wait for CLK_S_PER;

            --assert (irq_o = test_data(i).irq_o) report "irq_o output mismatch" severity failure;
            --assert (icr_o = test_data(i).icr_o) report "icr_o output mismatch" severity failure;
        end loop;
        clk <= '0';
        wait;
    end process;     

end architecture Behave;

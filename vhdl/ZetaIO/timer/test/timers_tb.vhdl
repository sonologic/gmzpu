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
    constant ADR_WIDTH  : natural:=6;
    constant DATA_WIDTH : natural:=32;

    component timers is
        generic (
            DATA_WIDTH : natural:=32;
            ADR_WIDTH : natural:=4;
            N_TIMERS  : natural:=4
        );
        port (
            -- wishbone bus
            rst_i         : in std_logic;
            clk_i         : in std_logic;
            wb_dat_o      : out unsigned(DATA_WIDTH-1 downto 0);
            wb_dat_i      : in unsigned(DATA_WIDTH-1 downto 0);
            wb_tgd_o      : out unsigned(DATA_WIDTH-1 downto 0);
            wb_tgd_i      : in unsigned(DATA_WIDTH-1 downto 0);
            wb_ack_o      : out std_logic;
            wb_adr_i      : in unsigned(ADR_WIDTH-1 downto 0);
            wb_cyc_i      : in std_logic;
            wb_stall_o    : out std_logic;
            wb_err_o      : out std_logic;
            wb_lock_i     : in std_logic;
            wb_rty_o      : out std_logic;
            wb_sel_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_stb_i      : in std_logic;
            wb_tga_i      : in unsigned(ADR_WIDTH-1 downto 0);
            wb_tgc_i      : in unsigned(DATA_WIDTH-1 downto 0); -- size correct?
            wb_we_i       : in std_logic;
            -- non wishbone
            irq_o         : out std_logic
        );
    end component timers;

    type sample is record
        -- inputs
        rst_i       : std_logic;
        wb_we_i     : std_logic;
        wb_cyc_i    : std_logic;
        wb_stb_i    : std_logic;
        wb_adr_i   : unsigned(ADR_WIDTH-1 downto 0);
        wb_dat_i    : unsigned(DATA_WIDTH-1 downto 0);
        -- outputs
        wb_dat_o    : unsigned(DATA_WIDTH-1 downto 0);
        irq_o       : std_logic;
        wb_ack_o    : std_logic;
    end record;
    type sample_array is array(natural range <>) of sample;
    constant test_data : sample_array :=
        (
        --   rst we  cyc stb adr_i   dat_i         dat_o        irq_o, ack_o
            ('1','0','0','0',"000000", X"00000000",  X"00000000", '0',   'L'),
            ('1','0','0','0',"000000", X"00000000",  X"00000000", '0',   'L'),
            ('0','0','0','0',"000000", X"00000000",  X"00000000", '0',   'L'),
            -- write 
            ('0','1','1','1',"000001", X"11111111",  X"00000000", '0',   '0'),
            ('0','0','1','0',"000000", X"00000000",  X"00000000", '0',   '1'),
            ('0','0','0','0',"000000", X"00000000",  X"00000000", '0',   'L'),
            ('0','1','1','1',"000101", X"44444444",  X"00000000", '0',   '0'),
            ('0','0','1','0',"000000", X"00000000",  X"00000000", '0',   '1'),
            ('0','0','0','0',"000000", X"00000000",  X"00000000", '0',   'L'),
            -- read
            ('0','0','1','1',"000101", X"00000000",  X"00000000", '0',   '0'),
            ('0','0','1','0',"000101", X"00000000",  X"44444444", '0',   '1'),
            ('0','0','0','0',"000000", X"00000000",  X"00000000", '0',   'L'),
            -- terminate
            ('0','0','0','0',"000000", X"00000000",  X"00000000", '0',   'L')
        );
        

    signal clk      : std_logic;

        -- inputs
    signal rst_i       : std_logic;
    signal wb_we_i     : std_logic;
    signal wb_cyc_i    : std_logic;
    signal wb_stb_i    : std_logic;
    signal wb_adr_i    : unsigned(ADR_WIDTH-1 downto 0);
    signal wb_dat_i    : unsigned(DATA_WIDTH-1 downto 0);
    -- outputs
    signal wb_dat_o    : unsigned(DATA_WIDTH-1 downto 0);
    signal irq_o       : std_logic;
    signal wb_ack_o    : std_logic;

    -- 
    signal wb_tgd_o     : unsigned(DATA_WIDTH-1 downto 0);
    signal wb_stall_o   : std_logic;
    signal wb_err_o     : std_logic;
    signal wb_rty_o     : std_logic;
begin
    dut : timers
        generic map(ADR_WIDTH => ADR_WIDTH, DATA_WIDTH => DATA_WIDTH)
        port map(clk_i => clk, rst_i => rst_i, 
                 wb_dat_o => wb_dat_o, wb_dat_i => wb_dat_i,
                 wb_tgd_i => (others => '0'), wb_ack_o => wb_ack_o, wb_adr_i => wb_adr_i,
                 wb_cyc_i => wb_cyc_i, wb_stall_o => wb_stall_o, wb_err_o => wb_err_o,
                 wb_lock_i => '0', wb_rty_o => wb_rty_o, wb_sel_i => (others => '1'),
                 wb_stb_i => wb_stb_i, wb_tga_i => (others => '0'), wb_tgc_i => (others=>'0'),
                 wb_we_i => wb_we_i,
                 irq_o => irq_o);

    wb_dat_o <= (others => 'L');
    wb_ack_o <= 'L';

    process
        variable cycle_count    : integer:=0;
    begin
        for i in test_data'range loop

            rst_i <= test_data(i).rst_i;
            wb_we_i <= test_data(i).wb_we_i;
            wb_cyc_i <= test_data(i).wb_cyc_i;
            wb_stb_i <= test_data(i).wb_stb_i;
            wb_adr_i <= test_data(i).wb_adr_i;
            wb_dat_i <= test_data(i).wb_dat_i;

            clk <= '1';
            wait for CLK_S_PER;
            clk <= '0';
            wait for CLK_S_PER;

            assert (wb_dat_o = test_data(i).wb_dat_o) report "dat_o output mismatch" severity error;
            assert (irq_o = test_data(i).irq_o) report "irq_o output mismatch" severity error;
            assert (wb_ack_o = test_data(i).wb_ack_o) report "wb_ack_o output mismatch" severity error;
            -- assert (icr_o = test_data(i).icr_o) report "icr_o output mismatch" severity failure;

        end loop;
        clk <= '0';
        wait;
    end process;     

end architecture Behave;

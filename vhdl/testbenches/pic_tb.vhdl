------------------------------------------------------------------------------
----                                                                      ----
----  gmzpu programmable interrupt controller (pic) testbench             ----
----                                                                      ----
----  http://github.com/sonologic/gmzpu                                   ----
----                                                                      ----
----  Description:                                                        ----
----  This is the testbench for the PIC                                   ----
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
---- Design unit:      pic_TB                                             ----
---- File name:        pic_tb.vhdl                                        ----
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

entity pic_TB is
end entity pic_TB;

architecture Behave of pic_TB is
    constant CLK_FREQ   : positive:=50; -- 50 MHz clock
    constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period
    constant DATA_WIDTH : natural:=16;
    constant ADR_WIDTH  : natural:=16;
    constant N_BANKS    : natural:=2;

    component interrupt_controller is
        generic(
            -- address width (truncated to DATA_WIDTH)
            ADR_WIDTH   : natural:=4;
            -- data bus width
            DATA_WIDTH  : natural:=32;
            -- number of interrupt banks (each bank is DATA_WIDTH interrupt lines)
            N_BANKS     : natural:=2
        );
        port (
            irq_o   : out std_logic;
            -- interrupt lines
            int_i   : in std_logic_vector((N_BANKS*DATA_WIDTH)-1 downto 0);
            -- wishbone bus
            rst_i         : in std_logic;
            clk_i         : in std_logic;
            wb_dat_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_dat_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_tgd_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_tgd_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_ack_o      : out std_logic;
            wb_adr_i      : in std_logic_vector(ADR_WIDTH-1 downto 0);
            wb_cyc_i      : in std_logic;
            wb_stall_o    : out std_logic;
            wb_err_o      : out std_logic;
            wb_lock_i     : in std_logic;
            wb_rty_o      : out std_logic;
            wb_sel_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_stb_i      : in std_logic;
            wb_tga_i      : in std_logic_vector(ADR_WIDTH-1 downto 0);
            wb_tgc_i      : in std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
            wb_we_i       : in std_logic
        );
    end component interrupt_controller;

    type sample is record
        -- inputs
        int_i       : std_logic_vector((N_BANKS*DATA_WIDTH)-1 downto 0);
        rst_i       : std_logic;
        wb_dat_i    : std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_tgd_i    : std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_adr_i    : std_logic_vector(ADR_WIDTH-1 downto 0);
        wb_cyc_i    : std_logic;
        wb_lock_i   : std_logic;
        wb_sel_i    : std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_stb_i    : std_logic;
        wb_tga_i    : std_logic_vector(ADR_WIDTH-1 downto 0);
        wb_tgc_i    : std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_we_i     : std_logic;
        -- outputs
    end record;
    type sample_array is array(natural range <>) of sample;
    constant test_data : sample_array :=
        (
        --   int_i        rst  wb_dat_i wb_tgd_i wb_adr_i cyc lock  wb_sel_i stb  wb_tga_i wb_tgc_i we
            -- reset
            (X"00000000", '1', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '1', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- write IMR0 <= X"FFFF"
            (X"00000000", '0', X"FFFF", X"0000", X"0001", '1', '0', X"0000", '1', X"0000", X"0000", '1'),
            (X"00000000", '0', X"FFFF", X"0000", X"0001", '1', '0', X"0000", '1', X"0000", X"0000", '1'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- read IMR0 (X"FFFF")
            (X"00000000", '0', X"0000", X"0000", X"0001", '1', '0', X"0000", '1', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0001", '1', '0', X"0000", '1', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- read IMR1 (X"0000")
            (X"00000000", '0', X"0000", X"0000", X"0005", '1', '0', X"0000", '1', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0005", '1', '0', X"0000", '1', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- raise interrupt in bank 0
            (X"00000100", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- read ICR0 (X"0100")
        --   int_i        rst  wb_dat_i wb_tgd_i wb_adr_i cyc lock  wb_sel_i stb  wb_tga_i wb_tgc_i we
            (X"00000000", '0', X"0000", X"0000", X"0000", '1', '0', X"0000", '1', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '1', '0', X"0000", '1', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- read ICR1 (X"0000")
            (X"00000000", '0', X"0000", X"0000", X"0004", '1', '0', X"0000", '1', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0004", '1', '0', X"0000", '1', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- reset ICR0 (X"0000")
            (X"00000000", '0', X"0000", X"0000", X"0000", '1', '0', X"0000", '1', X"0000", X"0000", '1'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '1', '0', X"0000", '1', X"0000", X"0000", '1'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- raise interrupt in bank 1
            (X"00200000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- read ICR1 (X"0020"), pipelined mode
            (X"00000000", '0', X"0000", X"0000", X"0004", '1', '0', X"0000", '1', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0004", '1', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0'),
            -- term
            (X"00000000", '0', X"0000", X"0000", X"0000", '0', '0', X"0000", '0', X"0000", X"0000", '0')
        );
        

    signal clk      : std_logic;

    signal irq_o   : std_logic;
    -- interrupt lines
    signal int_i   : std_logic_vector((N_BANKS*DATA_WIDTH)-1 downto 0);
    -- wishbone bus
    signal rst_i         : std_logic;
    signal clk_i         : std_logic;
    signal wb_dat_o      : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal wb_dat_i      : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal wb_tgd_o      : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal wb_tgd_i      : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal wb_ack_o      : std_logic;
    signal wb_adr_i      : std_logic_vector(ADR_WIDTH-1 downto 0);
    signal wb_cyc_i      : std_logic;
    signal wb_stall_o    : std_logic;
    signal wb_err_o      : std_logic;
    signal wb_lock_i     : std_logic;
    signal wb_rty_o      : std_logic;
    signal wb_sel_i      : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal wb_stb_i      : std_logic;
    signal wb_tga_i      : std_logic_vector(ADR_WIDTH-1 downto 0);
    signal wb_tgc_i      : std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
    signal wb_we_i       : std_logic;

begin
    pic : interrupt_controller
        generic map(
            DATA_WIDTH => DATA_WIDTH, N_BANKS => N_BANKS, ADR_WIDTH => ADR_WIDTH
        )
        port map(irq_o => irq_o, int_i => int_i, rst_i => rst_i, clk_i => clk,
                 wb_dat_o => wb_dat_o, wb_dat_i => wb_dat_i, wb_tgd_o => wb_tgd_o,
                 wb_tgd_i => wb_tgd_i, wb_ack_o => wb_ack_o, wb_adr_i => wb_adr_i,
                 wb_cyc_i => wb_cyc_i, wb_stall_o => wb_stall_o, wb_err_o => wb_err_o,
                 wb_lock_i => wb_lock_i, wb_rty_o => wb_rty_o, wb_sel_i => wb_sel_i,
                 wb_stb_i => wb_stb_i, wb_tga_i => wb_tga_i, wb_tgc_i => wb_tgc_i,
                 wb_we_i => wb_we_i);

    process
        variable cycle_count    : integer:=0;
    begin
        for i in test_data'range loop
            clk <= '0';
            wait for CLK_S_PER;

            int_i <= test_data(i).int_i;
            rst_i <= test_data(i).rst_i;
            wb_dat_i <= test_data(i).wb_dat_i;
            wb_tgd_i <= test_data(i).wb_tgd_i;
            wb_adr_i <= test_data(i).wb_adr_i;
            wb_cyc_i <= test_data(i).wb_cyc_i;
            wb_lock_i <= test_data(i).wb_lock_i;
            wb_sel_i <= test_data(i).wb_sel_i;
            wb_stb_i <= test_data(i).wb_stb_i;
            wb_tga_i <= test_data(i).wb_tga_i;
            wb_tgc_i <= test_data(i).wb_tgc_i;
            wb_we_i <= test_data(i).wb_we_i;

            clk <= '1';
            wait for CLK_S_PER;

            --assert (irq_o = test_data(i).irq_o) report "irq_o output mismatch" severity failure;
            --assert (icr_o = test_data(i).icr_o) report "icr_o output mismatch" severity failure;
        end loop;
        clk <= '0';
        wait;
    end process;     

end architecture Behave;

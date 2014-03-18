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

entity timer_TB is
end entity timer_TB;

architecture Behave of timer_TB is
    constant CLK_FREQ   : positive:=50; -- 50 MHz clock
    constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period
    constant ADR_WIDTH  : natural:=3;
    constant DATA_WIDTH : natural:=32;

    component timer is
        generic (
            ADR_WIDTH : natural:=3;
            DATA_WIDTH : natural:=32
        );
        port (
            clk_i   : in std_logic;
            rst_i   : in std_logic;
            inc_i   : in std_logic;
            addr_i  : in unsigned(ADR_WIDTH-1 downto 0);
            dat_o   : out unsigned(DATA_WIDTH-1 downto 0);
            dat_i   : in unsigned(DATA_WIDTH-1 downto 0);
            we_i    : in std_logic;
            re_i    : in std_logic;
            thresh_o: out std_logic;
            th_hlt_i  : in std_logic;     -- halt when threshold reached
            th_rst_i  : in std_logic;     -- reset when threshold reached
            th_stk_i  : in std_logic      -- sticky threshold
        );
    end component timer;


    type sample is record
        -- inputs
        rst_i       : std_logic;
        inc_i       : std_logic;
        addr_i      : unsigned(ADR_WIDTH-1 downto 0);
        dat_i       : unsigned(DATA_WIDTH-1 downto 0);
        we_i        : std_logic;
        re_i        : std_logic;
        th_hlt_i    : std_logic;
        th_rst_i    : std_logic;
        th_stk_i    : std_logic;
        -- outputs
        dat_o       : unsigned(DATA_WIDTH-1 downto 0);
        thresh_o    : std_logic;
    end record;
    type sample_array is array(natural range <>) of sample;
    constant test_data : sample_array :=
        (
        --   rst inc addr   dat_i        we   re   hlt  rst  stk    dat_o        thr
            ('1','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('1','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"001", X"00000004", '1', '0', '0', '0', '0',   X"00000000", '0'),
            -- 1
            ('0','1',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            -- 2
            ('0','1',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            -- 3
            ('0','1',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            -- 4
            ('0','1',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '1'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '1'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '1'),
            -- 5
            ('0','1',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '0', '0',   X"00000000", '0'),
            -- 0
            ('0','1',"000", X"00000000", '0', '0', '0', '1', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '0',   X"00000000", '0'),
            -- 1
            ('0','1',"000", X"00000000", '0', '0', '0', '1', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '0',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '0',   X"00000000", '0'),
            -- 2
            ('0','1',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            -- 3
            ('0','1',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            -- 0
            ('0','1',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            -- 1
            ('0','1',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            ('0','0',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0'),
            ('0','1',"000", X"00000000", '0', '0', '0', '1', '1',   X"00000000", '0')
        );
        

    signal clk      : std_logic;

    signal rst_i   : std_logic;
    signal inc_i   : std_logic;
    signal addr_i  : unsigned(ADR_WIDTH-1 downto 0);
    signal dat_o   : unsigned(DATA_WIDTH-1 downto 0);
    signal dat_i   : unsigned(DATA_WIDTH-1 downto 0);
    signal we_i    : std_logic;
    signal re_i    : std_logic;
    signal thresh_o: std_logic;
    signal th_hlt_i  : std_logic;     -- halt when threshold reached
    signal th_rst_i  : std_logic;     -- reset when threshold reached
    signal th_stk_i  : std_logic;     -- sticky threshold

begin
    dut : timer
        generic map(ADR_WIDTH => ADR_WIDTH, DATA_WIDTH => DATA_WIDTH)
        port map(clk_i => clk, inc_i => inc_i, rst_i => rst_i, addr_i => addr_i, dat_o => dat_o, dat_i => dat_i,
                we_i => we_i, re_i => re_i, thresh_o => thresh_o, th_hlt_i => th_hlt_i,
                th_rst_i => th_rst_i, th_stk_i => th_stk_i);

    process
        variable cycle_count    : integer:=0;
    begin
        for i in test_data'range loop
            rst_i <= test_data(i).rst_i;
            inc_i <= test_data(i).inc_i;
            addr_i <= test_data(i).addr_i;
            dat_i <= test_data(i).dat_i;
            we_i <= test_data(i).we_i;
            re_i <= test_data(i).re_i;
            th_hlt_i <= test_data(i).th_hlt_i;
            th_rst_i <= test_data(i).th_rst_i;
            th_stk_i <= test_data(i).th_stk_i;

            clk <= '1';
            wait for CLK_S_PER;
            clk <= '0';
            wait for CLK_S_PER;

            assert (thresh_o = test_data(i).thresh_o) report "thresh_o output mismatch" severity error;
            -- assert (icr_o = test_data(i).icr_o) report "icr_o output mismatch" severity failure;
        end loop;
        clk <= '0';
        wait;
    end process;     

end architecture Behave;

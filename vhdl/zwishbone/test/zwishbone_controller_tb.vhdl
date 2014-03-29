------------------------------------------------------------------------------
----                                                                      ----
----  gmzpu zwc component testbench                                       ----
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
use gmzpu.zwishbone.all;

entity zwishbone_controller_TB is
end entity zwishbone_controller_TB;

architecture Behave of zwishbone_controller_TB is
    constant CLK_FREQ   : positive:=50; -- 50 MHz clock
    constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period
    constant ADR_WIDTH  : natural:=16;
    constant BUSBIT_WIDTH  : natural:=1;
    constant CS_WIDTH   : natural:=4;
    constant DATA_WIDTH : natural:=32;

    type sample is record
        -- inputs
        rst_i       : std_logic;
        adr_i       : unsigned(ADR_WIDTH-1 downto 0);
        re_i        : std_logic;
        we_i        : std_logic;
        dat_i       : unsigned(DATA_WIDTH-1 downto 0);
        wb_dat_i    : unsigned(DATA_WIDTH-1 downto 0);
        wb_ack_i    : std_logic;
        wb_stall_i  : std_logic;
        wb_err_i    : std_logic;
        wb_rty_i    : std_logic;
        -- outputs
        wb_cyc_o    : std_logic;
        wb_stb_o    : std_logic_vector((2**CS_WIDTH)-1 downto 0);
        wb_we_o     : std_logic;
        wb_lock_o   : std_logic;
        busy_o      : std_logic;
        ready_o     : std_logic;
        dat_o       : unsigned(DATA_WIDTH-1 downto 0);
        irq_o       : std_logic;
        wb_dat_o    : unsigned(DATA_WIDTH-1 downto 0);
        wb_adr_o    : unsigned(ADR_WIDTH-BUSBIT_WIDTH-CS_WIDTH-1 downto 0);
    end record;
    type sample_array is array(natural range <>) of sample;
    constant test_data : sample_array :=
        (
-- rst adr_i   re  we  dat_i       wb_dat_i    ack stl err rty | cyc  stb    we  lck bus rdy dat_o       irq wb_dat_o    wb_adr_o
  ('1',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
    -- write config
  ('0',X"0000",'0','1',X"12345678",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
    -- read config
  ('0',X"0000",'1','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','1','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','1',X"00000001",'0',X"00000000","00000000000"),
    -- bus write, stb 1 (device 0)
  ('0',X"8000",'0','1',X"87654321",X"00000000",'0','0','0','0',  '1',X"0001",'1','0','1','0',X"00000000",'0',X"87654321","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'1','0','0','0',  '1',X"0000",'0','0','1','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
    -- bus read, stb 2 (device 1)
  ('0',X"8803",'1','0',X"00000000",X"00000000",'0','0','0','0',  '1',X"0002",'0','0','1','0',X"00000000",'0',X"00000000","00000000011"),
  ('0',X"0000",'0','0',X"00000000",X"9abcdef0",'1','0','0','0',  '1',X"0000",'0','0','0','1',X"9abcdef0",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
    -- write timeout compare reg (set to 2)
  ('0',X"0008",'0','1',X"00000002",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
    -- bus read, timeout
  ('0',X"8803",'1','0',X"00000000",X"00000000",'0','0','0','0',  '1',X"0002",'0','0','1','0',X"00000000",'0',X"00000000","00000000011"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '1',X"0000",'0','0','1','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '1',X"0000",'0','0','1','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '1',X"0000",'0','0','1','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '1',X"0000",'0','0','1','0',X"00000000",'1',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'1',X"00000000","00000000000"),
    -- cancel timeout status (write 0 to status reg)
  ('0',X"0004",'0','1',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'1',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000"),

    -- terminate
  ('0',X"0000",'0','0',X"00000000",X"00000000",'0','0','0','0',  '0',X"0000",'0','0','0','0',X"00000000",'0',X"00000000","00000000000")
        );
        

    signal clk      : std_logic;

        -- inputs
    signal rst_i       : std_logic;
    signal adr_i       : unsigned(ADR_WIDTH-1 downto 0);
    signal re_i        : std_logic;
    signal we_i        : std_logic;
    signal dat_i       : unsigned(DATA_WIDTH-1 downto 0);
    signal wb_dat_i    : unsigned(DATA_WIDTH-1 downto 0);
    signal wb_ack_i    : std_logic;
    signal wb_stall_i  : std_logic;
    signal wb_err_i    : std_logic;
    signal wb_rty_i    : std_logic;
    signal wb_tgd_i    : unsigned(DATA_WIDTH -1 downto 0);
    -- outputs
    signal wb_cyc_o    : std_logic;
    signal wb_stb_o    : std_logic_vector((2**CS_WIDTH)-1 downto 0);
    signal wb_we_o     : std_logic;
    signal wb_lock_o   : std_logic;
    signal busy_o      : std_logic;
    signal ready_o     : std_logic;
    signal dat_o       : unsigned(DATA_WIDTH-1 downto 0);
    signal irq_o       : std_logic;
    signal wb_dat_o    : unsigned(DATA_WIDTH-1 downto 0);
    signal wb_tgc_o    : unsigned(DATA_WIDTH-1 downto 0);
    signal wb_adr_o    : unsigned(ADR_WIDTH-BUSBIT_WIDTH-CS_WIDTH-1 downto 0);
    signal wb_tga_o    : unsigned(ADR_WIDTH-BUSBIT_WIDTH-CS_WIDTH-1 downto 0);
    signal wb_sel_o    : std_logic_vector(DATA_WIDTH-1 downto 0);

begin
    dut : zwishbone_controller
        generic map(ADR_WIDTH => ADR_WIDTH, DATA_WIDTH => DATA_WIDTH, BUSBIT_WIDTH => BUSBIT_WIDTH, CS_WIDTH => CS_WIDTH)
        port map(clk_i => clk, rst_i => rst_i, 
                 busy_o => busy_o, ready_o => ready_o, adr_i => adr_i, re_i => re_i, we_i => we_i,
                 dat_i => dat_i, dat_o => dat_o, irq_o => irq_o,
                 wb_dat_i => wb_dat_i, wb_dat_o => wb_dat_o, wb_tgd_i => wb_tgd_i,
                 wb_ack_i => wb_ack_i, wb_adr_o => wb_adr_o, wb_cyc_o => wb_cyc_o,
                 wb_stall_i => wb_stall_i, wb_err_i => wb_err_i, wb_lock_o => wb_lock_o,
                 wb_rty_i => wb_rty_i, wb_sel_o => wb_sel_o, wb_stb_o => wb_stb_o,
                 wb_tga_o => wb_tga_o, wb_tgc_o => wb_tgc_o, wb_we_o => wb_we_o);

    wb_dat_o <= (others => 'L');
    wb_adr_o <= (others => 'L');
    dat_o <= (others => 'L');

    process
        variable cycle_count    : integer:=0;
    begin
        for i in test_data'range loop

            rst_i <= test_data(i).rst_i;
            adr_i <= test_data(i).adr_i;
            re_i <= test_data(i).re_i;
            we_i <= test_data(i).we_i;
            dat_i <= test_data(i).dat_i;
            wb_dat_i <= test_data(i).wb_dat_i;
            wb_tgd_i <= (others => 'Z'); --test_data(i).wb_tgd_i;
            wb_ack_i <= test_data(i).wb_ack_i;
            wb_stall_i <= test_data(i).wb_stall_i;
            wb_err_i <= test_data(i).wb_err_i;
            wb_rty_i <= test_data(i).wb_rty_i;

            clk <= '1';
            wait for CLK_S_PER;
            clk <= '0';
            wait for CLK_S_PER;

            assert (dat_o = test_data(i).dat_o) report "dat_o output mismatch" severity error;
            assert (busy_o = test_data(i).busy_o) report "busy_o output mismatch" severity error;
            assert (ready_o = test_data(i).ready_o) report "ready_o output mismatch" severity error;
            assert (irq_o = test_data(i).irq_o) report "irq_o output mismatch" severity error;
            assert (wb_cyc_o = test_data(i).wb_cyc_o) report "wb_cyc_o output mismatch" severity error;
            assert (wb_stb_o = test_data(i).wb_stb_o) report "wb_stb_o output mismatch" severity error;
            assert (wb_we_o = test_data(i).wb_we_o) report "wb_we_o output mismatch" severity error;
            assert (wb_adr_o = test_data(i).wb_adr_o) report "wb_adr_o output mismatch" severity error;
            assert (wb_dat_o = test_data(i).wb_dat_o) report "wb_dat_o output mismatch" severity error;
            --assert (irq_o = test_data(i).irq_o) report "irq_o output mismatch" severity error;
            --assert (wb_ack_o = test_data(i).wb_ack_o) report "ack_o output mismatch" severity error;
            -- assert (icr_o = test_data(i).icr_o) report "icr_o output mismatch" severity failure;

        end loop;
        clk <= '0';
        wait;
    end process;     

end architecture Behave;

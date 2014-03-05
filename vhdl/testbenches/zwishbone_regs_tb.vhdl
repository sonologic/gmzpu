------------------------------------------------------------------------------
----                                                                      ----
----  zwishbone DECODE component testbench                                ----
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

entity zwishbone_regs_TB is
end entity zwishbone_regs_TB;

architecture Behave of zwishbone_regs_TB is
    constant CLK_FREQ   : positive:=50; -- 50 MHz clock
    constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period
    constant ADR_WIDTH  : natural:=11;
    constant DATA_WIDTH : natural:=32;

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
                --
                busy_o      : out std_logic;
                ready_o     : out std_logic;
                -- config register value (0x0000, for c_control)
                cfg_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                -- status register value (0x0004, from c_control / bus)
                err_i       : in std_logic;
                rty_i       : in std_logic
            );
    end component zwishbone_c_regs;


    type sample is record
        -- inputs
        reset       : std_logic;
        en_i        : std_logic;
        we_i        : std_logic;
        adr_i       : std_logic_vector(ADR_WIDTH-1 downto 0);
        dat_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
        err_i       : std_logic;
        rty_i       : std_logic;
        -- outputs
        --dat_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
        --reg_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
        --bus_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
        --radr_o      : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
        --badr_o      : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
        --cs_o        : std_logic_vector(CS_WIDTH-1 downto 0);
    end record;
    type sample_array is array(natural range <>) of sample;
    constant test_data : sample_array :=
        (
        --   rst en  we  adr           dat_i       err rty
            ('1','0','0',"00000000000",X"00000000",'1','1'),
            ('1','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','1','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','1','0',"00000000100",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1'),
            ('0','0','0',"00000000000",X"00000000",'1','1')
            --('1','0','0',"000000000000000",X"00000000",X"00000000",X"00000000",  X"00000000", '0', '0', X"00000000", X"00000000", "000000000", "000000000", "0000")
        );
        

    signal clk      : std_logic;

    signal reset    : std_logic:='1';
    signal en_i     : std_logic;
    signal we_i     : std_logic;
    signal adr_i    : std_logic_vector(ADR_WIDTH-1 downto 0);
    signal dat_o    : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal dat_i    : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal busy_o   : std_logic;
    signal ready_o  : std_logic;

    signal rty_i : std_logic;
    signal err_i : std_logic;

begin
    c_regs : zwishbone_c_regs
        generic map( ADR_WIDTH => ADR_WIDTH, DATA_WIDTH => DATA_WIDTH )
        port map (adr_i => adr_i, dat_i => dat_i, dat_o => dat_o, en_i => en_i, rst_i => reset, we_i => we_i,
                    err_i => err_i, rty_i => rty_i, busy_o => busy_o, ready_o => ready_o, clk_i => clk);
   
    process
        variable cycle_count    : integer:=0;
    begin
        for i in test_data'range loop
            reset <= test_data(i).reset;
            en_i <= test_data(i).en_i;
            we_i <= test_data(i).we_i;
            adr_i <= test_data(i).adr_i;
            dat_i <= test_data(i).dat_i;
            rty_i <= test_data(i).rty_i;
            err_i <= test_data(i).err_i;
            clk <= '1';
            wait for CLK_S_PER;
            clk <= '0';
            wait for CLK_S_PER;
            -- assert output
        end loop;
        clk <= '0';
        wait;
    end process;     

end architecture Behave; -- Entity: zwishbone_TB

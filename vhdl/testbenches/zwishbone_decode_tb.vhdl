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

entity zwishbone_decode_TB is
end entity zwishbone_decode_TB;

architecture Behave of zwishbone_decode_TB is
    constant CLK_FREQ   : positive:=50; -- 50 MHz clock
    constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period
    constant ADR_WIDTH  : natural:=15;
    constant DATA_WIDTH : natural:=32;
    constant CS_WIDTH   : natural:=4;


    component zwishbone_c_decode is
            generic(
                ADR_WIDTH   : natural:=ADR_WIDTH;
                DATA_WIDTH  : natural:=DATA_WIDTH;
                CS_WIDTH    : natural:=CS_WIDTH
            );
            port (
                -- zpu fabric
                adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
                dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
                dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                ena_i       : in std_logic;
                rst_i       : in std_logic;
                we_i        : in std_logic;
                -- internal fabric
                reg_en_o    : out std_logic;
                bus_en_o    : out std_logic;
                radr_o      : out std_logic_vector(ADR_WIDTH-2-CS_WIDTH downto 0);
                badr_o      : out std_logic_vector(ADR_WIDTH-2-CS_WIDTH downto 0);
                reg_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
                reg_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                bus_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
                bus_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                -- chip select
                cs_o        : out std_logic_vector(CS_WIDTH-1 downto 0)
            );
    end component zwishbone_c_decode;


    type sample is record
        -- inputs
        reset       : std_logic;
        enable      : std_logic;
        we          : std_logic;
        adr         : std_logic_vector(ADR_WIDTH-1 downto 0);
        dat_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
        reg_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
        bus_i       : std_logic_vector(DATA_WIDTH-1 downto 0);
        -- outputs
        --dat_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
        bus_en_o    : std_logic;
        reg_en_o    : std_logic;
        --reg_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
        --bus_o       : std_logic_vector(DATA_WIDTH-1 downto 0);
        --radr_o      : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
        --badr_o      : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
        --cs_o        : std_logic_vector(CS_WIDTH-1 downto 0);
    end record;
    type sample_array is array(natural range <>) of sample;
    constant test_data : sample_array :=
        (
        --   rst en  we  adr               dat_i       reg_i       bus_i        ben ren
            ('1','0','0',"000000000000000",X"00000000",X"00000000",X"00000000", '0','0'),
            ('0','0','0',"000000000000000",X"00000000",X"00000000",X"00000000", '0','0'),
            ('0','1','0',"000000000000000",X"00000000",X"deadbeef",X"00000000", '0','1'),
            ('0','0','0',"000000000000000",X"00000000",X"00000000",X"00000000", '0','0'),
            ('0','1','1',"100000000000000",X"feedcafe",X"00000000",X"00000000", '0','0'),
            ('0','0','0',"100000000000000",X"00000000",X"00000000",X"00000000", '0','0')
            --('1','0','0',"000000000000000",X"00000000",X"00000000",X"00000000",  X"00000000", '0', '0', X"00000000", X"00000000", "000000000", "000000000", "0000")
        );
        

    signal clk      : std_logic;

    signal reset    : std_logic:='1';
    signal enable   : std_logic;
    signal we       : std_logic;
    signal adr      : std_logic_vector(ADR_WIDTH-1 downto 0);
    signal dat_o    : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal dat_i    : std_logic_vector(DATA_WIDTH-1 downto 0);

    signal bus_en_o : std_logic;
    signal reg_en_o : std_logic;

    signal reg_o    : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal reg_i    : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal bus_o    : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal bus_i    : std_logic_vector(DATA_WIDTH-1 downto 0);

    signal radr_o   : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
    signal badr_o   : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);

    signal cs_o     : std_logic_vector(CS_WIDTH-1 downto 0);

begin
    c_decode : zwishbone_c_decode
        generic map( ADR_WIDTH => ADR_WIDTH, DATA_WIDTH => DATA_WIDTH, CS_WIDTH => CS_WIDTH )
        port map (adr_i => adr, dat_i => dat_i, dat_o => dat_o, ena_i => enable, rst_i => reset, we_i => we,
                    reg_en_o => reg_en_o, bus_en_o => bus_en_o, radr_o => radr_o, badr_o => badr_o,
                    reg_i => reg_i, reg_o => reg_o, bus_i => bus_i, bus_o => bus_o, cs_o => cs_o);
   
    process
        variable cycle_count    : integer:=0;
    begin
        for i in test_data'range loop
            reset <= test_data(i).reset;
            enable <= test_data(i).enable;
            we <= test_data(i).we;
            adr <= test_data(i).adr;
            dat_i <= test_data(i).dat_i;
            reg_i <= test_data(i).reg_i;
            bus_i <= test_data(i).bus_i;
            clk <= '0';
            wait for CLK_S_PER;
            clk <= '1';
            wait for CLK_S_PER;
            -- assert output
        end loop;
        clk <= '0';
        wait;
    end process;     

end architecture Behave; -- Entity: zwishbone_TB

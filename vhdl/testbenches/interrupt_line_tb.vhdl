------------------------------------------------------------------------------
----                                                                      ----
----  gmzpu interrupt line component testbench                            ----
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

entity interrupt_line_TB is
end entity interrupt_line_TB;

architecture Behave of interrupt_line_TB is
    constant CLK_FREQ   : positive:=50; -- 50 MHz clock
    constant CLK_S_PER  : time:=1 us/(2.0*real(CLK_FREQ)); -- Clock semi period

    component interrupt_line is
        port (
            int_i       : in std_logic;
            irq_o       : out std_logic;
            icr_o       : out std_logic;
            icr_i       : in std_logic;
            imr_i       : in std_logic;
            ier_i       : in std_logic;
            itr_i       : in std_logic;
            we_i        : in std_logic
        );
    end component interrupt_line;


    type sample is record
        -- inputs
        int_i       : std_logic;
        icr_i       : std_logic;
        imr_i       : std_logic;
        ier_i       : std_logic;
        itr_i       : std_logic;
        we_i        : std_logic;
        -- outputs
        irq_o       : std_logic;
        icr_o       : std_logic;
    end record;
    type sample_array is array(natural range <>) of sample;
    constant test_data : sample_array :=
        (
        --   int icr imr ier itr we    irq icr
            -- reset
            ('0','0','0','0','0','1',  '0','0'),
            ('0','0','0','0','0','0',  '0','0'),
            ('0','0','0','0','0','0',  '0','0'),
            ('1','0','1','0','0','0',  '1','1'),
            ('0','0','1','0','0','0',  '1','1'),
            ('0','0','1','0','0','0',  '1','1'),
            ('0','0','0','0','0','1',  '0','0'),
            ('0','0','0','0','0','0',  '0','0'),
            ('0','0','0','0','0','0',  '0','0')
        );
        

    signal clk      : std_logic;

    signal int_i       : std_logic;
    signal icr_i       : std_logic;
    signal imr_i       : std_logic;
    signal ier_i       : std_logic;
    signal itr_i       : std_logic;
    signal we_i        : std_logic;
    signal irq_o       : std_logic;
    signal icr_o       : std_logic;

begin
    line : interrupt_line
        port map(int_i => int_i, icr_i => icr_i, imr_i => imr_i, ier_i => ier_i, itr_i => itr_i, we_i => we_i,
                 irq_o => irq_o, icr_o => icr_o);

    process
        variable cycle_count    : integer:=0;
    begin
        for i in test_data'range loop
            int_i <= test_data(i).int_i;
            icr_i <= test_data(i).icr_i;
            imr_i <= test_data(i).imr_i;
            ier_i <= test_data(i).ier_i;
            itr_i <= test_data(i).itr_i;
            we_i <= test_data(i).we_i;

            clk <= '1';
            wait for CLK_S_PER;
            clk <= '0';
            wait for CLK_S_PER;

            assert (irq_o = test_data(i).irq_o) report "irq_o output mismatch" severity failure;
            assert (icr_o = test_data(i).icr_o) report "icr_o output mismatch" severity failure;
        end loop;
        clk <= '0';
        wait;
    end process;     

end architecture Behave;

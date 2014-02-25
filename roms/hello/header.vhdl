------------------------------------------------------------------------------
----                                                                      ----
----  Single Port RAM that maps to a Xilinx BRAM                          ----
----                                                                      ----
----  http://www.opencores.org/                                           ----
----                                                                      ----
----  Description:                                                        ----
----  This is a program+data memory for the ZPU. It maps to a Xilinx BRAM ----
----                                                                      ----
----  To Do:                                                              ----
----  -                                                                   ----
----                                                                      ----
----  Author:                                                             ----
----    - Salvador E. Tropea, salvador inti.gob.ar                        ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Copyright (c) 2008 Salvador E. Tropea <salvador inti.gob.ar>         ----
---- Copyright (c) 2008 Instituto Nacional de Tecnolog�a Industrial       ----
----                                                                      ----
---- Distributed under the BSD license                                    ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Design unit:      SinglePortRAM(Xilinx) (Entity and architecture)    ----
---- File name:        rom_s.in.vhdl (template used)                      ----
---- Note:             None                                               ----
---- Limitations:      None known                                         ----
---- Errors:           None known                                         ----
---- Library:          work                                               ----
---- Dependencies:     IEEE.std_logic_1164                                ----
----                   IEEE.numeric_std                                   ----
---- Target FPGA:      Spartan 3 (XC3S1500-4-FG456)                       ----
---- Language:         VHDL                                               ----
---- Wishbone:         No                                                 ----
---- Synthesis tools:  Xilinx Release 9.2.03i - xst J.39                  ----
---- Simulation tools: GHDL [Sokcho edition] (0.2x)                       ----
---- Text editor:      SETEdit 0.5.x                                      ----
----                                                                      ----
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SinglePortRAM is
   generic(
      WORD_SIZE    : integer:=32;  -- Word Size 16/32
      BYTE_BITS    : integer:=2;   -- Bits used to address bytes
      BRAM_W       : integer:=15); -- Address Width
   port(
      clk_i   : in  std_logic;
      we_i    : in  std_logic;
      re_i    : in  std_logic;
      addr_i  : in  unsigned(BRAM_W-1 downto BYTE_BITS);
      write_i : in  unsigned(WORD_SIZE-1 downto 0);
      read_o  : out unsigned(WORD_SIZE-1 downto 0);
      busy_o  : out std_logic);
end entity SinglePortRAM;

architecture Xilinx of SinglePortRAM is
   type ram_type is array(natural range 0 to ((2**BRAM_W)/4)-1) of unsigned(WORD_SIZE-1 downto 0);
   signal addr_r  : unsigned(BRAM_W-1 downto BYTE_BITS);

   signal ram : ram_type :=
(


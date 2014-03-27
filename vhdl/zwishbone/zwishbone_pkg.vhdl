------------------------------------------------------------------------------
----                                                                      ----
----  ZWISHBONE gmZPU WISHBONE B4 controller                              ----
----                                                                      ----
----  http://github.com/sonologic/gmzpu                                   ----
----                                                                      ----
----  Description:                                                        ----
----  Interface between the gmZPU zpu core and the WISHBONE B4 bus.       ----
----                                                                      ----
----  Author:                                                             ----
----    - "Koen Martens" <gmc sonologic.nl>                               ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Copyright (c) 2014 Koen Martens                                      ----
----                                                                      ----
---- Distributed under the BSD license                                    ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Design unit:      zwishbone (package)                                ----
---- File name:        zwishbone_pkg.vhdl                                 ----
---- Note:             None                                               ----
---- Limitations:      None known                                         ----
---- Errors:           None known                                         ----
---- Library:          gmzpu                                              ----
---- Dependencies:     IEEE.std_logic_1164                                ----
----                   IEEE.numeric_std                                   ----
---- Target FPGA:      N/A                                                ----
---- Language:         VHDL                                               ----
---- Wishbone:         Yes                                                ----
---- Synthesis tools:  ModelSim                                           ----
---- Simulation tools: ModelSim                                           ----
---- Text editor:      vim                                                ----
----                                                                      ----
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package zwishbone is
    component zwishbone_controller is
            generic (
                DATA_WIDTH  : natural:=32;       -- width of data bus
                ADR_WIDTH   : natural:=16;
                BUSBIT_WIDTH: natural:=1;        -- bus/reg bit, adr MSB
                CS_WIDTH    : natural:=4
            );
            port (
                -- SYSCON
                clk_i       : in std_logic;
                rst_i       : in std_logic;
                -- zpu interface (non wishbone signal)
                busy_o      : out std_logic; -- controller busy
                ready_o     : out std_logic; -- controller busy
                adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
                re_i        : in std_logic; -- enable wb controller
                we_i        : in std_logic;
                dat_i       : in unsigned(DATA_WIDTH-1 downto 0);
                dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
                irq_o       : out std_logic;
                -- I/O decoder
                --cs_o        : out std_logic_vector(CS_WIDTH-1 downto 0);
                -- wishbone bus
                wb_dat_i      : in unsigned(DATA_WIDTH-1 downto 0);
                wb_dat_o      : out unsigned(DATA_WIDTH-1 downto 0);
                wb_tgd_i      : in unsigned(DATA_WIDTH-1 downto 0);
                wb_tgd_o      : out unsigned(DATA_WIDTH-1 downto 0);
                wb_ack_i      : in std_logic;
                wb_adr_o      : out unsigned(ADR_WIDTH-BUSBIT_WIDTH-CS_WIDTH-1 downto 0);
                wb_cyc_o      : out std_logic;
                wb_stall_i    : in std_logic;
                wb_err_i      : in std_logic;
                wb_lock_o     : out std_logic;
                wb_rty_i      : in std_logic;
                wb_sel_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
                wb_stb_o      : out std_logic_vector((2**CS_WIDTH)-1 downto 0);
                wb_tga_o      : out unsigned(ADR_WIDTH-BUSBIT_WIDTH-CS_WIDTH-1 downto 0);
                wb_tgc_o      : out unsigned(DATA_WIDTH-1 downto 0); -- size correct?
                wb_we_o       : out std_logic

            );
    end component zwishbone_controller;

    component zwishbone_c_regs is
            generic(
                ADR_WIDTH   : natural:=15;
                DATA_WIDTH  : natural:=32
            );
            port (
                -- syscon
                clk_i       : in std_logic;
                rst_i       : in std_logic;
                irq_o       : out std_logic;
                -- memory control
                re_i        : in std_logic;
                we_i        : in std_logic;
                adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
                dat_i       : in unsigned(DATA_WIDTH-1 downto 0);
                dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
                -- bus
                to_inc_i    : in std_logic;
                to_rst_i    : in std_logic;
                to_o        : out std_logic;
                -- config register value (0x0000, for c_control)
                cfg_o       : out unsigned(DATA_WIDTH-1 downto 0);
                -- status register value (0x0004, from c_control / bus)
                err_i       : in std_logic;
                rty_i       : in std_logic
            );
    end component zwishbone_c_regs;

end package zwishbone;


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
                ena_i       : in std_logic; -- enable wb controller
                busy_o      : out std_logic; -- controller busy
                ready_o     : out std_logic; -- controller busy
                adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
                we_i        : in std_logic;
                dat_i       : in unsigned(DATA_WIDTH-1 downto 0);
                dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
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

    component zwishbone_c_control is
            generic(
                ADR_WIDTH   : natural:=16;
                DATA_WIDTH  : natural:=32;
                CS_WIDTH    : natural:=4
            );
            port (
                -- zpu
                rst_i   : in std_logic;
                clk_i   : in std_logic;
                busy_o  : out std_logic;
                re_i    : in std_logic;
                we_i    : in std_logic;
                
                -- from c_reg
                cfg_i   : in std_logic -- configuration register
            );
    end component zwishbone_c_control;

    component zwishbone_c_regs is
            generic(
                ADR_WIDTH   : natural:=15;
                DATA_WIDTH  : natural:=32
            );
            port (
                -- syscon
                clk_i       : in std_logic;
                rst_i       : in std_logic;
                -- memory control
                busy_o      : out std_logic;
                ready_o     : out std_logic;
                en_i        : in std_logic;
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

    component zwishbone_c_bus is
            generic(
                ADR_WIDTH   : natural:=10;
                DATA_WIDTH  : natural:=32;
                CS_WIDTH    : natural:=4
            );
            port (
                -- zpu wishbone controller signals
                clk_i       : in std_logic;
                rst_i       : in std_logic;
                en_i        : in std_logic;     -- enable wb bus (internal)
                we_i        : in std_logic;
                adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
                dat_i       : in unsigned(DATA_WIDTH-1 downto 0);
                dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
                cs_i        : in unsigned(CS_WIDTH-1 downto 0);
                to_i        : in std_logic;
                to_inc_o    : out std_logic;
                to_rst_o    : out std_logic;
                -- wishbone MASTER signals
                b_dat_i      : in unsigned(DATA_WIDTH-1 downto 0);
                b_dat_o      : out unsigned(DATA_WIDTH-1 downto 0);
                b_tgd_i      : in unsigned(DATA_WIDTH-1 downto 0);
                b_tgd_o      : out unsigned(DATA_WIDTH-1 downto 0);
                b_ack_i      : in std_logic;
                b_adr_o      : out unsigned(ADR_WIDTH-1 downto 0);
                b_cyc_o      : out std_logic;
                b_stall_i    : in std_logic;
                b_err_i      : in std_logic;
                b_lock_o     : out std_logic;
                b_rty_i      : in std_logic;
                b_sel_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
                b_stb_o      : out std_logic_vector((2**CS_WIDTH)-1 downto 0);
                b_tga_o      : out unsigned(ADR_WIDTH-1 downto 0);
                b_tgc_o      : out unsigned(DATA_WIDTH-1 downto 0); -- size correct?
                b_we_o       : out std_logic
            );
    end component zwishbone_c_bus;
        
    component zwishbone_c_decode is
            generic(
                ADR_WIDTH   : natural:=15;
                WORD_SIZE   : natural:=32;
                CS_WIDTH    : natural:=4
            );
            port (
                -- zpu fabric
                adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
                ena_i       : in std_logic;
                rst_i       : in std_logic;
                we_i        : in std_logic;
                -- internal fabric
                reg_en_o    : out std_logic;
                bus_en_o    : out std_logic;
                radr_o      : out unsigned(ADR_WIDTH-2-CS_WIDTH downto 0);
                badr_o      : out unsigned(ADR_WIDTH-2-CS_WIDTH downto 0);
                -- chip select
                cs_o        : out unsigned(CS_WIDTH-1 downto 0)
            );
    end component zwishbone_c_decode;

    component zwishbone_intercon is
            generic (
                ADR_MSB     : natural:=31;
                ADR_LSB     : natural:=0;
                PAGE_BIT    : natural:=4;
                NUNITS      : natural:=3
            );
            port (
                rst_i       : in  std_logic;
                stb_i       : in  std_logic;
                cyc_i       : in  std_logic;
                adr_i       : in  unsigned(ADR_MSB downto ADR_LSB);
                adr_o       : out unsigned(PAGE_BIT-1 downto 0);
                stb_o       : out std_logic_vector(NUNITS-1 downto 0)
            );
    end component zwishbone_intercon;
end package zwishbone;


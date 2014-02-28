------------------------------------------------------------------------------
----                                                                      ----
----  Wishbone Package                                                    ----
----                                                                      ----
----  http://www.opencores.org/                                           ----
----                                                                      ----
----  Description:                                                        ----
----  ZPU wishbone controller                                             ----
----                                                                      ----
----  To Do:                                                              ----
----  -                                                                   ----
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
---- Design unit:      zpupkg, UART (Package)                             ----
---- File name:        zpu_medium.vhdl                                    ----
---- Note:             None                                               ----
---- Limitations:      None known                                         ----
---- Errors:           None known                                         ----
---- Library:          zpu                                                ----
---- Dependencies:     IEEE.std_logic_1164                                ----
----                   IEEE.numeric_std                                   ----
---- Target FPGA:      Spartan 3 (XC3S400-4-FT256)                        ----
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

package wishbone is

    component zpu_wishbone_controller is
            generic (
                DATA_WIDTH  : natural:=32;       -- width of data bus
                ADR_MSB     : natural:=31;
                ADR_LSB     : natural:=2
            );
            port (
        -- SYSCON
        clk_i       : in std_logic;
        rst_i       : in std_logic;
        -- wishbone MASTER signals
        dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
        dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        tgd_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
        tgd_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        ack_i       : in std_logic;
        adr_o       : out std_logic_vector(ADR_MSB downto ADR_LSB);
        cyc_o       : out std_logic;
        stall_i     : in std_logic;
        err_i       : in std_logic;
        lock_o      : out std_logic;
        rty_i       : in std_logic;
        sel_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        stb_o       : out std_logic;
        tga_o       : out std_logic_vector(ADR_MSB downto ADR_LSB);
        tgc_o       : out std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
        we_o        : out std_logic;
        -- zpu interface (non wishbone signal)
        ena_i       : in std_logic; -- enable wb controller
        busy_o      : out std_logic; -- controller busy
        adr_i       : in std_logic_vector(ADR_MSB downto ADR_LSB);
        we_i        : in std_logic;
        data_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
        data_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
        pipeline_i  : in std_logic; -- select pipelined mode
        block_i     : in std_logic; -- select block mode
        rmw_i       : in std_logic -- select read-modify-write
            );
    end component zpu_wishbone_controller;

    component zpu_wishbone_c_control is
            generic(
                ADR_WIDTH   : natural:=16;
                DATA_WIDTH  : natural:=32
                CS_WIDTH    : natural:=4;
            )
            port (
                -- zpu
                rst_i   : in std_logic;
                clk_i   : in std_logic;
                busy_o  : out std_logic;
                
            );
    end component zpu_wishbone_c_control

    component zpu_wishbone_c_regs is
            generic(
                ADR_WIDTH   : natural:=16;
                DATA_WIDTH  : natural:=32
            )
            port (
                -- config register value (0x0000, for c_control)
                cfg_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                
            );
    end component zpu_wishbone_c_regs

    component zpu_wishbone_c_bus is
            generic(
                ADR_WIDTH   : natural:=16;
                DATA_WIDTH  : natural:=32
            )
            port (
                -- zpu wishbone controller signals
                en_i        : in std_logic;     -- enable wb bus (internal)
                adr_i       : in std_logic_vector(
                -- wishbone MASTER signals
                dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
                dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                tgd_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
                tgd_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                ack_i       : in std_logic;
                adr_o       : out std_logic_vector(ADR_MSB downto ADR_LSB);
                cyc_o       : out std_logic;
                stall_i     : in std_logic;
                err_i       : in std_logic;
                lock_o      : out std_logic;
                rty_i       : in std_logic;
                sel_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                stb_o       : out std_logic;
                tga_o       : out std_logic_vector(ADR_MSB downto ADR_LSB);
                tgc_o       : out std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
                we_o        : out std_logic;
            );
    end component zpu_wishbone_c_bus
        
    component zpu_wishbone_c_decode is
            generic(
                ADR_WIDTH   : natural:=16;
                WORD_SIZE   : natural:=32;
                CS_WIDTH    : natural:=4;
            )
            port (
                -- zpu fabric
                adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
                dat_i       : in std_logic_vector(WORD_SIZE-1 downto 0);
                dat_o       : out std_logic_vector(WORD_SIZE-1 downto 0);
                -- internal fabric
                reg_o       : out std_logic;
                bus_o       : out std_logic;
                radr_o      : out std_logic_vector(ADR_WIDTH-1-CS_WIDTH downto 0);
                badr_o      : out std_logic_vector(ADR_WIDTH-1-CS_WIDTH downto 0);
                reg_i       : in std_logic(WORD_SIZE-1 downto 0);
                reg_o       : out std_logic(WORD_SIZE-1 downto 0);
                bus_i       : in std_logic(WORD_SIZE-1 downto 0);
                bus_o       : out std_logic(WORD_SZIE-1 downto 0);
                -- chip select
                cs_o        : out std_logic_vector(CS_WIDTH-1 downto 0);
            );
    end component zpu_wishbone_c_decode

    component zpu_wishbone_intercon is
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
                adr_i       : in  std_logic_vector(ADR_MSB downto ADR_LSB);
                adr_o       : out std_logic_vector(PAGE_BIT-1 downto 0);
                stb_o       : out std_logic_vector(NUNITS-1 downto 0)
            );
    end component zpu_wishbone_intercon;
end package wishbone;


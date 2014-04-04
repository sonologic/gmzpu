library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc is
    component zwc is
        generic (
            DATA_WIDTH  : natural:=32;
            ADR_WIDTH   : natural:=16;
            CS_WIDTH    : natural:=4
        );
        port (
            -- SYSCON
            clk_i       : in std_logic;
            rst_i       : in std_logic;
            -- zpu interface (non wishbone signal)
            busy_o      : out std_logic; -- controller busy
            ready_o     : out std_logic; -- read request ready
            adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
            re_i        : in std_logic;
            we_i        : in std_logic;
            dat_i      : in unsigned(DATA_WIDTH-1 downto 0);
            dat_o      : out unsigned(DATA_WIDTH-1 downto 0);
            int_i       : in std_logic; -- external int
            -- interrupts
            --  wishbone controller int
            irq_o       : out std_logic
        );
    end component zwc;
end package soc;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package timer is
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

end package timer;

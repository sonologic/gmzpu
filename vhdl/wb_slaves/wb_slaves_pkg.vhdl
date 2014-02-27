library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package tutorial is

    component WBOPRT08 is
    port(
        -- WISHBONE SLAVE interface:
        ACK_O   : out std_logic;
        CLK_I   : in std_logic;
        DAT_I   : in std_logic_vector( 7 downto 0 );
        DAT_O   : out std_logic_vector( 7 downto 0 );
        RST_I   : in std_logic;
        STB_I   : in std_logic;
        WE_I    : in std_logic;
        -- Output port (non-WISHBONE signals):
        PRT_O   : out std_logic_vector( 7 downto 0 )
    );
    end component WBOPRT08;

end package tutorial;

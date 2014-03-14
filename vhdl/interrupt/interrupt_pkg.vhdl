library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package pic is

    component interrupt_line is
        port (
            clk_i       : in std_logic;
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

    component interrupt_regs is
        generic (
            DATA_WIDTH  : natural:=32
        );
        port (
            rst_i       : in  std_logic;
            clk_i       : in  std_logic;
            int_i       : in  std_logic_vector(DATA_WIDTH-1 downto 0);
            adr_i       : in  std_logic_vector(1 downto 0);
            dat_i       : in  std_logic_vector(DATA_WIDTH-1 downto 0);
            dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
            we_i        : in std_logic;
            en_i        : in std_logic;
            irq_o       : out std_logic;
            ready_o     : out std_logic
        );
    end component interrupt_regs;

end package pic;


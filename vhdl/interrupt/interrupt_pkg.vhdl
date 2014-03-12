library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package pic is
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
end package pic;


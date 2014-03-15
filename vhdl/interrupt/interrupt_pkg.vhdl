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

    component interrupt_controller is
        generic(
            -- address width (truncated to DATA_WIDTH)
            ADR_WIDTH   : natural:=4;
            -- data bus width
            DATA_WIDTH  : natural:=32;
            -- number of interrupt banks (each bank is DATA_WIDTH interrupt lines)
            N_BANKS     : natural:=2
        );
        port (
            irq_o   : out std_logic;
            -- interrupt lines
            int_i   : in std_logic_vector((N_BANKS*DATA_WIDTH)-1 downto 0);
            -- wishbone bus
            rst_i         : in std_logic;
            clk_i         : in std_logic;
            wb_dat_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_dat_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_tgd_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_tgd_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_ack_o      : out std_logic;
            wb_adr_i      : in std_logic_vector(ADR_WIDTH-1 downto 0);
            wb_cyc_i      : in std_logic;
            wb_stall_o    : out std_logic;
            wb_err_o      : out std_logic;
            wb_lock_i     : in std_logic;
            wb_rty_o      : out std_logic;
            wb_sel_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_stb_i      : in std_logic;
            wb_tga_i      : in std_logic_vector(ADR_WIDTH-1 downto 0);
            wb_tgc_i      : in std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
            wb_we_i       : in std_logic
        );
    end component interrupt_controller;

end package pic;


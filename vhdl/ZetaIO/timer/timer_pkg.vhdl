library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package tim is
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
            en_i    : in std_logic;
            thresh_o: out std_logic
        );
    end component timer;

    component timers is
        generic (
            DATA_WIDTH : natural:=32;
            ADR_WIDTH : natural:=4;
            N_TIMERS  : natural:=4
        );
        port (
            -- wishbone bus
            rst_i         : in std_logic;
            clk_i         : in std_logic;
            wb_dat_o      : out unsigned(DATA_WIDTH-1 downto 0);
            wb_dat_i      : in unsigned(DATA_WIDTH-1 downto 0);
            wb_tgd_o      : out unsigned(DATA_WIDTH-1 downto 0);
            wb_tgd_i      : in unsigned(DATA_WIDTH-1 downto 0);
            wb_ack_o      : out std_logic;
            wb_adr_i      : in unsigned(ADR_WIDTH-1 downto 0);
            wb_cyc_i      : in std_logic;
            wb_stall_o    : out std_logic;
            wb_err_o      : out std_logic;
            wb_lock_i     : in std_logic;
            wb_rty_o      : out std_logic;
            wb_sel_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
            wb_stb_i      : in std_logic;
            wb_tga_i      : in unsigned(ADR_WIDTH-1 downto 0);
            wb_tgc_i      : in unsigned(DATA_WIDTH-1 downto 0); -- size correct?
            wb_we_i       : in std_logic;
            -- non wishbone
            irq_o         : out std_logic
        );
    end component timers;

end package tim;

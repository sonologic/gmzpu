library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library gmzpu;
use gmzpu.zwishbone.all;

library zetaio;
use zetaio.pic.all;
use zetaio.tim.all;

entity zwc is
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
        ena_i       : in std_logic; -- enable wb controller
        busy_o      : out std_logic; -- controller busy
        ready_o     : out std_logic; -- read request ready
        adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
        we_i        : in std_logic;
        dat_i      : in unsigned(DATA_WIDTH-1 downto 0);
        dat_o      : out unsigned(DATA_WIDTH-1 downto 0);
        int_i       : in std_logic; -- external int
        -- interrupts
        --  wishbone controller int
        irq_o       : out std_logic
    );
end entity zwc;

architecture rtl of zwc is
        -- wishbone bus
    signal wb_dat_i      : unsigned(DATA_WIDTH-1 downto 0);
    signal wb_dat_o      : unsigned(DATA_WIDTH-1 downto 0);
    signal wb_tgd_i      : unsigned(DATA_WIDTH-1 downto 0);
    signal wb_tgd_o      : unsigned(DATA_WIDTH-1 downto 0);
    signal wb_ack_i      : std_logic;
    signal wb_adr_o      : unsigned(ADR_WIDTH-CS_WIDTH-2 downto 0);
    signal wb_cyc_o      : std_logic;
    signal wb_stall_i    : std_logic;
    signal wb_err_i      : std_logic;
    signal wb_lock_o     : std_logic;
    signal wb_rty_i      : std_logic;
    signal wb_sel_o      : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal wb_stb_o      : std_logic_vector((2**CS_WIDTH)-1 downto 0);
    signal wb_tga_o      : unsigned(ADR_WIDTH-CS_WIDTH-2 downto 0);
    signal wb_tgc_o      : unsigned(DATA_WIDTH-1 downto 0); -- size correct?
    signal wb_we_o       : std_logic;

    -- interrupt lines
    signal int_ctrl_r   : std_logic;
    signal int_pic_r    : std_logic;
    signal int_timer_r  : std_logic;
    signal int_r        : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- PIC interrupt mapping
    constant PIC_INT_EXT    : natural:=0;
    constant PIC_INT_ZWC    : natural:=1;
    constant PIC_INT_TIMER  : natural:=2;
    constant PIC_INT_UNUSED : natural:=3;
    -- devices on the bus
    constant WB_CS_PIC  : natural:=0;
    constant WB_CS_TIM  : natural:=1;
begin
    -- unused interrupt lines
    int_r(DATA_WIDTH-1 downto PIC_INT_UNUSED) <= (others => '0');

    -- external interrupt line
    int_r(PIC_INT_EXT) <= int_i;

    -- master
    controller: zwishbone_controller
        generic map(
            DATA_WIDTH => DATA_WIDTH, ADR_WIDTH => ADR_WIDTH, CS_WIDTH => CS_WIDTH
        )
        port map(
            -- syscon
            clk_i => clk_i, rst_i => rst_i, ena_i => ena_i, busy_o => busy_o, ready_o => ready_o, 
            -- interrupt
            irq_o => int_r(PIC_INT_ZWC),
            adr_i => adr_i, we_i => we_i, dat_i => dat_i, dat_o => dat_o,
            -- chip select
            wb_stb_o => wb_stb_o,
            -- wishbone bus (master)
            wb_dat_i => wb_dat_i, wb_dat_o => wb_dat_o,
            wb_tgd_i => wb_tgd_i, wb_tgd_o => wb_tgd_o,
            wb_ack_i => wb_ack_i, wb_adr_o => wb_adr_o,
            wb_cyc_o => wb_cyc_o, wb_stall_i => wb_stall_i, wb_err_i => wb_err_i, wb_lock_o => wb_lock_o, wb_rty_i => wb_rty_i,
            wb_sel_o => wb_sel_o,
            wb_tga_o => wb_tga_o,
            wb_tgc_o => wb_tgc_o,
            wb_we_o => wb_we_o
        );

    -- slave 0: PIC
    pic: interrupt_controller
        generic map(ADR_WIDTH => ADR_WIDTH-CS_WIDTH-1, DATA_WIDTH => DATA_WIDTH, N_BANKS => 1)
        port map(
            -- syscon
            rst_i => rst_i, clk_i => clk_i,
            -- interrupt
            int_i => int_r, 
            irq_o => irq_o, 
            -- chip select
            wb_stb_i => wb_stb_o(WB_CS_PIC),
            -- wishbone
            wb_dat_o => wb_dat_i, wb_dat_i => wb_dat_o, wb_tgd_o => wb_tgd_i, wb_tgd_i => wb_tgd_o,
            wb_ack_o => wb_ack_i, wb_adr_i => wb_adr_o, wb_cyc_i => wb_cyc_o,
            wb_stall_o => wb_stall_i, wb_err_o => wb_err_i, wb_lock_i => wb_lock_o, wb_rty_o => wb_rty_i,
            wb_sel_i => wb_sel_o, 
            wb_tga_i => wb_tga_o, wb_tgc_i => wb_tgc_o,
            wb_we_i => wb_we_o
        );

    -- slave 1: TIMER
    timrs: timers
        generic map(DATA_WIDTH => DATA_WIDTH, ADR_WIDTH => ADR_WIDTH-CS_WIDTH-1, N_TIMERS => 4)
        port map(
            -- syscon
            rst_i => rst_i, clk_i => clk_i,
            -- interrupt
            irq_o => int_r(PIC_INT_TIMER),
            -- chip select
            wb_stb_i => wb_stb_o(WB_CS_TIM),
            -- wishbone
            wb_dat_o => wb_dat_i, wb_dat_i => wb_dat_o, wb_tgd_o => wb_tgd_i, wb_tgd_i => wb_tgd_o,
            wb_ack_o => wb_ack_i, wb_adr_i => wb_adr_o, wb_cyc_i => wb_cyc_o,
            wb_stall_o => wb_stall_i, wb_err_o => wb_err_i, wb_lock_i => wb_lock_o, wb_rty_o => wb_rty_i,
            wb_sel_i => wb_sel_o, 
            wb_tga_i => wb_tga_o, wb_tgc_i => wb_tgc_o,
            wb_we_i => wb_we_o
            
        );

end architecture rtl;

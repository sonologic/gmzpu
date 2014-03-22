library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity timer is
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
        thresh_o: out std_logic;
        th_hlt_i  : in std_logic;     -- halt when threshold reached
        th_rst_i  : in std_logic;     -- reset when threshold reached
        th_stk_i  : in std_logic      -- sticky threshold
    );
end entity timer;

architecture rtl of timer is
    -- single timer
    -- registers:
    --  CNT     0x0
    --  THR     0x1
    -- output:
    --  thresh_o
    signal CNT      : unsigned(DATA_WIDTH-1 downto 0);
    signal THR      : unsigned(DATA_WIDTH-1 downto 0);
    signal halt_r   : std_logic;
    signal thresh_r : std_logic;
begin

    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i='1' then
                dat_o <= (others => 'Z');
                THR <= (others => '1');
            elsif en_i='1' then 
                -- mem i/o
                dat_o <= (others => 'Z');
                if we_i='1' then
                    if addr_i=to_unsigned(1,ADR_WIDTH) then
                        THR <= dat_i;
                    end if;
                else
                    if addr_i=to_unsigned(0,ADR_WIDTH) then
                        dat_o <= CNT;
                    elsif addr_i=to_unsigned(1,ADR_WIDTH) then
                        dat_o <= THR;
                    end if;
                end if;     
            else
                dat_o <= (others => 'Z');
            end if;
        end if;
    end process;

    process(inc_i,rst_i)
        variable newCNT : unsigned(DATA_WIDTH-1 downto 0);
    begin
        if rst_i='1' then
            CNT <= (others => '0');
            thresh_r <= '0';
        elsif rising_edge(inc_i) then
            -- count and compare
            newCNT := CNT;
            if halt_r='0' then
                newCNT := CNT + to_unsigned(1, CNT'length);
            end if;
            CNT <= newCNT;
            if newCNT>=THR then
                -- set threshold output
                thresh_r <= '1';
                -- reset counter
                if th_rst_i='1' then
                    CNT <= (others => '0');
                end if;
            else
                -- reset threshold output (if not sticky)
                if th_stk_i='0' and thresh_r='1' then
                    thresh_r <= '0';
                end if;
            end if;
        end if;
    end process;

    thresh_o <= thresh_r;

    halt_r <= th_hlt_i and thresh_r;
end architecture rtl;
       
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity timers is
    generic (
        DATA_WIDTH : natural:=32;
        ADR_WIDTH : natural:=4;
        N_TIMERS  : natural:=4
    );
    port (
        clk_i       : in std_logic;
        rst_i       : in std_logic;
        en_i        : in std_logic;
        we_i        : in std_logic;
        addr_i      : in unsigned(ADR_WIDTH-1 downto 0);
        dat_i       : in unsigned(DATA_WIDTH-1 downto 0);
        dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
        irq_o       : out std_logic
    );
end entity timers; 

architecture rtl of timers is
    component timer is
        generic (
            ADR_WIDTH : natural:=4;
            DATA_WIDTH : natural:=32
        );
        port (
            clk_i   : in std_logic;
            rst_i   : in std_logic;
            inc_i   : in std_logic;
            addr_i  : in unsigned(ADR_WIDTH-1 downto 0);
            dat_o   : out unsigned(DATA_WIDTH-1 downto 0);
            dat_i   : in unsigned(DATA_WIDTH-1 downto 0);
            en_i    : in std_logic;
            we_i    : in std_logic;
            thresh_o: out std_logic;
            th_hlt_i  : in std_logic;     -- halt when threshold reached
            th_rst_i  : in std_logic;     -- reset when threshold reached
            th_stk_i  : in std_logic      -- sticky threshold
        );
    end component timer;

    signal irq_r    : std_logic_vector(N_TIMERS-1 downto 0);
    signal ten_r    : std_logic_vector(N_TIMERS-1 downto 0);
    signal cs_r     : unsigned(ADR_WIDTH-3 downto 0);
begin
    timer_gen: for i in N_TIMERS-1 downto 0 generate
        timerX : timer
            generic map(ADR_WIDTH => 2, DATA_WIDTH => DATA_WIDTH)
            port map(clk_i => clk_i, rst_i => rst_i, inc_i => clk_i,
                     addr_i => addr_i(1 downto 0), thresh_o => irq_r(i),
                     dat_o => dat_o, dat_i => dat_i,
                     we_i => we_i, en_i => ten_r(i),
                     th_hlt_i => '0', th_rst_i => '1', th_stk_i => '1');
    end generate;

    irq_o <= '0' when irq_r=(irq_r'range => '0') or rst_i='1' else '1';
    
    cs_r <= addr_i(ADR_WIDTH-1 downto 2);

    chip_select:
    process(en_i,cs_r,rst_i)
    begin
            if rst_i='1' then
                ten_r <= (others => '0');
            else
                ten_r <= (others => '0');
                if en_i='1' then
                    -- decode address
                    for i in N_TIMERS-1 downto 0 loop
                        if cs_r = to_unsigned(i, cs_r'length) then
                            ten_r(i) <= '1';
                        end if;
                    end loop;
                end if;
            end if;
    end process chip_select;

end architecture rtl;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity wb_timer is
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
end entity wb_timer;

architecture rtl of wb_timer is
    component timers is
        generic (
            DATA_WIDTH : natural:=32;
            ADR_WIDTH : natural:=4;
            N_TIMERS  : natural:=4
        );
        port (
            clk_i       : in std_logic;
            rst_i       : in std_logic;
            we_i        : in std_logic;
            re_i        : in std_logic;
            addr_i      : in unsigned(ADR_WIDTH-1 downto 0);
            dat_i       : in unsigned(DATA_WIDTH-1 downto 0);
            dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
            irq_o       : out std_logic
        );
    end component timers;

begin
    controller : timers
        generic map ( DATA_WIDTH => DATA_WIDTH, ADR_WIDTH => ADR_WIDTH, N_TIMERS => N_TIMERS )
        port map ( clk_i => clk_i, rst_i => rst_i,
                   we_i => wb_we_i, re_i => wb_stb_i, addr_i => wb_adr_i,
                   dat_i => wb_dat_i, dat_o => wb_dat_o, irq_o => irq_o );

end architecture rtl;


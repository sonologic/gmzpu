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
    signal dat_en_r : std_logic;
begin

    -- enable dat_o when not in reset and read enable
    dat_en_r <= (not rst_i) and en_i and (not we_i);
    -- assign register or high-z to dat_o
    dat_o <= CNT when dat_en_r='1' and addr_i=to_unsigned(0,ADR_WIDTH) else
             THR when dat_en_r='1' and addr_i=to_unsigned(1,ADR_WIDTH) else
             (others => 'Z');

    write_thr:
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i='1' then
                THR <= (others => '1');
            elsif en_i='1' then 
                -- mem i/o
                if we_i='1' then
                    if addr_i=to_unsigned(1,ADR_WIDTH) then
                        THR <= dat_i;
                    end if;
                end if;     
            end if;
        end if;
    end process write_thr;

    counter:
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
    end process counter;

    thresh_o <= thresh_r;

    -- halt counter when th_hlt_i asserted and threshold detected
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

    signal addr_r   : unsigned(ADR_WIDTH-1 downto 0);
    signal en_r     : std_logic;
    signal we_r     : std_logic;
    signal dat_r    : unsigned(DATA_WIDTH-1 downto 0);
    -- delayed signals
    signal we_d     : std_logic;
    signal dat_d    : unsigned(DATA_WIDTH-1 downto 0);
    signal addr_d   : unsigned(ADR_WIDTH-1 downto 0);
begin
    timer_gen: for i in N_TIMERS-1 downto 0 generate
        timerX : timer
            generic map(ADR_WIDTH => 2, DATA_WIDTH => DATA_WIDTH)
            port map(clk_i => clk_i, rst_i => rst_i, inc_i => clk_i,
                     addr_i => addr_d(1 downto 0), thresh_o => irq_r(i),
                     dat_o => wb_dat_o, dat_i => dat_d,
                     we_i => we_d, en_i => ten_r(i),
                     th_hlt_i => '0', th_rst_i => '1', th_stk_i => '1');
    end generate;

    wb_tgd_o <= (others => 'Z');
    wb_tgd_o <= (others => 'Z');
    wb_stall_o <= '0';
    wb_err_o <= '0';
    wb_rty_o <= '0';
 
    cs_r <= addr_r(ADR_WIDTH-1 downto 2);

    --wb_ack_o <= cyc_r and not en_r;
    wb_ack_o <= '0'     when ten_r=(ten_r'range => '0') else
                wb_cyc_i;

    process(clk_i)
    begin
        if rising_edge(clk_i) then
            -- clock in input signals
            addr_r <= wb_adr_i;
            en_r <= wb_stb_i and wb_cyc_i;
            we_r <= wb_we_i;
            dat_r <= wb_dat_i;

            -- delay signals to allow one cycle for chip select
            addr_d <= addr_r;
            we_d <= we_r;
            dat_d <= dat_r;

            -- decode cs_i to ten_r
            for i in ten_r'range loop
                if i=cs_r then
                    ten_r(i) <= en_r and not rst_i;
                else
                    ten_r(i) <= '0';
                end if;
            end loop;
            
        end if;
    end process;

    irq_o <= '0' when irq_r=(irq_r'range => '0') or rst_i='1' else '1';
    

    --decode_cs: for i in ten_r'range generate
    --    ten_r(i) <= en_i and not rst_i when i=cs_r else '0';
    --end generate;

end architecture rtl;

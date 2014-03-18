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
        re_i    : in std_logic;
        thresh_o: out std_logic;
        th_hlt_i  : in std_logic;     -- halt when threshold reached
        th_rst_i  : in std_logic;     -- reset when threshold reached
        th_stk_i  : in std_logic      -- sticky threshold
    );
end entity timer;

architecture rtl of timer is
    signal CNT      : unsigned(DATA_WIDTH-1 downto 0);
    signal THR      : unsigned(DATA_WIDTH-1 downto 0);
    signal halt_r   : std_logic;
    signal thresh_r : std_logic;
begin

    process(clk_i,rst_i)
    begin
        if rst_i='1' then
            --CNT <= (others => '0');
            THR <= (others => '1');
            dat_o <= (others => 'Z');
            --thresh_r <= '0';
        elsif rising_edge(clk_i) then
            -- count and compare
            --if halt_r='0' then
            --    CNT <= CNT + to_unsigned(1, CNT'length);
            --end if;
            --if CNT>=THR then
            --    -- set threshold output
            --    thresh_r <= '1';
            --else
            --    -- reset threshold output (if not sticky)
            --    if th_stk_i='0' and thresh_r='1' then
            --        thresh_r <= '0';
            --    end if;
            --end if;

            -- mem i/o
            dat_o <= (others => 'Z');
            if we_i='1' then
                --if addr_i=to_unsigned(0,ADR_WIDTH) then
                --    CNT <= dat_i;
                if addr_i=to_unsigned(1,ADR_WIDTH) then
                    THR <= dat_i;
                end if;
            elsif re_i='1' then
                if addr_i=to_unsigned(0,ADR_WIDTH) then
                    dat_o <= CNT;
                elsif addr_i=to_unsigned(1,ADR_WIDTH) then
                    dat_o <= THR;
                end if;
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
        we_i        : in std_logic;
        re_i        : in std_logic;
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
            we_i    : in std_logic;
            re_i    : in std_logic;
            thresh_o: out std_logic;
            th_hlt_i  : in std_logic;     -- halt when threshold reached
            th_rst_i  : in std_logic;     -- reset when threshold reached
            th_stk_i  : in std_logic      -- sticky threshold
        );
    end component timer;

    signal irq_r    : std_logic_vector(N_TIMERS-1 downto 0);
    signal re_r     : std_logic_vector(N_TIMERS-1 downto 0);
    signal we_r     : std_logic_vector(N_TIMERS-1 downto 0);
    signal cs_r     : unsigned(ADR_WIDTH-3 downto 0);
begin
    timer_gen: for i in N_TIMERS-1 downto 0 generate
        timerX : timer
            generic map(ADR_WIDTH => 2, DATA_WIDTH => DATA_WIDTH)
            port map(clk_i => clk_i, rst_i => rst_i, inc_i => clk_i,
                     addr_i => addr_i(1 downto 0), thresh_o => irq_r(i),
                     dat_o => dat_o, dat_i => dat_i,
                     we_i => we_r(i), re_i => re_r(i),
                     th_hlt_i => '0', th_rst_i => '1', th_stk_i => '1');
    end generate;

    irq_o <= '0' when irq_r=(irq_r'range => '0') else '1';
    
    cs_r <= addr_i(ADR_WIDTH-1 downto 2);

    chip_select:
    process(cs_r)
        variable shift : integer;
    begin
        we_r <= (others => '0');
        re_r <= (others => '0');

        shift := 2**to_integer(cs_r);

        we_r(shift) <= we_i;
        re_r(shift) <= re_i;
    end process;

end architecture rtl;

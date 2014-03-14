library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity interrupt_line is
    port (
        clk_i       : in std_logic;     -- system clock
        int_i       : in std_logic;     -- input line
        irq_o       : out std_logic;    -- interrupt request
        icr_o       : out std_logic;    -- interrupt cause out
        icr_i       : in std_logic;     -- interrupt cause reset (qualified by we_i)
        imr_i       : in std_logic;     -- interrupt mask
        ier_i       : in std_logic;     -- interrupt edge type, 0=rising, 1=falling
        itr_i       : in std_logic;     -- interrupt type, 0=edge trig, 1=level trig
        we_i        : in std_logic      -- write enable (qualifies icr_i)
    );
end entity interrupt_line;

architecture rtl of interrupt_line is
    signal rising   : std_logic;
    signal falling  : std_logic;
    signal level    : std_logic;
    signal set      : std_logic;
    signal rst      : std_logic;
    signal q        : std_logic;
    signal prev_q   : std_logic;
begin

    edge_triggered:
    process(int_i,we_i)
        -- edge triggered checks
    begin
        rising <= '0';
        falling <= '0';

        if rising_edge(int_i) then
            rising <= '1';
        elsif falling_edge(int_i) then
            falling <= '0';
        end if;

        if we_i='1' then
            rising <= '0';
            falling <= '0';
        end if;
    end process;

    -- level triggered
    level <= itr_i and int_i;

    -- flipflop inputs
    set <= level or rising or falling;

    rst <= we_i and not icr_i;


    flipflop:
    process(clk_i)
        -- output flipflop
    begin
        if rising_edge(clk_i) then
            if set='1' then
                q <= '1';
                prev_q <= '1';
            elsif rst='1' then
                q <= '0';
                prev_q <= '0';
            else
                q <= prev_q;
                prev_q <= q;
            end if;
        end if;
    end process;

    -- output
    icr_o <= q;

    irq_o <= q and imr_i;

end architecture rtl;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity interrupt_regs is
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
        irq_o       : out std_logic
    );
end entity interrupt_regs;

architecture rtl of interrupt_regs is

    component interrupt_line is
        port (
            clk_i       : in std_logic;     -- system clock
            int_i       : in std_logic;     -- input line
            irq_o       : out std_logic;    -- interrupt request
            icr_o       : out std_logic;    -- interrupt cause out
            icr_i       : in std_logic;     -- interrupt cause reset (qualified by we_i)
            imr_i       : in std_logic;     -- interrupt mask
            ier_i       : in std_logic;     -- interrupt edge type, 0=rising, 1=falling
            itr_i       : in std_logic;     -- interrupt type, 0=edge trig, 1=level trig
            we_i        : in std_logic      -- write enable (qualifies icr_i)
        );
    end component interrupt_line;

    signal ICR  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal IMR  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ITR  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal IER  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal irq  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal icr_we   : std_logic;
begin
  
    -- we to interrupt lines when upstream we or reset 
    icr_we <= (en_i and we_i) or (rst_i);
 
    icr_generator: 
    for i in DATA_WIDTH-1 downto 0 generate
        ICRX : interrupt_line
            port map (
                clk_i => clk_i,
                int_i => int_i(i),
                irq_o => irq(i),
                icr_o => ICR(i),
                icr_i => dat_i(i),
                imr_i => IMR(i),
                ier_i => IER(i),
                itr_i => ITR(i),
                we_i => icr_we
            );
    end generate icr_generator;

    irq_o <= '0' when irq=(irq'range => '0') else '1';

    process(clk_i)
    begin
        dat_o <= (others => 'Z');

        if rising_edge(clk_i) then
            if rst_i='1' then
                IMR <= (others => '0');
                ITR <= (others => '0');
                IER <= (others => '0');
            elsif en_i='1' then
                if adr_i="00" then      -- 0x0 ICR
                    if we_i='0' then
                        dat_o <= ICR;
                    end if;
                elsif adr_i="01" then   -- 0x1 IMR
                    if we_i='0' then
                        dat_o <= IMR;
                    else
                        IMR <= dat_i;
                    end if;
                elsif adr_i="10" then   -- 0x2 ITR
                    if we_i='0' then
                        dat_o <= ITR;
                    else
                        ITR <= dat_i;
                    end if;
                else                    -- 0x3 IER
                    if we_i='0' then
                        dat_o <= IER;
                    else
                        IER <= dat_i;
                    end if;
                end if;
            end if; -- en_i='1'
        end if; -- rising_edge(clk_i)
    end process;
                
end architecture rtl;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity interrupt_controller is
    generic(
        ADR_WIDTH   : natural:=4;
        DATA_WIDTH  : natural:=32;
        N_INT       : natural:=32
    );
    port (
        rst_i   : in std_logic;
        clk_i   : in std_logic;
        irq_o   : out std_logic;
        -- interrupt lines
        int_i   : in std_logic_vector(N_INT-1 downto 0);
        -- wishbone bus
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
end entity interrupt_controller;

architecture rtl of interrupt_controller is
    signal ICR  : std_logic_vector(N_INT-1 downto 0);   -- cause, 0=deasserted, 1=asserted, write only resets, 1's are ignored
    signal IMR  : std_logic_vector(N_INT-1 downto 0);   -- mask, 0=do not assert irq, 1=do assert irq
    signal ITR  : std_logic_vector(N_INT-1 downto 0);   -- type, 0=edge, 1=level
    signal IER  : std_logic_vector(N_INT-1 downto 0);   -- edge, 0=rising, 1=falling
begin

    -- 
    process(clk_i)
    begin
        if rst_i='1' then
            ICR <= (others => '0');
            IMR <= (others => '0');
            ITR <= (others => '0');
            irq_o <= '0';
        else
            ICR <= ICR or int_i;
            --irq_o <= '1' when ((ICR and IMR)/=(ICR'range => '0')) else '0';
        end if;
    end process;
    
end architecture rtl;

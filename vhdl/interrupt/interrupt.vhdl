------------------------------------------------------------------------------
----                                                                      ----
----  Programmable Interrupt Controller (PIC)                             ----
----                                                                      ----
----  http://github.com/sonologic/gmzpu                                   ----
----                                                                      ----
----  Description:                                                        ----
----  gmZPU interrupt controller. Parametrised design to create           ----
----  a PIC with a number of N_BANKS registers. Each bank                 ----
----  has the full set of ICR, IMR, ITR and IER registers for             ----
----  DATA_WIDTH interrupt lines.                                         ----
----                                                                      ----
----  Author:                                                             ----
----    - "Koen Martens" <gmc sonologic.nl>                               ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Copyright (c) 2014 Koen Martens                                      ----
----                                                                      ----
---- Distributed under the BSD license                                    ----
----                                                                      ----
------------------------------------------------------------------------------
----                                                                      ----
---- Design unit:      interrupt_controller                               ----
---- File name:        interrupt.vhdl                                     ----
---- Note:             None                                               ----
---- Limitations:      None known                                         ----
---- Errors:           None known                                         ----
---- Library:          gmzpu                                              ----
---- Dependencies:     IEEE.std_logic_1164                                ----
----                   IEEE.numeric_std                                   ----
---- Target FPGA:      N/A                                                ----
---- Language:         VHDL                                               ----
---- Wishbone:         Yes                                                ----
---- Synthesis tools:  ModelSim                                           ----
---- Simulation tools: ModelSim                                           ----
---- Text editor:      vim                                                ----
----                                                                      ----
------------------------------------------------------------------------------

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
    set <= level or (not itr_i and ((rising and not ier_i) or (falling and ier_i)));

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
        adr_i       : in  unsigned(1 downto 0);
        dat_i       : in  unsigned(DATA_WIDTH-1 downto 0);
        dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
        we_i        : in std_logic;
        en_i        : in std_logic;
        ready_o     : out std_logic;
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

    -- cause, 0=deasserted, 1=asserted, write only resets, 1's are ignored
    signal ICR  : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- mask, 0=do not assert irq, 1=do assert irq
    signal IMR  : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- type, 0=edge, 1=level
    signal ITR  : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- edge, 0=rising, 1=falling
    signal IER  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal irq  : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal icr_we   : std_logic;
    --signal reading_r    : std_logic;
    signal ready_r      : std_logic;

    signal dat_r        : unsigned(DATA_WIDTH-1 downto 0);
begin
 
 
    -- we to interrupt lines when upstream we or reset 
    icr_we <= (en_i and we_i) or (rst_i);

    dat_r  <= dat_i when rst_i='0' else (dat_r'range => '0');
 
    icr_generator: 
    for i in DATA_WIDTH-1 downto 0 generate
        ICRX : interrupt_line
            port map (
                clk_i => clk_i,
                int_i => int_i(i),
                irq_o => irq(i),
                icr_o => ICR(i),
                icr_i => dat_r(i),
                imr_i => IMR(i),
                ier_i => IER(i),
                itr_i => ITR(i),
                we_i => icr_we
            );
    end generate icr_generator;

    irq_o <= '0' when irq=(irq'range => '0') else '1';

    data_out:
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i='1' then
                dat_o <= (others => 'Z');
                IMR <= (others => '0');
                ITR <= (others => '0');
                IER <= (others => '0');
            elsif en_i='1' then
                dat_o <= (others => 'Z');
                if ready_r='0' then
                    if we_i='1' then
                        case adr_i is
                            when "00" => null;
                            when "01" => IMR <= std_logic_vector(dat_i);
                            when "10" => ITR <= std_logic_vector(dat_i);
                            when others => IER <= std_logic_vector(dat_i);
                        end case;
                    else
                        case adr_i is
                            when "00" => dat_o <= unsigned(ICR);
                            when "01" => dat_o <= unsigned(IMR);
                            when "10" => dat_o <= unsigned(ITR);
                            when others => dat_o <= unsigned(IER);
                        end case;
                    end if;
                end if;
            else
                dat_o <= (others => 'Z');
            end if;
        end if;
    end process;

    memory_timing:
    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i='1' then
                ready_r <= '0';
            elsif en_i='1' then
                if ready_r='1' then
                    ready_r <= '0';
                else
                    ready_r <= '1';
                end if;
            else
                -- en_i='0'
                ready_r <= '0';
            end if; -- en_i='1'
        end if; -- rising_edge(clk_i)
    end process;
   
    ready_o <= en_i and ready_r; 

end architecture rtl;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity interrupt_controller is
    generic(
        -- address width (truncated to DATA_WIDTH)
        ADR_WIDTH   : natural:=16;
        -- data bus width
        DATA_WIDTH  : natural:=16;
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
        wb_we_i       : in std_logic
    );
end entity interrupt_controller;

architecture rtl of interrupt_controller is
    component interrupt_regs is
        generic (
            DATA_WIDTH  : natural:=32
        );
        port (
            rst_i       : in  std_logic;
            clk_i       : in  std_logic;
            int_i       : in  std_logic_vector(DATA_WIDTH-1 downto 0);
            adr_i       : in  unsigned(1 downto 0);
            dat_i       : in  unsigned(DATA_WIDTH-1 downto 0);
            dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
            we_i        : in std_logic;
            en_i        : in std_logic;
            irq_o       : out std_logic;
            ready_o     : out std_logic
        );
    end component interrupt_regs;

    signal en_r     : std_logic;
    signal regen_r  : std_logic_vector(N_BANKS-1 downto 0);
    signal ready_r  : std_logic_vector(N_BANKS-1 downto 0);
    signal irq_r    : std_logic_vector(N_BANKS-1 downto 0);
    signal cs_r     : unsigned(ADR_WIDTH-3 downto 0);
    signal adr_r    : unsigned(1 downto 0);
    signal ack_r    : std_logic;
begin
    -- and wb_stb_i;

    -- unsupported signals
    wb_tgd_o <= (others => '0') when wb_cyc_i='1' else (others => 'Z');
    wb_stall_o <= '0' when wb_cyc_i='1' else 'Z';
    wb_err_o <= '0' when wb_cyc_i='1' else 'Z';
    wb_rty_o <= '0' when wb_cyc_i='1' else 'Z';

    -- split address bus in cs (msb) and adr (lsb)
    cs_r  <= wb_adr_i(ADR_WIDTH-1 downto 2);
    adr_r <= wb_adr_i(1 downto 0);

    -- 
    ack_r    <= '0' when ready_r=(ready_r'range=>'0') else '1';
    wb_ack_o <= wb_cyc_i and ack_r;

    -- aggregate bank irq's into irq_o
    irq_o <= '0' when irq_r=(irq_r'range => '0') else '1';

    -- register generator, create N_BANKS regs
    reg_generator: 
    for i in N_BANKS-1 downto 0 generate
        regsX : interrupt_regs
            generic map (
                DATA_WIDTH => DATA_WIDTH
            )
            port map (
                rst_i => rst_i, clk_i => clk_i,
                adr_i => adr_r, dat_i => wb_dat_i, dat_o => wb_dat_o,
                we_i => wb_we_i, en_i => regen_r(i), ready_o => ready_r(i), irq_o => irq_r(i),
                int_i => int_i(((i+1)*DATA_WIDTH)-1 downto i*DATA_WIDTH)
            );
    end generate reg_generator;

    process(wb_cyc_i,cs_r,rst_i)
    begin
            if rst_i='1' then
                regen_r <= (others => '0');
            else
                regen_r <= (others => '0');
                if wb_cyc_i='1' then
                    -- decode address
                    for i in N_BANKS-1 downto 0 loop
                        if cs_r = to_unsigned(i, cs_r'length) then
                            regen_r(i) <= '1';
                        end if;
                    end loop;
                end if;
            end if;
    end process;
    
end architecture rtl;

--
-- this module implements a ZPU wishbone B4 bridge
--
-- Copyright 2014 by "Koen Martens" <gmc@sonologic.nl>
--
-- License..
--


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zwishbone_c_regs is
    generic(
        ADR_WIDTH   : natural:=15;
        DATA_WIDTH  : natural:=32
    );
    port (
        clk_i       : in std_logic;
        rst_i       : in std_logic;
        -- c_decode
        en_i        : in std_logic;
        we_i        : in std_logic;
        adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
        dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
        dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        --
        busy_o      : out std_logic;
        ready_o     : out std_logic;
        -- config register value (0x0000, for c_control)
        cfg_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        -- status register value (0x0004, from c_control / bus)
        err_i       : in std_logic;
        rty_i       : in std_logic
    );
end entity zwishbone_c_regs;

architecture rtl of zwishbone_c_regs is
    constant    R_CFG_PIPELINE_BIT  : integer:=0;
    constant    R_CFG_BLOCK_BIT     : integer:=1;
    constant    R_CFG_RMW_BIT       : integer:=2;
    signal reg_config   : std_logic_vector(DATA_WIDTH-1 downto 0); -- := (others => '0');
    signal reg_status   : std_logic_vector(DATA_WIDTH-1 downto 0); -- := (others => '0');
    signal reading_r    : std_logic;
    --signal ready_r      : std_logic;
begin
    busy_o <= en_i;

    ready_o <= (reading_r or (en_i and not we_i)) and not en_i;

    -- export CONFIG register value
    cfg_o <= reg_config;

    reg_status(0) <= err_i;
    reg_status(1) <= rty_i;
    reg_status(DATA_WIDTH-1 downto 2) <= (others => '0');

    process(clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i='1' then
                reg_config <= (others => '0');
                dat_o <= (others => '0');
                reading_r <= '0';
            else 
                -- only act when enabled 
                if en_i='1' then
                    -- adr 0x0 : CONFIG register
                    if adr_i=std_logic_vector(to_unsigned(0,ADR_WIDTH)) then
                            -- write/read CONFIG register
                            if we_i/='1' then
                                reading_r <= '1';
                                dat_o <= reg_config;
                            else
                                reg_config <= std_logic_vector(dat_i);
                                dat_o <= (others => 'Z');
                            end if;
                    elsif adr_i=std_logic_vector(to_unsigned(4,ADR_WIDTH)) then
                            -- status can only be read
                            if we_i/='1' then
                                reading_r <= '1';
                                dat_o <= std_logic_vector(reg_status);
                            else
                                dat_o <= (others => 'Z');
                            end if;
                    else
                            if we_i/='1' then
                                reading_r <= '1';
                                dat_o <= std_logic_vector(to_unsigned(0,DATA_WIDTH));
                            else
                                dat_o <= (others => 'Z');
                            end if;
                    end if;
                else
                    if reading_r='1' then
                        reading_r <= '0';
                        dat_o <= (others => 'Z');
                    end if;
                end if;
            end if;
        end if;

    end process;

end architecture rtl;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- 

entity zwishbone_controller is
    generic (
        DATA_WIDTH  : natural:=32;       -- width of data bus
        ADR_WIDTH   : natural:=16;
        BUSBIT_WIDTH: natural:=1;
        CS_WIDTH    : natural:=4
    );
    port (
        -- SYSCON
        clk_i       : in std_logic;
        rst_i       : in std_logic;
        -- zpu interface (non wishbone signal)
        ena_i       : in std_logic; -- enable wb controller
        busy_o      : out std_logic; -- controller busy
	    ready_o	    : out std_logic; -- read request ready
        adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
        we_i        : in std_logic;
        dat_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
        dat_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
        -- I/O decoder
        --cs_o        : out std_logic_vector(CS_WIDTH-1 downto 0);
        -- wishbone bus
        wb_dat_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_dat_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_tgd_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_tgd_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_ack_i      : in std_logic;
        wb_adr_o      : out std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
        wb_cyc_o      : out std_logic;
        wb_stall_i    : in std_logic;
        wb_err_i      : in std_logic;
        wb_lock_o     : out std_logic;
        wb_rty_i      : in std_logic;
        wb_sel_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_stb_o      : out std_logic_vector((2**CS_WIDTH)-1 downto 0);
        wb_tga_o      : out std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
        wb_tgc_o      : out std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
        wb_we_o       : out std_logic

    );
end entity zwishbone_controller;

--

architecture rtl of zwishbone_controller is
    component zwishbone_c_regs is
            generic(
                ADR_WIDTH   : natural:=15;
                DATA_WIDTH  : natural:=32
            );
            port (
                clk_i       : in std_logic;
                rst_i       : in std_logic;
                -- c_decode
                en_i        : in std_logic;
                we_i        : in std_logic;
                adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
                dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
                dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                --
                busy_o      : out std_logic;
                ready_o     : out std_logic;
                -- config register value (0x0000, for c_control)
                cfg_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                -- status register bits
                err_i       : in std_logic;
                rty_i       : in std_logic
            );
    end component zwishbone_c_regs;

    component zwishbone_c_bus is
            generic(
                ADR_WIDTH   : natural:=10;
                DATA_WIDTH  : natural:=32;
                CS_WIDTH    : natural:=4
            );
            port (
                -- zpu wishbone controller signals
                clk_i       : in std_logic;
                rst_i       : in std_logic;
                en_i        : in std_logic;     -- enable wb bus (internal)
                we_i        : in std_logic;
                adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
                dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
                dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                cs_i        : in std_logic_vector(CS_WIDTH-1 downto 0);
                -- wishbone MASTER signals
                b_dat_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
                b_dat_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
                b_tgd_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
                b_tgd_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
                b_ack_i      : in std_logic;
                b_adr_o      : out std_logic_vector(ADR_WIDTH-1 downto 0);
                b_cyc_o      : out std_logic;
                b_stall_i    : in std_logic;
                b_err_i      : in std_logic;
                b_lock_o     : out std_logic;
                b_rty_i      : in std_logic;
                b_sel_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
                b_stb_o      : out std_logic_vector((2**CS_WIDTH)-1 downto 0);
                b_tga_o      : out std_logic_vector(ADR_WIDTH-1 downto 0);
                b_tgc_o      : out std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
                b_we_o       : out std_logic
            );
    end component zwishbone_c_bus;

    component zwishbone_c_decode is
            generic(
                ADR_WIDTH   : natural:=15;
                DATA_WIDTH  : natural:=32;
                CS_WIDTH    : natural:=4
            );
            port (
                -- zpu fabric
                adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
                ena_i       : in std_logic;
                rst_i       : in std_logic;
                we_i        : in std_logic;
                -- internal fabric
                reg_en_o    : out std_logic;
                bus_en_o    : out std_logic;
                radr_o      : out std_logic_vector(ADR_WIDTH-2-CS_WIDTH downto 0);
                badr_o      : out std_logic_vector(ADR_WIDTH-2-CS_WIDTH downto 0);
                -- chip select
                cs_o        : out std_logic_vector(CS_WIDTH-1 downto 0)
            );
    end component zwishbone_c_decode;

    -- internal
    signal config   : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal status_err_r : std_logic;
    signal status_rty_r : std_logic;
    signal reg_en   : std_logic;
    signal bus_en   : std_logic;
    signal radr     : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
    signal badr     : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);

    --signal busy_r   : std_logic;
    --signal ready_r  : std_logic;
    --signal reg_busy_r : std_logic;
    --signal reg_ready_r : std_logic;
    -- 
    signal cs       : std_logic_vector(CS_WIDTH-1 downto 0);



begin
    regs : zwishbone_c_regs
        generic map (
            ADR_WIDTH => ADR_WIDTH-1-CS_WIDTH,
            DATA_WIDTH => DATA_WIDTH
        )
        port map (
            clk_i => clk_i, rst_i => rst_i, en_i => reg_en, we_i => we_i,
            adr_i => radr, dat_i => dat_i, dat_o => dat_o, cfg_o => config,
            err_i => status_err_r,
            rty_i => status_rty_r,
	        busy_o => busy_o, ready_o => ready_o
        );

    status_err_r <= '1';
    status_rty_r <= '1';

    dec : zwishbone_c_decode
        generic map (
            ADR_WIDTH => ADR_WIDTH, DATA_WIDTH => DATA_WIDTH, CS_WIDTH => CS_WIDTH
        )
        port map (
            adr_i => adr_i, ena_i => ena_i,
            reg_en_o => reg_en, bus_en_o => bus_en, radr_o => radr, badr_o => badr,
            cs_o => cs, rst_i => rst_i, we_i => we_i
        );

    zwbbus : zwishbone_c_bus
        generic map (
            ADR_WIDTH => ADR_WIDTH-CS_WIDTH-1, DATA_WIDTH => DATA_WIDTH
        )
        port map (
            clk_i => clk_i, rst_i => rst_i, en_i => bus_en, we_i => we_i,
            adr_i => badr, dat_i => dat_i, dat_o => dat_o,
            b_dat_i => wb_dat_i, b_dat_o => wb_dat_o, b_tgd_i => wb_tgd_i,
            b_tgd_o => wb_tgd_o, b_ack_i => wb_ack_i, b_adr_o => wb_adr_o,
            b_cyc_o => wb_cyc_o, b_stall_i => wb_stall_i, b_err_i => wb_err_i,
            b_lock_o => wb_lock_o, b_rty_i => wb_rty_i, b_sel_o => wb_sel_o,
            b_stb_o => wb_stb_o, b_tga_o => wb_tga_o, b_tgc_o => wb_tgc_o,
            b_we_o => wb_we_o,
            cs_i => cs
        );

    --busy_r <= reg_busy_r;
    --busy_o <= busy_r;

    --ready_r <= reg_ready_r;
    --ready_o <= ready_r;

--    do_wishbone:
--    process(clk_i)
--        --
--        -- variable blabla
--    begin
--        if rising_edge(clk_i) then
--            if rst_i='1' then
--                in_reset <= '1';
--            else -- rst_i='1'
--                in_reset <= '0';
--            end if; -- rst_i='1' 
--        end if; -- rising_edge(clk_i)
--    end process do_wishbone;
--
--    strobe <= '0';
--    cycle <= '0';
--
--    stb_o <= '0' when in_reset='1' else
--             strobe;
--    cyc_o <= '0' when in_reset='1' else
--             cycle;
--    busy_o <= '1' when in_reset='1' else
--             busy;

end architecture rtl;





library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zwishbone_intercon is
    generic (
        ADR_WIDTH   : natural:=10;
        CS_WIDTH    : natural:=4
    );
    port (
        rst_i       : in  std_logic;
        stb_i       : in  std_logic;
        cyc_i       : in  std_logic;
        adr_i       : in  std_logic_vector(ADR_WIDTH-1 downto 0);
        cs_i        : in  std_logic_vector(CS_WIDTH-1 downto 0);
        stb_o       : out std_logic_vector((2**CS_WIDTH)-1 downto 0);
        adr_o       : out std_logic_vector(ADR_WIDTH-1 downto 0)
    );

end entity zwishbone_intercon;

architecture rtl of zwishbone_intercon is
begin

    process(adr_i,stb_i,cyc_i)
        variable page_sel     : integer range 0 to (2**CS_WIDTH)-1;
    begin
        page_sel := to_integer(unsigned(cs_i));

        stb_o <= (others => '0');
        stb_o(page_sel) <= stb_i and cyc_i;

        -- adr_o <= ..
    end process;

end architecture rtl;



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zwishbone_c_decode is
            generic(
                ADR_WIDTH   : natural:=15;
                DATA_WIDTH  : natural:=32;
                CS_WIDTH    : natural:=4
            );
            port (
                -- zpu fabric
                adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
                ena_i       : in std_logic;
                rst_i       : in std_logic;
                we_i        : in std_logic;
                -- internal fabric
                reg_en_o    : out std_logic;
                bus_en_o    : out std_logic;
                radr_o      : out std_logic_vector(ADR_WIDTH-2-CS_WIDTH downto 0);
                badr_o      : out std_logic_vector(ADR_WIDTH-2-CS_WIDTH downto 0);
                -- chip select
                cs_o        : out std_logic_vector(CS_WIDTH-1 downto 0)
            );
end entity zwishbone_c_decode;

architecture zwc_decode of zwishbone_c_decode is
    signal reg_en_r : std_logic;
    signal bus_en_r : std_logic;
    signal en_r     : std_logic;
    signal re_r     : std_logic;
    signal we_r     : std_logic;
    signal cs_r     : std_logic_vector(CS_WIDTH-1 downto 0);
    signal adr      : std_logic_vector(ADR_WIDTH-1 downto 0);
    signal io_adr_r : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
begin
    -- enable
    en_r <= ena_i and not rst_i;

    -- read enable
    re_r <= ena_i and not we_i;
    we_r <= ena_i and we_i;
    
    -- bus or register ? check MSB of adr_i
    reg_en_r <= en_r and not adr_i(ADR_WIDTH-1);
    bus_en_r <= en_r and     adr_i(ADR_WIDTH-1);

    -- export enable signals to zwishbone controller
    bus_en_o <= bus_en_r;
    reg_en_o <= reg_en_r;

    -- chip select
    cs_r <= adr_i(ADR_WIDTH-2 downto ADR_WIDTH-CS_WIDTH-1);

    cs_o <= cs_r;

    -- bus and register address
    io_adr_r <= adr_i(ADR_WIDTH-CS_WIDTH-2 downto 0);

    badr_o <= io_adr_r;
    radr_o <= io_adr_r;

end architecture zwc_decode;


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zwishbone_c_bus is
            generic(
                ADR_WIDTH   : natural:=10;
                DATA_WIDTH  : natural:=32;
                CS_WIDTH    : natural:=4
            );
            port (
                -- zpu wishbone controller signals
                clk_i       : in std_logic;
                rst_i       : in std_logic;
                en_i        : in std_logic;     -- enable wb bus (internal)
                we_i        : in std_logic;
                adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
                dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
                dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
                cs_i        : in std_logic_vector(CS_WIDTH-1 downto 0);
                -- wishbone MASTER signals
                b_dat_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
                b_dat_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
                b_tgd_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
                b_tgd_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
                b_ack_i      : in std_logic;
                b_adr_o      : out std_logic_vector(ADR_WIDTH-1 downto 0);
                b_cyc_o      : out std_logic;
                b_stall_i    : in std_logic;
                b_err_i      : in std_logic;
                b_lock_o     : out std_logic;
                b_rty_i      : in std_logic;
                b_sel_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
                b_stb_o      : out std_logic_vector((2**CS_WIDTH)-1 downto 0);
                b_tga_o      : out std_logic_vector(ADR_WIDTH-1 downto 0);
                b_tgc_o      : out std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
                b_we_o       : out std_logic
            );

end entity zwishbone_c_bus;

architecture rtl of zwishbone_c_bus is
    signal cyc_r    : std_logic;
    signal stb_r    : std_logic;
begin

    decode_cs:
    process(cs_i,stb_r,cyc_r)
        variable page_sel     : integer range 0 to (2**CS_WIDTH)-1;
    begin
        page_sel := to_integer(unsigned(cs_i));

        b_stb_o <= (others => '0');
        b_stb_o(page_sel) <= stb_r and cyc_r;

        dat_o <= (others => 'Z');
        b_dat_o <= (others => 'Z');
        b_tgd_o <= (others => 'Z');
        b_adr_o <= (others => 'Z');
        b_sel_o <= (others => 'Z');
        b_tgc_o <= (others => 'Z');
        b_tga_o <= (others => 'Z');
        b_cyc_o <= '0';
        b_lock_o <= '0';
        b_we_o <= '0';

        -- adr_o <= ..
    end process;
end architecture rtl;

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

-- 

entity zwishbone_controller is
    generic (
        DATA_WIDTH  : natural:=32;       -- width of data bus
        ADR_MSB     : natural:=31;
        ADR_LSB     : natural:=2
    );
    port (
        -- SYSCON
        clk_i       : in std_logic;
        rst_i       : in std_logic;
        -- wishbone MASTER signals
        dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
        dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        tgd_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
        tgd_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        ack_i       : in std_logic;
        adr_o       : out std_logic_vector(ADR_MSB downto ADR_LSB);
        cyc_o       : out std_logic;
        stall_i     : in std_logic;
        err_i       : in std_logic;
        lock_o      : out std_logic;
        rty_i       : in std_logic;
        sel_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        stb_o       : out std_logic;
        tga_o       : out std_logic_vector(ADR_MSB downto ADR_LSB);
        tgc_o       : out std_logic_vector(DATA_WIDTH-1 downto 0); -- size correct?
        we_o        : out std_logic;
        -- zpu interface (non wishbone signal)
        ena_i       : in std_logic; -- enable wb controller
        busy_o      : out std_logic; -- controller busy
        adr_i       : in std_logic_vector(ADR_MSB downto ADR_LSB);
        we_i        : in std_logic;
        data_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
        data_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
        pipeline_i  : in std_logic; -- select pipelined mode
        block_i     : in std_logic; -- select block mode
        rmw_i       : in std_logic -- select read-modify-write
    );
end entity zwishbone_controller;

--

architecture rtl of zwishbone_controller is

    signal in_reset : std_logic:='0';

    signal strobe : std_logic:='0';
    signal cycle  : std_logic:='0';
    signal busy  : std_logic:='0';

begin

    do_wishbone:
    process(clk_i)
        --
        -- variable blabla
    begin
        if rising_edge(clk_i) then
            if rst_i='1' then
                in_reset <= '1';
            else -- rst_i='1'
                in_reset <= '0';
            end if; -- rst_i='1' 
        end if; -- rising_edge(clk_i)
    end process do_wishbone;

    strobe <= '0';
    cycle <= '0';

    stb_o <= '0' when in_reset='1' else
             strobe;
    cyc_o <= '0' when in_reset='1' else
             cycle;
    busy_o <= '1' when in_reset='1' else
             busy;

end architecture rtl;





library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zwishbone_intercon is
    generic (
        ADR_MSB     : natural:=31;
        ADR_LSB     : natural:=0;
        PAGE_BIT    : natural:=4;
        NUNITS      : natural:=3

    );
    port (
        rst_i       : in  std_logic;
        stb_i       : in  std_logic;
        cyc_i       : in  std_logic;
        adr_i       : in  std_logic_vector(ADR_MSB downto ADR_LSB);
        adr_o       : out std_logic_vector(PAGE_BIT-1 downto 0);
        stb_o       : out std_logic_vector(NUNITS-1 downto 0)
    );

end entity zwishbone_intercon;

architecture rtl of zwishbone_intercon is
begin

    process(adr_i,stb_i,cyc_i)
        variable page_sel     : integer range 0 to NUNITS-1;
    begin
        page_sel := to_integer(unsigned(adr_i(ADR_MSB downto PAGE_BIT)));

        stb_o <= (others => '0');
        stb_o(page_sel) <= stb_i and cyc_i;

        adr_o <= (others => '0');
        adr_o(PAGE_BIT-1 downto 0) <= adr_i(PAGE_BIT-1 downto 0);
    end process;

end architecture rtl;




library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zwishbone_c_regs is
    generic(
        ADR_WIDTH   : natural:=16;
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
        -- config register value (0x0000, for c_control)
        cfg_o       : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end entity zwishbone_c_regs;

architecture rtl of zwishbone_c_regs is
    constant    R_CFG_PIPELINE_BIT  : integer:=0;
    constant    R_CFG_BLOCK_BIT     : integer:=1;
    constant    R_CFG_RMW_BIT       : integer:=0;
    signal reg_config   : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
begin

    process
    begin
        wait until rising_edge(clk_i);
      
        -- only act when enabled 
        if en_i='1' then
            -- adr 0x0 : CONFIG register
            if adr_i=std_logic_vector(to_unsigned(0,ADR_WIDTH)) then
                    -- write/read CONFIG register
                    if we_i='1' then
                        reg_config <= std_logic_vector(dat_i);
                    else
                        dat_o <= std_logic_vector(reg_config);
                    end if;
            end if;
        end if;

        -- reset 
        if rst_i='1' then
            reg_config <= (others => '0');
        end if;

    end process;

    -- export CONFIG register value
    cfg_o <= reg_config;

end architecture rtl;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zwishbone_c_decode is
            generic(
                ADR_WIDTH   : natural:=15;
                WORD_SIZE   : natural:=32;
                CS_WIDTH    : natural:=4
            );
            port (
                -- zpu fabric
                adr_i       : in std_logic_vector(ADR_WIDTH-1 downto 0);
                dat_i       : in std_logic_vector(WORD_SIZE-1 downto 0);
                dat_o       : out std_logic_vector(WORD_SIZE-1 downto 0);
                ena_i       : in std_logic;
                -- internal fabric
                reg_en_o    : out std_logic;
                bus_en_o    : out std_logic;
                radr_o      : out std_logic_vector(ADR_WIDTH-1-CS_WIDTH downto 0);
                badr_o      : out std_logic_vector(ADR_WIDTH-1-CS_WIDTH downto 0);
                reg_i       : in std_logic_vector(WORD_SIZE-1 downto 0);
                reg_o       : out std_logic_vector(WORD_SIZE-1 downto 0);
                bus_i       : in std_logic_vector(WORD_SIZE-1 downto 0);
                bus_o       : out std_logic_vector(WORD_SIZE-1 downto 0);
                -- chip select
                cs_o        : out std_logic_vector(CS_WIDTH-1 downto 0)
            );
end entity zwishbone_c_decode;

architecture zwc_decode of zwishbone_c_decode is
    signal reg_en   : std_logic;
    signal bus_en   : std_logic;
    signal cs       : std_logic_vector(ADR_WIDTH-2 downto ADR_WIDTH-CS_WIDTH-1);
    signal adr      : std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
begin

    -- bus or register ? check MSB of adr_i
    bus_en <= adr_i(ADR_WIDTH-1) and ena_i;
    reg_en <= (not adr_i(ADR_WIDTH-1)) and ena_i;

    bus_en_o <= bus_en;
    reg_en_o <= reg_en;

    -- chip select
    cs <= adr_i(ADR_WIDTH-2 downto ADR_WIDTH-CS_WIDTH-1);

    cs_o <= cs when (ena_i='1' and bus_en='1') else "ZZZZ";

    -- bus and register address
    badr_o <= adr_i(ADR_WIDTH-CS_WIDTH-2 downto 0) when (ena_i='1' and bus_en='1') else "ZZZZ";
    radr_o <= adr_i(ADR_WIDTH-CS_WIDTH-2 downto 0) when (ena_i='1' and reg_en='1') else "ZZZZ";

    -- 
    dat_o <= bus_i when bus_en='1';
    bus_o <= dat_i when bus_en='1';

    dat_o <= reg_i when reg_en='1';
    reg_o <= dat_i when reg_en='1';

end architecture zwc_decode;


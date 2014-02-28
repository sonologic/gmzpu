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

entity zpu_wishbone_bridge is
    generic (
        DATA_WIDTH  : natural:=32;       -- width of data bus
        ADR_MSB     : natural:=31;
        ADR_LSB     : natural:=2
    );
    port (
        --
        clk_i       : in std_logic;
        dat_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
        dat_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        rst_i       : in std_logic;
        -- data tagging
        tgd_i       : in std_logic_vector(DATA_WIDTH-1 downto 0);
        tgd_o       : out std_logic_vector(DATA_WIDTH-1 downto 0);
        -- MASTER signals
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
        we_o        : out std_logic
    );
end entity zpu_wishbone_bridge;

--

architecture rtl of zpu_wishbone_bridge is

    signal in_reset : std_logic:='0';

begin

--    dat_o <= (others => '0');
--    tgd_o <= (others => '0');
--    adr_o <= (others => '0');
--    cyc_o <= '0';
--    lock_o <= '0';
--    sel_o <= (others => '0');
--    stb_o <= '0';
--    tga_o <= (others => '0');
--    tgc_o <= (others => '0');
--    we_o <= '0';

    do_wishbone:
    process(clk_i)
        --
        -- variable blabla
    begin
        if rising_edge(clk_i) then
            if rst_i='1' then
                stb_o <= '0';
                cyc_o <= '0';
                in_reset <= '1';
            else -- rst_i='1'
                if in_reset='1' then
                    -- stay in initialized state
                    in_reset <= '0';
                else -- in_reset='1'
                    -- not in reset, operate bus..

                end if; -- in_reset='1'
            end if; -- rst_i='1' 
        end if; -- rising_edge(clk_i)
    end process do_wishbone;

end architecture rtl;





library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zpu_wishbone_intercon is
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

end entity zpu_wishbone_intercon;

architecture rtl of zpu_wishbone_intercon is
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


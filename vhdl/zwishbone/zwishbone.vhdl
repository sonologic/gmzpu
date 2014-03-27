------------------------------------------------------------------------------
----                                                                      ----
----  ZWISHBONE gmZPU WISHBONE B4 controller                              ----
----                                                                      ----
----  http://github.com/sonologic/gmzpu                                   ----
----                                                                      ----
----  Description:                                                        ----
----  Interface between the gmZPU zpu core and the WISHBONE B4 bus.       ----
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
---- Design unit:      zwishbone_controller                               ----
---- File name:        zwishbone.vhdl                                     ----
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

entity zwishbone_c_regs is
    generic(
        ADR_WIDTH   : natural:=15;
        DATA_WIDTH  : natural:=32
    );
    port (
        -- syscon
        clk_i       : in std_logic;
        rst_i       : in std_logic;
        irq_o       : out std_logic;
        -- memory control
        re_i        : in std_logic;
        we_i        : in std_logic;
        adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
        dat_i       : in unsigned(DATA_WIDTH-1 downto 0);
        dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
        -- bus
        to_inc_i    : in std_logic;
        to_rst_i    : in std_logic;
        to_o        : out std_logic;
        -- config register value (0x0000, for c_control)
        cfg_o       : out unsigned(DATA_WIDTH-1 downto 0);
        -- status register value (0x0004, from c_control / bus)
        err_i       : in std_logic;
        rty_i       : in std_logic
    );
end entity zwishbone_c_regs;

architecture rtl of zwishbone_c_regs is
    -- registers
    signal reg_config   : unsigned(DATA_WIDTH-1 downto 0); -- := (others => '0');
    signal reg_status   : unsigned(DATA_WIDTH-1 downto 0); -- := (others => '0');
    signal reg_to_cmp   : unsigned(DATA_WIDTH-1 downto 0); -- := (others => '0');
    signal reg_to_val   : unsigned(DATA_WIDTH-1 downto 0); -- := (others => '0');
    -- reg_status signals
    signal to_r         : std_logic;
    -- reg_config bits
    constant    R_CFG_PIPELINE_BIT  : integer:=0;
    constant    R_CFG_BLOCK_BIT     : integer:=1;
    constant    R_CFG_RMW_BIT       : integer:=2;
    -- reg_status bits
    constant    R_STATUS_ERR        : integer:=0;
    constant    R_STATUS_RTY        : integer:=1;
    constant    R_STATUS_TO         : integer:=2;
    constant    R_STATUS_UNUSED     : integer:=3;
    -- memory control
    signal reading_r    : std_logic;
    --signal ready_r      : std_logic;
begin
    -- export CONFIG register value
    cfg_o <= reg_config;

    
    irq_o <= err_i or rty_i or to_r;

    process(clk_i)
    begin
        if rst_i='1' or to_rst_i='1' then
            reg_to_val <= x"00000000";
            to_r <= '0';
        elsif rising_edge(clk_i) then
                if to_rst_i='0' then
                    if reg_to_val = reg_to_cmp then
                        to_r <= '1';
                    elsif to_inc_i='1' then
                        reg_to_val <= reg_to_val + 1;
                    end if;
                else
                    reg_to_val <= (others => '0');
                    to_r <= '0';
                end if;
        end if;
    end process;

    to_o <= to_r;
 
    process(clk_i)
    begin
        if rst_i='1' then
            reg_config <= (others => '0');
            dat_o <= (others => '0');
            reading_r <= '0';
            reg_to_cmp <= x"0000000f";
            reg_status <= (others => '0');
        elsif rising_edge(clk_i) then
            -- clock in status register
            reg_status(R_STATUS_ERR) <= err_i;
            reg_status(R_STATUS_RTY) <= rty_i;
            reg_status(R_STATUS_TO) <= to_r;
            reg_status(DATA_WIDTH-1 downto R_STATUS_UNUSED) <= (others => '0');

                if re_i='1' then
                    reading_r <= '1';
                    case adr_i(3 downto 2) is
                        -- adr 0x0 (0000) : CONFIG register
                        -- adr 0x4 (0100) : STATUS register
                        -- adr 0x8 (1000) : TO_CMP register
                        -- adr 0xc (1100) : TO_VAL register
                        -- only two msb are relevant
                        when "00" =>
                            dat_o <= reg_config;
                        when "01" =>
                            dat_o <= reg_status;
                        when "10" =>
                            dat_o <= reg_to_cmp;
                        when others =>
                            dat_o <= reg_to_val;
                    end case;
                elsif we_i='1' then
                    dat_o <= (others => 'Z');
                    case adr_i(3 downto 2) is
                        when "00" =>
                            reg_config <= dat_i;
                        when "01" =>
                            reg_status <= reg_status and (not dat_i);
                        when "10" =>
                            reg_to_cmp <= dat_i;
                        when others =>
                            -- can't write TO_VAL
                            null;
                    end case;
                else
                    -- deassert reading_r on the rising clock after assertion
                    if reading_r='1' then
                        reading_r <= '0';
                        dat_o <= (others => 'Z');
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
        busy_o      : out std_logic; -- controller busy
	    ready_o	    : out std_logic; -- read request ready
        adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
        we_i        : in std_logic;
        re_i        : in std_logic; -- enable wb controller
        dat_i      : in unsigned(DATA_WIDTH-1 downto 0);
        dat_o      : out unsigned(DATA_WIDTH-1 downto 0);
        irq_o       : out std_logic;
        -- I/O decoder
        --cs_o        : out std_logic_vector(CS_WIDTH-1 downto 0);
        -- wishbone bus
        wb_dat_i      : in unsigned(DATA_WIDTH-1 downto 0);
        wb_dat_o      : out unsigned(DATA_WIDTH-1 downto 0);
        wb_tgd_i      : in unsigned(DATA_WIDTH-1 downto 0);
        wb_tgd_o      : out unsigned(DATA_WIDTH-1 downto 0);
        wb_ack_i      : in std_logic;
        wb_adr_o      : out unsigned(ADR_WIDTH-CS_WIDTH-2 downto 0);
        wb_cyc_o      : out std_logic;
        wb_stall_i    : in std_logic;
        wb_err_i      : in std_logic;
        wb_lock_o     : out std_logic;
        wb_rty_i      : in std_logic;
        wb_sel_o      : out std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_stb_o      : out std_logic_vector((2**CS_WIDTH)-1 downto 0);
        wb_tga_o      : out unsigned(ADR_WIDTH-CS_WIDTH-2 downto 0);
        wb_tgc_o      : out unsigned(DATA_WIDTH-1 downto 0); -- size correct?
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
                -- syscon
                clk_i       : in std_logic;
                rst_i       : in std_logic;
                irq_o       : out std_logic;
                -- memory control
                re_i        : in std_logic;
                we_i        : in std_logic;
                adr_i       : in unsigned(ADR_WIDTH-1 downto 0);
                dat_i       : in unsigned(DATA_WIDTH-1 downto 0);
                dat_o       : out unsigned(DATA_WIDTH-1 downto 0);
                -- bus
                to_inc_i    : in std_logic;
                to_rst_i    : in std_logic;
                to_o        : out std_logic;
                -- config register value (0x0000, for c_control)
                cfg_o       : out unsigned(DATA_WIDTH-1 downto 0);
                -- status register value (0x0004, from c_control / bus)
                err_i       : in std_logic;
                rty_i       : in std_logic
            );
    end component zwishbone_c_regs;

    -- fsm
    type state_type is (
        idle,
        write_start,
        write_cycle,
        write_terminate,
        read_start,
        read_cycle,
        read_ready,
        write_reg,
        read_reg,
        read_reg_ready
    );
    signal state        : state_type;
  
    -- register component 
    signal reg_re_r     : std_logic; 
    signal reg_we_r     : std_logic; 
    signal reg_dat_ir   : unsigned(DATA_WIDTH-1 downto 0);
    signal reg_dat_or   : unsigned(DATA_WIDTH-1 downto 0);
    signal to_r         : std_logic;
    signal to_inc_r     : std_logic;
    signal to_rst_r     : std_logic;
    --  inputs to status reg
    signal err_r        : std_logic;
    signal rty_r        : std_logic;
    --  config exported from regs
    signal config_r     : unsigned(DATA_WIDTH-1 downto 0);

begin
    registers: zwishbone_c_regs
        generic map ( ADR_WIDTH => ADR_WIDTH-BUSBIT_WIDTH, DATA_WIDTH => DATA_WIDTH )
        port map ( clk_i => clk_i, rst_i => rst_i, irq_o => irq_o,
                   re_i => reg_re_r, we_i => reg_we_r,
                   adr_i => adr_i(ADR_WIDTH-BUSBIT_WIDTH-1 downto 0),
                   dat_i => reg_dat_ir, dat_o => reg_dat_or,
                   to_inc_i => to_inc_r, to_rst_i => to_rst_r, to_o => to_r,
                   cfg_o => config_r, err_i => err_r, rty_i => rty_r);

    err_r <= '1';
    rty_r <= '1';

    -- registered
    transition:
    process(clk_i)
    begin
        if rst_i='1' then
            state <= idle;
        elsif rising_edge(clk_i) then
            state <= idle;
            case state is
                when idle =>
                    -- active when MSB is 1 (0 means register access)
                    if adr_i(ADR_WIDTH-1)='1' then
                        if re_i='1' then
                            state <= read_start;
                        elsif we_i='1' then
                            state <= write_start;
                        else
                            state <= idle;
                        end if;
                    else
                        -- register access
                        if re_i='1' then
                            state <= read_reg;
                        elsif we_i='1' then
                            state <= write_reg;
                        end if;
                    end if;
                when write_start =>
                    state <= write_cycle;
                when write_cycle =>
                    if to_r='1' then
                        state <= idle;
                    elsif wb_ack_i='1' then
                        state <= idle;
                    else
                        state <= write_cycle;
                    end if;
                when read_start =>
                    state <= read_cycle;
                when read_cycle =>
                    if to_r='1' then
                        state <= idle;
                    elsif wb_ack_i='1' then
                        state <= idle;
                    else
                        state <= read_cycle;
                    end if;
                when read_ready =>
                    state <= idle;
                when write_reg =>
                    state <= idle;
                when read_reg =>
                    state <= read_reg_ready;
                when read_reg_ready =>
                    state <= idle;
                when others =>
                    state <= idle;
            end case;
        end if;
    end process transition;

    -- irq_o !

    -- unregistered (no registers, no latches!)
    process(state)
        variable bus_adr_v  : unsigned(ADR_WIDTH-BUSBIT_WIDTH-CS_WIDTH-1 downto 0);
        variable cs_v       : unsigned(CS_WIDTH-1 downto 0);
    begin
        -- split address in bus address and chip select (=stb_o bit)
        bus_adr_v := adr_i(bus_adr_v'left downto 0);
        cs_v      := adr_i(ADR_WIDTH-BUSBIT_WIDTH-1 downto ADR_WIDTH-BUSBIT_WIDTH-CS_WIDTH);

        case state is
            when write_start =>
                busy_o <= '0';
                ready_o <= '0';
                dat_o <= (others => 'Z');
                --
                wb_we_o <= '1';
                wb_dat_o <= dat_i;
                wb_tgd_o <= (others => '0');
                wb_adr_o <= bus_adr_v;
                wb_cyc_o <= '1';
                wb_lock_o <= '0';
                wb_sel_o <= (others => '1');
                wb_stb_o <= (others => '0');
                wb_stb_o(2**to_integer(cs_v)) <= '1';
                wb_tga_o <= (others => '0');
                wb_tgc_o <= (others => '0');
                --
                reg_re_r <= '0';
                reg_we_r <= '0';
                reg_dat_ir <= (others => '0');
                --
                to_inc_r <= '1';
                to_rst_r <= '0';
            when write_cycle =>
                busy_o <= '0';
                ready_o <= '0';
                dat_o <= (others => 'Z');
                --
                wb_we_o <= '0';
                wb_cyc_o <= '1';
                wb_lock_o <= '0';
                wb_adr_o <= (others => 'Z');
                wb_dat_o <= (others => 'Z');
                wb_stb_o <= (others => '0');
                wb_tgd_o <= (others => 'Z');
                wb_sel_o <= (others => 'Z');
                wb_tga_o <= (others => 'Z');
                wb_tgc_o <= (others => 'Z');
                --
                reg_re_r <= '0';
                reg_we_r <= '0';
                reg_dat_ir <= (others => '0');
                --
                to_inc_r <= '1';
                to_rst_r <= '0';
            when read_start =>
                busy_o <= '1';
                ready_o <= '0';
                dat_o <= (others => 'Z');
                --
                wb_we_o <= '0';
                wb_cyc_o <= '1';
                wb_lock_o <= '0';
                wb_adr_o <= bus_adr_v;
                wb_dat_o <= (others => 'Z');
                wb_stb_o <= (others => '0');
                wb_stb_o(2**to_integer(cs_v)) <= '1';
                wb_tgd_o <= (others => '0');
                wb_sel_o <= (others => '1');
                wb_tga_o <= (others => '0');
                wb_tgc_o <= (others => '0');
                --
                reg_re_r <= '0';
                reg_we_r <= '0';
                reg_dat_ir <= (others => '0');
                --
                to_inc_r <= '1';
                to_rst_r <= '0';
            when read_cycle =>
                busy_o <= '1';
                ready_o <= '0';
                dat_o <= (others => 'Z');
                --
                wb_we_o <= '0';
                wb_cyc_o <= '1';
                wb_lock_o <= '0';
                wb_adr_o <= (others => 'Z');
                wb_dat_o <= (others => 'Z');
                wb_stb_o <= (others => '0');
                wb_tgd_o <= (others => 'Z');
                wb_sel_o <= (others => 'Z');
                wb_tga_o <= (others => 'Z');
                wb_tgc_o <= (others => 'Z');
                --
                reg_re_r <= '0';
                reg_we_r <= '0';
                reg_dat_ir <= (others => '0');
                --
                to_inc_r <= '1';
                to_rst_r <= '0';
            when read_ready =>
                busy_o <= '0';
                ready_o <= '1';
                dat_o <= wb_dat_i;
                --
                wb_we_o <= '0';
                wb_cyc_o <= '0';
                wb_lock_o <= '0';
                wb_adr_o <= (others => 'Z');
                wb_dat_o <= (others => 'Z');
                wb_stb_o <= (others => '0');
                wb_tgd_o <= (others => 'Z');
                wb_sel_o <= (others => 'Z');
                wb_tga_o <= (others => 'Z');
                wb_tgc_o <= (others => 'Z');
                --
                reg_re_r <= '0';
                reg_we_r <= '0';
                reg_dat_ir <= (others => '0');
                --
                to_inc_r <= '0';
                to_rst_r <= '1';
            when write_reg =>
                busy_o <= '0';
                ready_o <= '0';
                dat_o <= (others => 'Z');
                --
                wb_we_o <= '0';
                wb_cyc_o <= '0';
                wb_lock_o <= '0';
                wb_adr_o <= (others => 'Z');
                wb_dat_o <= (others => 'Z');
                wb_stb_o <= (others => '0');
                wb_tgd_o <= (others => 'Z');
                wb_sel_o <= (others => 'Z');
                wb_tga_o <= (others => 'Z');
                wb_tgc_o <= (others => 'Z');
                --
                reg_re_r <= '0';
                reg_we_r <= '1';
                reg_dat_ir <= dat_i;
                --
                to_inc_r <= '0';
                to_rst_r <= '1';
            when read_reg =>
                busy_o <= '1';
                ready_o <= '0';
                dat_o <= (others => 'Z');
                --
                wb_we_o <= '0';
                wb_cyc_o <= '0';
                wb_lock_o <= '0';
                wb_adr_o <= (others => 'Z');
                wb_dat_o <= (others => 'Z');
                wb_stb_o <= (others => '0');
                wb_tgd_o <= (others => 'Z');
                wb_sel_o <= (others => 'Z');
                wb_tga_o <= (others => 'Z');
                wb_tgc_o <= (others => 'Z');
                --
                reg_re_r <= '1';
                reg_we_r <= '0';
                reg_dat_ir <= (others => '0');
                --
                to_inc_r <= '0';
                to_rst_r <= '1';
            when read_reg_ready =>
                busy_o <= '0';
                ready_o <= '1';
                dat_o <= reg_dat_or;
                --
                wb_we_o <= '0';
                wb_cyc_o <= '0';
                wb_lock_o <= '0';
                wb_adr_o <= (others => 'Z');
                wb_dat_o <= (others => 'Z');
                wb_stb_o <= (others => '0');
                wb_tgd_o <= (others => 'Z');
                wb_sel_o <= (others => 'Z');
                wb_tga_o <= (others => 'Z');
                wb_tgc_o <= (others => 'Z');
                --
                reg_re_r <= '0';
                reg_we_r <= '0';
                reg_dat_ir <= (others => '0');
                --
                to_inc_r <= '0';
                to_rst_r <= '1';
            when others =>
                -- others includes state idle
                busy_o <= '0';
                ready_o <= '0';
                dat_o <= (others => 'Z');
                --
                wb_we_o <= 'Z';
                wb_dat_o <= (others => 'Z');
                wb_tgd_o <= (others => 'Z');
                wb_adr_o <= (others => 'Z');
                wb_cyc_o <= '0';
                wb_lock_o <= '0';
                wb_sel_o <= (others => 'Z');
                wb_stb_o <= (others => '0');
                wb_tga_o <= (others => 'Z');
                wb_tgc_o <= (others => 'Z');
                --
                reg_re_r <= '0';
                reg_we_r <= '0';
                reg_dat_ir <= (others => '0');
                --
                to_inc_r <= '0';
                to_rst_r <= '1';
        end case;
    end process;
end architecture rtl;





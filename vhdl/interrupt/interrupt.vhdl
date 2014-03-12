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
        wb_adr_i      : in std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
        wb_cyc_i      : in std_logic;
        wb_stall_o    : out std_logic;
        wb_err_o      : out std_logic;
        wb_lock_i     : in std_logic;
        wb_rty_o      : out std_logic;
        wb_sel_i      : in std_logic_vector(DATA_WIDTH-1 downto 0);
        wb_stb_i      : in std_logic;
        wb_tga_i      : in std_logic_vector(ADR_WIDTH-CS_WIDTH-2 downto 0);
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
            irq_o <= '1' when ((ICR and IMR)\=(ICR'range => '0')) else '0';
        end if;
    end process;
    
end architecture rtl;

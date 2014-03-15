others => x"00000000"
);
begin
   busy_o <= re_i; -- we're done on the cycle after we serve the read request

   do_ram:
   process (clk_i)
      variable iaddr : integer;
   begin
      if rising_edge(clk_i) then
         if we_i='1' then
            ram(to_integer(addr_i)) <= write_i;
         end if;
         addr_r <= addr_i;
      end if;
   end process do_ram;
   read_o <= ram(to_integer(addr_r));
end architecture Xilinx; -- Entity: SinglePortRAM


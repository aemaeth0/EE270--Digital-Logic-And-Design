library ieee;
use ieee.std_logic_1164.all;

entity data_reg_nbit is

	generic(N : positive := 1);
	port 
	(
		rst	: in std_logic;
		clk	: in std_logic;  
		en	   : in std_logic; 
		d	   : in std_logic_vector(N-1 downto 0); 
		q	   : OUT std_logic_vector(N-1 downto 0));

end entity;

architecture structure of data_reg_nbit is
begin
	
  jkff_stages: for k in 0 to N-1 generate 
  
	  jkff: entity work.jk_flop(behavior)
		port map(rst => rst, clk => clk, en => en, j => d(k), k => not(d(k)), q => q(k), qbar => open);
	
	end generate jkff_stages;
	
end architecture structure;

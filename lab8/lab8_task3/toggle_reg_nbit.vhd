library ieee;
use ieee.std_logic_1164.all;


entity toggle_reg_nbit is

	generic(N : positive:= 1 );
	port 
	(
		set : in std_logic; 
		clk : in std_logic; 
		d   : in std_logic_vector(N-1 downto 0); 
		ld  : in std_logic; 
		t   : in std_logic; 
		q   : out std_logic_vector(N-1 downto 0));

end entity;

architecture behavior of toggle_reg_nbit is

	signal qtemp: std_logic_vector(N-1 downto 0);
	
begin

	toggle_register : process(clk, qtemp) is begin 
	
	if(rising_edge(clk)) then
		if(set = '1') then qtemp <= (others=> '1');
		elsif ld = '1' then qtemp <= d;
		elsif t = '1' then qtemp <= NOT (qtemp) ;
		
		else qtemp <= qtemp;
		end if; 
		
	else qtemp <= qtemp;
	end if; 
							
	end process toggle_register;
	
end architecture behavior;
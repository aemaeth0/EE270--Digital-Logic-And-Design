library ieee;
use ieee.std_logic_1164.all;

entity ring_count_nbit is

	generic(N : positive := 6);
	port 
	(
		rst	   : in std_logic;
		clk		: in std_logic;
		en    	: in std_logic;
		Q     	: out std_logic_vector(N-1 downto 0));
end entity;

architecture behavior of ring_count_nbit is
		signal Qtemp :	std_logic_vector(N-1 downto 0);
begin
 ring_counter: process(clk,rst)
		begin
			if	(rst = '1') then Qtemp <=((N - 1) => '1', others =>'0');		
			elsif (rising_edge(clk)) then 
			if (en = '1') then Qtemp(N-1) <= Qtemp(0);
					for i IN (N-2) downto 0 loop
						Qtemp(i) <= Qtemp(i+1);	
					end loop;		
			end if;	
		end if;
		end process ring_counter;
	Q <= Qtemp;
		
end architecture behavior;

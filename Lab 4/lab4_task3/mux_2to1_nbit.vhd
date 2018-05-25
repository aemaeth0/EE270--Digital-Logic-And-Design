library ieee;
use ieee.std_logic_1164.all;

entity mux_2to1_nbit is 
   generic( N : positive := 3);   --# of data bus bits
	port ( w0, w1 : in  std_logic_vector(N-1 downto 0);
	       s      : in  std_logic;
			 f      : out std_logic_vector(N-1 downto 0)
		  );
end entity mux_2to1_nbit;

architecture behavior of mux_2to1_nbit is begin
   process(all) is begin
	   selector : case s is
		   when '0'    => f <= w0;
		   when '1'    => f <= w1;
		   when others => f <= (others => '-');
	   end case selector;
	end process;
end architecture behavior;

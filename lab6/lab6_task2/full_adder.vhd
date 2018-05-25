library ieee;
use ieee.std_logic_1164.all;

entity full_adder is 

	port(x: in std_logic;
		y: in std_logic;
		cin: in std_logic;
		sum: out std_logic;
		cout: out std_logic
	);
	
end entity full_adder;


architecture behavior of full_adder is

signal cinXY: std_logic_vector(2 downto 0);

begin

cinXY <= cin & x & y;

--Process statement models the output of 'sum'
process(x, y, cin) is begin

	sum <= x xor y xor cin;
end process;


--Process statement models the output of 'cout'  
process(cinXY) is begin
	
	if 	(cinXY = "111" or cinXY = "011" or cinXY = "101" or cinXY = "110") then cout <= '1';
	else                       																cout <= '0';
	end if;
end process;


end architecture behavior;
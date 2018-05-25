library ieee;
use ieee.std_logic_1164.all;

entity priority_encoder_8to3 is

port(w : in std_logic_vector(7 downto 0);
	  y : out std_logic_vector(2 downto 0);
	  any : out std_logic);
	  
end entity priority_encoder_8to3;

architecture behavior of priority_encoder_8to3 is

signal any_y : std_logic_vector(3 downto 0);

begin
any <= any_y(0);
y <=any_y(3 downto 1);
any_y <= "1111" when w(0) = '1' else
			"1101" when w(1) = '1' else
			"1011" when w(2) = '1' else
			"1011" when w(3) = '1' else
			"0111" when w(4) = '1' else
			"0101" when w(5) = '1' else
			"0011" when w(6) = '1' else
			"0001" when w(7) = '1' else
			"---0";
			
end architecture behavior;
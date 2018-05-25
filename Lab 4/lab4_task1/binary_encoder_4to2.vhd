library ieee;
use ieee.std_logic_1164.all;


entity binary_encoder_4to2 is	
	port(w : in std_logic_vector(3 downto 0);
	     y : out std_logic_vector(1 downto 0);
		  any : out std_logic
);

end entity binary_encoder_4to2;

architecture behavior of binary_encoder_4to2 is


begin

--concurrent selected signal assignment (CSSA) to model y output of binary encoder 4-to-2
with w select
y <= "11"when x"8",
		"10" when x"4",
		"01" when x"2",
		"00" when x"1",
		"--" when others;
		
		
--concurrent conditional signal assignment (CCSA) to model any output of binary encoder 4-to-2
any <= '0' when w = "0000" else
		 '1';

end architecture behavior;
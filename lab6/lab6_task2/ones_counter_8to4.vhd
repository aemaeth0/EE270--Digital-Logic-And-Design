library ieee;
use ieee.std_logic_1164.all;

entity ones_counter_8to4 is

	port(x: in std_logic_vector(7 downto 0);
		y: out std_logic_vector(3 downto 0));

end entity ones_counter_8to4;

architecture structure of ones_counter_8to4 is
	
component full_adder is 
	port(x: in std_logic;
		y: in std_logic;
		cin: in std_logic;
		sum: out std_logic;
		cout: out std_logic);
		
end component full_adder;

signal v: std_logic_vector(2 downto 0);
signal t: std_logic_vector(5 downto 0);
signal r: std_logic;

 begin

	FA0: component full_adder port map( x => x(0), y => x(1), cin => '0', sum => t(0) , cout => t(1));
	FA1: component full_adder port map(x => x(2), y => x(3), cin => x(4), sum => t(2) , cout => t(3));
	FA2: component full_adder port map(x => x(5), y => x(6), cin => x(7), sum => t(4) , cout => t(5));
	FA3: component full_adder port map(x => t(0), y => t(2), cin => t(4), sum => y(0) , cout => v(0));
	FA4: component full_adder port map(x => t(1), y => t(3), cin => t(5), sum => v(1) , cout => v(2));
	FA5: component full_adder port map(x => v(0), y => v(1), cin => '0', sum => y(1) , cout => r);
	FA6: component full_adder port map(x => v(2), y => r, cin => '0', sum => y(2) , cout => y(3));
	
end architecture structure;


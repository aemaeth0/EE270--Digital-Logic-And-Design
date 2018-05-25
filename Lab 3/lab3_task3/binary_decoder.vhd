library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_decoder is 
   generic (SIZE : positive := 4);
   port( en : in  std_logic;
         w  : in  std_logic_vector(SIZE-1 downto 0);
         y  : out std_logic_vector((2**SIZE)-1 downto 0) 
	   );
end entity binary_decoder;

architecture behavior of binary_decoder is begin
   process(all) is begin
	   y <= (others => '0');
	   y(to_integer(unsigned(w))) <= en;
   end process;
end architecture behavior;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_decoder_3to8 is 
   --generic (SIZE : positive := 3);
   port( en : in  std_logic;
         w  : in  std_logic_vector(2 downto 0);
         y  : out std_logic_vector(7 downto 0) );
end entity bin_decoder_3to8;

architecture behavior of bin_decoder_3to8 is begin
   process(all) is begin
	   y <= (others => '0');
      y(to_integer(unsigned(w))) <= en;
  	end process;
end architecture behavior;

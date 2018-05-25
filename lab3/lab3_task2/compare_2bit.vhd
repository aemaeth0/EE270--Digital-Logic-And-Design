library ieee; 
use ieee.std_logic_1164.all;    
use ieee.numeric_std.all;

entity compare_2bit is

         port( x : in  std_logic_vector(1  downto 0);
               y : in  std_logic_vector(1 downto 0);
               LEG : out std_logic_vector(2 downto 0));
					
          end entity compare_2bit; 

 architecture behavioral of compare_2bit is

 signal xy_bus : std_logic_vector(3 downto 0);
 

begin    
		
		-- Concurrent Selected Signal Assingment (CSSA) using enhanced bit string literals
		xy_bus <= x & y;
		with xy_bus select 
		LEG(1 downto 0) <= 2x"2" when "0000",
								 2x"1" when "0100", 
								 2x"2" when "0101", 
								 2x"1" when "1000", 
								 2x"1" when "1001", 
								 2x"2" when "1010",
								 2x"1" when "1100", 
								 2x"1" when "1101", 
								 2x"1" when "1110",
								 2x"2" when "1111", --technically "don't care"
								 2x"0" when others;
								 -- "00" is most frequent repeating so it's the default case and you can omit the typing
								 
		-- Concurrent Conditional Signal Assignment (CCSA) 
					LEG(2) <= '1' when (xy_bus = "0001") else
								 '1' when (xy_bus = "0010") else
								 '1' when (xy_bus = "0011") else
								 '1' when (xy_bus = "0110") else
								 '1' when (xy_bus = "0111") else
								 '1' when (xy_bus = "1011") else
								 '0';
			
end architecture behavioral;
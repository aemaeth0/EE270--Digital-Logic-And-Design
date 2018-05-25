library ieee;
use ieee.std_logic_1164.all;

entity bin_to_therm_decoder_4to15 is

	port(bin: in std_logic_vector(3 downto 0);
		therm: out std_logic_vector(14 downto 0)
	);
	
end entity bin_to_therm_decoder_4to15;

architecture behavior of bin_to_therm_decoder_4to15 is 

begin
	
	process (bin) is begin
		if (bin = "0000") then therm <= 15x"0";
		elsif (bin = "0001") then therm <= 15x"1";
		elsif (bin = "0010") then therm <= 15x"3";
		elsif (bin = "0011") then therm <= 15x"7";
		elsif (bin = "0100") then therm <= 15x"F";
		elsif (bin = "0101") then therm <= 15x"1F";
		elsif (bin = "0110") then therm <= 15x"3F";
		elsif (bin = "0111") then therm <= 15x"7F";
		elsif (bin = "1000") then therm <= 15x"FF";
		elsif (bin = "1001") then therm <= 15x"1FF";
		elsif (bin = "1010") then therm <= 15x"3FF";
		elsif (bin = "1011") then therm <= 15x"7FF";
		elsif (bin = "1100") then therm <= 15x"FFF";
		elsif (bin = "1101") then therm <= 15x"1FFF";
		elsif (bin = "1110") then therm <= 15x"3FFF";
		else                      therm <= 15x"7FFF";
		end if;
	end process;
	

end architecture behavior;


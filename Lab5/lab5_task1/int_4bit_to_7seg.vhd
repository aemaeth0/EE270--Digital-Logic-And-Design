library ieee;
use ieee.std_logic_1164.all;
entity int_4bit_to_7seg is

port( en: in std_logic;
	  arith: in std_logic;
	  x : in std_logic_vector(3 downto 0);
	  mag_leds : out std_logic_vector(6 downto 0);
	  sign_leds : out std_logic_vector(6 downto 0) );
end entity int_4bit_to_7seg;

architecture behavior of int_4bit_to_7seg is

signal mag_leds_unsigned : std_logic_vector(6 downto 0);
signal mag_leds_signed : std_logic_vector (6 downto 0);
signal en_arith : std_logic_vector(1 downto 0);

begin

unsigned : process(mag_leds_unsigned, x) is begin
case (x) is
when "0000" => mag_leds_unsigned <= 7x"40";
when "0001" => mag_leds_unsigned <= 7x"79";
when "0010" => mag_leds_unsigned <= 7x"24";
when "0011" => mag_leds_unsigned <= 7x"30";
when "0100" => mag_leds_unsigned <= 7x"19";
when "0101" => mag_leds_unsigned <= 7x"12";
when "0110" => mag_leds_unsigned <= 7x"02";
when "0111" => mag_leds_unsigned <= 7x"78";
when "1000" => mag_leds_unsigned <= 7x"00";
when "1001" => mag_leds_unsigned <= 7x"10";
when "1010" => mag_leds_unsigned <= 7x"08";
when "1011" => mag_leds_unsigned <= 7x"03";
when "1100" => mag_leds_unsigned <= 7x"46";
when "1101" => mag_leds_unsigned <= 7x"21";
when "1110" => mag_leds_unsigned <= 7x"06";
when "1111" => mag_leds_unsigned <= 7x"0E";
when others => mag_leds_unsigned <= 7x"7F";
end case;
end process unsigned;

signed : process(x, mag_leds_signed, arith) is

begin
	if		 x = "0000" 				 then mag_leds_signed <= 7x"40";
	elsif (x = "0001" or x="1111") then mag_leds_signed <= 7x"79";
	elsif (x = "0010" or x="1110") then mag_leds_signed <= 7x"24";
	elsif (x = "0011" or x="1101") then mag_leds_signed <= 7x"30";
	elsif (x = "0100" or x="1100") then mag_leds_signed <= 7x"19";
	elsif (x = "0101" or x="1011") then mag_leds_signed <= 7x"12";
	elsif (x = "0110" or x="1010") then mag_leds_signed <= 7x"02";
	elsif (x = "0111" or x="1001") then mag_leds_signed <= 7x"78";
	elsif x = "1000"               then mag_leds_signed <= 7x"00";
	else  								 	   mag_leds_signed <= 7x"7F";
	end if;
	end process signed;
	en_arith <= en & arith;
	
	with en_arith select
	mag_leds <= mag_leds_unsigned when "10",
					mag_leds_signed when "11",
					7x"7F" when others;
					
			sign_leds <= 7x"7F" when (en = '0' or arith = '0') else
							 7x"7F" when (x = "0000") else
							 7x"3F" when (x = "1000" or x = "1001" or x = "1010" or x = "1011" or x = "1100" or x = "1101" or x = "1110" or x = "1111") else
							 7x"0C" when (x = "0001" or x = "0010" or x = "0011" or x = "0100" or x = "0101" or x = "0110" or x = "0111") else
							 7x"7F";

end architecture behavior;
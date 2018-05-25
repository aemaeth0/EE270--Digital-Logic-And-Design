library ieee; --library clause....include the ieee library
use ieee.std_logic_1164.all;    --use clause
--include all contents ofthe std_logic_1164 package

--entity declaration statement
--describes the I/O interface to the chip you are designing
entity hex_to_7seg_decoder is
--port clause...describe the I/O ports of the chip

--start of port clause
    port(hex: in std_logic_vector(3 downto 0); --4bit binary number      
            en: in std_logic; --decoder enable
            leds: out std_logic_vector(0 to 6));--LED driver signals
             --end of port clause
         
    end entity hex_to_7seg_decoder; --end entity declaration statement

    architecture behavior of hex_to_7seg_decoder is
    --declaration portion of the architecture
    --declare and intermediate signal "wire"
     
     signal en_hex : std_logic_vector(4 downto 0); --5 bits
   
        

begin    -- else conditional signal assignment
        --implementation (statement) portion
          
          
         en_hex <= en & hex; --concatentation operator, has to equal the 5 bit because en(scalar 1 bit) + hex(vector 4 bits) 
         with en_hex select

                    
            leds <= 7x"01" when "10000",
            7x"4f" when "10001",
            7x"12" when "10010",
            7x"06" when "10011",
            7x"4c" when "10100",
            7x"24" when "10101",
            7x"20" when "10110",
            7x"0f" when "10111",
            7x"00" when "11000", -- hi
            7x"04" when "11001",
            7x"08" when "11010",
            7x"60" when "11011",
            7x"31" when "11100",
            7x"42" when "11101",
            7x"30" when "11110",
            7x"38" when "11111",
            7x"7F" when others;
				
				end architecture behavior;

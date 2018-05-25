library ieee;
use ieee.std_logic_1164.all;

entity full_adder is 

port ( x,y,cin: in std_logic; 
        sum,cout: out  std_logic);

end entity full_adder;

architecture behavior of full_adder is 

signal inputs: std_logic_vector (2 downto 0); 
 
 begin 
 inputs <= x & y & cin; 
  process (inputs) is
 begin 
 --sum_x is the LSB of the sum example "01" 1 is the lsb
        sum_x:case (inputs) is 
        
           when "000"| "011" | "101" | "110"=>sum <= '0';
            when "010" | "100" | "001" |"111" =>sum <='1';
            when others => sum<='-';
             end case sum_x;
             end process; 
				 
process (inputs) is 
            begin 
        if     inputs= "000" or inputs="010" or inputs="100" or inputs="001"  then cout <='0';
        elsif  inputs="110" or inputs="011" or inputs="101"or inputs="111" then cout<='1';
        else cout<='-';
        end if;
        end process;          
             
    end architecture behavior;

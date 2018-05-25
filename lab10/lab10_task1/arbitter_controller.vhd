library ieee;
use ieee.std_logic_1164.all;

entity arbitter_controller is

	port(rst : in	std_logic; 
		  clk : in	std_logic;  
		  R   : in	std_logic_vector(0 to 2); 
	     G	: out	std_logic_vector(0 to 2));

end entity;

architecture behavior of arbitter_controller is
	type StateType is (IDLE, GNT_DEV0, GNT_DEV1, GNT_DEV2) ;
	signal presentState : StateType;
	
	attribute syn_encoding : string;
	attribute syn_encoding of StateType:
	type is "safe, 0000000 0000001 0000010 0000100 0001000 0010000 0100000 1000000";
	
begin
arbitter_controller: process (clk, rst) is begin
		if rst = '1' then
		elsif (rising_edge(clk)) then
			case presentState is
			
				when IDLE=>
				
					if R(0) = '1' then presentState <= GNT_DEV0;
					elsif R(1) ='1' then presentState <= GNT_DEV1;
					elsif R(2) ='1' then presentState <= GNT_DEV2;
					else	presentState <= IDLE;
					
					end if;
					
				when GNT_DEV0 => 
					
					if R = "000"  then presentState <= IDLE;
					elSif R(0 to 1) = "01" then presentState <= GNT_DEV1;
					elsif R ="001" then presentState <= GNT_DEV2;
					else	presentState <= GNT_DEV0;
					
					end if;
					
				when GNT_DEV1 =>
				
					if R(1 TO 2) = "01" then presentState <= GNT_DEV2;
					elsif R(1 TO 2) ="00" then presentState <= IDLE;
					elsif R(1) ='1' then presentState <= GNT_DEV1 ;
					
					else	presentState <= GNT_DEV1 ;
					end if;
					
				when GNT_DEV2 =>
				
					if R(2) = '0' then presentState <= IDLE;
					else	presentState <= GNT_DEV2 ;

					end if;
					
				when others=> presentState <= IDLE; 
					
			end case;
		end if;
	end process arbitter_controller;	

		MEALY : G <= "000" when presentState = IDLE else 
						 "100" when presentState = GNT_DEV0 else
						 "010" when presentState = GNT_DEV1 
						  else "001";
    
end architecture behavior;

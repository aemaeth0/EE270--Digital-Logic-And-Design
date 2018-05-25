library ieee;
use ieee.std_logic_1164.all;

entity arbitter_controller is

	port(rst : in	std_logic;
	     clk : in	std_logic; 
	     R	: in	std_logic_vector(0 to 2);  
		  G	: out	std_logic_vector(0 to 2));

end entity;

architecture behavior of arbitter_controller is

	type StateType is (IDLE,GNT_DEV0 , GNT_DEV1,GNT_DEV2) ;
	signal presentState, nextState : StateType;
	
	attribute syn_encoding : string;
	attribute syn_encoding of StateType:
	type is "compact";
	
begin

next_state_logic:process (presentState, R) is begin
			case presentState is
				when IDLE=>
					if R(0) = '1' then nextState <= GNT_DEV0;
					elsif R(1) ='1' then nextState <= GNT_DEV1;
					elsif R(2) ='1' then nextState <= GNT_DEV2;					
					else	nextState <= IDLE;
					
					end if;	
					
				when GNT_DEV0 => 					
					if R = "000"  then nextState <= IDLE;
					elSif R(0 to 1) ="01" then nextState <= GNT_DEV1;
					elsif R ="001" then nextState <= GNT_DEV2;
					else	nextState <= GNT_DEV0;
					
					end if;	
					
				when GNT_DEV1 =>
					if R(1 to 2) = "01" then nextState <= GNT_DEV2;
					elsif R(1 to 2) ="00" then nextState <= IDLE;
					elsif R(1) ='1' then nextState <= GNT_DEV1 ;
					else	nextState <= GNT_DEV1 ;
					
					end if;	
					
				when GNT_DEV2 =>
					if R(2) = '0' then nextState <= IDLE;
					else	nextState <= GNT_DEV2 ;
					end if;
					
				when others=> nextState <=IDLE; 
			end case;
	end process next_state_logic;
	
	state_reg: process(clk,rst) is begin 
						 if rst = '1' then presentState <= IDLE;
						 elsif rising_edge(clk) then presentState <= nextState;
						 end if;
	end process state_reg;
	
combinational_output_logic: with presentState select
	G <= "000" when IDLE,
		  "100" when GNT_DEV0,
		  "010" when GNT_DEV1,		  
		  "001" when others;
end architecture behavior;

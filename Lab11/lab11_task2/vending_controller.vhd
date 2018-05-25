--using triple-segment-style
library ieee;
use ieee.std_logic_1164.all;
entity vending_controller is
	port 
	(  rst	  : in std_logic; --Asynchronous reset
		clk	  : in std_logic;	--Synchronizing clock signal
		m 		  : in std_logic_vector(1 downto 0); --Encoded monetary coin sensor data
		dc      : out std_logic; --Dispense can control
		dd      : out std_logic; --Dispense dime control
		dn      : out std_logic); --Dispense nickel control
end entity;
architecture behavior of vending_controller is
	type StateType is (IDLE, GOT_5C, GOT_10C, GOT_15C, GOT_20C, GOT_25C, RTN_5C, RTN_10C, RTN_15C, RTN_20C);
	signal presentState	: StateType; --Declare a signal named presentState of type StateType
	signal nextState		: StateType;
	attribute syn_encoding : string;
	
	attribute syn_encoding of StateType :
	type is "default";
begin
  next_state_logic : process (presentState,m) is begin
		case presentState is
			when IDLE => 						 
			if m(1 downto 0) = "01" then nextState <= GOT_5C;
				elsif m(1 downto 0) = "10" then nextState <= GOT_10C;
					elsif m(1 downto 0) = "11" then nextState <= GOT_25C;
						else nextState <= IDLE; -- goes back to itself when m = 00
							end if;			
			when GOT_5C =>						 
			if m(1 downto 0) =  "01" then nextState <= GOT_10C;
				elsif m(1 downto 0) = "10" then nextState <= GOT_15C;
				-- elsif m(1 downto 0) = '11" then nextState <= IDLE;
					-- dc = '1';
					else nextState <= GOT_5C; -- goes back to itself when m= 00
						end if;		
			when GOT_10C => 					 
			if m(1 downto 0) =  "01" then nextState <= GOT_15C;
				elsif m(1 downto 0) = "10" then nextState <= GOT_20C;
					elsif m(1 downto 0) = "11" then nextState <= RTN_5C; 
						else nextState <= GOT_10C;
							end if;
			when GOT_15C => 					
			if m(1 downto 0) =  "01" then nextState <= GOT_20C;
				elsif m(1 downto 0) = "10" then nextState <= GOT_25C;
					elsif m(1 downto 0) = "11" then nextState <= RTN_10C; 
						else nextState <= GOT_15C; --goes back to itself when m = 00
							end if;
			when GOT_20C =>
			if m(1 downto 0) = "01" then nextState <= GOT_25C;
					elsif m(1 downto 0) = "11" then nextState <= RTN_15C; 
						else nextState <= GOT_20C; --goes back to itself when m = 00
							end if;
			when GOT_25C =>
			if m(1 downto 0) = "01" then nextState <= IDLE; 
				elsif m(1 downto 0) = "10" then nextState <= RTN_15C;
					elsif m(1 downto 0) = "11" then nextState <= RTN_20C; 
						else nextState <= GOT_25C; --goes back to itself when m = 00
							end if;			
			when RTN_5C => nextState <= IDLE;		
			when RTN_10C => nextState <= IDLE;						
			when RTN_15C => nextState <= RTN_5C;						
			when RTN_20C => nextState <= RTN_10C;
						end case;
								end process;
	state_reg : process (clk,rst) is begin
		if rst = '1' then presentState <= IDLE;
			elsif rising_edge(clk) then  presentState <= nextState;
				end if;
					end process state_reg;
		
	Mealy: dc <= '1' when presentState = GOT_5C and m(1 downto 0) = "11" else
				    '1' when presentState = GOT_10C and m(1 downto 0) = "11" else
				 	 '1' when presentState = GOT_15C and m(1 downto 0) = "11" else
				 	 '1' when presentState = GOT_20C and m(1 downto 0) = "10" else
					 '1' when presentState = GOT_20C and m(1 downto 0) = "11" else
					 '1' when presentState = GOT_25C and m(1 downto 0) = "11" else
					 '1' when presentState = GOT_25C and m(1 downto 0) = "01" else
					 '1' when presentState = GOT_25C and m(1 downto 0) = "10" else
					 '0';
	Moore : with presentState select
	dd <= '1' when RTN_10C | RTN_15C | RTN_20C,
			'0' when others;
	Moore2 : with presentState select
	dn <= '1' when RTN_5C,
			'0' when others;		
	--dn <= '0' when presentState = IDLE else
			--'1';
end architecture behavior;
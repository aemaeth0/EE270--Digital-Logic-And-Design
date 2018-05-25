library ieee;
use ieee.std_logic_1164.all;

entity vending_controller is

	port(rst: in std_logic;
		  clk: in std_logic;
		  m: in std_logic_vector(1 downto 0);
		  dc: out std_logic;
		  dd: out std_logic;
		  dn: out std_logic
	);

end entity vending_controller;


architecture behavioral of vending_controller is

	type StateType is (IDLE, GOT_5C, GOT_10C, GOT_15C, GOT_20C, GOT_25C, RTN_5C, RTN_10C, RTN_15C, RTN_20C);
	signal presentState, nextState: StateType;
	
begin

	combo_logic: process(presentState, m) is begin
		dc <= '0';
		dd <= '0';
		dn <= '0';
		case presentState is
			when IDLE => 
				if    m(1 downto 0) = "01" then nextState <= GOT_5C; 
				elsif m(1 downto 0) = "10" then nextState <= GOT_10C;
				elsif m(1 downto 0) = "11" then nextState <= GOT_25C;
				else 									  nextState <= IDLE;
				end if;
			when GOT_5C =>
				if    m(1 downto 0) = "01" then nextState <= GOT_10C;
				elsif m(1 downto 0) = "10" then nextState <= GOT_15C;
				elsif m(1 downto 0) = "11" then 
					nextState <= IDLE; 
					dc <= '1'; 
				else 									  nextState <= GOT_5C;
				end if;
			when GOT_10C =>
				if    m(1 downto 0) = "01" then nextState <= GOT_15C;
				elsif m(1 downto 0) = "10" then nextState <= GOT_20C;
				elsif m(1 downto 0) = "11" then 
					nextState <= RTN_5C;
					dc <= '1';
				else 									  nextState <= GOT_10C;
				end if;
			when GOT_15C =>
				if    m(1 downto 0) = "01" then nextState <= GOT_20C;
				elsif m(1 downto 0) = "10" then nextState <= GOT_25C;
				elsif m(1 downto 0) = "11" then 
					nextState <= RTN_10C;
					dc <= '1';
				else 									  nextState <= GOT_15C;
				end if;
			when GOT_20C =>
				if    m(1 downto 0) = "01" then nextState <= GOT_25C;
				elsif m(1 downto 0) = "10" then 
					nextState <= IDLE;
					dc <= '1';
				elsif m(1 downto 0) = "11" then 
					nextState <= RTN_15C;
					dc <= '1';
				else 									  nextState <= GOT_20C;
				end if;
			when GOT_25C =>
				if    m(1 downto 0) = "01" then 
					nextState <= IDLE;
					dc <= '1';
				elsif m(1 downto 0) = "10" then 
					nextState <= RTN_5C;
					dc <= '1';
				elsif m(1 downto 0) = "11" then 
					nextState <= RTN_20C;
					dc <= '1';
				else 									  nextState <= GOT_25C;
				end if;
			
			when RTN_5C => 
				nextState <= IDLE;
				dn <= '1';
			when RTN_10C => 
				nextState <= IDLE;
				dd <= '1';
			when RTN_15C => 
				nextState <= RTN_5C;
				dd <= '1';
			when RTN_20C => 
				nextState <= RTN_10C;
				dd <= '1';
		end case;
	end process combo_logic;
	
	state_reg: process(clk, rst) is begin
		if rst = '1' 			  then presentState <= IDLE;
		elsif rising_edge(clk) then presentState <= nextState;
		end if;	
	end process state_reg;				
	
end architecture behavioral;
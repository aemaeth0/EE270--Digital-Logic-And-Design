library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity vending_controller is
port(
rst,clk: in std_logic;
m: in std_logic_vector(1 downto 0);
dc,dd,dn: out std_logic
);
end entity vending_controller;
architecture behavior of vending_controller is
type StateType is (IDLE,GOT_5C,GOT_10C,GOT_15C,GOT_20C,GOT_25C,RTN_5C,RTN_10C,RTN_15C,RTN_20C,GIVE_CAN);
signal presentState: StateType;

attribute syn_encoding : string;
	
	attribute syn_encoding of StateType :
	type is "0000000 0000001 0000010 0000100 0001000 0010000 0100000 1000000";

begin
arbiter:process (rst,clk) is begin
if rst = '1' then
		elsif (rising_edge(clk)) then
		presentState<=IDLE;
			case presentState is
				when IDLE=>
					if m = "11" then presentState <= GOT_25C;
					elsif m ="01" then presentState <= GOT_5C;
					elsif m ="10" then presentState <= GOT_10C;
					else	presentState <= IDLE;
					end if;
				when GOT_5C => 
					if m = "11"  then presentState <= GIVE_CAN;
					elSif m ="01" then presentState <= GOT_10C;
					elsif m ="10" then presentState <= GOT_15C;
					else	presentState <= GOT_5C;
					end if;
				when GOT_10C =>
					if m = "11" then presentState <= RTN_5C;
					elsif m ="01" then presentState <= GOT_15C;
					elsif m ="10" then presentState <= GOT_20C ;	
					else	presentState <= GOT_10C ;
					end if;	
				when GOT_15C =>
					if m = "11"  then presentState <= RTN_10C;
					elSif m ="01" then presentState <= GOT_20C;
					elsif m ="10" then presentState <= GOT_25C;
					else	presentState <= GOT_15C;
					end if;
				when GOT_20C=>
					if m = "11" then presentState <= RTN_15C;
					elsif m ="01" then presentState <= GOT_25C;
					elsif m ="10" then presentState <=GIVE_CAN ;
					else	presentState <= GOT_20C;
					end if;
				when GOT_25C => 
					if m = "11"  then presentState <= RTN_20C;
					elSif m ="01" then presentState <= GIVE_CAN;
					elsif m ="10" then presentState <= RTN_5C;
					else	presentState <= GOT_25C;
					end if;
					WHEN OTHERS=>presentState<=IDLE;
			end case;
		end if;
end process arbiter;
with presentState select
dc<= '1' when RTN_5C|RTN_10C|RTN_15C|RTN_20C|GIVE_CAN,
'0' when others;
dn<='1' when presentState=RTN_5C else
'1' when presentState=RTN_15C else
'0';
with presentState select
dd<='1' when RTN_10C|RTN_20C,
'0' when others;

end architecture behavior;
library ieee;
use ieee.std_logic_1164.all;

entity sel_arbiter_nbit is 

generic (N:positive := 4);
port( msb:  in std_logic;
		req : in std_logic_vector(N-1 downto 0);
		gnt : out std_logic_vector (N-1 downto 0);
		zero : out std_logic);
		end entity sel_arbiter_nbit;
	
architecture dataflow of sel_arbiter_nbit is 

signal zero_prefixes: std_logic_vector(n-1 downto 0);
signal a: std_logic_vector (n-1 downto 0);
signal b: std_logic_vector (n-1 downto 0);
 
begin 

--generate statement for mux
mux: for i in n-1 downto 0 generate 
b(i) <= ((not msb) and req(n-1-i)) or (msb and req(i)); 
end generate mux;

zero_prefixes(n-2) <= not (b(n-1));

--generate statement
zeros: for i in n-3 downto 0 generate  
zero_prefixes(i)<= zero_prefixes(i+1) and(not b(i+1));
 end  generate zeros ; 
 
 
 zero_prefixes(n-1) <= '1';
 
 a <= zero_prefixes and b;
 
 --generate statement for grant
 grant_sig: for i in n-1 downto 0 generate 
 gnt(i)<= ((not msb) and a(n-1-i)) or( msb and a(i));
 
 end generate grant_sig;
 zero <= zero_prefixes(0) and not req(0);
 
 
 end architecture dataflow; 
 
 
 
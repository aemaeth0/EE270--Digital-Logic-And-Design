library ieee;
use ieee.std_logic_1164.all;

entity mux_8to1_mbit is

generic(M : positive := 2);
	port( w0 : in std_logic_vector(M-1 downto 0);
		   w1 : in std_logic_vector(M-1 downto 0);
		   w2 : in std_logic_vector(M-1 downto 0);
		   w3 : in std_logic_vector(M-1 downto 0);
		   w4 : in std_logic_vector(M-1 downto 0);
		   w5 : in std_logic_vector(M-1 downto 0);
		   w6 : in std_logic_vector(M-1 downto 0);
		   w7 : in std_logic_vector(M-1 downto 0);
		   s : in std_logic_vector(2 downto 0); -- select signal 2^N = 8, so 3 select lines
		   f : out std_logic_vector(M-1 downto 0));
			
end entity mux_8to1_mbit;

architecture hybrid of mux_8to1_mbit is

signal internal1 : std_logic_vector(M-1 downto 0); 
signal internal2 : std_logic_vector(M-1 downto 0);

begin

--describe mux1 4to1 with CEI w/ named association
mux0_level1 : entity work.mux_4to1_nbit(hybrid)
generic map(N => M)
port map(w0 => w0, w1 => w1, w2=> w2, w3 => w3, s(0) => s(0), s(1) => s(1), f => internal1);

--describe mux2 4to1 with CEI w/ named association
mux1_level1 : entity work.mux_4to1_nbit(hybrid)
generic map(N => M)
port map(w0 => w4, w1 => w5, w2 => w6, w3 => w7, s(0) => s(0), s(1) => s(1), f => internal2);

--concurrent generate dataflow (SCSA) 
mux_level2 : for i in 0 to M-1 generate
--f(i) <= not(s(1)) and not(s(0)) or not(s(1)) and s(0) or s(1) and not(s(0)) or s(1) and s(0);
f(i) <= (not(s(2)) and internal1(i)) or (s(2) and internal2(i));
end generate mux_level2;


end architecture hybrid;
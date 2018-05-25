library ieee;
use ieee.std_logic_1164.all;

entity rc_asu_nbit is
	
	generic(N : positive := 2);
	port(arith: in std_logic;
		  sub: in std_logic;
		  x: in std_logic_vector(N-1 downto 0);
		  y: in std_logic_vector(N-1 downto 0);
		  ovf: out std_logic;
		  r: out std_logic_vector(N-1 downto 0));

end entity rc_asu_nbit;

architecture hybrid of rc_asu_nbit is

signal z: std_logic_vector(N-1 downto 0);
signal carries: std_logic_vector(N-1 downto 0);

begin

inversion: for i in 0 to N-1 generate
	z(i) <= sub xor y(i);
end generate inversion;

FA: entity work.full_adder(behavior)
port map(x => x(0), y => z(0), cin => sub, sum => r(0), cout => carries(0));

RCA: for i in 1 to N-1 generate 
	FA: entity work.full_adder(behavior)
	port map(x => x(i), y => z(i), cin => carries(i-1), sum => r(i), cout => carries(i));
end generate RCA;

ovf <= (not arith and not sub and carries(N-1)) or (not arith and sub and not carries(N-1)) or (arith and not carries(N-2) and carries(N-1)) or (arith and carries(N-2) and not carries(N-2));

end architecture hybrid;
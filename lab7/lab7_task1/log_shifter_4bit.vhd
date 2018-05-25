library ieee;
use ieee.std_logic_1164.all;

entity log_shifter_4bit is
	generic(N: positive := 4);
	port(arith:in std_logic;
			lin:in std_logic;
			right: in std_logic;
			A: in std_logic_vector(3 downto 0);
			cnt: in std_logic_vector(1 downto 0);
			F: out std_logic_vector(3 downto 0));
end entity log_shifter_4bit;

architecture hybrid of log_shifter_4bit is

signal mux0: std_logic_vector(3 downto 0);
signal mux1: std_logic_vector(3 downto 0);
signal mux2: std_logic_vector(3 downto 0);
signal r: std_logic_vector(2 downto 0);
signal t: std_logic;

begin

t <= arith and A(3) and right;

inversion_p : process(all) is begin
	
	invert_1: for i in 0 to 3 loop
		mux0(i) <= (right and A(i)) or ((not right) and A(3-i));

	end loop invert_1;
end process inversion_p;

process(all) is begin
	if (cnt(0) = '0') then mux1(0) <= mux0(0);
	else mux1(0) <= r(0);
	end if;
	if (cnt(0) = '0') then mux1(1) <= mux0(1);
	else mux1(1) <= mux0(2);
	end if;
	if (cnt(0) = '0') then mux1(2) <= mux0(2);
	else mux1(2) <= mux0(3);
	end if;
	if (cnt(0) = '0') then mux1(3) <= mux0(3);
	else mux1(3) <= mux0(0);
	end if;
	end process;

	r(0) <= mux0(0) when lin = '0' else
			t;	
	r(1) <= mux1(1) when lin = '0' else
			t;	
	r(2) <= mux1(0) when lin = '0' else
			t;
	mux2(0) <= mux1(0) when cnt(1) = '0' else
		  mux1(2);
	mux2(1) <= mux1(1) when cnt(1) = '0' else
		  mux1(3);
	mux2(2) <= mux1(2) when cnt(1) = '0' else
		  r(2);
	mux2(3) <= mux1(3) when cnt(1) = '0' else
		  r(1);

invert_2: for i in 0 to N-1 generate 
	F(i) <= mux2(i) when right = '1' 
				else mux2(3-i);
end generate invert_2;

end architecture hybrid;
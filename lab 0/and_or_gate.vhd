library ieee; --library clause....include the ieee library
use ieee.std_logic_1164.all; --use clause
--include all contents ofthe std_logic_1164 package

--entity declaration statement
--describes the I/O interface to the chip you are designing
entity and_or_gate is
	--port clause...describe the I/O ports of the chip
	port( --a : in std_logic;
			--b : in std_logic;
			--c : in std_logic;
			a, b, c : in std_logic;
			f : out std_logic); --end port clause

end entity and_or_gate;

--architercture statement
--describes the "internals" of the chip and how it works

architecture dataflow of and_or_gate is
	--declaration portion of the architecture
	--declare and intermediate signal "wire"
	signal x : std_logic;
	
begin
	--implementation (statement) portion
	--f <= (a and b) or c;
	-- <= : signal assignment operator
	-- f <= (a and b) or c; ... is a dataflow description of our circuit becasue it describes our circuit according to its Boolean logic equation;
	x <= a and b;
	f <= x or c;
	--f <= x or c: called a simpmle concurrent signal assignment (SCSA) statement
end architecture dataflow;
library ieee; --library clause....include the ieee library
use ieee.std_logic_1164.all;	--use clause
--include all contents ofthe std_logic_1164 package

--entity declaration statement
--describes the I/O interface to the chip you are designing
entity compare_2bit_scalar is 
--port clause...describe the I/O ports of the chip

--start of port clause 
	port(a1: in std_logic;		
		  a0: in std_logic;		
		  b1: in std_logic;		
		  b0: in std_logic;		
		  L: out std_logic;
		  G: out std_logic); --end of port clause 
		 
end entity compare_2bit_scalar; --end entity declaration statement

architecture dataflow of compare_2bit_scalar is
	--declaration portion of the architecture
	--declare and intermediate signal "wire"
	
	signal AND_GATE_1 : std_logic;					
	signal AND_GATE_2 : std_logic;
	signal AND_GATE_3 : std_logic;
	
	signal OR_GATE_1 : std_logic;
	signal OR_GATE_2 : std_logic;
	signal OR_GATE_3 : std_logic;								
	signal OR_GATE_4 : std_logic;
	signal OR_GATE_5 : std_logic;		

begin		
		--implementation (statement) portion
		
	--min.-cost SOP expression for output signal L	
		AND_GATE_1 <= not(a1) AND not(a0) AND b0;
		AND_GATE_2 <= not(a0) AND b1 AND b0;
		AND_GATE_3 <= not(a1) AND b1;
		L <= AND_GATE_1 OR AND_GATE_2 OR AND_GATE_3;

	--min.-cost POS expression for output signal G
		OR_GATE_1 <= a1 OR not(b0);
		OR_GATE_2 <= a1 OR a0;
		OR_GATE_3 <= not(b1) OR not(b0);
		OR_GATE_4 <= a1 OR not(b1);
		OR_GATE_5 <= a0 OR not(b1);
		G <= OR_GATE_1 AND OR_GATE_2 AND OR_GATE_3 AND OR_GATE_4 AND OR_GATE_5; 	
		
		
end architecture dataflow; 
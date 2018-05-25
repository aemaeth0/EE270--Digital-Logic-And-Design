library ieee; --library clause....include the ieee library
use ieee.std_logic_1164.all;	--use clause
--include all contents ofthe std_logic_1164 package

--entity declaration statement
--describes the I/O interface to the chip you are designing
entity compare_2bit_vector is 
--port clause...describe the I/O ports of the chip

--start of port clause 
	port(A: in std_logic_vector(1 downto 0);		
		  B: in std_logic_vector(1 downto 0);		
		  LG: out std_logic_vector(1 downto 0)); --end of port clause 
		 
end entity compare_2bit_vector; --end entity declaration statement

architecture dataflow of compare_2bit_vector is
	--declaration portion of the architecture
	--declare and intermediate signal "wire"
	
	signal NAND_GATE_1 : std_logic;					
	signal NAND_GATE_2 : std_logic;
	signal NAND_GATE_3 : std_logic;
	
	signal NOR_GATE_1 : std_logic;
	signal NOR_GATE_2 : std_logic;
	signal NOR_GATE_3 : std_logic;								
	signal NOR_GATE_4 : std_logic;
	signal NOR_GATE_5 : std_logic;		

begin		
		--implementation (statement) portion
		
	--min.-cost SOP expression for output signal L	
		NAND_GATE_3 <= (not A(1)) NAND B(1);
		NAND_GATE_1 <= not((not A(1)) AND (not A(0)) AND B(0));
		NAND_GATE_2 <= not((not A(0)) AND B(1) AND B(0)) ;
		
		LG(1) <= not(NAND_GATE_1 AND NAND_GATE_2 AND NAND_GATE_3);

	--min.-cost POS expression for output signal G
		NOR_GATE_1 <= A(1) NOR (not B(0));
		NOR_GATE_2 <= A(1) NOR A(0);
		NOR_GATE_3 <= (not B(1)) NOR (not B(0));
		NOR_GATE_4 <= A(1) NOR (not B(1));
		NOR_GATE_5 <= A(0) NOR (not B(1));
		LG(0) <= not(NOR_GATE_1 OR NOR_GATE_2 OR NOR_GATE_3 OR NOR_GATE_4 OR NOR_GATE_5); 	
		
		
end architecture dataflow; 
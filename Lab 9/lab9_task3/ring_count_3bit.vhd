library ieee;
use ieee.std_logic_1164.all;

entity ring_count_3bit is
	port 
	(
		rst      : in std_logic;
		clk		: in std_logic;
		en			: in std_logic;
		Q			: out std_logic_vector(2 downto 0));
end entity;

architecture structure of ring_count_3bit is

	constant size : positive := 3;
	signal clk_1Hz : std_logic;

begin
	
		ring3 : entity work.ring_count_nbit(behavior) 
		generic map(N => size)
	   port map(RST => RST, CLK => clk_1Hz, EN => en, Q => Q);

	   clk_div: entity work.clock_divider(behavior)
		port map (RST, CLK, clk_1Hz);
		
end architecture structure;

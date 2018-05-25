library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1_nbit is 
	generic( N: Positive:= 4);
	port(w3: in std_logic_vector(N-1 downto 0);
		w2: in std_logic_vector(N-1 downto 0);
		w1: in std_logic_vector(N-1 downto 0);
		w0: in std_logic_vector(N-1 downto 0);
		s: in std_logic_vector(1 downto 0); --Select Signal
		f: out std_logic_vector(N-1 downto 0)
	);
	
end entity mux_4to1_nbit;



architecture hybrid of mux_4to1_nbit is 
--declaration portion



component binary_decoder is
   generic (SIZE : positive := 4);
   port( en : in  std_logic;
         w  : in  std_logic_vector(SIZE-1 downto 0);
         y  : out std_logic_vector((2**SIZE)-1 downto 0) 
	   );
end component binary_decoder;

signal y: std_logic_vector(3 downto 0);

constant DECODER_INPUT_SIZE: positive := 2;


begin


dec0 : component binary_decoder 
generic map(DECODER_INPUT_SIZE)
port map('1', s, y);


and_or_array : for i in 0 to N-1 generate

	f(i) <= ( (w0(i) and y(0)) or (w1(i) and y(1)) or (w2(i) and y(2)) or (w3(i) and y(3)) );
	
end generate and_or_array;


end architecture hybrid;

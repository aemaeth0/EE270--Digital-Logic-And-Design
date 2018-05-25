library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity priority_encoder_8to3 is
port(w : in std_logic_vector(7 downto 0);
	  y : out std_logic_vector(2 downto 0);
	  any : out std_logic);
	  
end entity priority_encoder_8to3;

architecture structure of priority_encoder_8to3 is
signal a1 : std_logic_vector(1 downto 0);
signal b,c : std_logic_vector(1 downto 0);
signal b_c : std_logic_vector(3 downto 0);	  

begin 
pri_enc0 : entity work.priority_encoder(behavior)
generic map(2,true)
port map(w(7 downto 4), b(1 downto 0), a1(1));

pri_enc1 : entity work.priority_encoder(behavior)
generic map(2,true)
port map(w(3 downto 0), c(1 downto 0) , a1(0));

b_c <= b(1) & a1(1) & c(1) & a1(0);

pri_enc2: entity work.priority_encoder(behavior)
generic map(2,true)
port map(b_c(3 downto 0), y(2 downto 1) , any);

mux0: entity work.mux_2to1_nbit(behavior)
generic map(n=>1)
port map(w0 => c(0 downto 0), w1 => b(0 downto 0), s=> a1(1), f=>y(0 downto 0));

end architecture structure;
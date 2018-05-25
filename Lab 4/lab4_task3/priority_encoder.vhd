library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity priority_encoder is 
   generic( N         : positive := 3;    --# of output bits
	         MSB_FIRST : boolean := false --# priority scheme (defaults to LSB-first)
			 );
	port ( w : in  std_logic_vector(2**N-1 downto 0);
	       y : out std_logic_vector(N-1 downto 0);
			 a : out std_logic 
		  );
end entity priority_encoder;

architecture behavior of priority_encoder is 
begin
   process(all) is 
	begin
		look_for: for i in 2**N-1 downto 0 loop
			if MSB_FIRST then
				if w(i) = '1' then
					y <= std_logic_vector(to_unsigned(i, N));
					a <= '1';
					exit;
				end if;
			else
				if w(2**N-1-i) = '1' then
					y <= std_logic_vector(to_unsigned(2**N-1-i, N));
					a <= '1';
					exit;
				end if;
			end if;
			y <= (others => '-');
			a <= '0';
		end loop look_for;
	end process;
end architecture behavior;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity  super_reg_nbit is

	generic (N : positive := 2);
	port 
	(
		rst       : in std_logic; 
		clk	    : in std_logic; 
		en			 : in std_logic; 
		load	    : in std_logic; 
		op			 : in std_logic_vector(2 downto 0); 
		D			 : in std_logic_vector(N-1 downto 0);
		Q			: out std_logic_vector(N-1 downto 0); 
		SLout		: out std_logic; 
		SRout    : out std_logic;
		TC       : out std_logic );

end entity;

architecture behavior of super_reg_nbit is

	signal qtemp: unsigned (N-1 downto 0); 
	constant max : unsigned (N-1 downto 0):= (others=>'1');
	constant min : unsigned (N-1 downto 0):= (others=>'0');	

begin

	super_reg: process (clk, rst)
	begin
		
			if(rst = '1') then qtemp <=(others=> '0');
				elsif(rising_edge(clk)) then		
			if (en = '0') then qtemp <= qtemp;  
				elsif (load = '1') then qtemp <= unsigned(D);
			else 
				case op is 
					when "000" => qtemp <= (qtemp(N-2 downto 0) & '0');
					when "001" => qtemp <= (qtemp(N-2 downto 0) & '1');
					when "010" => qtemp <= ('0' & qtemp(N-2 downto 0));
					when "011" => qtemp <= ('1' & qtemp(N-2 downto 0));
					when "100" => qtemp <= (qtemp(N-2 downto 0) & qtemp(N-1));
					when "101" => qtemp <= (qtemp(0) & qtemp(N-1 downto 1));	
					when "110" => qtemp <= (qtemp+1);
					when "111" => qtemp <= (qtemp-1);
					when others => qtemp <= qtemp;
				end case;
			
			end if; 
		end if;		
	end process super_reg;


	TC <= '1' when op ="110" and qtemp = max else
	  '1' when op ="111" and qtemp = min else
	  '0';
	
	SLout <= qtemp(N-1);
	SRout <= qtemp(0);	
	
	Q <= std_logic_vector(qtemp);

end architecture behavior;

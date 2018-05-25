library ieee; --library clause....include the ieee library
use ieee.std_logic_1164.all;    --use clause
--include all contents ofthe std_logic_1164 package

--entity declaration statement
--describes the I/O interface to the chip you are designing
entity binary_decoder_4to16 is
--port clause...describe the I/O ports of the chip

--start of port clause
         port(w: in std_logic_vector(3 downto 0);      
              en: in std_logic; --decoder enable
				  y: out std_logic_vector(15 downto 0) );
             --end of port clause
         
    end entity binary_decoder_4to16; --end entity declaration statement

    architecture hybrid_2d of binary_decoder_4to16 is
	 --declaration portion of the architecture
    --declare and intermediate signal "wire"
	 
			component bin_decoder_3to8 is --component declaration
			port( en : in  std_logic;
					w  : in  std_logic_vector(2 downto 0);
					y  : out std_logic_vector(7 downto 0) );
					
					end component bin_decoder_3to8;
 
     signal y_dec_1to2: std_logic_vector(1 downto 0);
	  
     signal y_dec_3to8 : std_logic_vector(7 downto 0); 
	  signal en_w : std_logic_vector(1 downto 0);

begin    -- else conditional signal assignment
        --implementation (statement) portion
		  
		 -- y_dec_1to2(1) <= en and w(3);
		  --y_dec_1to2(0) <= en and not w(3);
              
         --1x2 decoder using behavioral modeling and single (CCSA) statement
			en_w <= en & w(3);
			
			 y_dec_1to2(1 downto 0) <= "01" when en_w = "10" else
									 "10" when en_w = "11" else
									 "00"; --default case
        
         --3x8 decoder using structural modeling and single (CCI) statement
           dec1 : component bin_decoder_3to8 port map(en,w(2 downto 0),y_dec_3to8); --component instantiation with position association           
				
				--AND gates described using (SCSA) dataflow
				
				y(15) <= y_dec_1to2(1) AND y_dec_3to8(7);
				y(14) <= y_dec_1to2(1) AND y_dec_3to8(6);
				y(13) <= y_dec_1to2(1) AND y_dec_3to8(5);
				y(12) <= y_dec_1to2(1) AND y_dec_3to8(4);
				y(11) <= y_dec_1to2(1) AND y_dec_3to8(3);
				y(10) <= y_dec_1to2(1) AND  y_dec_3to8(2);
				y(9) <= y_dec_1to2(1) AND y_dec_3to8(1);
				y(8) <= y_dec_1to2(1) AND y_dec_3to8(0);
				y(7) <= y_dec_1to2(0) AND y_dec_3to8(7);
				y(6) <= y_dec_1to2(0) AND y_dec_3to8(6);
				y(5) <= y_dec_1to2(0) AND y_dec_3to8(5);
				y(4) <= y_dec_1to2(0) AND y_dec_3to8(4);
				y(3) <= y_dec_1to2(0) AND  y_dec_3to8(3);
				y(2) <= y_dec_1to2(0) AND y_dec_3to8(2);
				y(1) <= y_dec_1to2(0) AND y_dec_3to8(1);
				y(0) <= y_dec_1to2(0) AND y_dec_3to8(0);
        
end architecture hybrid_2d;
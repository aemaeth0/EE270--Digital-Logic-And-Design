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

    architecture hybrid_tree of binary_decoder_4to16 is
    --declaration portion of the architecture
    --declare and intermediate signal "wire"
     
     signal en_vect : std_logic_vector(1 downto 0); --2 bits because includes en
     signal en_w : std_logic_vector(3 downto 0); 

begin    -- else conditional signal assignment
        --implementation (statement) portion
              
         --1x2 decoder using dataflow and (SCSA)
            en_vect(1) <= en and w(3); --en_w(3); --(en AND w(3));
            en_vect(0) <= en and (not(w(3))); --not(en_w(3)); --(en AND not(w(3)));    
            
         --3x8 decoder using structural and single (CEI) statement w/ named association inputs
           dec0 : entity work.bin_decoder_3to8(behavior) -- entity instantiation
           port map(w => w(2 downto 0), en => en_vect(0), y => y(7 downto 0));
            
         --3x8 decoder using behavior modeling and (CSSA) 
            en_w <= en_vect(1) & w(2 downto 0); --concatentation operator
				with en_w select
                                                    
          y(15 downto 8) <=  8x"01" when "1000",
                            8x"02" when "1001",
                            8x"04" when "1010",
                            8x"08" when "1011",
                            8x"10" when "1100",
                            8x"20" when "1101",
                            8x"40" when "1110",
                            8x"80" when "1111",
                            8x"0" when others; --default case
        
            
end architecture hybrid_tree;
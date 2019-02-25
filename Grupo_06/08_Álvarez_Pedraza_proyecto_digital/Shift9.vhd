library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 


entity Shift9 is
Port ( ms_in : in std_logic;         
       reset : in std_logic;            
		 ce : in std_logic;            
		 clk : in std_logic;           
		 q : inout std_logic_vector(8 downto 0)); 
end Shift9;

architecture Behavioral of Shift9 is

begin
desplaza: process (reset,clk,ms_in,ce)  
begin   if reset = '1' then    
        -- inicializacion de los registros   
		  q<= (OTHERS =>'0');   
		  elsif (clk'event and clk='1') then     
		      if (ce='1') then   
		-- memoriza un nuevo bit y realiza el desplazamiento de los bits restantes    
		    q(8)<=ms_in;    
			 q(7 downto 0)<=q(8 downto 1);    
			 end if;   
			 end if; 
			 end process;

end Behavioral;


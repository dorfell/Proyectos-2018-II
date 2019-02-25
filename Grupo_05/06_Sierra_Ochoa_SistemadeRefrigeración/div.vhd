library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; 

entity div is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           en : out  STD_LOGIC);
end div;

architecture Behavioral of div is

attribute KEEP : string;
signal qq, dd : std_logic_vector	(26 downto 0);
signal ovf : std_logic;
attribute KEEP of qq: signal is "TRUE";


begin
mux_add:
	dd <= qq + 1 when ovf = '0' else (others => '0');
	
ovf_com: 
	ovf <= '1' when qq = x"3e8" else '0';
--f4240
en_comp:
	en <= ovf;

process (clock,reset)
begin  
   if reset = '1' then
      qq <= (others=>'0');
   elsif (clock'event and clock = '1') then
      qq <= dd;
   end if;
end process;
		
end Behavioral;
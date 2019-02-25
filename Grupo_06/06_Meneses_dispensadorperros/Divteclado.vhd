----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:14 04/04/2018 
-- Design Name: 
-- Module Name:    Divisor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Divteclado is

port( clk: in std_logic;
      rst: in std_logic;
		
		
		enable: out std_logic
);


end Divteclado;

architecture Behavioral of Divteclado is

signal dd,qq: std_logic_vector (6 downto 0):= (others=>'0');
signal overflow:std_logic;

begin

--DIVISOR DE FRECUENCIA 1s
process (clk,rst)
begin  
   if rst = '1' then
      qq<= (others =>'0');
   elsif (clk'event and clk = '1') then --cada vez que clock cambie
      qq<=dd;
   end if;
end process;

sum_add:

dd<=qq+1 when overflow='0' else (others=>'0'); 


 
ovf_com:
overflow <= '1' when qq= x"00000064" else '0'; --qq=valor--en ese instante se genera un impulso que lo cambia
enable <=  overflow; --reloj=cmp prog anterior --500M y 250M Hz

--FIN DIVISOR

end Behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:33:13 01/16/2019 
-- Design Name: 
-- Module Name:    datos - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datos is
    Port ( inp : in  STD_LOGIC_VECTOR (3 downto 0);
           datos : out  STD_LOGIC_VECTOR (3 downto 0);
           x : in  STD_LOGIC_VECTOR (3 downto 0));
end datos;

architecture Behavioral of datos is
signal d : std_logic_vector(3 downto 0);

begin
	
	d <= "0001" when (x="1110" and inp = "0111")else
		  "0010" when (x="1110" and inp = "1011")else
		  "0011" when (x="1110" and inp = "1101")else
		  "1010" when (x="1110" and inp = "1110")else
		
		  "0100" when (x="1101" and inp = "0111")else
		  "0101" when (x="1101" and inp = "1011")else
		  "0110" when (x="1101" and inp = "1101")else
		  "1011" when (x="1101" and inp = "1110")else
		  
		  "0111" when (x="1011" and inp = "0111")else
		  "1000" when (x="1011" and inp = "1011")else
		  "1001" when (x="1011" and inp = "1101")else
		  "1100" when (x="1011" and inp = "1110")else
		  
		  "1110" when (x="0111" and inp = "0111")else
		  "0000" when (x="0111" and inp = "1011")else
		  "1111" when (x="0111" and inp = "1101")else
		  "1101" when (x="0111" and inp = "1110")else
		  "0000";
		  
		  datos <= d; 
end Behavioral;	


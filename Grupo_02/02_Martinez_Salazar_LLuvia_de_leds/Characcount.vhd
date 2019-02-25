----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:47:08 02/18/2019 
-- Design Name: 
-- Module Name:    Characcount - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--declare what the character counter is

entity Characcount is
Port(clkchar:in std_logic;
     outrow:out std_logic_vector(4 downto 0));
end Characcount;

--how will automatically dispalys the characters

architecture Behavioral of Characcount is
signal row: std_logic_vector(4 downto 0);
begin
process(clkchar)
begin
if(clkchar='1' and clkchar'event)then
row<=row+1;
end if;
end process;
outrow<=row;

end Behavioral;


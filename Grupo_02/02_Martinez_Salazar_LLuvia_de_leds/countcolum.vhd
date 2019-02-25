----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:09:44 02/18/2019 
-- Design Name: 
-- Module Name:    countcolum - Behavioral 
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

--declare the counter that will activate the colums

entity countcolum is
Port(clk:in std_logic;
     outcolum: out std_logic_vector(3 downto 0));
end countcolum;

--how the colums will work

architecture Behavioral of countcolum is
signal col: std_logic_vector(3 downto 0);
begin
process(clk,col)
begin
if col="1000" then
col<="0000";
elsif clk='1' and clk'event then
col<=col+1;
end if;
end process;
outcolum<=col; 

end Behavioral;


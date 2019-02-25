----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:05:47 11/08/2018 
-- Design Name: 
-- Module Name:    divisor - Behavioral 
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

entity divisor is
port ( 
clk: in std_logic;
segundo: out std_logic);
--enable: out std_logic);
end divisor;

architecture Behavioral of divisor is


signal dd , qq : std_logic_vector (32 downto 0) := (others =>'0');
--signal dd1, qq1 :std_logic_vector (23 downto 0) := (others =>'0');
begin
 

dd <= (others => '0') when (qq = x"1DCD6500") else  qq+1;
segundo <= '0' when (qq< x"1DCD6500") else '1';
--dd1 <= (others => '0') when (qq1 = x"2DC6C0") else  qq1+1;   
--enable<= '0' when dd1 <x"16E360" else '1';
process (clk)
begin  
if (clk'event and clk='1') then
	qq<=dd;
--	qq1<=dd1;
end if;
END PROCESS;

end Behavioral;

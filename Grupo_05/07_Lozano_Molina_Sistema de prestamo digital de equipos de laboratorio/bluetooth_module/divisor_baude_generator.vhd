----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:38 02/08/2019 
-- Design Name: 
-- Module Name:    divisor_baude_generator - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divisor_baude_generator is

port( clk : in std_logic;
		rst : in std_logic;
		ticks  : out std_logic);

end divisor_baude_generator;

architecture Behavioral of divisor_baude_generator is

signal r_out, r_in : std_logic_vector(9 downto 0):=( others =>'0'); 

begin

r_in <= (others=>'0') when r_out >= x"28A" else r_out+1; 
ticks <= '1' when r_out >= x"136" else '0';

--r_in <= (others=>'0') when r_out = x"28A" else r_out+1; 
--ticks <= '1' when r_out = x"136" else '0';

process (clk,rst)
begin  
   if rst = '1' then
      r_out<=(others=>'0');
   elsif (clk'event and clk = '1') then
      r_out<=r_in;
   end if;
end process;

end Behavioral;
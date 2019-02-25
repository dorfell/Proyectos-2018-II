----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:48:09 10/25/2018 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           enable : in  STD_LOGIC;
			  cont : out STD_LOGIC_VECTOR(4 downto 0));
end contador;

architecture Behavioral of contador is



signal qq : std_logic_vector(4 downto 0);
signal dd : std_logic_vector(4 downto 0);

begin
-- 100M
dd <= (others =>'0') when qq = "10000" else
    qq+1;
  
process (clock,reset)
begin  
   if reset = '1' then
      qq <= (others =>'0');
   elsif (clock'event and clock = '1') then
      if enable = '1' then
         qq <= dd;
      end if;
   end if;
end process;

cont <= qq;	

  end Behavioral;




----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:32 02/18/2019 
-- Design Name: 
-- Module Name:    chicharra - Behavioral 
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

entity chicharra is

Port( clk : in std_logic;
reset : in std_logic;
activar : in std_logic;
nota : out std_logic
);

end chicharra;

architecture Behavioral of chicharra is

signal contador : integer range 0 to 56818 := 0;
signal temporal : std_logic;

begin

process(clk, reset, activar)

begin

if (reset='1') then
contador<=0;
temporal<='0';

elsif (clk'event and clk = '1' and activar = '1') then
if (contador = 56818) then
contador <= 0;
temporal <= not(temporal);
else
contador <= contador +1;
end if;
end if;
end process;

nota <= temporal;


end Behavioral;


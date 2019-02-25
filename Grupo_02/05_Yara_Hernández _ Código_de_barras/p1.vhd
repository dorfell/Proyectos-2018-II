----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:14:48 02/20/2019 
-- Design Name: 
-- Module Name:    p1 - Behavioral 
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

entity p1 is
port( sensor : in std_logic_vector(2 downto 0);
		led : out std_logic_vector(2 downto 0);
		buzzer : out std_logic
);
end p1;

architecture Behavioral of p1 is

begin
process(sensor)
begin
case sensor is 
      when "000" =>
         buzzer <= '0';
      when "001" =>
         buzzer <= '1';
      when "010" =>
         buzzer <= '0';
      when "011" =>
         buzzer <= '1';
      when "100" =>
         buzzer <= '1';
      when "101" =>
         buzzer <= '0';
      when "110" =>
         buzzer <= '1';
      when "111" =>
			buzzer <= '0';
      when others =>
         buzzer <= '0';
   end case;
	end process;
led <= sensor;

end Behavioral;


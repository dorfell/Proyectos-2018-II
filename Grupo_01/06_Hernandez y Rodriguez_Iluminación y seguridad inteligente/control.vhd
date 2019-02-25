----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:39:01 11/15/2018 
-- Design Name: 
-- Module Name:    control - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is


Port(  
  hora2 : in std_logic_vector(3 downto 0);
  hora1 : in std_logic_vector(3 downto 0);
  min2 : in std_logic_vector(3 downto 0);
  min1 : in std_logic_vector(3 downto 0);
  led, ledotro: out std_logic_vector(6 downto 0)
  );
end control;

	
architecture Behavioral of control is
-- horas en las que la persona quiere que la luz prenda
signal hora2p: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal hora1p: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal min2p: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal min1p: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

-- horas en las que la persona quiere que la luz apague
signal hora2a: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal hora1a: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal min2a: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal min1a: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

--luces que quiere que prenda
signal luces: STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
signal led2: STD_LOGIC_VECTOR(6 downto 0);
 signal test: STD_LOGIC := '0';
shared variable luz: INTEGER range 0 to 6 := 0;

begin
hora1p <="0110";
hora2p <="0000";
hora1a <="0010";
hora2a <="0010";
led <= led2;
ledotro <= led2;
process 
begin


if hora2 = hora2p and hora1 = hora1p and min2 = min2p and min1 = min1p
then led2 <= "1111111";
 end if;

if hora2 = hora2a and hora1 = hora1a and min2 = min2a and min1 = min1a
then led2 <= "0000000";
 end if;


 
end process;


end Behavioral;


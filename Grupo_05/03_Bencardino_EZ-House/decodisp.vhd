----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:16 08/29/2018 
-- Design Name: 
-- Module Name:    decodisp - Behavioral 
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

entity decodisp is
	port(
		show : in std_logic;
		sw : in std_logic_vector (7 downto 0);
		an	: out std_logic_vector (3 downto 0);
		seg : out std_logic_vector (0 to 6)
		);
end decodisp;

architecture Behavioral of decodisp is

begin
process(show)
begin
	if(show = '1') then
		an <= "1110";
	else
		an <= "1111";
	end if;
end process;

process (sw)
begin
case sw is
	when "00110000" =>
		seg <= "0000001";
	when "00110001" =>
		seg <= "1001111";
	when "00110010" =>
		seg <= "0010010";
	when "00110011" =>
		seg <= "0000110";
	when "00110100" =>
		seg <= "1001100";
	when "00110101" =>
		seg <= "0100100";
	when "00110110" =>
		seg <= "0100000";
	when "00110111" =>
		seg <= "0001111";
	when "00111000" =>
		seg <= "0000000";
	when "00111001" =>
		seg <= "0001100";
	when "01000001" =>
		seg <= "0001000";
	when "01000010" =>
		seg <= "1100000";
	when "01000011" =>
		seg <= "0110001";
	when "01000100" =>
		seg <= "1000010";
	when "01000101" =>
		seg <= "0110000";
	when "01000110" =>
		seg <= "0111000";
	when "01000111" =>
		seg <= "0001100";
	when "01001000" =>
		seg <= "1001000";
	when "01001001" =>
		seg <= "1111001";
	when "01001010" =>
		seg <= "1000011";
	when "01001011" =>
		seg <= "1010000";
	when "01001100" =>
		seg <= "1110001";
	when "01001101" =>
		seg <= "0001001";
	when "01001110" =>
		seg <= "1101010";
	when "01001111" =>
		seg <= "0000001";
	when "01010000" =>
		seg <= "0011000";
	when "01010001" =>
		seg <= "0001100";
	when "01010010" =>
		seg <= "0011001";
	when "01010011" =>
		seg <= "0100100";
	when "01010100" =>
		seg <= "1110000";
	when "01010101" =>
		seg <= "1100011";
	when "01010110" =>
		seg <= "1000001";
	when "01010111" =>
		seg <= "1111000";
	when "01011000" =>
		seg <= "1000100";
	when "01011001" =>
		seg <= "0110110";
	when others =>
		seg <= "1001001";
	end case;
end process;

end Behavioral;


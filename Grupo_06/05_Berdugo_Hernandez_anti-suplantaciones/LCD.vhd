----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:42 02/18/2019 
-- Design Name: 
-- Module Name:    LCD - Behavioral 
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

entity LCD is

	port (
		clk          : in  std_logic;
		rst          : inout  std_logic;	
		lcd_e        : out std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0));

end LCD;

architecture Behavioral of LCD is

	COMPONENT lcd_controller IS
	  PORT(
		 clk        : IN    STD_LOGIC;
		 reset_n    : INOUT    STD_LOGIC;
		 rw, rs, e  : OUT   STD_LOGIC;
		 lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
		 line1_buffer : IN STD_LOGIC_VECTOR(127 downto 0);
		 line2_buffer : IN STD_LOGIC_VECTOR(127 downto 0));
	END COMPONENT;
	
	signal top_line : std_logic_vector(127 downto 0);
	signal bottom_line : std_logic_vector(127 downto 0);

begin
LCD: lcd_controller port map(
	clk => clk,
	reset_n => rst,
	e => lcd_e,
	rs => lcd_rs,
	rw => lcd_rw,
	lcd_data => lcd_db,
	line1_buffer => top_line,
	line2_buffer => bottom_line 
);

process(top_line,bottom_line)
begin
rst <= '1';
top_line <= x"486f6c61206d756e646f206173646667"; 
bottom_line <= x"4865726e616e64657a20657320676179";
end process;


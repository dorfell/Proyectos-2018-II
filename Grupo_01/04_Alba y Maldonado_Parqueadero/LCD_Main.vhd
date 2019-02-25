
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCD_Main is
	port (
		clk          : in  std_logic;
		FSM          : IN    STD_LOGIC_VECTOR(2 downto 0);
		rst          : inout  std_logic;
		--datos        : in std_logic;		
		lcd_e        : out std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0));
		
end LCD_Main;

architecture Behavioral of LCD_Main is

	COMPONENT lcd_controller IS
	  PORT(
		 clk        : IN    STD_LOGIC;
		 reset_n    : INOUT    STD_LOGIC;
		 rw, rs, e  : OUT   STD_LOGIC;
		 lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
		 line1_buffer : IN STD_LOGIC_VECTOR(127 downto 0);
		 line2_buffer : IN STD_LOGIC_VECTOR(127 downto 0));
	END COMPONENT;
	signal top_line : std_logic_vector(127 downto 0) := x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
	signal bottom_line : std_logic_vector(127 downto 0) := x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";

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

Process(clk)
	begin
		if ( FSM="001") then
			top_line <= x"46696c612031206269656e2020202020";
			bottom_line <= x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
			rst <= '1';
		elsif (FSM="100") then
			top_line <= x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
			bottom_line <= x"46696c612032206269656e2020202020";
			rst <= '1';
		end if;
end process;


end Behavioral;


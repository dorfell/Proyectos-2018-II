
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControllerTest_TOP is
	port (
		clk          : in  std_logic;
		bot          : IN    STD_LOGIC_VECTOR(5 downto 0);
		rst          : inout  std_logic;  --cambiar por reset logico 
		datos        : in std_logic;		
		lcd_e        : out std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0));
		
end ControllerTest_TOP;

architecture Behavioral of ControllerTest_TOP is

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

Process(clk, bot)
	begin
		if ( bot="100000") then --Bienvenido a BICIRUN 2.0
			--top_line <= x"4361726c6f73207075746f2020202020";
			top_line <= x"4269656e76656e69646f206120202020";
			--bottom_line <= x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
			bottom_line <= x"2020204249434952554e20322e302020";
			rst <= '1';
		elsif (bot="010000") then --Inserte su TIUN en el lector
			top_line <= x"496e7365727465207375205449554e20";
			bottom_line <= x"2020656e20656c206c6563746f722020";
			rst <= '1';
		elsif (bot="001000") then -- Inserte su clave
			top_line <= x"496e736572746520737520636c617665";
		   bottom_line <= x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
			rst <= '1';
		elsif (bot="000100") then --Clave correcta! escoja su bici
			top_line <= x"436c61766520636f7272656374612120";
		   bottom_line <= x"204573636f6a61207375206269636920";
			rst <= '1';
		elsif (bot="000010") then -- Clave incorrecta Intente de nuevo
			top_line <= x"436c61766520696e636f727265637461";
		   bottom_line <= x"496e74656e7465206465206e7565766f";
			rst <= '1';
		elsif (bot="000001") then --Gracias por usar nuestro servicio
			top_line <= x"4772616369617320706f722075736172";
		   bottom_line <= x"6e75657374726f20736572766963696f";
			rst <= '1';
		end if;
end process;


end Behavioral;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControllerTest_TOP is
	port (
		clk          : in  std_logic;
		rst          : inout  std_logic;	
		lcd_e        : out std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0);
		name         : in std_logic_vector(2 downto 0);
		etapa			 : in std_logic_vector(1 downto 0);
		boton			 : in std_logic
		);
		
		
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

process(top_line,bottom_line,name,etapa,boton)
begin
	if (etapa = "00") then
		rst <= '1';
		top_line <= x"546f20626567696e2c20706c65617365"; --To begin, press the button
		bottom_line <= x"70726573732074686520627574746f6e";
	elsif (etapa ="01") then
		if (name = "001") then
			rst <= '1';
			top_line <= x"4a75616e204865726e616e64657a202e"; --Juan Hernandez
			bottom_line <= x"506c6561736520636f6e74696e75652e";
		elsif (name = "010") then 
			rst <= '1';
			top_line <= x"4775737461766f204265726475676f2e"; --Gustavo Berdugo
			bottom_line <= x"506c6561736520636f6e74696e75652e";
		elsif (name = "011") then 
			rst <= '1';
			top_line <= x"416c656a616e64726f204f6a6564612e"; --Alejandro Ojeda
			bottom_line <= x"506c6561736520636f6e74696e75652e";
		elsif (name = "101") then 
			rst <= '1';
			top_line <= x"446f7266656c6c204c656f6e6172646f"; --Dorfell Leonardo
			bottom_line <= x"506c6561736520636f6e74696e75652e";
		elsif (name = "110") then 
			rst <= '1';
			top_line <= x"446965676f20546962616475697a612e"; --Diego Tibaduiza
			bottom_line <= x"506c6561736520636f6e74696e75652e";
		else
			rst <= '1';
			top_line <= x"53796e746178206572726f72203a7620"; --Syntax Error :v
			bottom_line <= x"506c6561736520636f6e74696e75652e";	
			end if;
	elsif (etapa="11") then
		if(boton = '0') then
		 rst <= '1';
		 top_line<= x"506c6561736520747970652074686520"; --Ingrese el ID
		 bottom_line <= x"49442c20707265737320656e74657220";
		else 
			 if (name = "001") then
				rst <= '1';
				top_line <= x"4a75616e204865726e616e64657a202e"; --Juan Hernandez
				bottom_line <= x"54686520494420697320726967687421";
			elsif (name = "010") then 
				rst <= '1';
				top_line <= x"4775737461766f204265726475676f2e"; --Gustavo Berdugo
				bottom_line <= x"54686520494420697320726967687421";
			elsif (name = "011") then 
				rst <= '1';
				top_line <= x"416c656a616e64726f204f6a6564612e"; --Alejandro Ojeda
				bottom_line <= x"54686520494420697320726967687421";
			elsif (name = "101") then 
				rst <= '1';
				top_line <= x"446f7266656c6c204c656f6e6172646f"; --Dorfell Leonardo
				bottom_line <= x"54686520494420697320726967687421";
			elsif (name = "110") then 
				rst <= '1';
				top_line <= x"446965676f20546962616475697a612e"; --Diego Tibaduiza
				bottom_line <= x"54686520494420697320726967687421";
			else
				rst <= '1';
				top_line <= x"49442077726f6e672c206572726f7220"; --Si no devuelve un name, error
				bottom_line <= x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";	
				end if;
			end if;
		end if;
end process;
end Behavioral;

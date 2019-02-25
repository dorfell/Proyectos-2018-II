
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;
use IEEE.STD_LOGIC_ARITH.ALL;


entity ControllerTest_TOP is
	port (
		clk          : in  std_logic;
		rst          : in  std_logic;
		x_angle   : in  std_logic_vector (7 downto 0); --ENTRADA DATOS
		y_angle   : in  std_logic_vector (7 downto 0); --ENTRADA DATOS
		interruptor  : in  std_logic_vector (1 downto 0);
	   buzzer  : out  std_logic;
		lcd_e        : out std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0));
		
end ControllerTest_TOP;

architecture Behavioral of ControllerTest_TOP is

	COMPONENT lcd_controller IS
	  PORT(
		 clk        : IN    STD_LOGIC;
		 reset_n    : IN    STD_LOGIC;
		 rw, rs, e  : OUT   STD_LOGIC;
		 lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
		 line1_buffer : IN STD_LOGIC_VECTOR(127 downto 0);
		 line2_buffer : IN STD_LOGIC_VECTOR(127 downto 0));
		 
	END COMPONENT;
	signal x_angle1 : std_logic_vector(23 downto 0);
	signal y_angle1 : std_logic_vector(23 downto 0);
	signal top_line : std_logic_vector(127 downto 0) := x"456a6520583a207c20456a6520593a20";
   signal bottom_line : std_logic_vector(127 downto 0);
	

--Para los angulos de 0 a 90 
	
	CONSTANT   parametro3      : INTEGER := 252;
	CONSTANT   parametro4      : INTEGER := 234;
	CONSTANT   parametro5     : INTEGER := 216;
	CONSTANT   parametro6     : INTEGER := 198;
	CONSTANT   parametro7     : INTEGER := 180;
   CONSTANT   parametro8     : INTEGER := 162;
   CONSTANT   parametro9     : INTEGER := 144;


--Para los angulos de 0 a - 90


	CONSTANT   parametro10      : INTEGER := 126;
	CONSTANT   parametro20      : INTEGER := 108;
	CONSTANT   parametro30     : INTEGER := 90;
	CONSTANT   parametro40     : INTEGER := 72;
	CONSTANT   parametro50     : INTEGER := 54;
   CONSTANT   parametro60     : INTEGER := 36;
   CONSTANT   parametro70     : INTEGER := 18;

begin

process(x_angle,y_angle,interruptor)
begin

--if (interruptor = '1') then

  if (x_angle >= parametro6)  then
      x_angle1 <= x"203030";  --0

   elsif (x_angle <= parametro6 and x_angle >= parametro7)  then
      x_angle1 <= x"2b3435";  --45

   elsif (x_angle <= parametro7 and x_angle >= parametro8)  then
      x_angle1 <= x"2b3330";  --30

   elsif (x_angle <= parametro8 and x_angle >= parametro9)  then
      x_angle1 <= x"2b3135";  --15
 
   elsif (x_angle <= parametro9 and x_angle >= parametro10)  then
      x_angle1 <= x"203030";  --0
		
   elsif (x_angle <= parametro10 and x_angle >= parametro20) then
      x_angle1 <= x"2d3135";  -- -15
		
   elsif (x_angle <= parametro20 and x_angle >= parametro30) then 
	   x_angle1 <= x"2d3330";  -- -30
		
	elsif (x_angle <= parametro30 and x_angle >= parametro40) then 
	   x_angle1 <= x"2d3435";  --  -45
		
	elsif (x_angle <= parametro40) then 
	   x_angle1 <= x"203030";  --  0
		
	end if;
	
	if (y_angle >= parametro6)  then
      y_angle1 <= x"203030";  --0
	
	elsif (y_angle <= parametro6 and y_angle >= parametro7)  then
      y_angle1 <= x"2b3435";  --45
	
	elsif (y_angle <= parametro7 and y_angle >= parametro8)  then
      y_angle1 <= x"2b3330";  --30
	
	elsif (y_angle <= parametro8 and y_angle >= parametro9)  then
      y_angle1 <= x"2b3135";  --15	
	
   elsif (y_angle <= parametro9 and y_angle >= parametro10)  then
      y_angle1 <= x"203030";  --0
		
   elsif (y_angle <= parametro10 and y_angle >= parametro20) then
      y_angle1 <= x"2d3135";  --15
		
   elsif (y_angle <= parametro20 and y_angle >= parametro30) then 
	   y_angle1 <= x"2d3330";  --30
		
	elsif (y_angle <= parametro30 and y_angle >= parametro40) then 
	   y_angle1 <= x"2d3435";  --45
		
	elsif (y_angle <= parametro40) then 
	   y_angle1 <= x"203030";  --0
		
		
		   end if;

if (interruptor= "11") then 
   top_line <= x"456a6520583a207c20456a6520593a20";
	bottom_line <= x"2020" & x_angle1 & x"202020202020" & y_angle1 & x"2020";
	elsif (interruptor= "00") then 
	bottom_line <= x"7675656c6f206469676974616c202020"; 
	top_line <= x"4573746162696c697a61646f72206465";
	elsif (interruptor= "10") then 
	bottom_line <= x"657461706120646520636f6e74726f6c";
	top_line <= x"4269656e76656e69646f2061206c6120";

end if;

if ( (x_angle <= parametro6 and x_angle >= parametro7) or (x_angle <= parametro30 and x_angle >= parametro40) or (y_angle <= parametro30 and y_angle >= parametro40) or (y_angle <= parametro6 and y_angle >= parametro7)) then
		buzzer<='1';
		
		else 
		buzzer<='0';
		end if;


end process;


--begin

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


end Behavioral;

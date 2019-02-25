library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity ControllerTest_TOP is
	port (
		clk          : in  std_logic;
		--bot          : in   STD_LOGIC_VECTOR(1 downto 0);
		rst          : inout  std_logic;
		lcd_e        : out std_logic;
		sw           : in std_logic_vector (7 downto 0);
		lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		rw, rs, e  : OUT   STD_LOGIC;
		clave: in std_logic;
		lcd_db       : out std_logic_vector(7 downto 0));
		
end ControllerTest_TOP;

architecture Behavioral of ControllerTest_TOP is

	COMPONENT lcd_controller IS
	  PORT(
		 clk        : IN    STD_LOGIC;
		 rst    : INOUT    STD_LOGIC;
		 rw, rs, e  : OUT   STD_LOGIC;
		 lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
		 line1_buffer : IN STD_LOGIC_VECTOR(127 downto 0);
		 line2_buffer : IN STD_LOGIC_VECTOR(127 downto 0));
		
	END COMPONENT;
	signal top_line : std_logic_vector(127 downto 0) :=x"c2a1c2a14269656e76656e69646f2121";
	signal bottom_line : std_logic_vector(127 downto 0) :=x"496e677265736520737520636c617665";
begin

LCD: lcd_controller port map(
	clk => clk,
	rst => rst,
	e => lcd_e,
	rs => lcd_rs,
	rw => lcd_rw,
	lcd_data => lcd_db,
	line1_buffer => top_line,
	line2_buffer => bottom_line
	
);

Process(clk,sw,clave)

	begin
	if clave='1' then
		if ( sw="00110000") then
			top_line <= x"2020204174656e6369c3b36e21202020";
			bottom_line <= x"416c61726d6120416374697661646120";
			rst <= '1';
		elsif (sw="00111001") then
			top_line <= x"496c756d696e616369c3b36e20414920";
			bottom_line <= x"20202048434c20536f6369616c202020";
			rst <= '1';
		elsif (sw="01000011") then
			top_line <= x"496c756d696e616369c3b36e20414920";
			bottom_line <= x"202048434c2056696272616e74652020";
			rst <= '1';
		elsif (sw="01000001") then
			top_line <= x"496c756d696e616369c3b36e20414920";
			bottom_line <= x"2048434c204174656e6369c3b36e2020";
			rst <= '1';
		elsif (sw="00110101") then
			top_line <= x"496c756d696e616369c3b36e20414920";
			bottom_line <= x"202048434c20416e696d61646f0a2020";
			rst <= '1';
	   elsif (sw="00110010") then
			top_line <= x"557365204c757a204e61747572616c21";
			bottom_line <= x"2020205065727369616e617320302020";
			rst <= '1';
		elsif (sw="00110100") then
			top_line <= x"557365204c757a204e61747572616c21";
			bottom_line <= x"20205065727369616e61732034352020";
			rst <= '1';
		elsif (sw="00110111") then
			top_line <= x"557365204c757a204e61747572616c21";
			bottom_line <= x"20205065727369616e61732039302020";
			rst <= '1';	
		else
		top_line<=x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
		bottom_line<=x"2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d";
		rst<='1';
		
		end if;
		end if;
		
end process;


end Behavioral;

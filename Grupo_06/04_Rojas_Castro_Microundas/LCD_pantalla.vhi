
-- VHDL Instantiation Created from source file LCD_pantalla.vhd -- 21:11:24 02/06/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT LCD_pantalla
	PORT(
		clk : IN std_logic;
		bot : IN std_logic_vector(1 downto 0);
		datos : IN std_logic;
		sim : IN std_logic_vector(1 downto 0);    
		reset : INOUT std_logic;      
		lcd_e : OUT std_logic;
		lcd_rs : OUT std_logic;
		lcd_rw : OUT std_logic;
		lcd_db : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_LCD_pantalla: LCD_pantalla PORT MAP(
		clk => ,
		bot => ,
		reset => ,
		datos => ,
		lcd_e => ,
		lcd_rs => ,
		lcd_rw => ,
		lcd_db => ,
		sim => 
	);



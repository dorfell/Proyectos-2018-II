
-- VHDL Instantiation Created from source file teclado.vhd -- 12:01:04 02/04/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT teclado
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		fila : IN std_logic_vector(3 downto 0);    
		display : INOUT std_logic_vector(3 downto 0);      
		enable_2 : OUT std_logic;
		ledfila : OUT std_logic_vector(3 downto 0);
		ledcol : OUT std_logic_vector(3 downto 0);
		col : OUT std_logic_vector(3 downto 0);
		seg7 : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_teclado: teclado PORT MAP(
		enable_2 => ,
		ledfila => ,
		ledcol => ,
		clk => ,
		reset => ,
		fila => ,
		col => ,
		display => ,
		seg7 => 
	);



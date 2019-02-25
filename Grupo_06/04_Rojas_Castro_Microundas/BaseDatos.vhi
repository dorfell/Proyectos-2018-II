
-- VHDL Instantiation Created from source file BaseDatos.vhd -- 11:04:34 02/16/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BaseDatos
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;    
		salida_tecla1 : INOUT std_logic_vector(7 downto 0);
		salida_tecla2 : INOUT std_logic_vector(7 downto 0);
		salida_tecla3 : INOUT std_logic_vector(7 downto 0);
		salida_tecla4 : INOUT std_logic_vector(7 downto 0);
		Total : INOUT std_logic_vector(15 downto 0);      
		variable_nombre : OUT std_logic_vector(31 downto 0);
		Mic1 : OUT std_logic_vector(7 downto 0);
		Mic2 : OUT std_logic_vector(7 downto 0);
		Mic3 : OUT std_logic_vector(7 downto 0);
		signal_error : OUT std_logic
		);
	END COMPONENT;

	Inst_BaseDatos: BaseDatos PORT MAP(
		clk => ,
		reset => ,
		salida_tecla1 => ,
		salida_tecla2 => ,
		salida_tecla3 => ,
		salida_tecla4 => ,
		Total => ,
		variable_nombre => ,
		Mic1 => ,
		Mic2 => ,
		Mic3 => ,
		signal_error => 
	);



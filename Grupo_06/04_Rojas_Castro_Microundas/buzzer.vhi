
-- VHDL Instantiation Created from source file buzzer.vhd -- 13:51:56 02/08/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT buzzer
	PORT(
		clk : IN std_logic;
		selector : IN std_logic;          
		Buzzer : OUT std_logic
		);
	END COMPONENT;

	Inst_buzzer: buzzer PORT MAP(
		clk => ,
		selector => ,
		Buzzer => 
	);



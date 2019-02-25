library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Top_Teclado is

port(
	clk : in std_logic;
	rst : in std_logic;
	COLUMNS : in std_logic_vector (3 downto 0);
	ROWS : out std_logic_vector (3 downto 0);
	DATA : out std_logic_vector (1 downto 0)
);

end Top_Teclado;

architecture Behavioral of Top_Teclado is

COMPONENT DivT_1
	PORT(
		rst : IN std_logic;
		clk : IN std_logic;          
		clk1 : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT Keyboard
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		clk1 : IN std_logic;
		columns : IN std_logic_vector(3 downto 0);          
		rows : OUT std_logic_vector(3 downto 0);
		code : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

COMPONENT decoder
	PORT(
		--clk : IN std_logic;
		rst : IN std_logic;
		code : IN std_logic_vector(4 downto 0);          
		data : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	
signal s_clk1 : std_logic;
signal s_code : Std_logic_vector(4 downto 0);
	
begin

Inst_DivT_1: DivT_1 PORT MAP(
		rst => rst,
		clk => clk,
		clk1 => s_clk1
	);
	
Inst_Keyboard: Keyboard PORT MAP(
		clk => clk,
		rst => rst,
		clk1 => s_clk1,
		columns => COLUMNS,
		rows => ROWS,
		code => s_code 
	);

Inst_decoder: decoder PORT MAP(
		--clk => clk,
		rst => rst,
		code => s_code,
		data => DATA
	);

end Behavioral;

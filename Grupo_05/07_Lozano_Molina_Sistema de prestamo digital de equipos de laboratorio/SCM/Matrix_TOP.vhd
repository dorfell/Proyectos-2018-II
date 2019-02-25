library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Matrix_TOP is

port(
	clk : in std_logic;
	rst : in std_logic; 
	SCM_rst : in std_logic;
	vsw : in std_logic;
	--vsw : in std_logic_vector (0 downto 0);
	c_msm : in std_logic_vector (2 downto 0);
	user : in std_logic_vector (1 downto 0);
	LOAD : out std_logic;
	SCLK : out std_logic;
	DIN : out std_logic
);

end Matrix_TOP;



architecture Behavioral of Matrix_TOP is

COMPONENT Div_1
	PORT(
		rst : IN std_logic;
		clk : IN std_logic;          
		clk_1 : OUT std_logic
		);
	END COMPONENT;

COMPONENT Div_2
	PORT(
		rst : IN std_logic;
		clk : IN std_logic;
		clk1 : IN std_logic;          
		clk_2 : OUT std_logic
		);
	END COMPONENT;

COMPONENT Div_3
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		vrst : IN std_logic;
		SCM_rst : IN std_logic;
		clk_3 : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT counter
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		vrst : IN std_logic;
		SCM_rst : IN std_logic;
		enable : IN std_logic;          
		c_out : OUT std_logic_vector(8 downto 0)
		);
	END COMPONENT;
	
COMPONENT Machine_States
	PORT(
		clk2 : IN std_logic;
		rst : IN std_logic;
		clk : IN std_logic;
		count : IN std_logic_vector(8 downto 0);
		vsw : in std_logic;
		--vsw : IN std_logic_vector(0 to 0);
		c_msm : IN std_logic_vector(2 downto 0);
		user : IN std_logic_vector(1 downto 0);          
		vrst : OUT std_logic;
		load : OUT std_logic;
		data : OUT std_logic_vector(63 downto 0)
		);
	END COMPONENT;

COMPONENT Desplacement_Register
	PORT(
		clk : IN std_logic;
		clk1 : IN std_logic;
		clk2 : IN std_logic;
		rst : IN std_logic;
		data : IN std_logic_vector(63 downto 0);          
		din : OUT std_logic
		);
	END COMPONENT;
	
signal s_clk1 : std_logic; 
signal s_clk2 : std_logic; 
signal s_enable : std_logic;
signal s_vrst : std_logic;
signal s_count : std_logic_vector(8 downto 0);
signal s_data : std_logic_vector(63 downto 0);

begin 

Inst_Div_1: Div_1 PORT MAP(
		rst => rst,
		clk => clk,
		clk_1 => s_clk1 
	);

Inst_Div_2: Div_2 PORT MAP(
		rst => rst,
		clk => clk,
		clk1 => s_clk1,
		clk_2 => s_clk2
	);

Inst_Div_3: Div_3 PORT MAP(
		clk => clk,
		rst => rst,
		vrst => s_vrst,
		SCM_rst => SCM_rst,
		clk_3 => s_enable 
	);

Inst_counter: counter PORT MAP(
		clk => clk,
		rst => rst,
		vrst => s_vrst,
		SCM_rst => SCM_rst,
		enable => s_enable,
		c_out => s_count
	);

Inst_Machine_States: Machine_States PORT MAP(
		clk2 => s_clk2,
		rst => rst,
		clk => clk,
		count => s_count,
		vsw => vsw,
		c_msm => c_msm,
		user => user,
		vrst => s_vrst,
		load => LOAD,
		data => s_data
	);

Inst_Desplacement_Register: Desplacement_Register PORT MAP(
		clk => clk,
		rst => rst,
		clk1 => s_clk1,
		clk2 => s_clk2,
		data => s_data,
		din => DIN
	);

SCLK<=s_clk1;

end Behavioral;


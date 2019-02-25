library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top_SCM is

port(
	clk : in std_logic;
	rst : in std_logic;
	G_cols : in std_logic_vector (3 downto 0);
	G_rows : out std_logic_vector (3 downto 0);
	G_load : out std_logic;
	G_sclk : out std_logic;
	G_din : out std_logic
);

end top_SCM;

architecture Behavioral of top_SCM is

COMPONENT Top_Teclado
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		COLUMNS : IN std_logic_vector(3 downto 0);          
		ROWS : OUT std_logic_vector(3 downto 0);
		DATA : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

COMPONENT SCM
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		SCM_data : IN std_logic_vector(1 downto 0);
		SCM_cp : IN std_logic_vector(1 downto 0);          
		SCM_rst : OUT std_logic;
		SCM_vsw : OUT std_logic;
		--SCM_vsw : OUT std_logic_vector(0 to 0);
		SCM_c_msm : OUT std_logic_vector(2 downto 0);
		SCM_user : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

COMPONENT Matrix_TOP
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		SCM_rst : IN std_logic;
		vsw : IN std_logic;
		--vsw : IN std_logic_vector(0 to 0);
		c_msm : IN std_logic_vector(2 downto 0);
		user : IN std_logic_vector(1 downto 0);          
		LOAD : OUT std_logic;
		SCLK : OUT std_logic;
		DIN : OUT std_logic
		);
	END COMPONENT;

signal s_data : std_logic_vector(1 downto 0);
signal s_c_msm : std_logic_vector(2 downto 0);
signal s_user : std_logic_vector(1 downto 0);
signal s_load : std_logic;
signal s_sclk : std_logic;
signal s_din : std_logic; 
signal s_SCM_rst : std_logic;
signal s_vsw : std_logic;
--signal s_vsw : std_logic_vector (0 downto 0);

begin

Inst_Top_Teclado: Top_Teclado PORT MAP(
		clk => clk,
		rst => rst,
		COLUMNS => G_cols,
		ROWS => G_rows,
		DATA => s_data
	);

Inst_SCM: SCM PORT MAP(
		clk => clk,
		rst => rst,
		SCM_data => s_data,
		SCM_cp => s_data,
		SCM_rst => s_SCM_rst,
		SCM_vsw => s_vsw,
		SCM_c_msm => s_c_msm,
		SCM_user => s_user
	);

Inst_Matrix_TOP: Matrix_TOP PORT MAP(
		clk => clk,
		rst => rst,
		SCM_rst => s_SCM_rst,
		vsw => s_vsw,
		c_msm => s_c_msm,
		user => s_user,
		LOAD => G_load,
		SCLK => G_sclk,
		DIN => G_din
	);
end Behavioral; 



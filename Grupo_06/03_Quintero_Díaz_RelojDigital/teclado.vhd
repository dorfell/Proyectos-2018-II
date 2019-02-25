library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity teclado is
    port (
    clk     : in std_logic;
    reset   : in std_logic;
	 fila    : in unsigned(3 downto 0);
	 col     : out unsigned(3 downto 0);
	 teclado : out std_logic_vector(3 downto 0);
	 teclado1 : out std_logic_vector(3 downto 0);
	 teclado2 : out std_logic_vector(3 downto 0);
	 teclado3 : out std_logic_vector(3 downto 0);
	 teclado4 : out std_logic_vector(3 downto 0)
    );
	 end teclado;
	 
architecture Behavioral of teclado is
	COMPONENT top
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		fila : IN unsigned(3 downto 0);          
		col : OUT unsigned(3 downto 0);
		teclado1 : OUT std_logic_vector(3 downto 0);
		teclado2 : OUT std_logic_vector(3 downto 0);
		teclado3 : OUT std_logic_vector(3 downto 0);
		teclado4 : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
		COMPONENT top2
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		fila : IN unsigned(3 downto 0);          
		scol : in unsigned(3 downto 0);
		teclado : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
signal colo : unsigned(3 downto 0);
begin


	Inst_top2: top2 PORT MAP(
		clk => clk,
		reset => reset,
		fila => fila,
		scol => colo,
		teclado => teclado
	);
	
	Inst_top: top PORT MAP(
		clk => clk,
		reset => reset,
		fila => fila,
		col => colo,
		teclado1 => teclado1,
		teclado2 => teclado2,
		teclado3 => teclado3,
		teclado4 => teclado4 
	);

col <= colo;	


end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; 


entity Teclado is
    Port ( 	clk : in STD_LOGIC;
				rst : in STD_LOGIC;
				cols : in  STD_LOGIC_VECTOR (3 downto 0);
				rows : out STD_LOGIC_VECTOR (3 downto 0);
				temp: out STD_LOGIC_VECTOR(7 downto 0);
				registrotd: out STD_LOGIC_VECTOR(3 downto 0);
				registrotu: out STD_LOGIC_VECTOR(3 downto 0)
				);
end Teclado;

	architecture Behavioral of Teclado is

COMPONENT div
	Port ( 	clock : in  STD_LOGIC;
					reset : in  STD_LOGIC;
					en : out  STD_LOGIC);
	END COMPONENT;

COMPONENT fsm
	Port ( en : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sal : out  STD_LOGIC_VECTOR (3 downto 0));
	END COMPONENT;
	
COMPONENT Mux	
	Port (  cols : in STD_LOGIC_VECTOR (3 downto 0);
           sig_rows : in STD_LOGIC_VECTOR (3 downto 0);
           sig_dec : out STD_LOGIC_VECTOR (3 downto 0));
	END COMPONENT;

COMPONENT div2
	Port ( 	clock : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				en : out  STD_LOGIC);
	END COMPONENT;
	
COMPONENT Registro
	Port ( clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				enable :  in  STD_LOGIC;	
				enp :  in  STD_LOGIC;				
				dis: in STD_LOGIC_VECTOR (3 downto 0);
				leds: out STD_LOGIC_VECTOR (3 downto 0);
				sald : out  STD_LOGIC_VECTOR (3 downto 0));
	END COMPONENT;

COMPONENT temperatura
Port ( clk : in  STD_LOGIC;
       reset : in  STD_LOGIC; 
		 dec: in  STD_LOGIC_VECTOR (3 downto 0);
		 uni: in  STD_LOGIC_VECTOR (3 downto 0);
       act : in  STD_LOGIC;
		 temp : out  STD_LOGIC_VECTOR (7 downto 0)
		);
		END COMPONENT;

signal sig_en,enp,act, sig_en2: std_logic;
signal sig_rows: std_logic_vector (3 downto 0);
signal sig_cols: std_logic_vector (3 downto 0);
signal sig_data: std_logic_vector (3 downto 0);
signal sig_dec, sig_reg: std_logic_vector (3 downto 0);
signal sig_temp: std_logic_vector (7 downto 0);


begin

	Inst_divisor: div port map(
		clock => clk,
		reset => rst,
		en => sig_en
	);
	
	Inst_fsm: fsm port map(
		clock => clk,
		reset => rst,
		en => sig_en,
		sal => sig_rows
	);
			
	Inst_Mux: Mux port map(
		cols => cols,
		sig_rows => sig_rows,
		sig_dec => sig_dec
	);
	
	process(sig_dec)
	begin
	if (sig_dec /= "1111") and (sig_dec /= "1100") then
		enp <= '1';
		act <= '0';	
	elsif sig_dec = "1100" then
		act <= '1';	
		enp <= '0';
	else
		enp <= '0';
		act <= '0';	
	end if;
	end process;
	
	Inst_div2: div2 port map(
		clock => clk,
		reset => rst,
		en => sig_en2
	);
	
	Inst_Registro: Registro port map(
		clk => clk,
		reset => rst,
		enp => sig_en2,
		enable => enp,
		dis => sig_dec,
		leds => sig_data,
		sald => sig_reg
	);	
	
	Inst_temperatura: temperatura PORT MAP(
		clk => clk,
		reset => rst,
		dec => sig_reg,
		uni => sig_data,
		act => act,
		temp => sig_temp
	);
	
registrotd <= sig_reg;
registrotu <= sig_data;
temp <= sig_temp;
rows <= sig_rows;

end Behavioral;


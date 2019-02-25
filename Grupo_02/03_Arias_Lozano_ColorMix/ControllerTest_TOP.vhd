library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity ControllerTest_TOP is
	port (
		clk          : in  std_logic;
		 pwm_out : OUT STD_LOGIC;
       paleta : OUT STD_LOGIC;
		 yellow : OUT STD_LOGIC;
		 blue : OUT STD_LOGIC;
		 red : OUT STD_LOGIC;
		 ledsito : OUT std_logic;
		--sensor: in std_logic;

		rst          : inout  std_logic;
		datos        : in std_logic;		
		lcd_e        : out std_logic;
		--show        : inout std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0);--de la pantalla LCD
		rows          : IN    STD_LOGIC_VECTOR(3 downto 0);
		cols          : IN    STD_LOGIC_VECTOR(2 downto 0);
		buzz        : out std_logic;
		num           : inout    STD_LOGIC_VECTOR(3 downto 0);
		
		fila         : buffer    STD_LOGIC_VECTOR(3 downto 0);
		columna        : IN    STD_LOGIC_VECTOR(3 downto 0);
		rg       : out   STD_LOGIC_VECTOR(3 downto 0);
		isDone : OUT STD_LOGIC);
		--mot           : out    STD_LOGIC_VECTOR(3 downto 0));
		
		--d_in           : in    STD_LOGIC_VECTOR(3 downto 0); 
		--pout           : out    STD_LOGIC_VECTOR(3 downto 0));
		

		
end ControllerTest_TOP;



architecture Behavioral of ControllerTest_TOP is


	
	
		COMPONENT GUI
	PORT(
		clk : IN std_logic;
		number : IN std_logic_vector(3 downto 0);    
		rst : INOUT std_logic;      
		top_line : OUT std_logic_vector(127 downto 0);
		bottom_line : OUT std_logic_vector(127 downto 0);
		ledsito : OUT std_logic;
		pwm_out : OUT std_logic;
		paleta : OUT std_logic;
		yellow : OUT std_logic;
		blue : OUT std_logic;
		red : OUT std_logic;
		buzzer : OUT std_logic);
		--motor : OUT std_logic_vector(3 downto 0)
		
	END COMPONENT;


	COMPONENT lcd_controller IS
	  PORT(
		 clk        : IN    STD_LOGIC;
		 reset_n    : INOUT    STD_LOGIC;
		 rw, rs, e  : OUT   STD_LOGIC;
		 lcd_data   : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
		 line1_buffer : IN STD_LOGIC_VECTOR(127 downto 0);
		 line2_buffer : IN STD_LOGIC_VECTOR(127 downto 0));
	END COMPONENT;

	COMPONENT pad
	PORT(
		rows : IN std_logic_vector(3 downto 0);
		cols : IN std_logic_vector(2 downto 0);
		--show : IN std_logic;          
		num : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
		COMPONENT Divisor_Teclado
	PORT(
		clk_T : IN std_logic;          
		t : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT Lector_Fila
	PORT(
		clk_sec : IN std_logic;          
		ent_teclado : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
		COMPONENT tec
	PORT(
		clk_Teclado : IN std_logic;
		Fila : IN std_logic_vector(3 downto 0);
		Columna : IN std_logic_vector(3 downto 0);          
		ascii : OUT std_logic_vector(3 downto 0);
		isDone : OUT std_logic
		);
	END COMPONENT;
	
	
	signal top_line : std_logic_vector(127 downto 0) := x"4861726f6c6420616e6420416c656a61";
	signal bottom_line : std_logic_vector(127 downto 0) := x"20202020202020202020202020202020";
	--signal mover: std_logic_vector(3 downto 0);
	signal w_clk: std_logic;
	signal ascii1: std_logic_vector (3 downto 0);
	signal r1, r2, r3: std_logic_vector (3 downto 0);
	--signal rg: std_logic_vector (3 downto 0);
	--signal cut: std_logic_vector (23 downto 0);

begin


LCD: lcd_controller port map(
	clk => clk,
	reset_n => rst,
	e => lcd_e,
	rs => lcd_rs,
	rw => lcd_rw,
	lcd_data => lcd_db,
	line1_buffer => top_line,
	line2_buffer => bottom_line 
);


	Inst_pad: pad PORT MAP(
		rows => rows,
		cols => cols,
		num => num
		
	);
	
		Inst_Divisor_Teclado: Divisor_Teclado PORT MAP(
		clk_T => clk,
		t => w_clk
	);
	
		Inst_Lector_Fila: Lector_Fila PORT MAP(
		clk_sec => w_clk,
		ent_teclado => fila
	);
	
		Inst_tec: tec PORT MAP(
		clk_Teclado => w_clk,
		fila => fila,
		Columna => columna,
		ascii => ascii1,
		isDone => isDone
	);



		Inst_GUI: GUI PORT MAP(
		clk => clk,
		rst => rst,
		top_line => top_line,
		bottom_line => bottom_line,
		ledsito => ledsito,
		pwm_out => pwm_out,
		paleta => paleta,
		yellow => yellow,
		blue => blue,
		red => red,
		number => ascii1, -- or ascii1 
		buzzer => buzz
		--motor => mot
	);

	Process (w_clk)
		begin
			if(rising_edge(w_clk)) then
			r1 <= ascii1;
			r2 <= r1;
			r3 <= r2;
			end if;
		
	end process;
	
	rg <= ascii1 and r1 and r2 and r3;
		
--	Process (clk,cut,rg)
--	 begin
--		if(cut < x"989680")then
--			cut <= cut+1;
--			rg <= ascii1 and r1 and r2 and r3;
--		else
--			cut <= x"000000";
--			rg  <= x"0";	
--		end if;		
--	end process;


end Behavioral;


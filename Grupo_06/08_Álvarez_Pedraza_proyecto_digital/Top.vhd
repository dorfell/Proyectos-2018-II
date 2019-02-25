
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top is
 port ( kbclk: in STD_LOGIC; -- RELOJ DEL TECLADO 
	     reset: in STD_LOGIC; -- RESET GLOBAL  
		  kbdata: in STD_LOGIC; -- ENTRADA DE DATOS 
		  parity_error: out STD_LOGIC; -- INDICA ERROR DE PARIDAD EN EL ULTIMO DATO DEL TECLADO 
		  ms_in : in std_logic;         
        ce : in std_logic;            
		  clk : in std_logic;           
		  q : inout std_logic_vector(8 downto 0);      
		  new_data : out std_logic;            
		  new_key : out std_logic;        
		  end_key : out std_logic;         
		  pressed_key : out std_logic;            			
		  released_key : out std_logic;           
        segments :out STD_LOGIC_VECTOR (7 downto 1);
		  an: out STD_LOGIC_VECTOR (3 downto 0);
		  sw : in std_logic_vector (7 downto 0);
		  buzz: out std_logic;
		  ala1: out std_logic;
		  ala2: out std_logic;
		  ama1: out std_logic;
		  ama2: out std_logic;
		  ama3: out std_logic;
		  bla1: out std_logic;
		  bla2: out std_logic;
		  bla3: out std_logic;
		  azu1: out std_logic;
		  azu2: out std_logic;
		  clave:out std_logic
		); 
end Top;


architecture Behavioral of Top is


	COMPONENT ps2_keyboard_basic_interface
	PORT(
		kbclk : IN std_logic;
		reset : IN std_logic;
		kbdata : IN std_logic;          
		end_data : OUT std_logic;
		parity_error : OUT std_logic;
		data : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Shift9
	PORT(
		ms_in : IN std_logic;
		reset : IN std_logic;
		ce : IN std_logic;
		clk : IN std_logic;       
		q : INOUT std_logic_vector(8 downto 0)
		);
	END COMPONENT; 

	COMPONENT key_identifier
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		end_data : IN std_logic;
		data : IN std_logic_vector(7 downto 0);          
		new_data : OUT std_logic;
		new_key : OUT std_logic;
		end_key : OUT std_logic;
		pressed_key : OUT std_logic;
		released_key : OUT std_logic;
		key : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT KEY2LED
	PORT(
		key : IN std_logic_vector(7 downto 0);         
		segments : OUT std_logic_vector(7 downto 1);
		an : OUT std_logic_vector (3 downto 0);
		sw : in std_logic_vector (7 downto 0);
		buzz: out std_logic;
		ala1: out std_logic;
		ala2: out std_logic;
		ama1: out std_logic;
		ama2: out std_logic;
		ama3: out std_logic;
		bla1: out std_logic;
		bla2: out std_logic;
		bla3: out std_logic;
		azu1: out std_logic;
		azu2: out std_logic;
		clk: in std_logic;
		clave: out std_logic
		);
	END COMPONENT;


	SIGNAL CON_ENDDATA : std_logic;
	SIGNAL CON_DATA : std_logic_vector(7 downto 0);
	SIGNAL CON_KEY : std_logic_vector (7 downto 0); 

	

begin

	Inst_ps2_keyboard_basic_interface: ps2_keyboard_basic_interface PORT MAP(
		kbclk => kbclk ,
		reset => reset,
		kbdata => kbdata,
		end_data => CON_ENDDATA,
		parity_error => parity_error,
		data => CON_DATA
	);
	
	Inst_Shift9: Shift9 PORT MAP(
		ms_in => ms_in,
		reset => reset,
		ce => ce,
		clk => clk,
		q => q
	); 

	Inst_key_identifier: key_identifier PORT MAP(
		clk => clk,
		reset => reset,
		end_data => CON_ENDDATA,
		data => CON_DATA,
		new_data => new_data,
		new_key => new_key,
		end_key => end_key,
		pressed_key => pressed_key,
		released_key => released_key,
		key => CON_KEY
	);
	
	
	Inst_KEY2LED: KEY2LED PORT MAP(
		key => CON_KEY,
		segments => segments,
		sw=>sw,clave=>clave,
		an => an,clk=>clk, buzz=>buzz, ala1=>ala1, ala2=>ala2, ama1=>ama1, ama2=>ama2, ama3=>ama3, bla1=>bla1, bla2=>bla2, bla3=>bla3, azu1=>azu1, azu2=>azu2
		);
		
end Behavioral;


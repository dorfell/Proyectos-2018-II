----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:20:49 11/07/2018 
-- Design Name: 
-- Module Name:    TOPmax - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
USE WORK.COMANDOS_LCD4BITS_REVB.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOPmax is


	  Generic(
			NBITS : integer := 16;
			NSALIDA : integer := 20
		
		);

port( clock, reset : in std_logic;
      start : in std_logic;
		MISO  : in std_logic;
		LED_MISO  : out std_logic;
		SCK,   SCK1 : out std_logic;
		CS,     CS1 : out std_logic;
		audio : out std_logic;
		motor : out std_logic;
		num_bin : inout  STD_LOGIC_VECTOR (NBITS-1 downto 0);
		num_bcd : inout STD_LOGIC_VECTOR(NSALIDA-1 downto 0);
		enable1 : out  STD_LOGIC;
		enable2 : out  STD_LOGIC;
		RS : OUT STD_LOGIC;									  --
	   RW : OUT STD_LOGIC;									  --
	   ENA : OUT STD_LOGIC;									  --
	   DATA_LCD: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
		);
end TOPmax;

architecture Behavioral of TOPmax is



	COMPONENT FSM
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		enable1 : IN std_logic;
		start : IN std_logic;          
		cs : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT divisor
	PORT(
		reset : IN std_logic;
		clock : IN std_logic;          
		enable1 : OUT std_logic;
		enable2 : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT registro
	PORT(
		MISO : IN std_logic;
		enable1 : IN std_logic;
		enable2 : IN std_logic;
		clock : IN std_logic;          
		num_bin : inout  STD_LOGIC_VECTOR (NBITS-1 downto 0);
		num_bcd : inout STD_LOGIC_VECTOR(NSALIDA-1 downto 0)

		);
	END COMPONENT;
	
	TYPE RAM IS ARRAY (0 TO  60) OF STD_LOGIC_VECTOR(11 DOWNTO 0);  	 --
																						 --
SIGNAL INSTRUCCION : RAM;													 	 --
																						 --
COMPONENT PROCESADOR_LCD4BITS_REVB is						   		 	 --
																						 --
PORT(clock : IN STD_LOGIC;													 	 --
	  RS : OUT STD_LOGIC;													 	 --
	  RW : OUT STD_LOGIC;													 	 --
	  ENA : OUT STD_LOGIC;													 	 --
	  VECTOR_MEM : IN STD_LOGIC_VECTOR(11 DOWNTO 0);				 	 --
	  INC_DIR : OUT INTEGER RANGE 0 TO 1024;							 	 --
	  C1A,C2A,C3A,C4A : IN STD_LOGIC_VECTOR(39 DOWNTO 0);			 	 --
	  C5A,C6A,C7A,C8A : IN STD_LOGIC_VECTOR(39 DOWNTO 0);			 	 --
	  BD_LCD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);			          	 --
	  DATA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)--DE 4 BITS			 	 --
		);																			 	 --
																						 --
END COMPONENT;								 	 --
																						 --
COMPONENT CARACTERES_ESPECIALES_LCD4BITS_REVB is						 --
																						 --
PORT( C1,C2,C3,C4,C5,C6,C7,C8 : OUT STD_LOGIC_VECTOR(39 DOWNTO 0); --
		clock : IN STD_LOGIC														 --
		);																				 --
																						 --
																						 --
END COMPONENT;						 --
																						 --
SIGNAL C1S,C2S,C3S,C4S : STD_LOGIC_VECTOR(39 DOWNTO 0);	      	 --
SIGNAL C5S,C6S,C7S,C8S : STD_LOGIC_VECTOR(39 DOWNTO 0);  	   	 --
SIGNAL VECTOR_MEM_S : STD_LOGIC_VECTOR(11 DOWNTO 0);					 --
SIGNAL DIR : INTEGER RANGE 0 TO 1024:=0;									 --
SIGNAL BLCD : STD_LOGIC_VECTOR(7 DOWNTO 0);

type estados is (s0,s1,s2,s3);
signal estado_presente, estado_futuro : estados;
	
	
signal sig_en_div : std_logic;
signal sig_clk_spi: std_logic;
signal sig_MISO : std_logic;
signal sig_CS   : std_logic;
signal t: std_logic_vector(7 downto 0);
signal e: std_logic_vector(7 downto 0);
signal m: std_logic_vector(7 downto 0);
signal p: std_logic_vector(7 downto 0);
signal signo: std_logic_vector(7 downto 0);

signal r: std_logic_vector(7 downto 0);
signal g: std_logic_vector(7 downto 0);
signal a: std_logic_vector(7 downto 0);


signal u : integer;
signal d : integer;
signal c : integer;
signal motor1 : integer;


begin

u <= to_integer(unsigned(num_bcd(3 downto 0)));
d <= to_integer(unsigned(num_bcd(7 downto 4)));
c <= to_integer(unsigned(num_bcd(11 downto 8)));

	
		Inst_divisor: divisor PORT MAP(
		reset => reset,
		clock => clock ,
		enable1 => sig_clk_spi,
		enable2 =>  sig_en_div
	);
	
	
	Inst_FSM: FSM PORT MAP(
		clock => clock,
		reset => reset,
		enable1 => sig_en_div,
		start => start,
		cs => sig_CS
	);

	
	Inst_registro: registro PORT MAP(
    	MISO => sig_MISO,
		enable1 => sig_clk_spi ,
		enable2 => sig_en_div,
		clock =>  clock,
		num_bin => num_bin,
	   num_bcd => num_bcd
	);
	
	
	-- SCK Multiplexer
	SCK  <= sig_clk_spi when (sig_CS = '0') else '0';
	SCK1 <= sig_clk_spi when (sig_CS = '0') else '0';
	
	sig_MISO <= MISO;
	LED_MISO <= sig_MISO;
	
	CS  <= sig_CS;
	CS1 <= sig_CS;
	
	U1: PROCESADOR_LCD4BITS_REVB PORT MAP(							--
									 clock => clock,						--
									 RS  => RS,							--
									 RW  => RW,							--
									 ENA => ENA,						--
									 VECTOR_MEM => VECTOR_MEM_S,	--
									 INC_DIR => DIR,					--
									 BD_LCD => BLCD,					--
									 C1A =>C1S,  					   --	
									 C2A =>C2S,							--
									 C3A =>C3S,							--
									 C4A =>C4S,							--
									 C5A =>C5S,							--
									 C6A =>C6S,							--
									 C7A =>C7S,							--
									 C8A =>C8S,							--
									 DATA => DATA_LCD );				--
																			--
U2 : CARACTERES_ESPECIALES_LCD4BITS_REVB PORT MAP(			--
									C1 =>C1S,  							--
									C2 =>C2S,							--
									C3 =>C3S,							--
									C4 =>C4S,							--
									C5 =>C5S,							--
									C6 =>C6S,							--
									C7 =>C7S,						   --
									C8 =>C8S,							--
									clock => clock							--
									);										--
																			--
																			--
VECTOR_MEM_S <= INSTRUCCION(DIR);	


-----
-----


	process(clock, reset)
   begin
		if reset = '1' then
			estado_presente <= s0;
		elsif (clock'event and clock='1') then
			if start='1' then
		    	estado_presente <= estado_futuro;
			else
			  estado_presente <= estado_presente;
			end if;
		end if;
  end process;
  
 ----
------


process(estado_presente)
 begin
 case estado_presente is
 when s0 =>

     estado_futuro <= s1;
   
 when s1 =>
	
     estado_futuro <= s2; 
	  
 when s2 =>

     estado_futuro <= s3;
  
 when s3 =>

     estado_futuro <= s1;
	  
 end case;
end process;
 
 -----
 -----
 
 process(estado_presente)
 begin
 case estado_presente is
 when s0 =>
 
   num_bin <= "0000000000010000";
	t <= "01010100";
	e <= "01000101";
	m <= "01001101";
	p <= "01010000";
	signo <= "00111010";
	motor1 <= 0;

 when s1 =>

   num_bin <=  "0000000000001111";
   motor1 <= 0;
	
 when s2 =>
 
   num_bin <=  "0000000000010001";
   motor1 <= 0;

 when s3 =>
 
	num_bin <=  "0000000000011111";
	r <= "01010010";
	e <= "01000101";
	g <= "01000111";
	a <= "01000001";
	r <= "01010010";
	audio <= '1';
	motor <= '1';
	motor1<= 1;

	
 end case;
end process;

----
----

INSTRUCCION(0) <= LCD_INI("00");
INSTRUCCION(1) <= BUCLE_INI(1);
INSTRUCCION(2) <= POS(1,1);
INSTRUCCION(3) <= CHAR_ASCII(t);
INSTRUCCION(4) <= POS(1,2);
INSTRUCCION(5) <= CHAR_ASCII(e);
INSTRUCCION(6) <= POS(1,3);
INSTRUCCION(7) <= CHAR_ASCII(m);
INSTRUCCION(8) <= POS(1,4);
INSTRUCCION(9) <= CHAR_ASCII(p);
INSTRUCCION(10) <= POS(1,6);
INSTRUCCION(11) <= CHAR_ASCII(signo);
INSTRUCCION(12) <= POS(1,8);
INSTRUCCION(13) <= INT_NUM(c);
INSTRUCCION(14) <= POS(1,9);
INSTRUCCION(15) <= INT_NUM(d);
INSTRUCCION(16) <= POS(1,10);
INSTRUCCION(17) <= INT_NUM(u);	

INSTRUCCION(18) <= POS(2,1);
INSTRUCCION(19) <= CHAR_ASCII(r);
INSTRUCCION(20) <= POS(2,2);
INSTRUCCION(21) <= CHAR_ASCII(e);
INSTRUCCION(22) <= POS(2,3);
INSTRUCCION(23) <= CHAR_ASCII(g);
INSTRUCCION(24) <= POS(2,4);
INSTRUCCION(25) <= CHAR_ASCII(a);
INSTRUCCION(26) <= POS(2,5);
INSTRUCCION(27) <= CHAR_ASCII(r);
INSTRUCCION(28) <= POS(2,7);
INSTRUCCION(29) <= CHAR_ASCII(signo);
INSTRUCCION(30) <= POS(2,9);
INSTRUCCION(31) <= INT_NUM(motor1);

INSTRUCCION(32) <= BUCLE_FIN(1);

	
end Behavioral;


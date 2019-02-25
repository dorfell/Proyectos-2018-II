----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:18:46 11/18/2018 
-- Design Name: 
-- Module Name:    opciones - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY opciones IS
  PORT(
      clk       : IN  STD_LOGIC;
		fila    : in unsigned(3 downto 0);
	  col     : out unsigned(3 downto 0);
     reset_n        : IN  STD_LOGIC;
		--system clock
      rw, rs, e : OUT STD_LOGIC;  --read/write, setup/data, and enable for lcd
      lcd_data  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --data signals for lcd
		 display : out std_logic_vector(3 downto 0);
		 ledfila, ledcol : out unsigned(3 downto 0);
	 sel : out std_logic_vector(6 downto 0);
	-- t: out std_logic_vector(1 downto 0);
	 enable_ev : OUT STD_LOGIC
	 );
	 
END opciones;

ARCHITECTURE behavior OF opciones IS
  SIGNAL   lcd_enable : STD_LOGIC;
  SIGNAL   lcd_bus    : STD_LOGIC_VECTOR(9 DOWNTO 0);
  SIGNAL   lcd_busy   : STD_LOGIC;
  -- SIGNAL sel    :    STD_LOGIC_VECTOR(2 DOWNTO 0);
  SIGNAL seg7    :    STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL clear     : STD_LOGIC;
  SIGNAL Tiempo : std_logic_vector(1 downto 0);
	 
  COMPONENT modulo_LCD IS
    PORT(
       clk        : IN  STD_LOGIC; --system clock
       reset_n    : IN  STD_LOGIC; --active low reinitializes lcd
       lcd_enable : IN  STD_LOGIC; --latches data into lcd controller
       lcd_bus    : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); --data and control signals
       busy       : OUT STD_LOGIC; --lcd controller busy/idle feedback
		 clear      : IN STD_LOGIC; 
       rw, rs, e  : OUT STD_LOGIC; --read/write, setup/data, and enable for lcd
       lcd_data   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
  END COMPONENT;

--	COMPONENT Temporizador
	--PORT(
		--clk : IN std_logic;          
		--Tiempo : OUT std_logic_vector(1 downto 0)
		--);
	--END COMPONENT;

	


 TYPE CONTROL IS(mensaje1, mensaje2, mensaje3, mensaje4, mensaje5, mensaje6, mensaje7, mensaje8, mensaje9
 , mensaje10, mensaje11, mensaje12, mensaje13, mensaje14, mensaje15);-- mensaje4);
  SIGNAL    state      : CONTROL;
  
--  SIGNAL   opcion     :   STD_LOGIC_VECTOR(2 DOWNTO 0);
  --CONSTANT  freq       : INTEGER := 50; --system clock frequency in MHz
	
	 
		COMPONENT top
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		fila : IN unsigned(3 downto 0);          
		col : OUT unsigned(3 downto 0);
		display : OUT std_logic_vector(3 downto 0);
		seg7 : OUT std_logic_vector(6 downto 0);
		ledfila : OUT unsigned(3 downto 0);
		ledcol : OUT unsigned(3 downto 0)
		);
	END COMPONENT;


BEGIN

	
	dut_top: top PORT MAP(
		clk => clk,
		reset => reset_n,
		fila => fila,
		col => col,
		display => display,
		seg7 => seg7,
		ledfila => ledfila,
		ledcol => ledcol
	);


  --instantiate the lcd controller
  dut2: modulo_LCD
    PORT MAP(clk => clk, reset_n => reset_n, lcd_enable => lcd_enable, lcd_bus => lcd_bus, 
             busy => lcd_busy, rw => rw, rs => rs, e => e, lcd_data => lcd_data, clear => clear);


--dut: Temporizador PORT MAP(
	--	clk => clk ,
		--Tiempo => Tiempo
	--);
	
 PROCESS(clk)
    VARIABLE char  :  INTEGER RANGE 0 TO 32 := 0;
    VARIABLE clk_count : INTEGER := 0;
    --VARIABLE tiempo : INTEGER := 0;
	 --event counter for timing
	 --VARIABLE opcion     : INTEGER := 0;
  
  BEGIN
  	 

  IF(clk'EVENT and clk = '1') THEN
    sel <= seg7;
	
	 		  
		
      CASE state IS
        
		  
		   WHEN mensaje1 =>

		enable_ev <= '0';
     
	  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		  
		    WHEN 1 => lcd_bus <= "1000100000"; -- " "
          WHEN 2 => lcd_bus <= "1001000010";  --B
			 WHEN 3 => lcd_bus <= "1001001001";  --I
			 WHEN 4 => lcd_bus <= "1001000101";--E
			 WHEN 5 => lcd_bus <= "1001001110";--N
	       WHEN 6 => lcd_bus <= "1001010110"; -- V
			 WHEN 7 => lcd_bus <= "1001000101";--E
			 WHEN 8 => lcd_bus <= "1001001110";--N
			 WHEN 9 => lcd_bus <= "1001001001";  --I
			 WHEN 10 => lcd_bus <= "1001000100";--D
			 WHEN 11 => lcd_bus <= "1001001111";--O
			 WHEN 12 => lcd_bus <= "1000100000"; -- " "
			 WHEN 13 => lcd_bus <= "1001000001"; -- a
			 WHEN 14 => lcd_bus <= "1001001100"; --l
	       WHEN 15 => lcd_bus <= "0011000000"; -- 2 fila
			 WHEN 16 => lcd_bus <= "1001000001"; --a
			 WHEN 17 => lcd_bus <= "1001010011"; -- s
			 WHEN 18 => lcd_bus <= "1001001001"; -- i
			 WHEN 19 => lcd_bus <= "1001010011"; -- s
			 WHEN 20 => lcd_bus <= "1001010100";--t
			 WHEN 21 => lcd_bus <= "1000101110";-- .
			 WHEN 22 => lcd_bus <= "1000100000"; -- " "
			 WHEN 23 => lcd_bus <= "1001000100"; --d
			 WHEN 24 => lcd_bus <= "1001000101"; --e
			 WHEN 25 => lcd_bus <= "1000100000"; -- " "
			 WHEN 26 => lcd_bus <= "1001000100"; --d 
			 WHEN 27 => lcd_bus <= "1001010101"; --u
			 WHEN 28 => lcd_bus <= "1001000011"; -- c
			 WHEN 29 => lcd_bus <= "1001001000"; -- h
			 WHEN 30 => lcd_bus <= "1001000001"; -- a

			 
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;

		  
		  ELSE
       lcd_enable <= '0';
		--  t <= "00";
--		  state <= mensaje1;
		  
		END IF;
		IF (clk_count < 50000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje1;
		ELSE
		clk_count:= 0;
		--clear <= '1';
		state <= mensaje2;
		END IF;
		
		
        --wait 50 ms to ensure Vdd has risen and required LCD wait is met
WHEN mensaje2 =>
		
     --     IF(sel = "000" ) THEN			--wait 50 ms
       IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
		 -- clear <= '0';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
          WHEN 1 => lcd_bus <= "1000110001"; --1
			 WHEN 2 => lcd_bus <= "1001011111";  --_
			 WHEN 3 => lcd_bus <= "1001000011"; --c
			 WHEN 4 => lcd_bus <= "1001001001"; --i
			 WHEN 5 => lcd_bus <= "1001000101";  --e
			 WHEN 6 => lcd_bus <= "1001010010";  --r 
			 WHEN 7 => lcd_bus <= "1001010010";--r
			 WHEN 8 => lcd_bus <= "1001000101";--e
			 WHEN 9 => lcd_bus <= "1000100000"; -- " "
			 WHEN 11 => lcd_bus <= "1001000001"; -- a
			 WHEN 12 => lcd_bus <= "1001010101"; --u
			 WHEN 13 => lcd_bus <= "1001010100";--t
			 WHEN 14 => lcd_bus <= "1000101110";-- .
			 WHEN 15 => lcd_bus <= "0011000000"; -- 2 fila
			 WHEN 16 => lcd_bus <= "1000110010"; --2
			 WHEN 17 => lcd_bus <= "1001011111"; --_
			 WHEN 18=> lcd_bus <= "1001000011"; -- c
			 WHEN 19 => lcd_bus <= "1001001001"; -- i
			 WHEN 20 => lcd_bus <= "1001000101"; --e
			 WHEN 21 => lcd_bus <= "1001010010";--r
			 WHEN 22 => lcd_bus <= "1001010010";--r
			 WHEN 23 => lcd_bus <= "1001000101"; --e
			 WHEN 24 => lcd_bus <= "1000100000"; -- " "
			 WHEN 25 => lcd_bus <= "1001001101"; --m
			 WHEN 26 => lcd_bus <= "1001000001"; --a
			 WHEN 27 => lcd_bus <= "1001001110"; --n
			 WHEN 28 => lcd_bus <= "1001010101"; --u
			 WHEN 29 => lcd_bus <= "1001000001"; --a
			 WHEN 30 => lcd_bus <= "1001001100"; --l
			 
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;

		  
		  ELSE
       lcd_enable <= '0';
		--  t <= "00";
--		  state <= mensaje1;
		  
		END IF;
		
    --END IF;
		
		
		


WHEN mensaje3 =>

   
		
		
       IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
		--  char :=0;
		--  clear <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
          
         
			 WHEN 1 => lcd_bus <= "1001000100"; --d 
			 WHEN 2 => lcd_bus <= "1001010101"; --u
			 WHEN 3 => lcd_bus <= "1001010010";  --r
          WHEN 4 => lcd_bus <= "1001000001"; -- a			 
			 WHEN 5 => lcd_bus <= "1001000011"; --c 
			 WHEN 6 => lcd_bus <= "1001001001"; --i
			 WHEN 7 => lcd_bus <= "1001001111"; --o
			 WHEN 8 => lcd_bus <= "1001001110"; --n
			 WHEN 9 => lcd_bus <= "1000100000"; -- " "
			 WHEN 10 => lcd_bus <= "1001000100"; --d 
			 WHEN 11 => lcd_bus <= "1001010101"; --u
			 WHEN 12 => lcd_bus <= "1001000011"; -- c
			 WHEN 13 => lcd_bus <= "1001001000"; -- h
			 WHEN 14 => lcd_bus <= "1001000001"; -- a
			 
			 WHEN 15 => lcd_bus <= "0011000000"; -- 2 fila
			 
			 WHEN 16 => lcd_bus <= "1000110011"; --3
			 WHEN 17 => lcd_bus <= "1000101110";-- .
			 WHEN 18 => lcd_bus <= "1001001100"; --l
			 WHEN 19 => lcd_bus <= "1001000001"; --a
			 WHEN 20 => lcd_bus <= "1001010010";  --r
			 WHEN 21 => lcd_bus <= "1001000111"; --g
			 WHEN 22 => lcd_bus <= "1001000001"; --a
			 WHEN 23 => lcd_bus <= "1000100000"; -- " "
			 WHEN 24 => lcd_bus <= "1000100000"; -- " "
			 WHEN 25 => lcd_bus <= "1000110100"; --4
          WHEN 26 => lcd_bus <= "1000101110";-- .
   		 WHEN 27 => lcd_bus <= "1001000011"; -- c
			 WHEN 28=> lcd_bus <= "1001001111"; --o
			 WHEN 29 => lcd_bus <= "1001010010";  --r
			 WHEN 30 => lcd_bus <= "1001010100";--t
			 WHEN 31 => lcd_bus <= "1001000001"; -- a
			 

        
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      
  
	  
		
		ELSE
        lcd_enable <= '0';
		    
 
		END IF;
		IF (clk_count < 50000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje3;
		ELSE
		clk_count:= 0;
		state <= mensaje4;
		END IF;
		
   
--IF(seg7 = "0110000") THEN --larga
  --        t <= "10";
	--		 state <= mensaje4;
	--ELSIF (seg7 = "0011001") THEN  --corta
     --     t <= "01";	
		--	 state <= mensaje4;
--	ELSE
	--	state <= mensaje2;
	--END IF;		
		
WHEN mensaje4 =>

  -- IF(seg7 = "0010010") THEN --recomendada
    --      t <= "10";
		--	 state <= mensaje4;
	--ELSE
		--state <= mensaje3;
	--END IF;
	
  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		  
		    WHEN 1 => lcd_bus <= "1000110101"; --5
          WHEN 2 => lcd_bus <= "1000101110";-- .
      	 WHEN 3 => lcd_bus <= "1001010010";  --r
          WHEN 4 => lcd_bus <= "1001000101"; --e
          WHEN 5 => lcd_bus <= "1001000011"; --c 
			 WHEN 6 => lcd_bus <= "1001001111"; --o
          WHEN 7 => lcd_bus <= "1001001101"; --m
			 WHEN 8 => lcd_bus <= "1001000101"; --e
			 WHEN 9 => lcd_bus <= "1001001110"; --n
          WHEN 10 => lcd_bus <= "1001000100"; --d
          WHEN 11 => lcd_bus <= "1001000001"; -- a
          WHEN 12 => lcd_bus <= "1001000100"; --d
          WHEN 13 => lcd_bus <= "1001000001"; -- a
			
      	 WHEN 14 => lcd_bus <= "0011000000"; -- 2 fila
			 
          WHEN 15 => lcd_bus <= "1000110110"; --6
          WHEN 16 => lcd_bus <= "1000101110";-- .
          WHEN 17 => lcd_bus <= "1001010100";--t
          WHEN 18=> lcd_bus <= "1001001001"; --i
          WHEN 19 => lcd_bus <= "1001000101"; --e
			 WHEN 20 => lcd_bus <= "1001001101"; --m 
			 WHEN 21 => lcd_bus <= "1001010000"; --p
          WHEN 22=> lcd_bus <= "1001001111"; --o			 
			 WHEN 23=> lcd_bus <= "1000100000"; -- " "
			 WHEN 24 => lcd_bus <= "1001001100"; --l
			 WHEN 25=> lcd_bus <= "1001001001"; --i
			 WHEN 26=> lcd_bus <= "1001000010"; -- b
			 WHEN 27=> lcd_bus <= "1001010010";  --r
			 WHEN 28 => lcd_bus <= "1001000101"; --e
			 
			 
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;


  ELSE
        lcd_enable <= '0';
  --        t <= "00";
		END IF;
    
			 
WHEN mensaje5 => --corta

 enable_ev <= '1';

  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
  --
        lcd_enable <= '1';
		--  char :=0;
		--  clear <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		  
		    WHEN 1 => lcd_bus <= "1001001100"; --l
			 WHEN 2 => lcd_bus <= "1001000001"; -- a
          WHEN 3 => lcd_bus <= "1001010110"; --v
          WHEN 4 => lcd_bus <= "1001000001"; -- a
          WHEN 5 => lcd_bus <= "1001000100"; --d
			 WHEN 6 => lcd_bus <= "1001001111"; --o
			 WHEN 7=> lcd_bus <= "1000100000"; -- " "
			 WHEN 8=> lcd_bus <= "1001001001"; --i
      	 WHEN 9 => lcd_bus <= "1001001110"; --n
			 WHEN 10=> lcd_bus <= "1001001001"; --i
			 WHEN 11=> lcd_bus <= "1001000011"; --c 
			 WHEN 12=> lcd_bus <= "1001001001"; --i
			 WHEN 13 => lcd_bus <= "1001000001"; -- a
			 WHEN 14 => lcd_bus <= "1001001100"; --l
			 

          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
  --      char := 0;
		 -- state <= mensaje2;
		
		END IF;
		
		IF (clk_count < 350000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje5;
		ELSE
		clk_count:= 0;
	--	clear <= '1';
	enable_ev <= '0';
		state <= mensaje8;
		END IF;
		--IF (Tiempo <= "01") THEN
	   --state <= mensaje5;
		--END IF;
		
		
--		IF (clk_count < (50000000*5)) THEN
	--	 clk_count := clk_count + 1;
		-- state <= mensaje4;
		--ELSE
		--clk_count :=0;
		--state <= mensaje5;
	--	END IF;
		
		WHEN mensaje6 => --larga

enable_ev <= '1';

  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
  
        lcd_enable <= '1';
		--  char :=0;
		--  clear <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		  
		    WHEN 1 => lcd_bus <= "1001001100"; --l
			 WHEN 2 => lcd_bus <= "1001000001"; -- a
          WHEN 3 => lcd_bus <= "1001010110"; --v
          WHEN 4 => lcd_bus <= "1001000001"; -- a
          WHEN 5 => lcd_bus <= "1001000100"; --d
			 WHEN 6 => lcd_bus <= "1001001111"; --o
			 WHEN 7=> lcd_bus <= "1000100000"; -- " "
			 WHEN 8=> lcd_bus <= "1001001001"; --i
      	 WHEN 9 => lcd_bus <= "1001001110"; --n
			 WHEN 10=> lcd_bus <= "1001001001"; --i
			 WHEN 11=> lcd_bus <= "1001000011"; --c 
			 WHEN 12=> lcd_bus <= "1001001001"; --i
			 WHEN 13 => lcd_bus <= "1001000001"; -- a
			 WHEN 14 => lcd_bus <= "1001001100"; --l
			 

          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
  --      char := 0;
		 -- state <= mensaje2;
		
		END IF;
		
		IF (clk_count < 550000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje6;
		ELSE
		clk_count:= 0;
		state <= mensaje9;
		END IF;
		--IF (Tiempo <= "01") THEN
	   --state <= mensaje5;
		--END IF;
		
		
--		IF (clk_count < (50000000*5)) THEN
	--	 clk_count := clk_count + 1;
		-- state <= mensaje4;
		--ELSE
		--clk_count :=0;
		--state <= mensaje5;
	--	END IF;
		
WHEN mensaje7 => --recomendada

  enable_ev <= '1';

  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
  
        lcd_enable <= '1';
		--  char :=0;
		--  clear <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		  
		    WHEN 1 => lcd_bus <= "1001001100"; --l
			 WHEN 2 => lcd_bus <= "1001000001"; -- a
          WHEN 3 => lcd_bus <= "1001010110"; --v
          WHEN 4 => lcd_bus <= "1001000001"; -- a
          WHEN 5 => lcd_bus <= "1001000100"; --d
			 WHEN 6 => lcd_bus <= "1001001111"; --o
			 WHEN 7=> lcd_bus <= "1000100000"; -- " "
			 WHEN 8=> lcd_bus <= "1001001001"; --i
      	 WHEN 9 => lcd_bus <= "1001001110"; --n
			 WHEN 10=> lcd_bus <= "1001001001"; --i
			 WHEN 11=> lcd_bus <= "1001000011"; --c 
			 WHEN 12=> lcd_bus <= "1001001001"; --i
			 WHEN 13 => lcd_bus <= "1001000001"; -- a
			 WHEN 14 => lcd_bus <= "1001001100"; --l
			 

          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
  --      char := 0;
		 -- state <= mensaje2;
		
		END IF;
		
		IF (clk_count < 450000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje7;
		ELSE
		clk_count:= 0;
		state <= mensaje10;
		END IF;
		--IF (Tiempo <= "01") THEN
	   --state <= mensaje5;
		--END IF;
		
		
--		IF (clk_count < (50000000*5)) THEN
	--	 clk_count := clk_count + 1;
		-- state <= mensaje4;
		--ELSE
		--clk_count :=0;
		--state <= mensaje5;
	--	END IF;
		
		
WHEN mensaje8 =>  --corta
 --IF (clear = '1') THEN 
 --clear <= '0';
 --END IF;
 enable_ev <= '0';
 
 
  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
	     
        IF(char < 32) THEN
          char := char + 1;
			-- clear <= '0';
        END IF;
        CASE char IS
		  
		    
			 WHEN 1 => lcd_bus <= "1001000001"; -- a
          WHEN 2 => lcd_bus <= "1001010000"; --p
			 WHEN 3 => lcd_bus <= "1001001100"; --l
			 WHEN 4 => lcd_bus <= "1001001001"; --i
			 WHEN 5=> lcd_bus <= "1001000011"; --c
          WHEN 6 => lcd_bus <= "1001000001"; -- a
			 WHEN 7=> lcd_bus <= "1001010010";  --r
			 WHEN 8=> lcd_bus <= "1000100000"; -- " "
			 WHEN 9 => lcd_bus <= "1001010011"; -- s
			 WHEN 10 => lcd_bus <= "1001001000"; -- h
			 WHEN 11 => lcd_bus <= "1001000001"; -- a
			 WHEN 12 => lcd_bus <= "1001001101"; --m 
			 WHEN 13 => lcd_bus <= "1001010000"; --p
          WHEN 14=> lcd_bus <= "1001001111"; --o
			 WHEN 15=> lcd_bus <= "1001001111"; --o
			 
			 WHEN 16 => lcd_bus <= "0011000000"; -- 2 fila
			 
			 WHEN 17 => lcd_bus <= "1001011001";--y
			 WHEN 18=> lcd_bus <= "1000100000"; -- " "
          WHEN 19 => lcd_bus <= "1001000101"; --e
			 WHEN 20=> lcd_bus <= "1001001110"; --n
			 WHEN 21 => lcd_bus <= "1001001010"; -- j	
          WHEN 22 => lcd_bus <= "1001000001"; -- a	
          WHEN 23=> lcd_bus <= "1001000010"; -- b			 
			 WHEN 24=> lcd_bus <= "1001001111"; --o
			 WHEN 25=> lcd_bus <= "1001001110"; --n
			 WHEN 26 => lcd_bus <= "1001000001"; -- a
			 WHEN 27=> lcd_bus <= "1001010010";  --r
			 
			 
			
  
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
--		  	IF (Tiempo <= "10") THEN
	--   state <= mensaje6;
		--END IF;
 

 -- state <= mensaje2;
	--	 	IF (clk_count<(50000000*5)) THEN
		-- clk_count := clk_count + 1;
		--state <= mensaje5;
		--ELSE
		--state <= mensaje6;
		--clk_count :=0;
		--END IF;
		END IF;

      IF (clk_count < 450000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje8;
		ELSE
		clk_count:= 0;
	--	clear <= '1';
		state <= mensaje11;
		END IF;	
			 
WHEN mensaje9 =>  --larga
 
 enable_ev <= '0';
 
  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
	
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		  
		    
			 WHEN 1 => lcd_bus <= "1001000001"; -- a
          WHEN 2 => lcd_bus <= "1001010000"; --p
			 WHEN 3 => lcd_bus <= "1001001100"; --l
			 WHEN 4 => lcd_bus <= "1001001001"; --i
			 WHEN 5=> lcd_bus <= "1001000011"; --c
          WHEN 6 => lcd_bus <= "1001000001"; -- a
			 WHEN 7=> lcd_bus <= "1001010010";  --r
			 WHEN 8=> lcd_bus <= "1000100000"; -- " "
			 WHEN 9 => lcd_bus <= "1001010011"; -- s
			 WHEN 10 => lcd_bus <= "1001001000"; -- h
			 WHEN 11 => lcd_bus <= "1001000001"; -- a
			 WHEN 12 => lcd_bus <= "1001001101"; --m 
			 WHEN 13 => lcd_bus <= "1001010000"; --p
          WHEN 14=> lcd_bus <= "1001001111"; --o
			 WHEN 15=> lcd_bus <= "1001001111"; --o
			 
			 WHEN 16 => lcd_bus <= "0011000000"; -- 2 fila
			 
			 WHEN 17 => lcd_bus <= "1001011001";--y
			 WHEN 18=> lcd_bus <= "1000100000"; -- " "
          WHEN 19 => lcd_bus <= "1001000101"; --e
			 WHEN 20=> lcd_bus <= "1001001110"; --n
			 WHEN 21 => lcd_bus <= "1001001010"; -- j	
          WHEN 22 => lcd_bus <= "1001000001"; -- a	
          WHEN 23=> lcd_bus <= "1001000010"; -- b			 
			 WHEN 24=> lcd_bus <= "1001001111"; --o
			 WHEN 25=> lcd_bus <= "1001001110"; --n
			 WHEN 26 => lcd_bus <= "1001000001"; -- a
			 WHEN 27=> lcd_bus <= "1001010010";  --r
			 
			 
			
  
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
		END IF;

      IF (clk_count < 650000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje9;
		ELSE
		clk_count:= 0;
		state <= mensaje12;
		END IF;	
			 
WHEN mensaje10 =>  --Recomendada
 
 enable_ev <= '0';
 
  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
	
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		  
		    
			 WHEN 1 => lcd_bus <= "1001000001"; -- a
          WHEN 2 => lcd_bus <= "1001010000"; --p
			 WHEN 3 => lcd_bus <= "1001001100"; --l
			 WHEN 4 => lcd_bus <= "1001001001"; --i
			 WHEN 5=> lcd_bus <= "1001000011"; --c
          WHEN 6 => lcd_bus <= "1001000001"; -- a
			 WHEN 7=> lcd_bus <= "1001010010";  --r
			 WHEN 8=> lcd_bus <= "1000100000"; -- " "
			 WHEN 9 => lcd_bus <= "1001010011"; -- s
			 WHEN 10 => lcd_bus <= "1001001000"; -- h
			 WHEN 11 => lcd_bus <= "1001000001"; -- a
			 WHEN 12 => lcd_bus <= "1001001101"; --m 
			 WHEN 13 => lcd_bus <= "1001010000"; --p
          WHEN 14=> lcd_bus <= "1001001111"; --o
			 WHEN 15=> lcd_bus <= "1001001111"; --o
			 
			 WHEN 16 => lcd_bus <= "0011000000"; -- 2 fila
			 
			 WHEN 17 => lcd_bus <= "1001011001";--y
			 WHEN 18=> lcd_bus <= "1000100000"; -- " "
          WHEN 19 => lcd_bus <= "1001000101"; --e
			 WHEN 20=> lcd_bus <= "1001001110"; --n
			 WHEN 21 => lcd_bus <= "1001001010"; -- j	
          WHEN 22 => lcd_bus <= "1001000001"; -- a	
          WHEN 23=> lcd_bus <= "1001000010"; -- b			 
			 WHEN 24=> lcd_bus <= "1001001111"; --o
			 WHEN 25=> lcd_bus <= "1001001110"; --n
			 WHEN 26 => lcd_bus <= "1001000001"; -- a
			 WHEN 27=> lcd_bus <= "1001010010";  --r
			 
			 
			
  
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
--		  	IF (Tiempo <= "10") THEN
	--   state <= mensaje6;
		--END IF;
 

 -- state <= mensaje2;
	--	 	IF (clk_count<(50000000*5)) THEN
		-- clk_count := clk_count + 1;
		--state <= mensaje5;
		--ELSE
		--state <= mensaje6;
		--clk_count :=0;
		--END IF;
		END IF;

      IF (clk_count < 550000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje10;
		ELSE
		clk_count:= 0;
		state <= mensaje13;
		END IF;	
			 
WHEN mensaje11 =>  --corta
-- IF(sel = "001" ) THEN			--wait 50 ms
 -- clk_count := clk_count + 1;  
 enable_ev <= '1';
  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
		--  char :=0;
		--  clear <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		   
          WHEN 1 => lcd_bus <= "1001000101"; --e
			 WHEN 2=> lcd_bus <= "1001001110"; --n
			 WHEN 3 => lcd_bus <= "1001001010"; -- j
			 WHEN 4 => lcd_bus <= "1001010101"; --u
			 WHEN 5 => lcd_bus <= "1001000001"; -- a
			 WHEN 6 => lcd_bus <= "1001000111"; --g
			 WHEN 7 => lcd_bus <= "1001010101"; --u
			 WHEN 8 => lcd_bus <= "1001000101"; --e
			 WHEN 9=> lcd_bus <= "1000100000"; --" "
			 WHEN 10=> lcd_bus <= "1001000110"; --f
			 WHEN 11=> lcd_bus <= "1001001001"; --i
			 WHEN 12=> lcd_bus <= "1001001110"; --n
			 WHEN 13=> lcd_bus <= "1001000001"; --a
			 WHEN 14=> lcd_bus <= "1001001100"; --l
			 
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
	
	--	  IF (Tiempo <= "11") THEN
	 --  state <= mensaje7;
	--	END IF;
  --      char := 0;
	
	-- state <= mensaje2;
		END IF;
			IF (clk_count < 350000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje11;
		ELSE
		clk_count:= 0;
		state <= mensaje14;
		END IF;	
		
WHEN mensaje12 =>  --Larga
-- IF(sel = "001" ) THEN			--wait 50 ms
 -- clk_count := clk_count + 1;  
   enable_ev <= '1';
  
  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
		--  char :=0;
		--  clear <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		   
          WHEN 1 => lcd_bus <= "1001000101"; --e
			 WHEN 2=> lcd_bus <= "1001001110"; --n
			 WHEN 3 => lcd_bus <= "1001001010"; -- j
			 WHEN 4 => lcd_bus <= "1001010101"; --u
			 WHEN 5 => lcd_bus <= "1001000001"; -- a
			 WHEN 6 => lcd_bus <= "1001000111"; --g
			 WHEN 7 => lcd_bus <= "1001010101"; --u
			 WHEN 8 => lcd_bus <= "1001000101"; --e
			 WHEN 9=> lcd_bus <= "1000100000"; --" "
			 WHEN 10=> lcd_bus <= "1001000110"; --f
			 WHEN 11=> lcd_bus <= "1001001001"; --i
			 WHEN 12=> lcd_bus <= "1001001110"; --n
			 WHEN 13=> lcd_bus <= "1001000001"; --a
			 WHEN 14=> lcd_bus <= "1001001100"; --l
			 
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
	
	--	  IF (Tiempo <= "11") THEN
	 --  state <= mensaje7;
	--	END IF;
  --      char := 0;
	
	-- state <= mensaje2;
		END IF;
			IF (clk_count < 550000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje12;
		ELSE
		clk_count:= 0;
		state <= mensaje14;
		END IF;	

WHEN mensaje13 =>  --Recomendada
-- IF(sel = "001" ) THEN			--wait 50 ms
 -- clk_count := clk_count + 1;  
   enable_ev <= '1';
	
  IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
		--  char :=0;
		--  clear <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
		   
          WHEN 1 => lcd_bus <= "1001000101"; --e
			 WHEN 2=> lcd_bus <= "1001001110"; --n
			 WHEN 3 => lcd_bus <= "1001001010"; -- j
			 WHEN 4 => lcd_bus <= "1001010101"; --u
			 WHEN 5 => lcd_bus <= "1001000001"; -- a
			 WHEN 6 => lcd_bus <= "1001000111"; --g
			 WHEN 7 => lcd_bus <= "1001010101"; --u
			 WHEN 8 => lcd_bus <= "1001000101"; --e
			 WHEN 9=> lcd_bus <= "1000100000"; --" "
			 WHEN 10=> lcd_bus <= "1001000110"; --f
			 WHEN 11=> lcd_bus <= "1001001001"; --i
			 WHEN 12=> lcd_bus <= "1001001110"; --n
			 WHEN 13=> lcd_bus <= "1001000001"; --a
			 WHEN 14=> lcd_bus <= "1001001100"; --l
			 
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
	
	--	  IF (Tiempo <= "11") THEN
	 --  state <= mensaje7;
	--	END IF;
  --      char := 0;
	
	-- state <= mensaje2;
		END IF;
		
		IF (clk_count < 450000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje13;
		ELSE
		clk_count:= 0;
		state <= mensaje14;
		END IF;	



WHEN mensaje14 =>

       enable_ev <= '0';
	
	IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
	
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
          
         
			 
			 WHEN 1 => lcd_bus <= "1000100000"; -- " "
			 WHEN 2 => lcd_bus <= "1000100000"; -- " "
			 WHEN 3 => lcd_bus <= "1000100000"; -- " "
			 WHEN 4 => lcd_bus <= "1000100000"; -- " "
			 WHEN 5 => lcd_bus <= "1000100000"; -- " "
			 WHEN 6 => lcd_bus <= "1001000100"; --d 
			 WHEN 7 => lcd_bus <= "1001010101"; --u
			 WHEN 8 => lcd_bus <= "1001000011"; -- c
			 WHEN 9 => lcd_bus <= "1001001000"; -- h
			 WHEN 10 => lcd_bus <= "1001000001"; -- a
			 WHEN 11 => lcd_bus <= "0011000000"; -- 2 fila
			 WHEN 12 => lcd_bus <= "1000100000"; -- " "
			 WHEN 13 => lcd_bus <= "1000100000"; -- " "
			 WHEN 14 => lcd_bus <= "1000100000"; -- " "
			 WHEN 15 => lcd_bus <= "1001000011"; -- c
			 WHEN 16 => lcd_bus <= "1001001111"; --o
			 WHEN 17 => lcd_bus <= "1001001110"; --n
			 WHEN 18 => lcd_bus <= "1001000011"; -- c
			 WHEN 19 => lcd_bus <= "1001001100"; --l
			 WHEN 20 => lcd_bus <= "1001010101"; --u
			 WHEN 21 => lcd_bus <= "1001001001"; --i
			 WHEN 22 => lcd_bus <= "1001000100"; --d
			 WHEN 23 => lcd_bus <= "1001000001"; --a
			 
        
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0'; 
		 -- enable_ev <= '0';
		END IF;	
      
		IF (clk_count < 350000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje14;
		ELSE
		clk_count:= 0;
		state <= mensaje1;
		END IF;	


			
WHEN mensaje15 =>
-- IF(sel = "001" ) THEN			--wait 50 ms
--clk_count := clk_count + 1; 
       enable_ev <= '1';
      
       IF(lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
		--  char :=0;
		--  clear <= '1';
        IF(char < 32) THEN
          char := char + 1;
        END IF;
        CASE char IS
          
         
			 
		--	 WHEN 1 => lcd_bus <= "1000100000"; -- " "
		--	 WHEN 2 => lcd_bus <= "1001000011"; -- c
		--	 WHEN 3 => lcd_bus <= "1001001111"; --o
		--	 WHEN 4 => lcd_bus <= "1001001110"; --n
		--	 WHEN 5 => lcd_bus <= "1001010100";--t
		--	 WHEN 6 => lcd_bus <= "1001000001"; -- a
		--	 WHEN 7 => lcd_bus <= "1001000010"; -- b
		--	 WHEN 8 => lcd_bus <= "1001001001"; --i
		--	 WHEN 9 => lcd_bus <= "1001001100"; --l
		--	 WHEN 10 => lcd_bus <= "1001001001"; --i
		--	 WHEN 11 => lcd_bus <= "1001011010";--z
		 --   WHEN 12 => lcd_bus <= "1001000001"; --a   
		--	 WHEN 13 => lcd_bus <= "1001001110"; --n
		--	 WHEN 14 => lcd_bus <= "1001000100"; --d
		--	 WHEN 15 => lcd_bus <= "1001001111"; --o
			 
          WHEN 1 => lcd_bus <= "1000100000"; -- " "
			 WHEN 2 => lcd_bus <= "1000100000"; -- " "
			 WHEN 3 => lcd_bus <= "1000100000"; -- " "
			 WHEN 4 => lcd_bus <= "1001010100";--t
          WHEN 5 => lcd_bus <= "1001001001"; --i
          WHEN 6 => lcd_bus <= "1001000101"; --e
			 WHEN 7 => lcd_bus <= "1001001101"; --m 
			 WHEN 8 => lcd_bus <= "1001010000"; --p
          WHEN 9=> lcd_bus <= "1001001111"; --o
			 WHEN 10 => lcd_bus <= "1000100000"; -- " "
			 WHEN 11 => lcd_bus <= "1001000100"; --d
			 WHEN 12 => lcd_bus <= "1001000101"; --e
			 WHEN 13 => lcd_bus <= "0011000000"; -- 2 fila
			 WHEN 14 => lcd_bus <= "1000100000"; -- " "
			 WHEN 15 => lcd_bus <= "1000100000"; -- " "
			 WHEN 16 => lcd_bus <= "1001000100"; --d 
			 WHEN 17 => lcd_bus <= "1001010101"; --u
			 WHEN 18 => lcd_bus <= "1001000011"; -- c
			 WHEN 19 => lcd_bus <= "1001001000"; -- h
			 WHEN 20 => lcd_bus <= "1001000001"; -- a
			 WHEN 21 => lcd_bus <= "1000111010"; -- :
			 WHEN 22 => lcd_bus <= "1000100000"; -- " "
			 WHEN 23 => lcd_bus <= "1001001100"; --l
			 WHEN 24=> lcd_bus <= "1001001001"; --i
			 WHEN 25=> lcd_bus <= "1001000010"; -- b
			 WHEN 26=> lcd_bus <= "1001010010";  --r
			 WHEN 27 => lcd_bus <= "1001000101"; --e
        
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
     		END IF;	
IF (clk_count < 50000000) THEN
		clk_count:= clk_count + 1;
		state <= mensaje15;
		ELSE
		clk_count:= 0;
		state <= mensaje14;
		END IF;
			
			 END CASE; 
			 
			 
			 
			 
			 
			 END IF;
	
       IF(reset_n = '1') THEN
          char := 0;
      END IF;
		
		IF(clear = '1') THEN
          char := 0;
      END IF;
		
		IF(seg7 = "0000110") THEN         
			 state <= mensaje1;
      END IF;
		
		IF(seg7 = "1111001") THEN         
	
			 state <= mensaje3;
      END IF;
		
		 IF(seg7 = "0100100") THEN
         
         		
			state <= mensaje3;
     END IF;
	  
	   IF(seg7 = "0110000") THEN --larga
         -- t <= "10";
			
			state <= mensaje6;
     END IF;
	  
	   IF(seg7 = "0011001") THEN  -- corta
        -- t <= "01";    
		
			state <= mensaje5;
     END IF;
		 
     IF(seg7 = "0010010") THEN -- recomendada
        -- t <= "11";
        
			state <= mensaje7;
     END IF;
	  
	  
	  
	  --IF(seg7 = "0000010") THEN -- tiempo libre   
		--	state <= mensaje15;
    -- END IF;
	  
	  --IF(seg7 = "0100001") THEN -- concluir  D
		--	state <= mensaje14;
    -- END IF;
	  
	--  IF(seg7 = "0000110") THEN -- otro       #
		--	state <= mensaje4;
     --END IF;
	  
	  
	  
 --    IF(tiempo /= 0) THEN
  --state <= mensaje5;	  
   --  END IF;
	  
  END PROCESS;
END behavior;

----------------------------------------------------------------------------------
-- Company:        Universidad Nacional de Colombia
-- Engineer:       Nataly Caballero - Jorge Prada
-- 
-- Create Date:    15:17:28 10/19/2018 
-- Design Name: 	 
-- Module Name:    TOP - Behavioral 
-- Project Name:   Proyecto- Electrónica digital
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TOP is
Port( 
		clk          : in std_logic;
		reset        : inout std_logic; 
		rst          : inout std_logic;
		enter		    : in std_logic;
		serial       : in std_logic_vector(2 downto 0);
		fila         : in unsigned(3 downto 0);
		col          : out unsigned(3 downto 0);
		ledestado    : out std_logic_vector(1 downto 0);
		serialed     : out std_logic_vector(2 downto 0);
		ledaviso     : out std_logic;
		bip          : out std_logic;
		led          : out std_logic_vector(3 downto 0);
		PWM          : out std_logic;	
		lcd_e        : out std_logic;
		lcd_rs       : out std_logic;
		lcd_rw       : out std_logic;
		lcd_db       : out std_logic_vector(7 downto 0)
	  );
end TOP;

architecture Behavioral of TOP is

	COMPONENT ClaveTeclado
	PORT(
		clk : IN std_logic;
		enter	: IN std_logic;
		tecla1 : IN unsigned(3 downto 0);
		tecla2 : IN unsigned(3 downto 0);
		tecla3 : IN unsigned(3 downto 0);
		tecla4 : IN unsigned(3 downto 0);
		guardando : IN std_logic;
		serial    : in std_logic_vector(2 downto 0);
		serialed : out std_logic_vector(2 downto 0);
		H1 : IN STD_LOGIC_VECTOR(3 downto 0);
	   H0 : IN STD_LOGIC_VECTOR(3 downto 0);
		M1 : IN std_logic_vector(3 downto 0);
		M0 : IN std_logic_vector(3 downto 0);
		S1 : IN std_logic_vector(3 downto 0);
		S0 : IN std_logic_vector(3 downto 0);    
		texto   : OUT std_logic;
		ocupado : OUT std_logic;
		limite : OUT std_logic_vector(15 downto 0);
		prof : OUT std_logic_vector(2 downto 0);
		motor : OUT std_logic;
		acceso : OUT std_logic;
		ledestado : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Puerta
	PORT(
		clk : IN std_logic;
		selector : IN std_logic;          
		PWM : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Teclado
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		fila : IN unsigned(3 downto 0);
		bip  : OUT std_logic;
		guardando : out std_logic;
		contecla : out std_logic_vector (1 downto 0);
		tecla1 : INOUT unsigned(3 downto 0);
		tecla2 : INOUT unsigned(3 downto 0);
		tecla3 : INOUT unsigned(3 downto 0);
		tecla4 : INOUT unsigned(3 downto 0);      
		col : OUT unsigned(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT LCDControllerTop
	PORT(
		clk : IN std_logic;
		rst : INOUT std_logic;
		guardando : IN std_logic;
		texto : IN std_logic;
		tecla1 : INOUT unsigned(3 downto 0);
		tecla2 : INOUT unsigned(3 downto 0);
		tecla3 : INOUT unsigned(3 downto 0);
		tecla4 : INOUT unsigned(3 downto 0);
		acceso : IN std_logic;
		contecla : IN std_logic_vector (1 downto 0);
		H1 : IN STD_LOGIC_VECTOR(3 downto 0);
	   H0 : IN STD_LOGIC_VECTOR(3 downto 0);
		M1 : IN std_logic_vector(3 downto 0);
		M0 : IN std_logic_vector(3 downto 0);
		S1 : IN std_logic_vector(3 downto 0);
		S0 : IN std_logic_vector(3 downto 0); 
		prof : IN std_logic_vector(2 downto 0);         
		lcd_e : OUT std_logic;
		lcd_rs : OUT std_logic;
		lcd_rw : OUT std_logic;
		lcd_db : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ClockTop
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
	   H1 : out STD_LOGIC_VECTOR(3 downto 0);
	   H0 : out STD_LOGIC_VECTOR(3 downto 0);
		M1 : OUT std_logic_vector(3 downto 0);
		M0 : OUT std_logic_vector(3 downto 0);
		S1 : OUT std_logic_vector(3 downto 0);
		S0 : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Salida
	PORT(
		clk : IN std_logic;
		ocupado : IN std_logic;
		limite : IN std_logic_vector(15 downto 0);
		M1 : IN std_logic_vector(3 downto 0);
		M0 : IN std_logic_vector(3 downto 0);
		S1 : IN std_logic_vector(3 downto 0);
		S0 : IN std_logic_vector(3 downto 0);          
		led : OUT std_logic_vector(3 downto 0);
		bip_salida : OUT std_logic;
		ledaviso : OUT std_logic
		);
	END COMPONENT;
	
	signal password : unsigned(15 downto 0);
	signal con_ocupado : std_logic;
	signal con_limite : std_logic_vector(15 downto 0);
	signal con_motor : std_logic;
	signal con_h1 : std_logic_vector(3 downto 0);
	signal con_h0 : std_logic_vector(3 downto 0);
	signal con_m1 : std_logic_vector(3 downto 0);
	signal con_m0 : std_logic_vector(3 downto 0);
	signal con_s1 : std_logic_vector(3 downto 0);
	signal con_s0 : std_logic_vector(3 downto 0);
	signal con_tecla1 : unsigned(3 downto 0);
	signal con_tecla2 : unsigned(3 downto 0);
	signal con_tecla3 : unsigned(3 downto 0);
	signal con_tecla4 : unsigned(3 downto 0);
	signal con_texto  : std_logic;
	signal con_guardando : std_logic;
	signal con_acceso : std_logic;
	signal con_prof : std_logic_vector(2 downto 0);
	signal con_contecla : std_logic_vector (1 downto 0);
	signal multibip1 : std_logic;
	signal multibip2 : std_logic;
	
begin

	Inst_ClaveTeclado: ClaveTeclado PORT MAP(
		clk => clk,
		serial => serial,
		serialed => serialed,
		tecla1 => con_tecla1,
		tecla2 => con_tecla2,
		tecla3 => con_tecla3,
		tecla4 => con_tecla4,
		ocupado => con_ocupado,
		limite => con_limite,
		motor => con_motor,
		texto => con_texto,
		prof => con_prof,
		acceso => con_acceso,
		ledestado => ledestado,
		guardando => con_guardando,
		H1 => con_h1,
		H0 => con_h0,
		M1 => con_m1,
		M0 => con_m0,
		S1 => con_s1,
		S0 => con_s0,
		enter => enter
	);
	
	Inst_Puerta: Puerta PORT MAP(
		clk => clk,
		selector => con_motor,
		PWM => PWM
	);
	

	Inst_Teclado: Teclado PORT MAP(
		clk => clk,
		reset => reset,
		fila => fila,
		col => col,
		bip => multibip1,
		contecla => con_contecla,
		guardando => con_guardando,
		tecla1 => con_tecla1,
		tecla2 => con_tecla2,
		tecla3 => con_tecla3,
		tecla4 => con_tecla4
	);
	
	Inst_LCDControllerTop: LCDControllerTop PORT MAP(
		clk => clk,
		rst => rst,
		texto => con_texto,
		guardando => con_guardando,
		H1 => con_h1,
		H0 => con_h0,
		M1 => con_m1,
		M0 => con_m0,
		S1 => con_s1,
		S0 => con_s0,
		prof => con_prof,
		acceso => con_acceso,
		tecla1 => con_tecla1,
		tecla2 => con_tecla2,
		tecla3 => con_tecla3,
		tecla4 => con_tecla4,
		contecla => con_contecla,
		lcd_e => lcd_e,
		lcd_rs => lcd_rs,
		lcd_rw => lcd_rw,
		lcd_db => lcd_db
	);
	
	Inst_ClockTop: ClockTop PORT MAP(
		clk => clk,
		reset => reset,
		H1 => con_h1,
		H0 => con_h0,
		M1 => con_m1,
		M0 => con_m0,
		S1 => con_s1,
		S0 => con_s0
	);

	Inst_Salida: Salida PORT MAP(
		clk => clk,
		led => led,
		ocupado => con_ocupado,
		limite => con_limite,
		ledaviso => ledaviso,
		bip_salida => multibip2,
		M1 => con_m1,
		M0 => con_m0,
		S1 => con_s1,
		S0 => con_s0
	);
	Process (con_ocupado,multibip1, multibip2)
	begin
		if con_ocupado = '0' then
        bip <= multibip1;
		else 
        bip <= multibip2;
		end if;
	end process;	

end Behavioral;


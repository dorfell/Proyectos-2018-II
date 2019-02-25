----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:05:13 02/15/2019 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is

Port ( clk :  in  STD_LOGIC;
	    rst :  in  std_logic;
		 HSYNC : out  STD_LOGIC;
       VSYNC : out  STD_LOGIC;
       RGB : out  STD_LOGIC_VECTOR (7 downto 0);
		 color : in  STD_LOGIC_VECTOR(2 downto 0);
		 texto : in  STD_LOGIC_VECTOR(1 downto 0);
		 sensormotor : in STD_LOGIC_VECTOR(1 downto 0);
		 InDSP: in  STD_LOGIC_VECTOR(2 downto 0); 
		sensor_entrada : in STD_LOGIC_VECTOR (1 downto 0);
		disp: out STD_LOGIC_VECTOR(6 downto 0); 
		anod: out STD_LOGIC_VECTOR (1 downto 0);
		LED :  out  STD_LOGIC_VECTOR (1 downto 0);
		Chicharra : out  STD_LOGIC_VECTOR (1 downto 0);
		 PWM : out std_logic);


end Top;

architecture Behavioral of Top is

	COMPONENT vga_driver
	PORT(
		CLK : IN std_logic;
		RST : IN std_logic;
		color : IN std_logic_vector(2 downto 0);
		texto : IN std_logic_vector(1 downto 0);          
		HSYNC : OUT std_logic;
		VSYNC : OUT std_logic;
		RGB : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Motor
	PORT(
		clk : IN std_logic;
		sensormotor : IN std_logic_vector(1 downto 0);
		PWM : OUT std_logic
		
		);
	END COMPONENT;
	
	COMPONENT DSP
	PORT(
		InDSP : IN std_logic_vector(2 downto 0);
		sensor_entrada : IN std_logic_vector(1 downto 0);          
		disp : OUT std_logic_vector(6 downto 0);
		anod : OUT std_logic_vector(1 downto 0);
		LED : OUT std_logic_vector(1 downto 0);
		Chicharra : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	--signal con_selector : std_logic_vector;


begin


	Inst_vga_driver: vga_driver PORT MAP(
		CLK => clk,
		RST => rst,
		HSYNC => HSYNC,
		VSYNC => VSYNC,
		RGB => RGB,
		color => color,
		texto => texto
		
	);
	
	Inst_Motor: Motor PORT MAP(
		clk => clk,
		sensormotor => sensormotor,
		PWM => PWM
	);
	
	Inst_DSP: DSP PORT MAP(
		InDSP => color,
		sensor_entrada => sensormotor,
		disp => disp,
		anod => anod,
		LED => LED,
		Chicharra => Chicharra
	);


end Behavioral;


--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:01:52 02/11/2019
-- Design Name:   
-- Module Name:   C:/Users/usuario/ED/ProyectoFinalDigital1/TopFinal/testLCD.vhd
-- Project Name:  TopFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControllerTest_TOP
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testLCD IS
END testLCD;
 
ARCHITECTURE behavior OF testLCD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControllerTest_TOP
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         x_angle : IN  std_logic_vector(7 downto 0);
         y_angle : IN  std_logic_vector(7 downto 0);
         interruptor : IN  std_logic_vector(1 downto 0);
         buzzer : OUT  std_logic;
         lcd_e : OUT  std_logic;
         lcd_rs : OUT  std_logic;
         lcd_rw : OUT  std_logic;
         lcd_db : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal x_angle : std_logic_vector(7 downto 0) := (others => '0');
   signal y_angle : std_logic_vector(7 downto 0) := (others => '0');
   signal interruptor : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal buzzer : std_logic;
   signal lcd_e : std_logic;
   signal lcd_rs : std_logic;
   signal lcd_rw : std_logic;
   signal lcd_db : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControllerTest_TOP PORT MAP (
          clk => clk,
          rst => rst,
          x_angle => x_angle,
          y_angle => y_angle,
          interruptor => interruptor,
          buzzer => buzzer,
          lcd_e => lcd_e,
          lcd_rs => lcd_rs,
          lcd_rw => lcd_rw,
          lcd_db => lcd_db
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 

      wait for clk_period*2200;
		interruptor <= "00";
      wait for clk_period*2200;
		interruptor <=  "10";
      wait for clk_period*2200;
		interruptor <= "11";
		x_angle <= "00101000";
		y_angle <= "00101000";
      wait;
   end process;

END;

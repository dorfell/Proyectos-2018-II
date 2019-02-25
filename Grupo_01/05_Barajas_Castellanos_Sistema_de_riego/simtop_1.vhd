--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:41:10 02/12/2019
-- Design Name:   
-- Module Name:   C:/Users/usuario/MAX6675/simtop_1.vhd
-- Project Name:  MAX6675
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOPmax
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
 
ENTITY simtop_1 IS
END simtop_1;
 
ARCHITECTURE behavior OF simtop_1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOPmax
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         MISO : IN  std_logic;
         LED_MISO : OUT  std_logic;
         SCK : OUT  std_logic;
         SCK1 : OUT  std_logic;
         CS : OUT  std_logic;
         CS1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';
   signal MISO : std_logic := '0';

 	--Outputs
   signal LED_MISO : std_logic;
   signal SCK : std_logic;
   signal SCK1 : std_logic;
   signal CS : std_logic;
   signal CS1 : std_logic;

   -- Clock period definitions
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOPmax PORT MAP (
          clock => clock,
          reset => reset,
          start => start,
          MISO => MISO,
          LED_MISO => LED_MISO,
          SCK => SCK,
          SCK1 => SCK1,
          CS => CS,
          CS1 => CS1
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 40 ns;	

      -- insert stimulus here 
      reset <= '1';
		wait for 20 ns;
		reset <= '0';
		wait for 20 ns;
		start <= '1';
		wait for 20 ns;
	   MISO <= '1';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;
		MISO <= '1';
		wait for 1 us;
		MISO <= '0';
		wait for 1 us;

      wait;
   end process;

END;

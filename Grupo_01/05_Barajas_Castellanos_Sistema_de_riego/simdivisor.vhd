--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:59 01/29/2019
-- Design Name:   
-- Module Name:   C:/Users/usuario/MAX6675/simdivisor.vhd
-- Project Name:  MAX6675
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divisor
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
 
ENTITY simdivisor IS
END simdivisor;
 
ARCHITECTURE behavior OF simdivisor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divisor
    PORT(
         reset : IN  std_logic;
         clock : IN  std_logic;
         enable1 : OUT  std_logic;
         enable2 : OUT  std_logic
         --pmod1 : OUT  std_logic;
         --pmod2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal enable1 : std_logic;
   signal enable2 : std_logic;
   --signal pmod1 : std_logic;
   --signal pmod2 : std_logic;

   -- Clock period definitions
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divisor PORT MAP (
          reset => reset,
          clock => clock,
          enable1 => enable1,
          enable2 => enable2
     --     pmod1 => pmod1,
       --   pmod2 => pmod2
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
      wait for 20 ns;	

      -- insert stimulus here 
		reset <= '1';
		wait for 20 ns;
		reset <= '0';

      wait;
   end process;

END;

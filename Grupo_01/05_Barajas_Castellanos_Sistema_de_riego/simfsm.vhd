--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:59:22 11/07/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario/MAX6675/simfsm.vhd
-- Project Name:  MAX6675
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM
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
 
ENTITY simfsm IS
END simfsm;
 
ARCHITECTURE behavior OF simfsm IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         enable1 : IN  std_logic;
         start : IN  std_logic;
         busy : OUT  std_logic;
         cs : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal enable1 : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal busy : std_logic;
   signal cs : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM PORT MAP (
          clock => clock,
          reset => reset,
          enable1 => enable1,
          start => start,
          busy => busy,
          cs => cs
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
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
    
    reset <= '1';
	 wait for 10 ns;
	 
	 reset <= '0';
    enable1 <= '1';
	 
    start  <= '1';
		 wait for 10 ns;

	
	 

      wait;
   end process;

END;

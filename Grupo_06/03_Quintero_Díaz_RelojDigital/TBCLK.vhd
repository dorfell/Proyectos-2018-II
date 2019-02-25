--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:21:30 02/13/2019
-- Design Name:   
-- Module Name:   G:/New folder/VHDL/TBCLK.vhd
-- Project Name:  VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clock
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
 
ENTITY TBCLK IS
END TBCLK;
 
ARCHITECTURE behavior OF TBCLK IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clock
    PORT(
         clk50mhz : IN  std_logic;
         reset : IN  std_logic;
         hd : OUT  std_logic;
         hu : OUT  std_logic;
         md : OUT  std_logic;
         mu : OUT  std_logic;
         sd : OUT  std_logic;
         su : OUT  std_logic;
         led : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk50mhz : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal hd : std_logic;
   signal hu : std_logic;
   signal md : std_logic;
   signal mu : std_logic;
   signal sd : std_logic;
   signal su : std_logic;

 	--Outputs
   signal led : std_logic;

   -- Clock period definitions
   constant clk50mhz_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clock PORT MAP (
          clk50mhz => clk50mhz,
          reset => reset,
          hd => hd,
          hu => hu,
          md => md,
          mu => mu,
          sd => sd,
          su => su,
          led => led
        );

   -- Clock process definitions
   clk50mhz_process :process
   begin
		clk50mhz <= '0';
		wait for clk50mhz_period/2;
		clk50mhz <= '1';
		wait for clk50mhz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk50mhz_period*10;

      -- insert stimulus here 
      reset <= '1';
		wait for 10 ns;
		reset <= '0';
      wait;
   end process;

END;

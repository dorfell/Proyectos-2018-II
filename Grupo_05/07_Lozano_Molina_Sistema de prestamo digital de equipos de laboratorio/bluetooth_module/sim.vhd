--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:05:27 02/19/2019
-- Design Name:   
-- Module Name:   C:/Users/jfmol/Documents/ISE/bluethoot_Module/sim.vhd
-- Project Name:  bluethoot_Module
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
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
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         txEn : IN  std_logic;
         txData : IN  std_logic_vector(7 downto 0);
         tx : OUT  std_logic;
         txDone : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal txEn : std_logic := '0';
   signal txData : std_logic_vector(7 downto 0) := (others => '0');

	--BiDirs
   signal txDone : std_logic;

 	--Outputs
   signal tx : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          clk => clk,
          rst => rst,
          txEn => txEn,
          txData => txData,
          tx => tx,
          txDone => txDone
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

      wait for clk_period*10;

      -- insert stimulus here 
		
		rst <= '1';
		txEn <= '0';
		txData <= "01011001";
		
		wait for 500 ns;
		
		rst <= '0';
		txEn <= '0';
		txData <= "01011001";
		
		wait for 500 ns;
		
		rst <= '0';
		txEn <= '1';
		txData <= "01011001";

      wait;
   end process;

END;

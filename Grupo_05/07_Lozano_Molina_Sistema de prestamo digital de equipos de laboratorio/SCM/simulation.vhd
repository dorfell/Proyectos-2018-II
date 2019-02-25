--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:07:55 02/19/2019
-- Design Name:   
-- Module Name:   C:/Users/Jonathan/Documents/personal/Universidad/Semestre VI/digital I/Laboratorio/Proyecto_Digital/Proyecto_Digital_2/top_SCM/Simulation/simulation.vhd
-- Project Name:  top_SCM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_SCM
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
 
ENTITY simulation IS
END simulation;
 
ARCHITECTURE behavior OF simulation IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_SCM
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         G_cols : IN  std_logic_vector(3 downto 0);
         G_rows : OUT  std_logic_vector(3 downto 0);
         G_load : OUT  std_logic;
         G_sclk : OUT  std_logic;
         G_din : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal G_cols : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal G_rows : std_logic_vector(3 downto 0);
   signal G_load : std_logic;
   signal G_sclk : std_logic;
   signal G_din : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant G_sclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_SCM PORT MAP (
          clk => clk,
          rst => rst,
          G_cols => G_cols,
          G_rows => G_rows,
          G_load => G_load,
          G_sclk => G_sclk,
          G_din => G_din
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   G_sclk_process :process
   begin
		G_sclk <= '0';
		wait for G_sclk_period/2;
		G_sclk <= '1';
		wait for G_sclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		G_cols <= "0001";
		
      wait;
   end process;

END;

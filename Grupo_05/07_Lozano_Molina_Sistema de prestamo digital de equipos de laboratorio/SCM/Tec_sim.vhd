--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:41:11 02/19/2019
-- Design Name:   
-- Module Name:   C:/Users/Jonathan/Documents/personal/Universidad/Semestre VI/digital I/Laboratorio/Proyecto_Digital/Proyecto_Digital_2/top_SCM/Simulation/Tec_sim.vhd
-- Project Name:  top_SCM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top_Teclado
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
 
ENTITY Tec_sim IS
END Tec_sim;
 
ARCHITECTURE behavior OF Tec_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top_Teclado
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         COLUMNS : IN  std_logic_vector(3 downto 0);
         ROWS : OUT  std_logic_vector(3 downto 0);
         DATA : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal COLUMNS : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ROWS : std_logic_vector(3 downto 0);
   signal DATA : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_Teclado PORT MAP (
          clk => clk,
          rst => rst,
          COLUMNS => COLUMNS,
          ROWS => ROWS,
          DATA => DATA
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
		
		COLUMNS <= "0000";
		wait for 30000 us;
		COLUMNS <= "0100";
		wait for 30000 us;
		COLUMNS <= "0000";
		wait for 30000 us;
		COLUMNS <= "0001";
		
      wait;
   end process;

END;

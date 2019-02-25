--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:01:16 02/15/2019
-- Design Name:   
-- Module Name:   C:/Users/lenovo/OneDrive - Universidad Nacional de Colombia/Documentos/1. UN 7/Digital/Proyecto/Contador_proy/pruebaenable3.vhd
-- Project Name:  Contador_proy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Contador_seg
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
 
ENTITY pruebaenable3 IS
END pruebaenable3;
 
ARCHITECTURE behavior OF pruebaenable3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contador_seg
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         anode : OUT  std_logic_vector(3 downto 0);
         sseg : OUT  std_logic_vector(7 downto 0);
         enable : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal anode : std_logic_vector(3 downto 0);
   signal sseg : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Contador_seg PORT MAP (
          clk => clk,
          reset => reset,
          anode => anode,
          sseg => sseg,
          enable => enable
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
		enable <= '1';
		wait for clk_period*100;
      
		enable <= '0';
		wait;
   end process;

END;

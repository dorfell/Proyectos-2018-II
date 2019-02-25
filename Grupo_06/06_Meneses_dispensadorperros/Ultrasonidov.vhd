--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:42:21 10/05/2018
-- Design Name:   
-- Module Name:   C:/Users/Katherine Rodriguez/Documents/Digital/LCD2/Ultrasonido2/Ultrasonidov.vhd
-- Project Name:  Ultrasonido2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top
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
 
ENTITY Ultrasonidov IS
END Ultrasonidov;
 
ARCHITECTURE behavior OF Ultrasonidov IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top
    PORT(
         clk : IN  std_logic;
         echo : IN  std_logic;
         Trigger : OUT  std_logic;
         an0 : OUT  std_logic;
         display_out : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal echo : std_logic := '0';

 	--Outputs
   signal Trigger : std_logic;
   signal an0 : std_logic;
   signal display_out : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top PORT MAP (
          clk => clk,
          echo => echo,
          Trigger => Trigger,
          an0 => an0,
          display_out => display_out
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
		echo_process :process
		begin
	echo <= '0';
	wait for (clk_period/2)*100000;
	echo <= '1';
	wait for (clk_period/2)*10000;
	echo <= '0';
	wait for (clk_period/2)*1600000;
	end process;


END;

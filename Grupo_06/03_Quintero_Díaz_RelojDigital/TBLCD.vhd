--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:18:54 02/13/2019
-- Design Name:   
-- Module Name:   G:/New folder/VHDL/TBLCD.vhd
-- Project Name:  VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lcd_controller
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
 
ENTITY TBLCD IS
END TBLCD;
 
ARCHITECTURE behavior OF TBLCD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lcd_controller
    PORT(
         clk : IN  std_logic;
         reset_n : IN  std_logic;
         rw : OUT  std_logic;
         rs : OUT  std_logic;
         e : OUT  std_logic;
         lcd_data : OUT  std_logic_vector(7 downto 0);
         line1_buffer : IN  std_logic_vector(127 downto 0);
         line2_buffer : IN  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset_n : std_logic := '0';
   signal line1_buffer : std_logic_vector(127 downto 0) := (others => '0');
   signal line2_buffer : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal rw : std_logic;
   signal rs : std_logic;
   signal e : std_logic;
   signal lcd_data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lcd_controller PORT MAP (
          clk => clk,
          reset_n => reset_n,
          rw => rw,
          rs => rs,
          e => e,
          lcd_data => lcd_data,
          line1_buffer => line1_buffer,
          line2_buffer => line2_buffer
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

      wait;
   end process;

END;

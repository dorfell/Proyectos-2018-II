--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:09:53 02/18/2019
-- Design Name:   
-- Module Name:   C:/Users/Alexander/Documents/Digital/proyecto/sim.vhd
-- Project Name:  proyecto
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: opciones
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
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT opciones
    PORT(
         clk : IN  std_logic;
         fila : in unsigned(3 downto 0);
         col : out unsigned(3 downto 0);
         reset_n : IN  std_logic;
         rw : OUT  std_logic;
         rs : OUT  std_logic;
         e : OUT  std_logic;
         lcd_data : OUT  std_logic_vector(7 downto 0);
         display : OUT  std_logic_vector(3 downto 0);
         ledfila : out unsigned(3 downto 0);
         ledcol : out unsigned(3 downto 0);
         sel : OUT  std_logic_vector(6 downto 0);
         t : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal fila : unsigned(3 downto 0) := (others => '0');
   signal reset_n : std_logic := '0';

 	--Outputs
   signal col : unsigned(3 downto 0);
   signal rw : std_logic;
   signal rs : std_logic;
   signal e : std_logic;
   signal lcd_data : std_logic_vector(7 downto 0);
   signal display : std_logic_vector(3 downto 0);
   signal ledfila : unsigned(3 downto 0);
   signal ledcol : unsigned(3 downto 0);
   signal sel : std_logic_vector(6 downto 0);
   signal t : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: opciones PORT MAP (
          clk => clk,
          fila => fila,
          col => col,
          reset_n => reset_n,
          rw => rw,
          rs => rs,
          e => e,
          lcd_data => lcd_data,
          display => display,
          ledfila => ledfila,
          ledcol => ledcol,
          sel => sel,
          t => t
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
     
		  wait for 50000000 ns;
  --fila <= "0001";
  --wait for 10000000 ns;
   --fila <= "0010";
	--wait for 10000000 ns;
   --fila <= "0100";

      -- insert stimulus here 

      wait;
   end process;

END;

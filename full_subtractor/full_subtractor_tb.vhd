--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:13:25 05/03/2022
-- Design Name:   
-- Module Name:   /home/ise/xilinx-repo/full_subtractor/full_subtractor_tb.vhd
-- Project Name:  full_subtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullsub
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
 
ENTITY full_subtractor_tb IS
END full_subtractor_tb;
 
ARCHITECTURE behavior OF full_subtractor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullsub
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         bin : IN  std_logic;
         diff : OUT  std_logic;
         bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal bin : std_logic := '0';

 	--Outputs
   signal diff : std_logic;
   signal bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullsub PORT MAP (
          a => a,
          b => b,
          bin => bin,
          diff => diff,
          bout => bout
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		diff<=( a xor b) xor bin
		borrow<=(not (a) and(b) or (not(a) and c) or(b and diff)
      wait for 100 ns;	

      

      -- insert stimulus here 

      wait;
   end process;

END;

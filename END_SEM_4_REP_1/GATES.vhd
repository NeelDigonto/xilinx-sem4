----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:44:15 05/01/2022 
-- Design Name: 
-- Module Name:    GATES - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GATES is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           oAND : out  STD_LOGIC;
           oOR : out  STD_LOGIC;
           oNOT : out  STD_LOGIC;
           oXOR : out  STD_LOGIC;
           oNAND : out  STD_LOGIC;
           oNOR : out  STD_LOGIC;
           oXNOR : out  STD_LOGIC);
end GATES;

architecture Behavioral of GATES is

begin

      oAND  <= i0 and  i1;
      oOR   <= i0 or   i1;
      oNOT  <=    not  i0;
      oXOR  <= i0 xor  i1;
      oNAND <= i0 nand i1;
      oNOR  <= i0 nor  i1;
      oXNOR <= i0 xnor i1;


end Behavioral;


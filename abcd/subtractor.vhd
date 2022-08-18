----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:53 05/03/2022 
-- Design Name: 
-- Module Name:    half_subtractor - Behavioral 
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

entity half_subtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  borrow : out STD_LOGIC;
           d : out  STD_LOGIC);
end half_subtractor;

architecture Behavioral of half_subtractor is

begin

process(a,b)
	begin
	if(a=b) then
		d<='0';
	else
		d<='1';
	end if;
	if(a='0' and b='1') then
		borrow<='1';
	else
      borrow<='0';
	end if;
	end process;
		

end Behavioral;


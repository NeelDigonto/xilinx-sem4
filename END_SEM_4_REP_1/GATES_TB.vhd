library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GATES_TB is
end GATES_TB;

architecture tb of GATES_TB is
component GATES_SOURCE is 
Port (i0, i1 : in STD_LOGIC;
	oAND, oOR, oNOT, oXOR, oNAND, oNOR, oXNOR : out STD_LOGIC);
end component;

signal i0, i1, oAND, oOR, oNOT, oXOR, oNAND, oNOR, oXNOR : STD_LOGIC;

begin

uut: GATES_SOURCE port map(
i0 => i0, i1 => i1, oAND => oAND, oOR => oOR, oNOT => oNOT, oXOR => oXOR, oNAND => oNAND, oNOR => oNOR, oXNOR => oXNOR);

stim: process
begin

i0 <= '0';
i1 <= '0';
wait for 10ns;

i0 <= '0';
i1 <= '1';
wait for 10ns;

i0 <= '1';
i1 <= '0';
wait for 10ns;

i0 <= '1';
i1 <= '1';
wait for 10ns;

end process;
end tb;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:56:59 10/22/2013 
-- Design Name: 
-- Module Name:    CLK_counter - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLK_counter is
generic(n: natural :=2);
port(	clock:	in std_logic;
	clear:	in std_logic;
	count:	in std_logic;
	Q:	out std_logic
);
end CLK_counter;

architecture Behavioral of CLK_counter is
  signal Pre_Q: std_logic_vector(n-1 downto 0);
begin

process(clock, count, clear)
    begin
	if clear = '1' then
 	    Pre_Q <= Pre_Q - Pre_Q;
	elsif (clock='1' and clock'event) then
	    if count = '1' then
		Pre_Q <= Pre_Q + 1;
	    end if;
	end if;
end process;	
Q <= Pre_Q(n-1);
end Behavioral;


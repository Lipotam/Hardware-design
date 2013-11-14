----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:42:04 11/14/2013 
-- Design Name: 
-- Module Name:    JK_trigger - Behavioral 
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

entity JK_trigger is

port (
		CLK, R, S, J, K : in std_logic;
      Q, notQ : out std_logic 
	);

end JK_trigger;

architecture Behavioral of JK_trigger is

signal qtemp,qbartemp : std_logic :='0';

begin

Q <= qtemp;
notQ <= qbartemp;

process(CLK,R,S)
begin
	if(R = '0') then           --Reset the output.
			qtemp <= '0';
			qbartemp <= '1';
	elsif (S = '0') then		
			qtemp <= '1';
			qbartemp <= '0';
	elsif( rising_edge(clk) ) then
		if(J='0' and K='0') then       --No change in the output
			NULL;
		elsif(J='0' and K='1') then    --Set the output.
			qtemp <= '0';
			qbartemp <= '1';
		elsif(J='1' and K='0') then    --Reset the output.
			qtemp <= '1';
			qbartemp <= '0';
		else                           --Toggle the output.
			qtemp <= not qtemp;
			qbartemp <= not qbartemp;
		end if;
	end if;
end process;
end Behavioral;


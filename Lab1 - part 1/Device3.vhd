----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:46:46 09/23/2013 
-- Design Name: 
-- Module Name:    Device3 - Behavioral 
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

entity Device3 is

port (
	x : in std_logic_vector(7 downto 0);
	y : out std_logic_vector (2 downto 0);
	v : out std_logic
);



end Device3;

architecture Behavioral of Device3 is
begin

y(0) <= (x(1) and not(x(2) or x(4) or x(6))) or (x(3)and not(x(4) or x(6))) or (x(5)and not (x(6))) or x(7);
y(1) <= ((x(2) or x(3)) and not(x(4) or x(5))) or x(6) or x(7);
y(2) <= x(4) or x(5) or x(6) or x(7);

with x select
	v <= 
	'0' when "00000000",
	'1' when others;
	
end Behavioral;


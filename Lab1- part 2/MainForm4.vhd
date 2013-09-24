----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:02 09/23/2013 
-- Design Name: 
-- Module Name:    MainForm4 - Behavioral 
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

entity MainForm4 is

port (
	x : in std_logic_vector(7 downto 0);
	y : out std_logic_vector (2 downto 0);
	v : out std_logic
);

end MainForm4;

architecture Behavioral of MainForm4 is

begin

process(x)
begin
	
	y <= "000";
	if  x(0) = '1' then y <= "000";
	end if;
	if  x(1) = '1' then y <= "001";
	end if;
	if  x(2) = '1' then y <= "010";
	end if;
	if  x(3) = '1' then y <= "011";
	end if;
	if  x(4) = '1' then y <= "100";
	end if;
	if  x(5) = '1' then y <= "101";
	end if;
	if  x(6) = '1' then y <= "110";
	end if;
	if  x(7) = '1' then y <= "111";	
	end if;

	if x = "00000000" then v <= '0';
	else v <= '1';
	end if;
	
end process;

end Behavioral;

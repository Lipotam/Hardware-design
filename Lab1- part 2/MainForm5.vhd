----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:20 09/23/2013 
-- Design Name: 
-- Module Name:    MainForm5 - Behavioral 
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

entity MainForm5 is

port (
	x : in std_logic_vector(7 downto 0);
	y : out std_logic_vector (2 downto 0);
	v : out std_logic
);

end MainForm5;

architecture Behavioral of MainForm5 is

begin

process(x)
		begin	
			
				
		y(0) <= (x(1) and not(x(2) or x(4) or x(6))) or (x(3)and not(x(4) or x(6))) or (x(5)and not (x(6))) or x(7);
		y(1) <= ((x(2) or x(3)) and not(x(4) or x(5))) or x(6) or x(7);
		y(2) <= x(4) or x(5) or x(6) or x(7);

			
			case x is
				when"00000000" => v <= '0';
				when others => v <= '1';
			end case;

		end process;
end Behavioral;


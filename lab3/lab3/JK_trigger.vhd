----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:32 09/24/2013 
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

begin

proc1 : process (R, S, CLK, J, K)
	variable RS, JK : std_logic_vector ( 1 downto 0);
	variable Qtmp : std_logic := '0';
	begin	
		RS := (R & S);		
		JK := (J & K); 
		case RS is
			when "01" => Qtmp := '0';
			when "10" => Qtmp := '1';			
			when "11" => 
				if clk'event and CLK = '1' then
					case (JK) is
						when "11" =>
							Qtmp := not Qtmp;
						when "10" =>
							Qtmp := '1';
						when "01" =>
							Qtmp := '0';
						when others =>
							null;
					end case;
				end if;
			when others => null;
		end case;				
		Q <= Qtmp;
		notQ <= not Qtmp;
	end process proc1;

end Behavioral;
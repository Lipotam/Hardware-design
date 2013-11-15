----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:46:18 11/14/2013 
-- Design Name: 
-- Module Name:    T_trigger_Modified - Behavioral 
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

entity T_trigger_Modified is

port (
		notT, leftR, rightR, S : in std_logic;
      Q, notQ : out std_logic 
	);

end T_trigger_Modified;

architecture Behavioral of T_trigger_Modified is
 signal q_reg: std_logic;
begin

 process(notT, leftR, rightR, S)
 begin
       if (rightR = '0' or leftR = '0') then
          q_reg <= '0';
		 elsif (S = '0') then
			 q_reg <= '1';
       elsif (notT'event and notT = '1') then
          q_reg <= not (q_reg);
       end if;
 end process;
       Q <= q_reg;
		 notQ <=  not q_reg;
end Behavioral;

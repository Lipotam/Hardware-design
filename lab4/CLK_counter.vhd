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
    Port (
        clock : in  STD_LOGIC;
        Q: out STD_LOGIC
    );
end CLK_counter;

architecture Behavioral of CLK_counter is
    signal temporal: STD_LOGIC := '0';
    signal counter : integer range 0 to 50000000 := 0;
begin
    frequency_divider: process (clock) begin
        if rising_edge(clock) then
            if (counter = 50000000) then
                temporal <= NOT(temporal);
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    
    Q <= temporal;
end Behavioral;

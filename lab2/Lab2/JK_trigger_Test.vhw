--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : JK_trigger_Test.vhw
-- /___/   /\     Timestamp : Tue Sep 24 19:34:44 2013
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: JK_trigger_Test
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY JK_trigger_Test IS
END JK_trigger_Test;

ARCHITECTURE testbench_arch OF JK_trigger_Test IS
    COMPONENT JK_trigger
        PORT (
            CLK : In std_logic;
            R : In std_logic;
            S : In std_logic;
            J : In std_logic;
            K : In std_logic;
            Q : Out std_logic;
            notQ : Out std_logic
        );
    END COMPONENT;

    SIGNAL CLK : std_logic := '0';
    SIGNAL R : std_logic := '0';
    SIGNAL S : std_logic := '0';
    SIGNAL J : std_logic := '0';
    SIGNAL K : std_logic := '0';
    SIGNAL Q : std_logic := '0';
    SIGNAL notQ : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : JK_trigger
        PORT MAP (
            CLK => CLK,
            R => R,
            S => S,
            J => J,
            K => K,
            Q => Q,
            notQ => notQ
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                R <= '1';
                S <= '1';
                J <= '1';
                K <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  285ns
                WAIT FOR 185 ns;
                R <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  485ns
                WAIT FOR 200 ns;
                R <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  885ns
                WAIT FOR 400 ns;
                S <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1085ns
                WAIT FOR 200 ns;
                S <= '1';
                J <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1285ns
                WAIT FOR 200 ns;
                J <= '1';
                K <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1485ns
                WAIT FOR 200 ns;
                K <= '1';
                -- -------------------------------------
                WAIT FOR 715 ns;

            END PROCESS;

    END testbench_arch;


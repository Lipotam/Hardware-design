--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : T_trigger_Modified_test.vhw
-- /___/   /\     Timestamp : Tue Oct 08 16:57:28 2013
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: T_trigger_Modified_test
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY T_trigger_Modified_test IS
END T_trigger_Modified_test;

ARCHITECTURE testbench_arch OF T_trigger_Modified_test IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT T_trigger_Modified
        PORT (
            notT : In std_logic;
            leftR : In std_logic;
            rightR : In std_logic;
            S : In std_logic;
            Q : Out std_logic;
            notQ : Out std_logic
        );
    END COMPONENT;

    SIGNAL notT : std_logic := '0';
    SIGNAL leftR : std_logic := '0';
    SIGNAL rightR : std_logic := '0';
    SIGNAL S : std_logic := '0';
    SIGNAL Q : std_logic := '0';
    SIGNAL notQ : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : T_trigger_Modified
        PORT MAP (
            notT => notT,
            leftR => leftR,
            rightR => rightR,
            S => S,
            Q => Q,
            notQ => notQ
        );

        PROCESS    -- clock process for notT
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                notT <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                notT <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  185ns
                WAIT FOR 185 ns;
                S <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 600 ns;
                leftR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1185ns
                WAIT FOR 400 ns;
                leftR <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1385ns
                WAIT FOR 200 ns;
                rightR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1785ns
                WAIT FOR 400 ns;
                rightR <= '0';
                -- -------------------------------------
                WAIT FOR 8415 ns;

            END PROCESS;

    END testbench_arch;


--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : Counter_test.vhw
-- /___/   /\     Timestamp : Fri Oct 25 13:19:33 2013
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: Counter_test
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY Counter_test IS
END Counter_test;

ARCHITECTURE testbench_arch OF Counter_test IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT CLK_counter
        PORT (
            clock : In std_logic;
            clear : In std_logic;
            count : In std_logic;
            Q : Out std_logic
        );
    END COMPONENT;

    SIGNAL clock : std_logic := '0';
    SIGNAL clear : std_logic := '0';
    SIGNAL count : std_logic := '0';
    SIGNAL Q : std_logic := '0';

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : CLK_counter
        PORT MAP (
            clock => clock,
            clear => clear,
            count => count,
            Q => Q
        );

        PROCESS    -- clock process for clock
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clock <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                clock <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  105ns
                WAIT FOR 105 ns;
                count <= '1';
                -- -------------------------------------
                WAIT FOR 9935 ns;

            END PROCESS;

    END testbench_arch;


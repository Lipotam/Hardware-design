--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : T_trigger_Modified_test_selfcheck.vhw
-- /___/   /\     Timestamp : Mon Oct 07 16:24:30 2013
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: T_trigger_Modified_test_selfcheck
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY T_trigger_Modified_test_selfcheck IS
END T_trigger_Modified_test_selfcheck;

ARCHITECTURE testbench_arch OF T_trigger_Modified_test_selfcheck IS
    COMPONENT T_trigger_Modified
        PORT (
            notT : In std_logic;
            leftR : In std_logic;
            rightR : In std_logic;
            notS : In std_logic;
            Q : Out std_logic;
            notQ : Out std_logic
        );
    END COMPONENT;

    SIGNAL notT : std_logic := '0';
    SIGNAL leftR : std_logic := '0';
    SIGNAL rightR : std_logic := '0';
    SIGNAL notS : std_logic := '0';
    SIGNAL Q : std_logic := 'U';
    SIGNAL notQ : std_logic := 'U';

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : T_trigger_Modified
        PORT MAP (
            notT => notT,
            leftR => leftR,
            rightR => rightR,
            notS => notS,
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
            PROCEDURE CHECK_Q(
                next_Q : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (Q /= next_Q) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns Q="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, Q);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_Q);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_notQ(
                next_notQ : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (notQ /= next_notQ) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns notQ="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, notQ);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_notQ);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  215ns
                WAIT FOR 215 ns;
                CHECK_Q('1', 215);
                CHECK_notQ('1', 215);
                -- -------------------------------------
                -- -------------  Current Time:  415ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 415);
                -- -------------------------------------
                -- -------------  Current Time:  615ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 615);
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 170 ns;
                leftR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  815ns
                WAIT FOR 30 ns;
                CHECK_Q('0', 815);
                CHECK_notQ('0', 815);
                -- -------------------------------------
                -- -------------  Current Time:  1185ns
                WAIT FOR 370 ns;
                leftR <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1215ns
                WAIT FOR 30 ns;
                CHECK_notQ('1', 1215);
                -- -------------------------------------
                -- -------------  Current Time:  1385ns
                WAIT FOR 170 ns;
                rightR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1415ns
                WAIT FOR 30 ns;
                CHECK_notQ('0', 1415);
                -- -------------------------------------
                -- -------------  Current Time:  1785ns
                WAIT FOR 370 ns;
                rightR <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1815ns
                WAIT FOR 30 ns;
                CHECK_notQ('1', 1815);
                -- -------------------------------------
                -- -------------  Current Time:  2015ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 2015);
                -- -------------------------------------
                -- -------------  Current Time:  2185ns
                WAIT FOR 170 ns;
                notS <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2585ns
                WAIT FOR 400 ns;
                notS <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2815ns
                WAIT FOR 230 ns;
                CHECK_Q('0', 2815);
                -- -------------------------------------
                -- -------------  Current Time:  3015ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 3015);
                -- -------------------------------------
                -- -------------  Current Time:  3215ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 3215);
                -- -------------------------------------
                -- -------------  Current Time:  3415ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 3415);
                -- -------------------------------------
                -- -------------  Current Time:  3615ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 3615);
                -- -------------------------------------
                -- -------------  Current Time:  3815ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 3815);
                -- -------------------------------------
                -- -------------  Current Time:  4015ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 4015);
                -- -------------------------------------
                -- -------------  Current Time:  4215ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 4215);
                -- -------------------------------------
                -- -------------  Current Time:  4415ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 4415);
                -- -------------------------------------
                -- -------------  Current Time:  4615ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 4615);
                -- -------------------------------------
                -- -------------  Current Time:  4815ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 4815);
                -- -------------------------------------
                -- -------------  Current Time:  5015ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 5015);
                -- -------------------------------------
                -- -------------  Current Time:  5215ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 5215);
                -- -------------------------------------
                -- -------------  Current Time:  5415ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 5415);
                -- -------------------------------------
                -- -------------  Current Time:  5615ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 5615);
                -- -------------------------------------
                -- -------------  Current Time:  5815ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 5815);
                -- -------------------------------------
                -- -------------  Current Time:  6015ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 6015);
                -- -------------------------------------
                -- -------------  Current Time:  6215ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 6215);
                -- -------------------------------------
                -- -------------  Current Time:  6415ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 6415);
                -- -------------------------------------
                -- -------------  Current Time:  6615ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 6615);
                -- -------------------------------------
                -- -------------  Current Time:  6815ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 6815);
                -- -------------------------------------
                -- -------------  Current Time:  7015ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 7015);
                -- -------------------------------------
                -- -------------  Current Time:  7215ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 7215);
                -- -------------------------------------
                -- -------------  Current Time:  7415ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 7415);
                -- -------------------------------------
                -- -------------  Current Time:  7615ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 7615);
                -- -------------------------------------
                -- -------------  Current Time:  7815ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 7815);
                -- -------------------------------------
                -- -------------  Current Time:  8015ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 8015);
                -- -------------------------------------
                -- -------------  Current Time:  8215ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 8215);
                -- -------------------------------------
                -- -------------  Current Time:  8415ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 8415);
                -- -------------------------------------
                -- -------------  Current Time:  8615ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 8615);
                -- -------------------------------------
                -- -------------  Current Time:  8815ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 8815);
                -- -------------------------------------
                -- -------------  Current Time:  9015ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 9015);
                -- -------------------------------------
                -- -------------  Current Time:  9215ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 9215);
                -- -------------------------------------
                -- -------------  Current Time:  9415ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 9415);
                -- -------------------------------------
                -- -------------  Current Time:  9615ns
                WAIT FOR 200 ns;
                CHECK_Q('0', 9615);
                -- -------------------------------------
                -- -------------  Current Time:  9815ns
                WAIT FOR 200 ns;
                CHECK_Q('1', 9815);
                -- -------------------------------------
                WAIT FOR 385 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;


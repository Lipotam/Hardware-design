--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : Up_Down_counter_test.vhw
-- /___/   /\     Timestamp : Tue Oct 08 13:08:36 2013
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: Up_Down_counter_test
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY Up_Down_counter_test IS
END Up_Down_counter_test;

ARCHITECTURE testbench_arch OF Up_Down_counter_test IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Up_Down_counter
        PORT (
            DATA : In std_logic_vector (3 DownTo 0);
            CPD : In std_logic;
            CPU : In std_logic;
            MR : In std_logic;
            notPL : In std_logic;
            OUTPUT : Out std_logic_vector (3 DownTo 0);
            notTCD : Out std_logic;
            notTCU : Out std_logic
        );
    END COMPONENT;

    SIGNAL DATA : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL CPD : std_logic := '0';
    SIGNAL CPU : std_logic := '0';
    SIGNAL MR : std_logic := '0';
    SIGNAL notPL : std_logic := '0';
    SIGNAL OUTPUT : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL notTCD : std_logic := '0';
    SIGNAL notTCU : std_logic := '0';

    constant PERIOD : time := 200 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 0 ns;

    BEGIN
        UUT : Up_Down_counter
        PORT MAP (
            DATA => DATA,
            CPD => CPD,
            CPU => CPU,
            MR => MR,
            notPL => notPL,
            OUTPUT => OUTPUT,
            notTCD => notTCD,
            notTCU => notTCU
        );

        PROCESS    -- clock process for CPD
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CPD <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CPD <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  85ns
                WAIT FOR 85 ns;
                CPU <= '1';
                MR <= '1';
                notPL <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  285ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  485ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  685ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  885ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1085ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1285ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1485ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1685ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1885ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2085ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2285ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2485ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2685ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2885ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3085ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3285ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3485ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3685ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3885ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4085ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4285ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4485ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4685ns
                WAIT FOR 200 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4885ns
                WAIT FOR 200 ns;
                CPU <= '1';
                -- -------------------------------------
                WAIT FOR 315 ns;

            END PROCESS;

    END testbench_arch;


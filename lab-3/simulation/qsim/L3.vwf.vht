-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/28/2017 02:18:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          L3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY L3_vhd_vec_tst IS
END L3_vhd_vec_tst;
ARCHITECTURE L3_arch OF L3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL OUTRAM : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Ramaddress1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RegOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ROMClock : STD_LOGIC;
SIGNAL sclr : STD_LOGIC;
SIGNAL wrenRAM : STD_LOGIC;
COMPONENT L3
	PORT (
	address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	clock : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	OUTRAM : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Ramaddress1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	RegOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ROMClock : IN STD_LOGIC;
	sclr : IN STD_LOGIC;
	wrenRAM : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : L3
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clock => clock,
	enable => enable,
	OUTRAM => OUTRAM,
	q => q,
	Ramaddress1 => Ramaddress1,
	RegOut => RegOut,
	ROMClock => ROMClock,
	sclr => sclr,
	wrenRAM => wrenRAM
	);
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	address(4) <= '0';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '1';
	WAIT FOR 10000 ps;
	address(2) <= '0';
	WAIT FOR 10000 ps;
	address(2) <= '1';
	WAIT FOR 20000 ps;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
	WAIT FOR 10000 ps;
	address(1) <= '1';
	WAIT FOR 20000 ps;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '0';
	WAIT FOR 20000 ps;
	address(0) <= '1';
	WAIT FOR 10000 ps;
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
-- Ramaddress1[4]
t_prcs_Ramaddress1_4: PROCESS
BEGIN
	Ramaddress1(4) <= '0';
WAIT;
END PROCESS t_prcs_Ramaddress1_4;
-- Ramaddress1[3]
t_prcs_Ramaddress1_3: PROCESS
BEGIN
	Ramaddress1(3) <= '0';
WAIT;
END PROCESS t_prcs_Ramaddress1_3;
-- Ramaddress1[2]
t_prcs_Ramaddress1_2: PROCESS
BEGIN
	Ramaddress1(2) <= '0';
	WAIT FOR 10000 ps;
	Ramaddress1(2) <= '1';
	WAIT FOR 30000 ps;
	Ramaddress1(2) <= '0';
WAIT;
END PROCESS t_prcs_Ramaddress1_2;
-- Ramaddress1[1]
t_prcs_Ramaddress1_1: PROCESS
BEGIN
	Ramaddress1(1) <= '0';
	WAIT FOR 40000 ps;
	Ramaddress1(1) <= '1';
	WAIT FOR 30000 ps;
	Ramaddress1(1) <= '0';
WAIT;
END PROCESS t_prcs_Ramaddress1_1;
-- Ramaddress1[0]
t_prcs_Ramaddress1_0: PROCESS
BEGIN
	Ramaddress1(0) <= '0';
	WAIT FOR 40000 ps;
	Ramaddress1(0) <= '1';
	WAIT FOR 80000 ps;
	Ramaddress1(0) <= '0';
WAIT;
END PROCESS t_prcs_Ramaddress1_0;

-- ROMClock
t_prcs_ROMClock: PROCESS
BEGIN
LOOP
	ROMClock <= '0';
	WAIT FOR 5000 ps;
	ROMClock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ROMClock;

-- sclr
t_prcs_sclr: PROCESS
BEGIN
	sclr <= '0';
WAIT;
END PROCESS t_prcs_sclr;

-- wrenRAM
t_prcs_wrenRAM: PROCESS
BEGIN
	wrenRAM <= '1';
WAIT;
END PROCESS t_prcs_wrenRAM;
END L3_arch;

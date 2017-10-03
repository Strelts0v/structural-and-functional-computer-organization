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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "09/28/2017 02:18:41"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	L3 IS
    PORT (
	OUTRAM : OUT std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	wrenRAM : IN std_logic;
	Ramaddress1 : IN std_logic_vector(4 DOWNTO 0);
	sclr : IN std_logic;
	enable : IN std_logic;
	q : OUT std_logic_vector(7 DOWNTO 0);
	ROMClock : IN std_logic;
	address : IN std_logic_vector(4 DOWNTO 0);
	RegOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END L3;

ARCHITECTURE structure OF L3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OUTRAM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_wrenRAM : std_logic;
SIGNAL ww_Ramaddress1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_sclr : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ROMClock : std_logic;
SIGNAL ww_address : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RegOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \OUTRAM[7]~output_o\ : std_logic;
SIGNAL \OUTRAM[6]~output_o\ : std_logic;
SIGNAL \OUTRAM[5]~output_o\ : std_logic;
SIGNAL \OUTRAM[4]~output_o\ : std_logic;
SIGNAL \OUTRAM[3]~output_o\ : std_logic;
SIGNAL \OUTRAM[2]~output_o\ : std_logic;
SIGNAL \OUTRAM[1]~output_o\ : std_logic;
SIGNAL \OUTRAM[0]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \RegOut[7]~output_o\ : std_logic;
SIGNAL \RegOut[6]~output_o\ : std_logic;
SIGNAL \RegOut[5]~output_o\ : std_logic;
SIGNAL \RegOut[4]~output_o\ : std_logic;
SIGNAL \RegOut[3]~output_o\ : std_logic;
SIGNAL \RegOut[2]~output_o\ : std_logic;
SIGNAL \RegOut[1]~output_o\ : std_logic;
SIGNAL \RegOut[0]~output_o\ : std_logic;
SIGNAL \wrenRAM~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \ROMClock~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \sclr~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Ramaddress1[0]~input_o\ : std_logic;
SIGNAL \Ramaddress1[1]~input_o\ : std_logic;
SIGNAL \Ramaddress1[2]~input_o\ : std_logic;
SIGNAL \Ramaddress1[3]~input_o\ : std_logic;
SIGNAL \Ramaddress1[4]~input_o\ : std_logic;
SIGNAL \inst3|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|lpm_ff_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clock~input_o\ : std_logic;

BEGIN

OUTRAM <= ww_OUTRAM;
ww_clock <= clock;
ww_wrenRAM <= wrenRAM;
ww_Ramaddress1 <= Ramaddress1;
ww_sclr <= sclr;
ww_enable <= enable;
q <= ww_q;
ww_ROMClock <= ROMClock;
ww_address <= address;
RegOut <= ww_RegOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|sram|ram_block|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \inst2|lpm_ff_component|dffs\(7);

\inst3|sram|ram_block|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\Ramaddress1[4]~input_o\ & \Ramaddress1[3]~input_o\ & \Ramaddress1[2]~input_o\ & \Ramaddress1[1]~input_o\ & \Ramaddress1[0]~input_o\);

\inst3|sram|ram_block|auto_generated|q_a\(7) <= \inst3|sram|ram_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\inst3|sram|ram_block|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \inst2|lpm_ff_component|dffs\(6);

\inst3|sram|ram_block|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\Ramaddress1[4]~input_o\ & \Ramaddress1[3]~input_o\ & \Ramaddress1[2]~input_o\ & \Ramaddress1[1]~input_o\ & \Ramaddress1[0]~input_o\);

\inst3|sram|ram_block|auto_generated|q_a\(6) <= \inst3|sram|ram_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\inst3|sram|ram_block|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \inst2|lpm_ff_component|dffs\(5);

\inst3|sram|ram_block|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\Ramaddress1[4]~input_o\ & \Ramaddress1[3]~input_o\ & \Ramaddress1[2]~input_o\ & \Ramaddress1[1]~input_o\ & \Ramaddress1[0]~input_o\);

\inst3|sram|ram_block|auto_generated|q_a\(5) <= \inst3|sram|ram_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\inst3|sram|ram_block|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \inst2|lpm_ff_component|dffs\(4);

\inst3|sram|ram_block|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\Ramaddress1[4]~input_o\ & \Ramaddress1[3]~input_o\ & \Ramaddress1[2]~input_o\ & \Ramaddress1[1]~input_o\ & \Ramaddress1[0]~input_o\);

\inst3|sram|ram_block|auto_generated|q_a\(4) <= \inst3|sram|ram_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\inst3|sram|ram_block|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \inst2|lpm_ff_component|dffs\(3);

\inst3|sram|ram_block|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\Ramaddress1[4]~input_o\ & \Ramaddress1[3]~input_o\ & \Ramaddress1[2]~input_o\ & \Ramaddress1[1]~input_o\ & \Ramaddress1[0]~input_o\);

\inst3|sram|ram_block|auto_generated|q_a\(3) <= \inst3|sram|ram_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\inst3|sram|ram_block|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \inst2|lpm_ff_component|dffs\(2);

\inst3|sram|ram_block|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\Ramaddress1[4]~input_o\ & \Ramaddress1[3]~input_o\ & \Ramaddress1[2]~input_o\ & \Ramaddress1[1]~input_o\ & \Ramaddress1[0]~input_o\);

\inst3|sram|ram_block|auto_generated|q_a\(2) <= \inst3|sram|ram_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\inst3|sram|ram_block|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \inst2|lpm_ff_component|dffs\(1);

\inst3|sram|ram_block|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\Ramaddress1[4]~input_o\ & \Ramaddress1[3]~input_o\ & \Ramaddress1[2]~input_o\ & \Ramaddress1[1]~input_o\ & \Ramaddress1[0]~input_o\);

\inst3|sram|ram_block|auto_generated|q_a\(1) <= \inst3|sram|ram_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\inst3|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \inst2|lpm_ff_component|dffs\(0);

\inst3|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Ramaddress1[4]~input_o\ & \Ramaddress1[3]~input_o\ & \Ramaddress1[2]~input_o\ & \Ramaddress1[1]~input_o\ & \Ramaddress1[0]~input_o\);

\inst3|sram|ram_block|auto_generated|q_a\(0) <= \inst3|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;

\OUTRAM[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sram|ram_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \OUTRAM[7]~output_o\);

\OUTRAM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sram|ram_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \OUTRAM[6]~output_o\);

\OUTRAM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sram|ram_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \OUTRAM[5]~output_o\);

\OUTRAM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sram|ram_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \OUTRAM[4]~output_o\);

\OUTRAM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sram|ram_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \OUTRAM[3]~output_o\);

\OUTRAM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sram|ram_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \OUTRAM[2]~output_o\);

\OUTRAM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sram|ram_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \OUTRAM[1]~output_o\);

\OUTRAM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|sram|ram_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \OUTRAM[0]~output_o\);

\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

\RegOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lpm_ff_component|dffs\(7),
	devoe => ww_devoe,
	o => \RegOut[7]~output_o\);

\RegOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lpm_ff_component|dffs\(6),
	devoe => ww_devoe,
	o => \RegOut[6]~output_o\);

\RegOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lpm_ff_component|dffs\(5),
	devoe => ww_devoe,
	o => \RegOut[5]~output_o\);

\RegOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lpm_ff_component|dffs\(4),
	devoe => ww_devoe,
	o => \RegOut[4]~output_o\);

\RegOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lpm_ff_component|dffs\(3),
	devoe => ww_devoe,
	o => \RegOut[3]~output_o\);

\RegOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lpm_ff_component|dffs\(2),
	devoe => ww_devoe,
	o => \RegOut[2]~output_o\);

\RegOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lpm_ff_component|dffs\(1),
	devoe => ww_devoe,
	o => \RegOut[1]~output_o\);

\RegOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lpm_ff_component|dffs\(0),
	devoe => ww_devoe,
	o => \RegOut[0]~output_o\);

\wrenRAM~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wrenRAM,
	o => \wrenRAM~input_o\);

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\ROMClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ROMClock,
	o => \ROMClock~input_o\);

\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

\inst|altsyncram_component|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "L3.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1:inst|altsyncram:altsyncram_component|altsyncram_4u21:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ROMClock~input_o\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\sclr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sclr,
	o => \sclr~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\inst2|lpm_ff_component|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|altsyncram_component|auto_generated|q_a\(7),
	sclr => \sclr~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lpm_ff_component|dffs\(7));

\Ramaddress1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ramaddress1(0),
	o => \Ramaddress1[0]~input_o\);

\Ramaddress1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ramaddress1(1),
	o => \Ramaddress1[1]~input_o\);

\Ramaddress1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ramaddress1(2),
	o => \Ramaddress1[2]~input_o\);

\Ramaddress1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ramaddress1(3),
	o => \Ramaddress1[3]~input_o\);

\Ramaddress1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ramaddress1(4),
	o => \Ramaddress1[4]~input_o\);

\inst3|sram|ram_block|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst3|altram:sram|altsyncram:ram_block|altsyncram_mf91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wrenRAM~input_o\,
	portare => VCC,
	clk0 => \ALT_INV_clock~input_o\,
	portadatain => \inst3|sram|ram_block|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst3|sram|ram_block|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|sram|ram_block|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\inst|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "L3.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1:inst|altsyncram:altsyncram_component|altsyncram_4u21:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ROMClock~input_o\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\inst2|lpm_ff_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|altsyncram_component|auto_generated|q_a\(6),
	sclr => \sclr~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lpm_ff_component|dffs\(6));

\inst3|sram|ram_block|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst3|altram:sram|altsyncram:ram_block|altsyncram_mf91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wrenRAM~input_o\,
	portare => VCC,
	clk0 => \ALT_INV_clock~input_o\,
	portadatain => \inst3|sram|ram_block|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst3|sram|ram_block|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|sram|ram_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\inst|altsyncram_component|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "L3.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1:inst|altsyncram:altsyncram_component|altsyncram_4u21:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ROMClock~input_o\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\inst2|lpm_ff_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|altsyncram_component|auto_generated|q_a\(5),
	sclr => \sclr~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lpm_ff_component|dffs\(5));

\inst3|sram|ram_block|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst3|altram:sram|altsyncram:ram_block|altsyncram_mf91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wrenRAM~input_o\,
	portare => VCC,
	clk0 => \ALT_INV_clock~input_o\,
	portadatain => \inst3|sram|ram_block|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst3|sram|ram_block|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|sram|ram_block|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\inst|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00008000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "L3.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1:inst|altsyncram:altsyncram_component|altsyncram_4u21:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ROMClock~input_o\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\inst2|lpm_ff_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|altsyncram_component|auto_generated|q_a\(4),
	sclr => \sclr~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lpm_ff_component|dffs\(4));

\inst3|sram|ram_block|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst3|altram:sram|altsyncram:ram_block|altsyncram_mf91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wrenRAM~input_o\,
	portare => VCC,
	clk0 => \ALT_INV_clock~input_o\,
	portadatain => \inst3|sram|ram_block|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst3|sram|ram_block|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|sram|ram_block|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\inst|altsyncram_component|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00007F80",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "L3.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1:inst|altsyncram:altsyncram_component|altsyncram_4u21:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ROMClock~input_o\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\inst2|lpm_ff_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|altsyncram_component|auto_generated|q_a\(3),
	sclr => \sclr~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lpm_ff_component|dffs\(3));

\inst3|sram|ram_block|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst3|altram:sram|altsyncram:ram_block|altsyncram_mf91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wrenRAM~input_o\,
	portare => VCC,
	clk0 => \ALT_INV_clock~input_o\,
	portadatain => \inst3|sram|ram_block|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst3|sram|ram_block|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|sram|ram_block|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\inst|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00007878",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "L3.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1:inst|altsyncram:altsyncram_component|altsyncram_4u21:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ROMClock~input_o\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\inst2|lpm_ff_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|altsyncram_component|auto_generated|q_a\(2),
	sclr => \sclr~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lpm_ff_component|dffs\(2));

\inst3|sram|ram_block|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst3|altram:sram|altsyncram:ram_block|altsyncram_mf91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wrenRAM~input_o\,
	portare => VCC,
	clk0 => \ALT_INV_clock~input_o\,
	portadatain => \inst3|sram|ram_block|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst3|sram|ram_block|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|sram|ram_block|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\inst|altsyncram_component|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00006666",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "L3.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1:inst|altsyncram:altsyncram_component|altsyncram_4u21:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ROMClock~input_o\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\inst2|lpm_ff_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|altsyncram_component|auto_generated|q_a\(1),
	sclr => \sclr~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lpm_ff_component|dffs\(1));

\inst3|sram|ram_block|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst3|altram:sram|altsyncram:ram_block|altsyncram_mf91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wrenRAM~input_o\,
	portare => VCC,
	clk0 => \ALT_INV_clock~input_o\,
	portadatain => \inst3|sram|ram_block|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst3|sram|ram_block|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|sram|ram_block|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00005555",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "L3.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1:inst|altsyncram:altsyncram_component|altsyncram_4u21:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ROMClock~input_o\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\inst2|lpm_ff_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|altsyncram_component|auto_generated|q_a\(0),
	sclr => \sclr~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lpm_ff_component|dffs\(0));

\inst3|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst3|altram:sram|altsyncram:ram_block|altsyncram_mf91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wrenRAM~input_o\,
	portare => VCC,
	clk0 => \ALT_INV_clock~input_o\,
	portadatain => \inst3|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst3|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_OUTRAM(7) <= \OUTRAM[7]~output_o\;

ww_OUTRAM(6) <= \OUTRAM[6]~output_o\;

ww_OUTRAM(5) <= \OUTRAM[5]~output_o\;

ww_OUTRAM(4) <= \OUTRAM[4]~output_o\;

ww_OUTRAM(3) <= \OUTRAM[3]~output_o\;

ww_OUTRAM(2) <= \OUTRAM[2]~output_o\;

ww_OUTRAM(1) <= \OUTRAM[1]~output_o\;

ww_OUTRAM(0) <= \OUTRAM[0]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_RegOut(7) <= \RegOut[7]~output_o\;

ww_RegOut(6) <= \RegOut[6]~output_o\;

ww_RegOut(5) <= \RegOut[5]~output_o\;

ww_RegOut(4) <= \RegOut[4]~output_o\;

ww_RegOut(3) <= \RegOut[3]~output_o\;

ww_RegOut(2) <= \RegOut[2]~output_o\;

ww_RegOut(1) <= \RegOut[1]~output_o\;

ww_RegOut(0) <= \RegOut[0]~output_o\;
END structure;



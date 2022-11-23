-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/17/2022 10:45:25"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUFull_P IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Alu_Sel : IN std_logic_vector(3 DOWNTO 0);
	Sal : OUT std_logic_vector(8 DOWNTO 0)
	);
END ALUFull_P;

-- Design Ports Information
-- Sal[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal[7]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_Sel[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_Sel[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_Sel[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alu_Sel[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUFull_P IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Alu_Sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sal : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALU|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Sal[0]~output_o\ : std_logic;
SIGNAL \Sal[1]~output_o\ : std_logic;
SIGNAL \Sal[2]~output_o\ : std_logic;
SIGNAL \Sal[3]~output_o\ : std_logic;
SIGNAL \Sal[4]~output_o\ : std_logic;
SIGNAL \Sal[5]~output_o\ : std_logic;
SIGNAL \Sal[6]~output_o\ : std_logic;
SIGNAL \Sal[7]~output_o\ : std_logic;
SIGNAL \Sal[8]~output_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ALU|Add1~1_cout\ : std_logic;
SIGNAL \ALU|Add1~2_combout\ : std_logic;
SIGNAL \ALU|Add0~1_cout\ : std_logic;
SIGNAL \ALU|Add0~2_combout\ : std_logic;
SIGNAL \Alu_Sel[0]~input_o\ : std_logic;
SIGNAL \ALU|Add1~4_combout\ : std_logic;
SIGNAL \Alu_Sel[3]~input_o\ : std_logic;
SIGNAL \Alu_Sel[2]~input_o\ : std_logic;
SIGNAL \Alu_Sel[1]~input_o\ : std_logic;
SIGNAL \ALU|Equal0~0_combout\ : std_logic;
SIGNAL \ALU|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \ALU|Add0~3\ : std_logic;
SIGNAL \ALU|Add0~4_combout\ : std_logic;
SIGNAL \ALU|Add1~3\ : std_logic;
SIGNAL \ALU|Add1~5_combout\ : std_logic;
SIGNAL \ALU|Add1~7_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \ALU|Add0~5\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \ALU|Add1~6\ : std_logic;
SIGNAL \ALU|Add1~8_combout\ : std_logic;
SIGNAL \ALU|Add1~10_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \ALU|Add1~9\ : std_logic;
SIGNAL \ALU|Add1~11_combout\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \ALU|Add1~13_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ALU|Add1~12\ : std_logic;
SIGNAL \ALU|Add1~14_combout\ : std_logic;
SIGNAL \ALU|Add0~9\ : std_logic;
SIGNAL \ALU|Add0~10_combout\ : std_logic;
SIGNAL \ALU|Add1~16_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \ALU|Add1~15\ : std_logic;
SIGNAL \ALU|Add1~17_combout\ : std_logic;
SIGNAL \ALU|Add0~11\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \ALU|Add1~19_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \ALU|Add1~18\ : std_logic;
SIGNAL \ALU|Add1~20_combout\ : std_logic;
SIGNAL \ALU|Add0~13\ : std_logic;
SIGNAL \ALU|Add0~14_combout\ : std_logic;
SIGNAL \ALU|Add1~22_combout\ : std_logic;
SIGNAL \ALU|Result\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALU|ALT_INV_Result\ : std_logic_vector(7 DOWNTO 1);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Alu_Sel <= Alu_Sel;
Sal <= ww_Sal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ALU|Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ALU|Equal0~0_combout\);
\ALU|ALT_INV_Result\(7) <= NOT \ALU|Result\(7);
\ALU|ALT_INV_Result\(6) <= NOT \ALU|Result\(6);
\ALU|ALT_INV_Result\(5) <= NOT \ALU|Result\(5);
\ALU|ALT_INV_Result\(4) <= NOT \ALU|Result\(4);
\ALU|ALT_INV_Result\(3) <= NOT \ALU|Result\(3);
\ALU|ALT_INV_Result\(2) <= NOT \ALU|Result\(2);
\ALU|ALT_INV_Result\(1) <= NOT \ALU|Result\(1);

-- Location: IOOBUF_X0_Y13_N23
\Sal[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Sal[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\Sal[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|ALT_INV_Result\(1),
	devoe => ww_devoe,
	o => \Sal[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Sal[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|ALT_INV_Result\(2),
	devoe => ww_devoe,
	o => \Sal[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\Sal[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|ALT_INV_Result\(3),
	devoe => ww_devoe,
	o => \Sal[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Sal[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|ALT_INV_Result\(4),
	devoe => ww_devoe,
	o => \Sal[4]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\Sal[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|ALT_INV_Result\(5),
	devoe => ww_devoe,
	o => \Sal[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\Sal[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|ALT_INV_Result\(6),
	devoe => ww_devoe,
	o => \Sal[6]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\Sal[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|ALT_INV_Result\(7),
	devoe => ww_devoe,
	o => \Sal[7]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\Sal[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sal[8]~output_o\);

-- Location: IOIBUF_X16_Y0_N22
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X19_Y17_N0
\ALU|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~1_cout\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \ALU|Add1~1_cout\);

-- Location: LCCOMB_X19_Y17_N2
\ALU|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (!\ALU|Add1~1_cout\)) # (!\B[1]~input_o\ & (\ALU|Add1~1_cout\ & VCC)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & ((\ALU|Add1~1_cout\) # (GND))) # (!\B[1]~input_o\ & (!\ALU|Add1~1_cout\))))
-- \ALU|Add1~3\ = CARRY((\A[1]~input_o\ & (\B[1]~input_o\ & !\ALU|Add1~1_cout\)) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # (!\ALU|Add1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \ALU|Add1~1_cout\,
	combout => \ALU|Add1~2_combout\,
	cout => \ALU|Add1~3\);

-- Location: LCCOMB_X19_Y17_N16
\ALU|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~1_cout\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \ALU|Add0~1_cout\);

-- Location: LCCOMB_X19_Y17_N18
\ALU|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\ALU|Add0~1_cout\ & VCC)) # (!\B[1]~input_o\ & (!\ALU|Add0~1_cout\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\ALU|Add0~1_cout\)) # (!\B[1]~input_o\ & ((\ALU|Add0~1_cout\) # (GND)))))
-- \ALU|Add0~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\ALU|Add0~1_cout\)) # (!\A[1]~input_o\ & ((!\ALU|Add0~1_cout\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \ALU|Add0~1_cout\,
	combout => \ALU|Add0~2_combout\,
	cout => \ALU|Add0~3\);

-- Location: IOIBUF_X21_Y29_N8
\Alu_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Alu_Sel(0),
	o => \Alu_Sel[0]~input_o\);

-- Location: LCCOMB_X20_Y17_N24
\ALU|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~4_combout\ = (\Alu_Sel[0]~input_o\ & (\ALU|Add1~2_combout\)) # (!\Alu_Sel[0]~input_o\ & ((\ALU|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add1~2_combout\,
	datab => \ALU|Add0~2_combout\,
	datad => \Alu_Sel[0]~input_o\,
	combout => \ALU|Add1~4_combout\);

-- Location: IOIBUF_X23_Y0_N8
\Alu_Sel[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Alu_Sel(3),
	o => \Alu_Sel[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\Alu_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Alu_Sel(2),
	o => \Alu_Sel[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\Alu_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Alu_Sel(1),
	o => \Alu_Sel[1]~input_o\);

-- Location: LCCOMB_X22_Y1_N30
\ALU|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Equal0~0_combout\ = (!\Alu_Sel[3]~input_o\ & (!\Alu_Sel[2]~input_o\ & !\Alu_Sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alu_Sel[3]~input_o\,
	datac => \Alu_Sel[2]~input_o\,
	datad => \Alu_Sel[1]~input_o\,
	combout => \ALU|Equal0~0_combout\);

-- Location: CLKCTRL_G15
\ALU|Equal0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ALU|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ALU|Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y17_N22
\ALU|Result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Result\(1) = (GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & (\ALU|Add1~4_combout\)) # (!GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & ((\ALU|Result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add1~4_combout\,
	datac => \ALU|Result\(1),
	datad => \ALU|Equal0~0clkctrl_outclk\,
	combout => \ALU|Result\(1));

-- Location: IOIBUF_X19_Y0_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X19_Y17_N20
\ALU|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\ALU|Add0~3\)))) # (GND)
-- \ALU|Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\ALU|Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \ALU|Add0~3\,
	combout => \ALU|Add0~4_combout\,
	cout => \ALU|Add0~5\);

-- Location: LCCOMB_X19_Y17_N4
\ALU|Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~5_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\ALU|Add1~3\)))) # (GND)
-- \ALU|Add1~6\ = CARRY((\A[2]~input_o\ & ((!\ALU|Add1~3\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\ALU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \ALU|Add1~3\,
	combout => \ALU|Add1~5_combout\,
	cout => \ALU|Add1~6\);

-- Location: LCCOMB_X20_Y17_N18
\ALU|Add1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~7_combout\ = (\Alu_Sel[0]~input_o\ & ((\ALU|Add1~5_combout\))) # (!\Alu_Sel[0]~input_o\ & (\ALU|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add0~4_combout\,
	datac => \ALU|Add1~5_combout\,
	datad => \Alu_Sel[0]~input_o\,
	combout => \ALU|Add1~7_combout\);

-- Location: LCCOMB_X20_Y17_N16
\ALU|Result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Result\(2) = (GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & (\ALU|Add1~7_combout\)) # (!GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & ((\ALU|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add1~7_combout\,
	datac => \ALU|Equal0~0clkctrl_outclk\,
	datad => \ALU|Result\(2),
	combout => \ALU|Result\(2));

-- Location: IOIBUF_X16_Y29_N22
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X19_Y17_N22
\ALU|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\ALU|Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\ALU|Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\ALU|Add0~5\)) # (!\B[3]~input_o\ & ((\ALU|Add0~5\) # (GND)))))
-- \ALU|Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\ALU|Add0~5\)) # (!\A[3]~input_o\ & ((!\ALU|Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \ALU|Add0~5\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: LCCOMB_X19_Y17_N6
\ALU|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~8_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\ALU|Add1~6\)) # (!\B[3]~input_o\ & (\ALU|Add1~6\ & VCC)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\ALU|Add1~6\) # (GND))) # (!\B[3]~input_o\ & (!\ALU|Add1~6\))))
-- \ALU|Add1~9\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\ALU|Add1~6\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\ALU|Add1~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \ALU|Add1~6\,
	combout => \ALU|Add1~8_combout\,
	cout => \ALU|Add1~9\);

-- Location: LCCOMB_X20_Y17_N28
\ALU|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~10_combout\ = (\Alu_Sel[0]~input_o\ & ((\ALU|Add1~8_combout\))) # (!\Alu_Sel[0]~input_o\ & (\ALU|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add0~6_combout\,
	datac => \ALU|Add1~8_combout\,
	datad => \Alu_Sel[0]~input_o\,
	combout => \ALU|Add1~10_combout\);

-- Location: LCCOMB_X20_Y17_N2
\ALU|Result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Result\(3) = (GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & (\ALU|Add1~10_combout\)) # (!GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & ((\ALU|Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add1~10_combout\,
	datac => \ALU|Equal0~0clkctrl_outclk\,
	datad => \ALU|Result\(3),
	combout => \ALU|Result\(3));

-- Location: IOIBUF_X19_Y0_N8
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X16_Y29_N29
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X19_Y17_N8
\ALU|Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~11_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (\ALU|Add1~9\)))) # (GND)
-- \ALU|Add1~12\ = CARRY((\A[4]~input_o\ & ((!\ALU|Add1~9\) # (!\B[4]~input_o\))) # (!\A[4]~input_o\ & (!\B[4]~input_o\ & !\ALU|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \ALU|Add1~9\,
	combout => \ALU|Add1~11_combout\,
	cout => \ALU|Add1~12\);

-- Location: LCCOMB_X19_Y17_N24
\ALU|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (!\ALU|Add0~7\)))) # (GND)
-- \ALU|Add0~9\ = CARRY((\A[4]~input_o\ & ((\B[4]~input_o\) # (!\ALU|Add0~7\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & !\ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~8_combout\,
	cout => \ALU|Add0~9\);

-- Location: LCCOMB_X20_Y17_N6
\ALU|Add1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~13_combout\ = (\Alu_Sel[0]~input_o\ & (\ALU|Add1~11_combout\)) # (!\Alu_Sel[0]~input_o\ & ((\ALU|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add1~11_combout\,
	datab => \ALU|Add0~8_combout\,
	datad => \Alu_Sel[0]~input_o\,
	combout => \ALU|Add1~13_combout\);

-- Location: LCCOMB_X20_Y17_N12
\ALU|Result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Result\(4) = (GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & (\ALU|Add1~13_combout\)) # (!GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & ((\ALU|Result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add1~13_combout\,
	datac => \ALU|Result\(4),
	datad => \ALU|Equal0~0clkctrl_outclk\,
	combout => \ALU|Result\(4));

-- Location: IOIBUF_X21_Y29_N29
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X19_Y17_N10
\ALU|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~14_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (!\ALU|Add1~12\)) # (!\B[5]~input_o\ & (\ALU|Add1~12\ & VCC)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & ((\ALU|Add1~12\) # (GND))) # (!\B[5]~input_o\ & (!\ALU|Add1~12\))))
-- \ALU|Add1~15\ = CARRY((\A[5]~input_o\ & (\B[5]~input_o\ & !\ALU|Add1~12\)) # (!\A[5]~input_o\ & ((\B[5]~input_o\) # (!\ALU|Add1~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \ALU|Add1~12\,
	combout => \ALU|Add1~14_combout\,
	cout => \ALU|Add1~15\);

-- Location: LCCOMB_X19_Y17_N26
\ALU|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (\ALU|Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\ALU|Add0~9\)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (!\ALU|Add0~9\)) # (!\B[5]~input_o\ & ((\ALU|Add0~9\) # (GND)))))
-- \ALU|Add0~11\ = CARRY((\A[5]~input_o\ & (!\B[5]~input_o\ & !\ALU|Add0~9\)) # (!\A[5]~input_o\ & ((!\ALU|Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \ALU|Add0~9\,
	combout => \ALU|Add0~10_combout\,
	cout => \ALU|Add0~11\);

-- Location: LCCOMB_X20_Y17_N0
\ALU|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~16_combout\ = (\Alu_Sel[0]~input_o\ & (\ALU|Add1~14_combout\)) # (!\Alu_Sel[0]~input_o\ & ((\ALU|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add1~14_combout\,
	datac => \ALU|Add0~10_combout\,
	datad => \Alu_Sel[0]~input_o\,
	combout => \ALU|Add1~16_combout\);

-- Location: LCCOMB_X20_Y17_N30
\ALU|Result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Result\(5) = (GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & (\ALU|Add1~16_combout\)) # (!GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & ((\ALU|Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add1~16_combout\,
	datac => \ALU|Result\(5),
	datad => \ALU|Equal0~0clkctrl_outclk\,
	combout => \ALU|Result\(5));

-- Location: IOIBUF_X21_Y29_N15
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X19_Y17_N12
\ALU|Add1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~17_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (\ALU|Add1~15\)))) # (GND)
-- \ALU|Add1~18\ = CARRY((\A[6]~input_o\ & ((!\ALU|Add1~15\) # (!\B[6]~input_o\))) # (!\A[6]~input_o\ & (!\B[6]~input_o\ & !\ALU|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \ALU|Add1~15\,
	combout => \ALU|Add1~17_combout\,
	cout => \ALU|Add1~18\);

-- Location: LCCOMB_X19_Y17_N28
\ALU|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (!\ALU|Add0~11\)))) # (GND)
-- \ALU|Add0~13\ = CARRY((\A[6]~input_o\ & ((\B[6]~input_o\) # (!\ALU|Add0~11\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & !\ALU|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \ALU|Add0~11\,
	combout => \ALU|Add0~12_combout\,
	cout => \ALU|Add0~13\);

-- Location: LCCOMB_X20_Y17_N10
\ALU|Add1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~19_combout\ = (\Alu_Sel[0]~input_o\ & (\ALU|Add1~17_combout\)) # (!\Alu_Sel[0]~input_o\ & ((\ALU|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add1~17_combout\,
	datab => \ALU|Add0~12_combout\,
	datad => \Alu_Sel[0]~input_o\,
	combout => \ALU|Add1~19_combout\);

-- Location: LCCOMB_X20_Y17_N8
\ALU|Result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Result\(6) = (GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & (\ALU|Add1~19_combout\)) # (!GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & ((\ALU|Result\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add1~19_combout\,
	datac => \ALU|Result\(6),
	datad => \ALU|Equal0~0clkctrl_outclk\,
	combout => \ALU|Result\(6));

-- Location: IOIBUF_X16_Y29_N8
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X41_Y17_N1
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X19_Y17_N14
\ALU|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~20_combout\ = \A[7]~input_o\ $ (\ALU|Add1~18\ $ (!\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \ALU|Add1~18\,
	combout => \ALU|Add1~20_combout\);

-- Location: LCCOMB_X19_Y17_N30
\ALU|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~14_combout\ = \A[7]~input_o\ $ (\ALU|Add0~13\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \ALU|Add0~13\,
	combout => \ALU|Add0~14_combout\);

-- Location: LCCOMB_X20_Y17_N20
\ALU|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add1~22_combout\ = (\Alu_Sel[0]~input_o\ & (\ALU|Add1~20_combout\)) # (!\Alu_Sel[0]~input_o\ & ((\ALU|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add1~20_combout\,
	datab => \ALU|Add0~14_combout\,
	datad => \Alu_Sel[0]~input_o\,
	combout => \ALU|Add1~22_combout\);

-- Location: LCCOMB_X20_Y17_N26
\ALU|Result[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Result\(7) = (GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & (\ALU|Add1~22_combout\)) # (!GLOBAL(\ALU|Equal0~0clkctrl_outclk\) & ((\ALU|Result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Add1~22_combout\,
	datac => \ALU|Result\(7),
	datad => \ALU|Equal0~0clkctrl_outclk\,
	combout => \ALU|Result\(7));

ww_Sal(0) <= \Sal[0]~output_o\;

ww_Sal(1) <= \Sal[1]~output_o\;

ww_Sal(2) <= \Sal[2]~output_o\;

ww_Sal(3) <= \Sal[3]~output_o\;

ww_Sal(4) <= \Sal[4]~output_o\;

ww_Sal(5) <= \Sal[5]~output_o\;

ww_Sal(6) <= \Sal[6]~output_o\;

ww_Sal(7) <= \Sal[7]~output_o\;

ww_Sal(8) <= \Sal[8]~output_o\;
END structure;



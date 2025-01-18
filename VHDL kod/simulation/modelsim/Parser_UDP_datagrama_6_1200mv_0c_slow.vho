-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "01/18/2025 10:41:02"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Parser_UDP_datagrama IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	in_data : IN std_logic_vector(7 DOWNTO 0);
	in_startofpacket : IN std_logic;
	in_endofpacket : IN std_logic;
	in_ready : OUT std_logic;
	in_valid : IN std_logic;
	out_data : OUT std_logic_vector(7 DOWNTO 0);
	out_startofpacket : OUT std_logic;
	out_endofpacket : OUT std_logic;
	out_ready : IN std_logic;
	out_valid : OUT std_logic;
	channel : OUT std_logic_vector(95 DOWNTO 0)
	);
END Parser_UDP_datagrama;

-- Design Ports Information
-- in_endofpacket	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_ready	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_startofpacket	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endofpacket	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[7]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[8]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[10]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[11]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[12]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[13]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[14]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[15]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[16]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[17]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[18]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[19]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[20]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[21]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[22]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[23]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[24]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[25]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[26]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[27]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[28]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[29]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[30]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[31]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[32]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[33]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[34]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[35]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[36]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[37]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[38]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[39]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[40]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[41]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[42]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[43]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[44]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[45]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[46]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[47]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[48]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[49]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[50]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[51]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[52]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[53]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[54]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[55]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[56]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[57]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[58]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[59]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[60]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[61]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[62]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[63]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[64]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[65]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[66]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[67]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[68]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[69]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[70]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[71]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[72]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[73]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[74]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[75]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[76]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[77]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[78]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[79]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[80]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[81]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[82]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[83]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[84]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[85]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[86]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[87]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[88]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[89]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[90]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[91]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[92]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[93]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[94]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[95]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_startofpacket	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Parser_UDP_datagrama IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in_startofpacket : std_logic;
SIGNAL ww_in_endofpacket : std_logic;
SIGNAL ww_in_ready : std_logic;
SIGNAL ww_in_valid : std_logic;
SIGNAL ww_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_startofpacket : std_logic;
SIGNAL ww_out_endofpacket : std_logic;
SIGNAL ww_out_ready : std_logic;
SIGNAL ww_out_valid : std_logic;
SIGNAL ww_channel : std_logic_vector(95 DOWNTO 0);
SIGNAL \s_state.DATA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in_endofpacket~input_o\ : std_logic;
SIGNAL \in_ready~output_o\ : std_logic;
SIGNAL \out_data[0]~output_o\ : std_logic;
SIGNAL \out_data[1]~output_o\ : std_logic;
SIGNAL \out_data[2]~output_o\ : std_logic;
SIGNAL \out_data[3]~output_o\ : std_logic;
SIGNAL \out_data[4]~output_o\ : std_logic;
SIGNAL \out_data[5]~output_o\ : std_logic;
SIGNAL \out_data[6]~output_o\ : std_logic;
SIGNAL \out_data[7]~output_o\ : std_logic;
SIGNAL \out_startofpacket~output_o\ : std_logic;
SIGNAL \out_endofpacket~output_o\ : std_logic;
SIGNAL \out_valid~output_o\ : std_logic;
SIGNAL \channel[0]~output_o\ : std_logic;
SIGNAL \channel[1]~output_o\ : std_logic;
SIGNAL \channel[2]~output_o\ : std_logic;
SIGNAL \channel[3]~output_o\ : std_logic;
SIGNAL \channel[4]~output_o\ : std_logic;
SIGNAL \channel[5]~output_o\ : std_logic;
SIGNAL \channel[6]~output_o\ : std_logic;
SIGNAL \channel[7]~output_o\ : std_logic;
SIGNAL \channel[8]~output_o\ : std_logic;
SIGNAL \channel[9]~output_o\ : std_logic;
SIGNAL \channel[10]~output_o\ : std_logic;
SIGNAL \channel[11]~output_o\ : std_logic;
SIGNAL \channel[12]~output_o\ : std_logic;
SIGNAL \channel[13]~output_o\ : std_logic;
SIGNAL \channel[14]~output_o\ : std_logic;
SIGNAL \channel[15]~output_o\ : std_logic;
SIGNAL \channel[16]~output_o\ : std_logic;
SIGNAL \channel[17]~output_o\ : std_logic;
SIGNAL \channel[18]~output_o\ : std_logic;
SIGNAL \channel[19]~output_o\ : std_logic;
SIGNAL \channel[20]~output_o\ : std_logic;
SIGNAL \channel[21]~output_o\ : std_logic;
SIGNAL \channel[22]~output_o\ : std_logic;
SIGNAL \channel[23]~output_o\ : std_logic;
SIGNAL \channel[24]~output_o\ : std_logic;
SIGNAL \channel[25]~output_o\ : std_logic;
SIGNAL \channel[26]~output_o\ : std_logic;
SIGNAL \channel[27]~output_o\ : std_logic;
SIGNAL \channel[28]~output_o\ : std_logic;
SIGNAL \channel[29]~output_o\ : std_logic;
SIGNAL \channel[30]~output_o\ : std_logic;
SIGNAL \channel[31]~output_o\ : std_logic;
SIGNAL \channel[32]~output_o\ : std_logic;
SIGNAL \channel[33]~output_o\ : std_logic;
SIGNAL \channel[34]~output_o\ : std_logic;
SIGNAL \channel[35]~output_o\ : std_logic;
SIGNAL \channel[36]~output_o\ : std_logic;
SIGNAL \channel[37]~output_o\ : std_logic;
SIGNAL \channel[38]~output_o\ : std_logic;
SIGNAL \channel[39]~output_o\ : std_logic;
SIGNAL \channel[40]~output_o\ : std_logic;
SIGNAL \channel[41]~output_o\ : std_logic;
SIGNAL \channel[42]~output_o\ : std_logic;
SIGNAL \channel[43]~output_o\ : std_logic;
SIGNAL \channel[44]~output_o\ : std_logic;
SIGNAL \channel[45]~output_o\ : std_logic;
SIGNAL \channel[46]~output_o\ : std_logic;
SIGNAL \channel[47]~output_o\ : std_logic;
SIGNAL \channel[48]~output_o\ : std_logic;
SIGNAL \channel[49]~output_o\ : std_logic;
SIGNAL \channel[50]~output_o\ : std_logic;
SIGNAL \channel[51]~output_o\ : std_logic;
SIGNAL \channel[52]~output_o\ : std_logic;
SIGNAL \channel[53]~output_o\ : std_logic;
SIGNAL \channel[54]~output_o\ : std_logic;
SIGNAL \channel[55]~output_o\ : std_logic;
SIGNAL \channel[56]~output_o\ : std_logic;
SIGNAL \channel[57]~output_o\ : std_logic;
SIGNAL \channel[58]~output_o\ : std_logic;
SIGNAL \channel[59]~output_o\ : std_logic;
SIGNAL \channel[60]~output_o\ : std_logic;
SIGNAL \channel[61]~output_o\ : std_logic;
SIGNAL \channel[62]~output_o\ : std_logic;
SIGNAL \channel[63]~output_o\ : std_logic;
SIGNAL \channel[64]~output_o\ : std_logic;
SIGNAL \channel[65]~output_o\ : std_logic;
SIGNAL \channel[66]~output_o\ : std_logic;
SIGNAL \channel[67]~output_o\ : std_logic;
SIGNAL \channel[68]~output_o\ : std_logic;
SIGNAL \channel[69]~output_o\ : std_logic;
SIGNAL \channel[70]~output_o\ : std_logic;
SIGNAL \channel[71]~output_o\ : std_logic;
SIGNAL \channel[72]~output_o\ : std_logic;
SIGNAL \channel[73]~output_o\ : std_logic;
SIGNAL \channel[74]~output_o\ : std_logic;
SIGNAL \channel[75]~output_o\ : std_logic;
SIGNAL \channel[76]~output_o\ : std_logic;
SIGNAL \channel[77]~output_o\ : std_logic;
SIGNAL \channel[78]~output_o\ : std_logic;
SIGNAL \channel[79]~output_o\ : std_logic;
SIGNAL \channel[80]~output_o\ : std_logic;
SIGNAL \channel[81]~output_o\ : std_logic;
SIGNAL \channel[82]~output_o\ : std_logic;
SIGNAL \channel[83]~output_o\ : std_logic;
SIGNAL \channel[84]~output_o\ : std_logic;
SIGNAL \channel[85]~output_o\ : std_logic;
SIGNAL \channel[86]~output_o\ : std_logic;
SIGNAL \channel[87]~output_o\ : std_logic;
SIGNAL \channel[88]~output_o\ : std_logic;
SIGNAL \channel[89]~output_o\ : std_logic;
SIGNAL \channel[90]~output_o\ : std_logic;
SIGNAL \channel[91]~output_o\ : std_logic;
SIGNAL \channel[92]~output_o\ : std_logic;
SIGNAL \channel[93]~output_o\ : std_logic;
SIGNAL \channel[94]~output_o\ : std_logic;
SIGNAL \channel[95]~output_o\ : std_logic;
SIGNAL \out_ready~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \delayed_data[0]~feeder_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \next_counter[0]~62_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \next_counter[1]~63_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Equal16~8_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Equal16~7_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Equal16~6_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Equal16~5_combout\ : std_logic;
SIGNAL \Equal16~9_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Equal16~2_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \next_counter[31]~64_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal16~3_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \Equal16~4_combout\ : std_logic;
SIGNAL \PROCES2~0_combout\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \byte_index[0]~36_combout\ : std_logic;
SIGNAL \PROCES1~2_combout\ : std_logic;
SIGNAL \in_startofpacket~input_o\ : std_logic;
SIGNAL \Selector3~38_combout\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \byte_index[2]~46\ : std_logic;
SIGNAL \byte_index[3]~47_combout\ : std_logic;
SIGNAL \byte_index[31]~41_combout\ : std_logic;
SIGNAL \byte_index[31]~106_combout\ : std_logic;
SIGNAL \byte_index[31]~42_combout\ : std_logic;
SIGNAL \byte_index[3]~48\ : std_logic;
SIGNAL \byte_index[4]~49_combout\ : std_logic;
SIGNAL \byte_index[4]~50\ : std_logic;
SIGNAL \byte_index[5]~51_combout\ : std_logic;
SIGNAL \byte_index[5]~52\ : std_logic;
SIGNAL \byte_index[6]~53_combout\ : std_logic;
SIGNAL \byte_index[6]~54\ : std_logic;
SIGNAL \byte_index[7]~55_combout\ : std_logic;
SIGNAL \byte_index[7]~56\ : std_logic;
SIGNAL \byte_index[8]~57_combout\ : std_logic;
SIGNAL \byte_index[8]~58\ : std_logic;
SIGNAL \byte_index[9]~59_combout\ : std_logic;
SIGNAL \byte_index[9]~60\ : std_logic;
SIGNAL \byte_index[10]~61_combout\ : std_logic;
SIGNAL \byte_index[10]~62\ : std_logic;
SIGNAL \byte_index[11]~63_combout\ : std_logic;
SIGNAL \byte_index[11]~64\ : std_logic;
SIGNAL \byte_index[12]~65_combout\ : std_logic;
SIGNAL \byte_index[12]~66\ : std_logic;
SIGNAL \byte_index[13]~67_combout\ : std_logic;
SIGNAL \byte_index[13]~68\ : std_logic;
SIGNAL \byte_index[14]~69_combout\ : std_logic;
SIGNAL \byte_index[14]~70\ : std_logic;
SIGNAL \byte_index[15]~71_combout\ : std_logic;
SIGNAL \byte_index[15]~72\ : std_logic;
SIGNAL \byte_index[16]~73_combout\ : std_logic;
SIGNAL \byte_index[16]~74\ : std_logic;
SIGNAL \byte_index[17]~75_combout\ : std_logic;
SIGNAL \byte_index[17]~76\ : std_logic;
SIGNAL \byte_index[18]~77_combout\ : std_logic;
SIGNAL \byte_index[18]~78\ : std_logic;
SIGNAL \byte_index[19]~79_combout\ : std_logic;
SIGNAL \byte_index[19]~80\ : std_logic;
SIGNAL \byte_index[20]~81_combout\ : std_logic;
SIGNAL \byte_index[20]~82\ : std_logic;
SIGNAL \byte_index[21]~83_combout\ : std_logic;
SIGNAL \byte_index[21]~84\ : std_logic;
SIGNAL \byte_index[22]~85_combout\ : std_logic;
SIGNAL \byte_index[22]~86\ : std_logic;
SIGNAL \byte_index[23]~87_combout\ : std_logic;
SIGNAL \byte_index[23]~88\ : std_logic;
SIGNAL \byte_index[24]~89_combout\ : std_logic;
SIGNAL \byte_index[24]~90\ : std_logic;
SIGNAL \byte_index[25]~91_combout\ : std_logic;
SIGNAL \byte_index[25]~92\ : std_logic;
SIGNAL \byte_index[26]~93_combout\ : std_logic;
SIGNAL \byte_index[26]~94\ : std_logic;
SIGNAL \byte_index[27]~95_combout\ : std_logic;
SIGNAL \byte_index[27]~96\ : std_logic;
SIGNAL \byte_index[28]~97_combout\ : std_logic;
SIGNAL \byte_index[28]~98\ : std_logic;
SIGNAL \byte_index[29]~99_combout\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \udp_length[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \byte_index[29]~100\ : std_logic;
SIGNAL \byte_index[30]~101_combout\ : std_logic;
SIGNAL \byte_index[30]~102\ : std_logic;
SIGNAL \byte_index[31]~103_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \ip_header_length[2]~0_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal10~11_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add8~3_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Equal10~7_combout\ : std_logic;
SIGNAL \Equal10~8_combout\ : std_logic;
SIGNAL \Equal10~10_combout\ : std_logic;
SIGNAL \udp_length[31]~36_combout\ : std_logic;
SIGNAL \udp_length[31]~37_combout\ : std_logic;
SIGNAL \udp_length[0]~33\ : std_logic;
SIGNAL \udp_length[1]~34_combout\ : std_logic;
SIGNAL \udp_length[1]~35\ : std_logic;
SIGNAL \udp_length[2]~38_combout\ : std_logic;
SIGNAL \udp_length[2]~39\ : std_logic;
SIGNAL \udp_length[3]~40_combout\ : std_logic;
SIGNAL \udp_length[3]~41\ : std_logic;
SIGNAL \udp_length[4]~42_combout\ : std_logic;
SIGNAL \udp_length[4]~43\ : std_logic;
SIGNAL \udp_length[5]~44_combout\ : std_logic;
SIGNAL \udp_length[5]~45\ : std_logic;
SIGNAL \udp_length[6]~46_combout\ : std_logic;
SIGNAL \udp_length[6]~47\ : std_logic;
SIGNAL \udp_length[7]~48_combout\ : std_logic;
SIGNAL \udp_length[7]~49\ : std_logic;
SIGNAL \udp_length[8]~50_combout\ : std_logic;
SIGNAL \udp_length[8]~51\ : std_logic;
SIGNAL \udp_length[9]~52_combout\ : std_logic;
SIGNAL \udp_length[9]~53\ : std_logic;
SIGNAL \udp_length[10]~54_combout\ : std_logic;
SIGNAL \udp_length[10]~55\ : std_logic;
SIGNAL \udp_length[11]~56_combout\ : std_logic;
SIGNAL \udp_length[11]~57\ : std_logic;
SIGNAL \udp_length[12]~58_combout\ : std_logic;
SIGNAL \udp_length[12]~59\ : std_logic;
SIGNAL \udp_length[13]~60_combout\ : std_logic;
SIGNAL \udp_length[13]~61\ : std_logic;
SIGNAL \udp_length[14]~62_combout\ : std_logic;
SIGNAL \udp_length[14]~63\ : std_logic;
SIGNAL \udp_length[15]~64_combout\ : std_logic;
SIGNAL \udp_length[15]~65\ : std_logic;
SIGNAL \udp_length[16]~66_combout\ : std_logic;
SIGNAL \udp_length[16]~67\ : std_logic;
SIGNAL \udp_length[17]~68_combout\ : std_logic;
SIGNAL \udp_length[17]~69\ : std_logic;
SIGNAL \udp_length[18]~70_combout\ : std_logic;
SIGNAL \udp_length[18]~71\ : std_logic;
SIGNAL \udp_length[19]~72_combout\ : std_logic;
SIGNAL \udp_length[19]~73\ : std_logic;
SIGNAL \udp_length[20]~74_combout\ : std_logic;
SIGNAL \udp_length[20]~75\ : std_logic;
SIGNAL \udp_length[21]~76_combout\ : std_logic;
SIGNAL \udp_length[21]~77\ : std_logic;
SIGNAL \udp_length[22]~78_combout\ : std_logic;
SIGNAL \udp_length[22]~79\ : std_logic;
SIGNAL \udp_length[23]~80_combout\ : std_logic;
SIGNAL \udp_length[23]~81\ : std_logic;
SIGNAL \udp_length[24]~82_combout\ : std_logic;
SIGNAL \udp_length[24]~83\ : std_logic;
SIGNAL \udp_length[25]~84_combout\ : std_logic;
SIGNAL \udp_length[25]~85\ : std_logic;
SIGNAL \udp_length[26]~86_combout\ : std_logic;
SIGNAL \udp_length[26]~87\ : std_logic;
SIGNAL \udp_length[27]~88_combout\ : std_logic;
SIGNAL \udp_length[27]~89\ : std_logic;
SIGNAL \udp_length[28]~90_combout\ : std_logic;
SIGNAL \udp_length[28]~91\ : std_logic;
SIGNAL \udp_length[29]~92_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~33\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~41\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~45\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~49\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Selector3~18_combout\ : std_logic;
SIGNAL \Selector3~19_combout\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Selector3~16_combout\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Selector3~17_combout\ : std_logic;
SIGNAL \Selector3~20_combout\ : std_logic;
SIGNAL \udp_length[29]~93\ : std_logic;
SIGNAL \udp_length[30]~94_combout\ : std_logic;
SIGNAL \udp_length[30]~95\ : std_logic;
SIGNAL \udp_length[31]~96_combout\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~61\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \Selector3~11_combout\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Selector3~12_combout\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Selector3~13_combout\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Selector3~14_combout\ : std_logic;
SIGNAL \Selector3~15_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \Selector3~8_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Selector3~7_combout\ : std_logic;
SIGNAL \Selector3~9_combout\ : std_logic;
SIGNAL \Selector3~10_combout\ : std_logic;
SIGNAL \Selector3~21_combout\ : std_logic;
SIGNAL \Add7~1_cout\ : std_logic;
SIGNAL \Add7~3_cout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \Equal13~9_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \Equal13~7_combout\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Equal13~8_combout\ : std_logic;
SIGNAL \Equal13~10_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Equal13~13_combout\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Equal13~11_combout\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Equal13~12_combout\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Equal13~14_combout\ : std_logic;
SIGNAL \Equal13~15_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Equal13~17_combout\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Equal13~16_combout\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Equal13~18_combout\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \Equal13~19_combout\ : std_logic;
SIGNAL \Equal13~20_combout\ : std_logic;
SIGNAL \Selector3~35_combout\ : std_logic;
SIGNAL \s_state.CRC~0_combout\ : std_logic;
SIGNAL \s_state.CRC~q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector0~27_combout\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \next_state~12_combout\ : std_logic;
SIGNAL \next_state~8_combout\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \Selector3~26_combout\ : std_logic;
SIGNAL \Selector3~32_combout\ : std_logic;
SIGNAL \Selector3~33_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Selector3~29_combout\ : std_logic;
SIGNAL \Selector3~30_combout\ : std_logic;
SIGNAL \Selector3~31_combout\ : std_logic;
SIGNAL \Selector3~25_combout\ : std_logic;
SIGNAL \Selector3~27_combout\ : std_logic;
SIGNAL \Selector3~28_combout\ : std_logic;
SIGNAL \Add10~1_cout\ : std_logic;
SIGNAL \Add10~3_cout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~21\ : std_logic;
SIGNAL \Add10~23\ : std_logic;
SIGNAL \Add10~25\ : std_logic;
SIGNAL \Add10~27\ : std_logic;
SIGNAL \Add10~29\ : std_logic;
SIGNAL \Add10~31\ : std_logic;
SIGNAL \Add10~33\ : std_logic;
SIGNAL \Add10~35\ : std_logic;
SIGNAL \Add10~37\ : std_logic;
SIGNAL \Add10~39\ : std_logic;
SIGNAL \Add10~41\ : std_logic;
SIGNAL \Add10~43\ : std_logic;
SIGNAL \Add10~45\ : std_logic;
SIGNAL \Add10~47\ : std_logic;
SIGNAL \Add10~48_combout\ : std_logic;
SIGNAL \Add10~49\ : std_logic;
SIGNAL \Add10~50_combout\ : std_logic;
SIGNAL \Selector0~20_combout\ : std_logic;
SIGNAL \Add10~51\ : std_logic;
SIGNAL \Add10~53\ : std_logic;
SIGNAL \Add10~55\ : std_logic;
SIGNAL \Add10~57\ : std_logic;
SIGNAL \Add10~59\ : std_logic;
SIGNAL \Add10~60_combout\ : std_logic;
SIGNAL \Add10~58_combout\ : std_logic;
SIGNAL \Add10~61\ : std_logic;
SIGNAL \Add10~62_combout\ : std_logic;
SIGNAL \Selector0~21_combout\ : std_logic;
SIGNAL \Selector0~22_combout\ : std_logic;
SIGNAL \Add10~52_combout\ : std_logic;
SIGNAL \Add10~54_combout\ : std_logic;
SIGNAL \Selector0~9_combout\ : std_logic;
SIGNAL \Add10~24_combout\ : std_logic;
SIGNAL \Add10~26_combout\ : std_logic;
SIGNAL \Selector0~16_combout\ : std_logic;
SIGNAL \Add10~28_combout\ : std_logic;
SIGNAL \Add10~30_combout\ : std_logic;
SIGNAL \Selector0~17_combout\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Selector0~14_combout\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \Selector0~15_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Selector0~10_combout\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Selector0~12_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Selector0~11_combout\ : std_logic;
SIGNAL \Selector0~13_combout\ : std_logic;
SIGNAL \Selector0~18_combout\ : std_logic;
SIGNAL \Add10~56_combout\ : std_logic;
SIGNAL \Selector0~19_combout\ : std_logic;
SIGNAL \Add10~34_combout\ : std_logic;
SIGNAL \Add10~32_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Add10~36_combout\ : std_logic;
SIGNAL \Add10~38_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Add10~44_combout\ : std_logic;
SIGNAL \Add10~46_combout\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL \Add10~40_combout\ : std_logic;
SIGNAL \Add10~42_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \Selector0~8_combout\ : std_logic;
SIGNAL \Selector0~23_combout\ : std_logic;
SIGNAL \Selector3~34_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \s_state.ETHERNET_HEADER~q\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector0~24_combout\ : std_logic;
SIGNAL \Selector0~25_combout\ : std_logic;
SIGNAL \Selector0~26_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \PROCES1~0_combout\ : std_logic;
SIGNAL \PROCES1~1_combout\ : std_logic;
SIGNAL \Selector0~37_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector0~32_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector0~36_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Equal9~3_combout\ : std_logic;
SIGNAL \Equal9~4_combout\ : std_logic;
SIGNAL \Selector0~28_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \s_state.IP_HEADER~q\ : std_logic;
SIGNAL \Selector0~29_combout\ : std_logic;
SIGNAL \Selector0~30_combout\ : std_logic;
SIGNAL \Selector0~31_combout\ : std_logic;
SIGNAL \Selector0~33_combout\ : std_logic;
SIGNAL \Selector0~34_combout\ : std_logic;
SIGNAL \Selector0~35_combout\ : std_logic;
SIGNAL \s_state.IDLE~q\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \byte_index[0]~38_combout\ : std_logic;
SIGNAL \byte_index[0]~105_combout\ : std_logic;
SIGNAL \byte_index[0]~39_combout\ : std_logic;
SIGNAL \byte_index[0]~40_combout\ : std_logic;
SIGNAL \byte_index[0]~37\ : std_logic;
SIGNAL \byte_index[1]~43_combout\ : std_logic;
SIGNAL \byte_index[1]~44\ : std_logic;
SIGNAL \byte_index[2]~45_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector3~23_combout\ : std_logic;
SIGNAL \Selector3~24_combout\ : std_logic;
SIGNAL \Selector3~36_combout\ : std_logic;
SIGNAL \Selector3~37_combout\ : std_logic;
SIGNAL \s_state.UDP_HEADER~q\ : std_logic;
SIGNAL \Selector3~22_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \s_state.DATA~q\ : std_logic;
SIGNAL \s_state.DATA~clkctrl_outclk\ : std_logic;
SIGNAL \out_data[0]$latch~combout\ : std_logic;
SIGNAL \delayed_data[1]~feeder_combout\ : std_logic;
SIGNAL \out_data[1]$latch~combout\ : std_logic;
SIGNAL \delayed_data[2]~feeder_combout\ : std_logic;
SIGNAL \out_data[2]$latch~combout\ : std_logic;
SIGNAL \delayed_data[3]~feeder_combout\ : std_logic;
SIGNAL \out_data[3]$latch~combout\ : std_logic;
SIGNAL \out_data[4]$latch~combout\ : std_logic;
SIGNAL \delayed_data[5]~feeder_combout\ : std_logic;
SIGNAL \out_data[5]$latch~combout\ : std_logic;
SIGNAL \out_data[6]$latch~combout\ : std_logic;
SIGNAL \out_data[7]$latch~combout\ : std_logic;
SIGNAL \s_out_endofpacket~0_combout\ : std_logic;
SIGNAL \s_out_endofpacket~1_combout\ : std_logic;
SIGNAL \s_out_endofpacket~2_combout\ : std_logic;
SIGNAL \s_out_endofpacket~q\ : std_logic;
SIGNAL \s_channel[0]~6_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \s_channel[0]~12_combout\ : std_logic;
SIGNAL \channel~0_combout\ : std_logic;
SIGNAL \channel~1_combout\ : std_logic;
SIGNAL \channel~2_combout\ : std_logic;
SIGNAL \channel~3_combout\ : std_logic;
SIGNAL \channel~4_combout\ : std_logic;
SIGNAL \channel~5_combout\ : std_logic;
SIGNAL \channel~6_combout\ : std_logic;
SIGNAL \channel~7_combout\ : std_logic;
SIGNAL \s_channel[8]~13_combout\ : std_logic;
SIGNAL \s_channel[8]~7_combout\ : std_logic;
SIGNAL \channel~8_combout\ : std_logic;
SIGNAL \channel~9_combout\ : std_logic;
SIGNAL \channel~10_combout\ : std_logic;
SIGNAL \channel~11_combout\ : std_logic;
SIGNAL \channel~12_combout\ : std_logic;
SIGNAL \channel~13_combout\ : std_logic;
SIGNAL \channel~14_combout\ : std_logic;
SIGNAL \channel~15_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \Equal18~1_combout\ : std_logic;
SIGNAL \Equal10~9_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \s_channel[24]~9_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \s_channel[0]~8_combout\ : std_logic;
SIGNAL \s_channel[24]~10_combout\ : std_logic;
SIGNAL \s_channel[16]~11_combout\ : std_logic;
SIGNAL \channel~16_combout\ : std_logic;
SIGNAL \channel~17_combout\ : std_logic;
SIGNAL \channel~18_combout\ : std_logic;
SIGNAL \channel~19_combout\ : std_logic;
SIGNAL \channel~20_combout\ : std_logic;
SIGNAL \channel~21_combout\ : std_logic;
SIGNAL \channel~22_combout\ : std_logic;
SIGNAL \channel~23_combout\ : std_logic;
SIGNAL \s_channel[24]~14_combout\ : std_logic;
SIGNAL \channel~24_combout\ : std_logic;
SIGNAL \channel~25_combout\ : std_logic;
SIGNAL \channel~26_combout\ : std_logic;
SIGNAL \channel~27_combout\ : std_logic;
SIGNAL \channel~28_combout\ : std_logic;
SIGNAL \channel~29_combout\ : std_logic;
SIGNAL \channel~30_combout\ : std_logic;
SIGNAL \channel~31_combout\ : std_logic;
SIGNAL \channel~32_combout\ : std_logic;
SIGNAL \channel~33_combout\ : std_logic;
SIGNAL \channel~34_combout\ : std_logic;
SIGNAL \channel~35_combout\ : std_logic;
SIGNAL \channel~36_combout\ : std_logic;
SIGNAL \channel~37_combout\ : std_logic;
SIGNAL \channel~38_combout\ : std_logic;
SIGNAL \channel~39_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \channel~40_combout\ : std_logic;
SIGNAL \channel~41_combout\ : std_logic;
SIGNAL \channel~42_combout\ : std_logic;
SIGNAL \channel~43_combout\ : std_logic;
SIGNAL \channel~44_combout\ : std_logic;
SIGNAL \channel~45_combout\ : std_logic;
SIGNAL \channel~46_combout\ : std_logic;
SIGNAL \channel~47_combout\ : std_logic;
SIGNAL \channel~48_combout\ : std_logic;
SIGNAL \channel~49_combout\ : std_logic;
SIGNAL \channel~50_combout\ : std_logic;
SIGNAL \channel~51_combout\ : std_logic;
SIGNAL \channel~52_combout\ : std_logic;
SIGNAL \channel~53_combout\ : std_logic;
SIGNAL \channel~54_combout\ : std_logic;
SIGNAL \channel~55_combout\ : std_logic;
SIGNAL \channel~56_combout\ : std_logic;
SIGNAL \channel~57_combout\ : std_logic;
SIGNAL \channel~58_combout\ : std_logic;
SIGNAL \channel~59_combout\ : std_logic;
SIGNAL \channel~60_combout\ : std_logic;
SIGNAL \channel~61_combout\ : std_logic;
SIGNAL \channel~62_combout\ : std_logic;
SIGNAL \channel~63_combout\ : std_logic;
SIGNAL \channel~64_combout\ : std_logic;
SIGNAL \channel~65_combout\ : std_logic;
SIGNAL \channel~66_combout\ : std_logic;
SIGNAL \channel~67_combout\ : std_logic;
SIGNAL \channel~68_combout\ : std_logic;
SIGNAL \channel~69_combout\ : std_logic;
SIGNAL \channel~70_combout\ : std_logic;
SIGNAL \channel~71_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \channel~72_combout\ : std_logic;
SIGNAL \channel~73_combout\ : std_logic;
SIGNAL \channel~74_combout\ : std_logic;
SIGNAL \channel~75_combout\ : std_logic;
SIGNAL \channel~76_combout\ : std_logic;
SIGNAL \channel~77_combout\ : std_logic;
SIGNAL \channel~78_combout\ : std_logic;
SIGNAL \channel~79_combout\ : std_logic;
SIGNAL \channel~80_combout\ : std_logic;
SIGNAL \channel~81_combout\ : std_logic;
SIGNAL \channel~82_combout\ : std_logic;
SIGNAL \channel~83_combout\ : std_logic;
SIGNAL \channel~84_combout\ : std_logic;
SIGNAL \channel~85_combout\ : std_logic;
SIGNAL \channel~86_combout\ : std_logic;
SIGNAL \channel~87_combout\ : std_logic;
SIGNAL \channel~88_combout\ : std_logic;
SIGNAL \channel~89_combout\ : std_logic;
SIGNAL \channel~90_combout\ : std_logic;
SIGNAL \channel~91_combout\ : std_logic;
SIGNAL \channel~92_combout\ : std_logic;
SIGNAL \channel~93_combout\ : std_logic;
SIGNAL \channel~94_combout\ : std_logic;
SIGNAL \channel~95_combout\ : std_logic;
SIGNAL byte_index : std_logic_vector(31 DOWNTO 0);
SIGNAL udp_length : std_logic_vector(31 DOWNTO 0);
SIGNAL s_channel : std_logic_vector(95 DOWNTO 0);
SIGNAL s_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ip_header_length : std_logic_vector(31 DOWNTO 0);
SIGNAL delayed_data : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_in_data <= in_data;
ww_in_startofpacket <= in_startofpacket;
ww_in_endofpacket <= in_endofpacket;
in_ready <= ww_in_ready;
ww_in_valid <= in_valid;
out_data <= ww_out_data;
out_startofpacket <= ww_out_startofpacket;
out_endofpacket <= ww_out_endofpacket;
ww_out_ready <= out_ready;
out_valid <= ww_out_valid;
channel <= ww_channel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\s_state.DATA~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_state.DATA~q\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N2
\in_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_ready~input_o\,
	devoe => ww_devoe,
	o => \in_ready~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\out_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[0]$latch~combout\,
	devoe => ww_devoe,
	o => \out_data[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\out_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[1]$latch~combout\,
	devoe => ww_devoe,
	o => \out_data[1]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\out_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[2]$latch~combout\,
	devoe => ww_devoe,
	o => \out_data[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\out_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[3]$latch~combout\,
	devoe => ww_devoe,
	o => \out_data[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\out_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[4]$latch~combout\,
	devoe => ww_devoe,
	o => \out_data[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\out_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[5]$latch~combout\,
	devoe => ww_devoe,
	o => \out_data[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\out_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[6]$latch~combout\,
	devoe => ww_devoe,
	o => \out_data[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\out_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data[7]$latch~combout\,
	devoe => ww_devoe,
	o => \out_data[7]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\out_startofpacket~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_startofpacket~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\out_endofpacket~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_out_endofpacket~q\,
	devoe => ww_devoe,
	o => \out_endofpacket~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\out_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_state.DATA~q\,
	devoe => ww_devoe,
	o => \out_valid~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\channel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~0_combout\,
	devoe => ww_devoe,
	o => \channel[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\channel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~1_combout\,
	devoe => ww_devoe,
	o => \channel[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\channel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~2_combout\,
	devoe => ww_devoe,
	o => \channel[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\channel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~3_combout\,
	devoe => ww_devoe,
	o => \channel[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\channel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~4_combout\,
	devoe => ww_devoe,
	o => \channel[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\channel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~5_combout\,
	devoe => ww_devoe,
	o => \channel[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\channel[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~6_combout\,
	devoe => ww_devoe,
	o => \channel[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\channel[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~7_combout\,
	devoe => ww_devoe,
	o => \channel[7]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\channel[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~8_combout\,
	devoe => ww_devoe,
	o => \channel[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\channel[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~9_combout\,
	devoe => ww_devoe,
	o => \channel[9]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\channel[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~10_combout\,
	devoe => ww_devoe,
	o => \channel[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\channel[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~11_combout\,
	devoe => ww_devoe,
	o => \channel[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\channel[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~12_combout\,
	devoe => ww_devoe,
	o => \channel[12]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\channel[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~13_combout\,
	devoe => ww_devoe,
	o => \channel[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\channel[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~14_combout\,
	devoe => ww_devoe,
	o => \channel[14]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\channel[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~15_combout\,
	devoe => ww_devoe,
	o => \channel[15]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\channel[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~16_combout\,
	devoe => ww_devoe,
	o => \channel[16]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\channel[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~17_combout\,
	devoe => ww_devoe,
	o => \channel[17]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\channel[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~18_combout\,
	devoe => ww_devoe,
	o => \channel[18]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\channel[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~19_combout\,
	devoe => ww_devoe,
	o => \channel[19]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\channel[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~20_combout\,
	devoe => ww_devoe,
	o => \channel[20]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\channel[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~21_combout\,
	devoe => ww_devoe,
	o => \channel[21]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\channel[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~22_combout\,
	devoe => ww_devoe,
	o => \channel[22]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\channel[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~23_combout\,
	devoe => ww_devoe,
	o => \channel[23]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\channel[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~24_combout\,
	devoe => ww_devoe,
	o => \channel[24]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\channel[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~25_combout\,
	devoe => ww_devoe,
	o => \channel[25]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\channel[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~26_combout\,
	devoe => ww_devoe,
	o => \channel[26]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\channel[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~27_combout\,
	devoe => ww_devoe,
	o => \channel[27]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\channel[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~28_combout\,
	devoe => ww_devoe,
	o => \channel[28]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\channel[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~29_combout\,
	devoe => ww_devoe,
	o => \channel[29]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\channel[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~30_combout\,
	devoe => ww_devoe,
	o => \channel[30]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\channel[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~31_combout\,
	devoe => ww_devoe,
	o => \channel[31]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\channel[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~32_combout\,
	devoe => ww_devoe,
	o => \channel[32]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\channel[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~33_combout\,
	devoe => ww_devoe,
	o => \channel[33]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\channel[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~34_combout\,
	devoe => ww_devoe,
	o => \channel[34]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\channel[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~35_combout\,
	devoe => ww_devoe,
	o => \channel[35]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\channel[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~36_combout\,
	devoe => ww_devoe,
	o => \channel[36]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\channel[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~37_combout\,
	devoe => ww_devoe,
	o => \channel[37]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\channel[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~38_combout\,
	devoe => ww_devoe,
	o => \channel[38]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\channel[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~39_combout\,
	devoe => ww_devoe,
	o => \channel[39]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\channel[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~40_combout\,
	devoe => ww_devoe,
	o => \channel[40]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\channel[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~41_combout\,
	devoe => ww_devoe,
	o => \channel[41]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\channel[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~42_combout\,
	devoe => ww_devoe,
	o => \channel[42]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\channel[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~43_combout\,
	devoe => ww_devoe,
	o => \channel[43]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\channel[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~44_combout\,
	devoe => ww_devoe,
	o => \channel[44]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\channel[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~45_combout\,
	devoe => ww_devoe,
	o => \channel[45]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\channel[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~46_combout\,
	devoe => ww_devoe,
	o => \channel[46]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\channel[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~47_combout\,
	devoe => ww_devoe,
	o => \channel[47]~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\channel[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~48_combout\,
	devoe => ww_devoe,
	o => \channel[48]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\channel[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~49_combout\,
	devoe => ww_devoe,
	o => \channel[49]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\channel[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~50_combout\,
	devoe => ww_devoe,
	o => \channel[50]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\channel[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~51_combout\,
	devoe => ww_devoe,
	o => \channel[51]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\channel[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~52_combout\,
	devoe => ww_devoe,
	o => \channel[52]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\channel[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~53_combout\,
	devoe => ww_devoe,
	o => \channel[53]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\channel[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~54_combout\,
	devoe => ww_devoe,
	o => \channel[54]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\channel[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~55_combout\,
	devoe => ww_devoe,
	o => \channel[55]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\channel[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~56_combout\,
	devoe => ww_devoe,
	o => \channel[56]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\channel[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~57_combout\,
	devoe => ww_devoe,
	o => \channel[57]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\channel[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~58_combout\,
	devoe => ww_devoe,
	o => \channel[58]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\channel[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~59_combout\,
	devoe => ww_devoe,
	o => \channel[59]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\channel[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~60_combout\,
	devoe => ww_devoe,
	o => \channel[60]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\channel[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~61_combout\,
	devoe => ww_devoe,
	o => \channel[61]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\channel[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~62_combout\,
	devoe => ww_devoe,
	o => \channel[62]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\channel[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~63_combout\,
	devoe => ww_devoe,
	o => \channel[63]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\channel[64]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~64_combout\,
	devoe => ww_devoe,
	o => \channel[64]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\channel[65]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~65_combout\,
	devoe => ww_devoe,
	o => \channel[65]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\channel[66]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~66_combout\,
	devoe => ww_devoe,
	o => \channel[66]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\channel[67]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~67_combout\,
	devoe => ww_devoe,
	o => \channel[67]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\channel[68]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~68_combout\,
	devoe => ww_devoe,
	o => \channel[68]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\channel[69]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~69_combout\,
	devoe => ww_devoe,
	o => \channel[69]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\channel[70]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~70_combout\,
	devoe => ww_devoe,
	o => \channel[70]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\channel[71]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~71_combout\,
	devoe => ww_devoe,
	o => \channel[71]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\channel[72]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~72_combout\,
	devoe => ww_devoe,
	o => \channel[72]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\channel[73]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~73_combout\,
	devoe => ww_devoe,
	o => \channel[73]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\channel[74]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~74_combout\,
	devoe => ww_devoe,
	o => \channel[74]~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\channel[75]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~75_combout\,
	devoe => ww_devoe,
	o => \channel[75]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\channel[76]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~76_combout\,
	devoe => ww_devoe,
	o => \channel[76]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\channel[77]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~77_combout\,
	devoe => ww_devoe,
	o => \channel[77]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\channel[78]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~78_combout\,
	devoe => ww_devoe,
	o => \channel[78]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\channel[79]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~79_combout\,
	devoe => ww_devoe,
	o => \channel[79]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\channel[80]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~80_combout\,
	devoe => ww_devoe,
	o => \channel[80]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\channel[81]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~81_combout\,
	devoe => ww_devoe,
	o => \channel[81]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\channel[82]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~82_combout\,
	devoe => ww_devoe,
	o => \channel[82]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\channel[83]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~83_combout\,
	devoe => ww_devoe,
	o => \channel[83]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\channel[84]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~84_combout\,
	devoe => ww_devoe,
	o => \channel[84]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\channel[85]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~85_combout\,
	devoe => ww_devoe,
	o => \channel[85]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\channel[86]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~86_combout\,
	devoe => ww_devoe,
	o => \channel[86]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\channel[87]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~87_combout\,
	devoe => ww_devoe,
	o => \channel[87]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\channel[88]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~88_combout\,
	devoe => ww_devoe,
	o => \channel[88]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\channel[89]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~89_combout\,
	devoe => ww_devoe,
	o => \channel[89]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\channel[90]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~90_combout\,
	devoe => ww_devoe,
	o => \channel[90]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\channel[91]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~91_combout\,
	devoe => ww_devoe,
	o => \channel[91]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\channel[92]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~92_combout\,
	devoe => ww_devoe,
	o => \channel[92]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\channel[93]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~93_combout\,
	devoe => ww_devoe,
	o => \channel[93]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\channel[94]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~94_combout\,
	devoe => ww_devoe,
	o => \channel[94]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\channel[95]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel~95_combout\,
	devoe => ww_devoe,
	o => \channel[95]~output_o\);

-- Location: IOIBUF_X28_Y0_N8
\out_ready~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_ready,
	o => \out_ready~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X3_Y24_N8
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: LCCOMB_X16_Y4_N8
\delayed_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \delayed_data[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G4
\reset_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X10_Y3_N6
\next_counter[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_counter[0]~62_combout\ = (!\out_ready~input_o\ & !\next_counter[0]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datad => \next_counter[0]~62_combout\,
	combout => \next_counter[0]~62_combout\);

-- Location: LCCOMB_X11_Y4_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\next_counter[1]~63_combout\ & (\next_counter[0]~62_combout\ $ (VCC))) # (!\next_counter[1]~63_combout\ & (\next_counter[0]~62_combout\ & VCC))
-- \Add0~2\ = CARRY((\next_counter[1]~63_combout\ & \next_counter[0]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_counter[1]~63_combout\,
	datab => \next_counter[0]~62_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X10_Y3_N0
\next_counter[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_counter[1]~63_combout\ = (\Add0~1_combout\ & !\out_ready~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~1_combout\,
	datad => \out_ready~input_o\,
	combout => \next_counter[1]~63_combout\);

-- Location: LCCOMB_X11_Y4_N4
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2\ & ((\out_ready~input_o\) # ((!\Add0~3_combout\)))) # (!\Add0~2\ & (((!\out_ready~input_o\ & \Add0~3_combout\)) # (GND)))
-- \Add0~4\ = CARRY((\out_ready~input_o\) # ((!\Add0~2\) # (!\Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X11_Y4_N6
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~4\ & (\Add0~5_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~4\ & ((((\Add0~5_combout\ & !\out_ready~input_o\)))))
-- \Add0~6\ = CARRY((\Add0~5_combout\ & (!\out_ready~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X11_Y4_N8
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~6\ & ((\out_ready~input_o\) # ((!\Add0~7_combout\)))) # (!\Add0~6\ & (((!\out_ready~input_o\ & \Add0~7_combout\)) # (GND)))
-- \Add0~8\ = CARRY((\out_ready~input_o\) # ((!\Add0~6\) # (!\Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X11_Y4_N10
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8\ & (\Add0~9_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~8\ & ((((\Add0~9_combout\ & !\out_ready~input_o\)))))
-- \Add0~10\ = CARRY((\Add0~9_combout\ & (!\out_ready~input_o\ & !\Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X11_Y4_N12
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10\ & (((\out_ready~input_o\)) # (!\Add0~11_combout\))) # (!\Add0~10\ & (((\Add0~11_combout\ & !\out_ready~input_o\)) # (GND)))
-- \Add0~12\ = CARRY(((\out_ready~input_o\) # (!\Add0~10\)) # (!\Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X10_Y4_N6
\Equal16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~8_combout\ = (!\Add0~11_combout\ & (!\Add0~9_combout\ & (!\Add0~7_combout\ & !\Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \Add0~9_combout\,
	datac => \Add0~7_combout\,
	datad => \Add0~5_combout\,
	combout => \Equal16~8_combout\);

-- Location: LCCOMB_X11_Y4_N14
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12\ & (!\out_ready~input_o\ & (\Add0~13_combout\ & VCC))) # (!\Add0~12\ & ((((!\out_ready~input_o\ & \Add0~13_combout\)))))
-- \Add0~14\ = CARRY((!\out_ready~input_o\ & (\Add0~13_combout\ & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~13_combout\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X11_Y4_N16
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14\ & ((\out_ready~input_o\) # ((!\Add0~15_combout\)))) # (!\Add0~14\ & (((!\out_ready~input_o\ & \Add0~15_combout\)) # (GND)))
-- \Add0~16\ = CARRY((\out_ready~input_o\) # ((!\Add0~14\) # (!\Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~15_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X11_Y4_N18
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~16\ & (\Add0~17_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~16\ & ((((\Add0~17_combout\ & !\out_ready~input_o\)))))
-- \Add0~18\ = CARRY((\Add0~17_combout\ & (!\out_ready~input_o\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X11_Y4_N20
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18\ & ((\out_ready~input_o\) # ((!\Add0~19_combout\)))) # (!\Add0~18\ & (((!\out_ready~input_o\ & \Add0~19_combout\)) # (GND)))
-- \Add0~20\ = CARRY((\out_ready~input_o\) # ((!\Add0~18\) # (!\Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X10_Y4_N28
\Equal16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~7_combout\ = (!\Add0~19_combout\ & (!\Add0~17_combout\ & (!\Add0~13_combout\ & !\Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~19_combout\,
	datab => \Add0~17_combout\,
	datac => \Add0~13_combout\,
	datad => \Add0~15_combout\,
	combout => \Equal16~7_combout\);

-- Location: LCCOMB_X11_Y4_N22
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20\ & (\Add0~21_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~20\ & ((((\Add0~21_combout\ & !\out_ready~input_o\)))))
-- \Add0~22\ = CARRY((\Add0~21_combout\ & (!\out_ready~input_o\ & !\Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X11_Y4_N24
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~22\ & ((\out_ready~input_o\) # ((!\Add0~23_combout\)))) # (!\Add0~22\ & (((!\out_ready~input_o\ & \Add0~23_combout\)) # (GND)))
-- \Add0~24\ = CARRY((\out_ready~input_o\) # ((!\Add0~22\) # (!\Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X11_Y4_N26
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24\ & (\Add0~25_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~24\ & ((((\Add0~25_combout\ & !\out_ready~input_o\)))))
-- \Add0~26\ = CARRY((\Add0~25_combout\ & (!\out_ready~input_o\ & !\Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X11_Y4_N28
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26\ & ((\out_ready~input_o\) # ((!\Add0~27_combout\)))) # (!\Add0~26\ & (((!\out_ready~input_o\ & \Add0~27_combout\)) # (GND)))
-- \Add0~28\ = CARRY((\out_ready~input_o\) # ((!\Add0~26\) # (!\Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~27_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X11_Y4_N0
\Equal16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~6_combout\ = (!\Add0~21_combout\ & (!\Add0~23_combout\ & (!\Add0~25_combout\ & !\Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \Add0~23_combout\,
	datac => \Add0~25_combout\,
	datad => \Add0~27_combout\,
	combout => \Equal16~6_combout\);

-- Location: LCCOMB_X11_Y4_N30
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28\ & (\Add0~29_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~28\ & ((((\Add0~29_combout\ & !\out_ready~input_o\)))))
-- \Add0~30\ = CARRY((\Add0~29_combout\ & (!\out_ready~input_o\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X11_Y3_N0
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~30\ & ((\out_ready~input_o\) # ((!\Add0~31_combout\)))) # (!\Add0~30\ & (((!\out_ready~input_o\ & \Add0~31_combout\)) # (GND)))
-- \Add0~32\ = CARRY((\out_ready~input_o\) # ((!\Add0~30\) # (!\Add0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~31_combout\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X11_Y3_N2
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32\ & (!\out_ready~input_o\ & (\Add0~33_combout\ & VCC))) # (!\Add0~32\ & ((((!\out_ready~input_o\ & \Add0~33_combout\)))))
-- \Add0~34\ = CARRY((!\out_ready~input_o\ & (\Add0~33_combout\ & !\Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X11_Y3_N4
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\Add0~34\ & (((\out_ready~input_o\)) # (!\Add0~35_combout\))) # (!\Add0~34\ & (((\Add0~35_combout\ & !\out_ready~input_o\)) # (GND)))
-- \Add0~36\ = CARRY(((\out_ready~input_o\) # (!\Add0~34\)) # (!\Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X10_Y3_N10
\Equal16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~5_combout\ = (!\Add0~35_combout\ & (!\Add0~31_combout\ & (!\Add0~29_combout\ & !\Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \Add0~31_combout\,
	datac => \Add0~29_combout\,
	datad => \Add0~33_combout\,
	combout => \Equal16~5_combout\);

-- Location: LCCOMB_X10_Y4_N20
\Equal16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~9_combout\ = (\Equal16~8_combout\ & (\Equal16~7_combout\ & (\Equal16~6_combout\ & \Equal16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~8_combout\,
	datab => \Equal16~7_combout\,
	datac => \Equal16~6_combout\,
	datad => \Equal16~5_combout\,
	combout => \Equal16~9_combout\);

-- Location: LCCOMB_X11_Y3_N6
\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\Add0~36\ & (\Add0~37_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~36\ & ((((\Add0~37_combout\ & !\out_ready~input_o\)))))
-- \Add0~38\ = CARRY((\Add0~37_combout\ & (!\out_ready~input_o\ & !\Add0~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X11_Y3_N8
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38\ & ((\out_ready~input_o\) # ((!\Add0~39_combout\)))) # (!\Add0~38\ & (((!\out_ready~input_o\ & \Add0~39_combout\)) # (GND)))
-- \Add0~40\ = CARRY((\out_ready~input_o\) # ((!\Add0~38\) # (!\Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~39_combout\,
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X11_Y3_N10
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~40\ & (\Add0~41_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~40\ & ((((\Add0~41_combout\ & !\out_ready~input_o\)))))
-- \Add0~42\ = CARRY((\Add0~41_combout\ & (!\out_ready~input_o\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X11_Y3_N12
\Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\Add0~42\ & (((\out_ready~input_o\)) # (!\Add0~43_combout\))) # (!\Add0~42\ & (((\Add0~43_combout\ & !\out_ready~input_o\)) # (GND)))
-- \Add0~44\ = CARRY(((\out_ready~input_o\) # (!\Add0~42\)) # (!\Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X11_Y3_N14
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44\ & (!\out_ready~input_o\ & (\Add0~45_combout\ & VCC))) # (!\Add0~44\ & ((((!\out_ready~input_o\ & \Add0~45_combout\)))))
-- \Add0~46\ = CARRY((!\out_ready~input_o\ & (\Add0~45_combout\ & !\Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~45_combout\,
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X11_Y3_N16
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\Add0~46\ & ((\out_ready~input_o\) # ((!\Add0~47_combout\)))) # (!\Add0~46\ & (((!\out_ready~input_o\ & \Add0~47_combout\)) # (GND)))
-- \Add0~48\ = CARRY((\out_ready~input_o\) # ((!\Add0~46\) # (!\Add0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~47_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X11_Y3_N18
\Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Add0~48\ & (!\out_ready~input_o\ & (\Add0~49_combout\ & VCC))) # (!\Add0~48\ & ((((!\out_ready~input_o\ & \Add0~49_combout\)))))
-- \Add0~50\ = CARRY((!\out_ready~input_o\ & (\Add0~49_combout\ & !\Add0~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~49_combout\,
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X11_Y3_N20
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\Add0~50\ & ((\out_ready~input_o\) # ((!\Add0~51_combout\)))) # (!\Add0~50\ & (((!\out_ready~input_o\ & \Add0~51_combout\)) # (GND)))
-- \Add0~52\ = CARRY((\out_ready~input_o\) # ((!\Add0~50\) # (!\Add0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~51_combout\,
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X10_Y3_N12
\Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~2_combout\ = (!\Add0~51_combout\ & (!\Add0~49_combout\ & (!\Add0~45_combout\ & !\Add0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datab => \Add0~49_combout\,
	datac => \Add0~45_combout\,
	datad => \Add0~47_combout\,
	combout => \Equal16~2_combout\);

-- Location: LCCOMB_X11_Y3_N22
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Add0~52\ & (\Add0~53_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~52\ & ((((\Add0~53_combout\ & !\out_ready~input_o\)))))
-- \Add0~54\ = CARRY((\Add0~53_combout\ & (!\out_ready~input_o\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

-- Location: LCCOMB_X11_Y3_N24
\Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\Add0~54\ & (((\out_ready~input_o\)) # (!\Add0~55_combout\))) # (!\Add0~54\ & (((\Add0~55_combout\ & !\out_ready~input_o\)) # (GND)))
-- \Add0~56\ = CARRY(((\out_ready~input_o\) # (!\Add0~54\)) # (!\Add0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~55_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X11_Y3_N26
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56\ & (\Add0~57_combout\ & (!\out_ready~input_o\ & VCC))) # (!\Add0~56\ & ((((\Add0~57_combout\ & !\out_ready~input_o\)))))
-- \Add0~58\ = CARRY((\Add0~57_combout\ & (!\out_ready~input_o\ & !\Add0~56\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X11_Y3_N28
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~58\ & ((\out_ready~input_o\) # ((!\Add0~59_combout\)))) # (!\Add0~58\ & (((!\out_ready~input_o\ & \Add0~59_combout\)) # (GND)))
-- \Add0~60\ = CARRY((\out_ready~input_o\) # ((!\Add0~58\) # (!\Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~59_combout\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

-- Location: LCCOMB_X11_Y3_N30
\Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = \Add0~60\ $ (!\next_counter[31]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \next_counter[31]~64_combout\,
	cin => \Add0~60\,
	combout => \Add0~61_combout\);

-- Location: LCCOMB_X10_Y3_N30
\next_counter[31]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_counter[31]~64_combout\ = (!\out_ready~input_o\ & \Add0~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datad => \Add0~61_combout\,
	combout => \next_counter[31]~64_combout\);

-- Location: LCCOMB_X10_Y3_N4
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (!\next_counter[31]~64_combout\ & ((\out_ready~input_o\) # ((!\Add0~1_combout\ & \next_counter[0]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_counter[31]~64_combout\,
	datab => \out_ready~input_o\,
	datac => \Add0~1_combout\,
	datad => \next_counter[0]~62_combout\,
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X10_Y3_N22
\Equal16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~3_combout\ = (!\Add0~43_combout\ & (!\Add0~41_combout\ & (!\Add0~39_combout\ & !\Add0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => \Add0~41_combout\,
	datac => \Add0~39_combout\,
	datad => \Add0~37_combout\,
	combout => \Equal16~3_combout\);

-- Location: LCCOMB_X10_Y3_N18
\Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (!\Add0~55_combout\ & (!\Add0~57_combout\ & (!\Add0~59_combout\ & !\Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~55_combout\,
	datab => \Add0~57_combout\,
	datac => \Add0~59_combout\,
	datad => \Add0~53_combout\,
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X10_Y3_N24
\Equal16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~4_combout\ = (\Equal16~2_combout\ & (\Equal16~0_combout\ & (\Equal16~3_combout\ & \Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~2_combout\,
	datab => \Equal16~0_combout\,
	datac => \Equal16~3_combout\,
	datad => \Equal16~1_combout\,
	combout => \Equal16~4_combout\);

-- Location: LCCOMB_X10_Y3_N28
\PROCES2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES2~0_combout\ = (\out_ready~input_o\) # ((\Equal16~9_combout\ & (\Equal16~4_combout\ & !\Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~9_combout\,
	datab => \Equal16~4_combout\,
	datac => \Add0~3_combout\,
	datad => \out_ready~input_o\,
	combout => \PROCES2~0_combout\);

-- Location: FF_X16_Y4_N9
\delayed_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(0));

-- Location: FF_X16_Y4_N19
\s_out_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(0));

-- Location: IOIBUF_X13_Y0_N1
\in_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: LCCOMB_X13_Y7_N0
\byte_index[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~36_combout\ = byte_index(0) $ (VCC)
-- \byte_index[0]~37\ = CARRY(byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datad => VCC,
	combout => \byte_index[0]~36_combout\,
	cout => \byte_index[0]~37\);

-- Location: LCCOMB_X14_Y5_N10
\PROCES1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~2_combout\ = (\in_valid~input_o\ & \out_ready~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \out_ready~input_o\,
	combout => \PROCES1~2_combout\);

-- Location: IOIBUF_X0_Y5_N22
\in_startofpacket~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_startofpacket,
	o => \in_startofpacket~input_o\);

-- Location: LCCOMB_X14_Y5_N4
\Selector3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~38_combout\ = (!\s_state.IDLE~q\ & \in_startofpacket~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.IDLE~q\,
	datac => \in_startofpacket~input_o\,
	combout => \Selector3~38_combout\);

-- Location: IOIBUF_X13_Y0_N22
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: LCCOMB_X10_Y5_N16
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\in_data[3]~input_o\) # ((!\in_data[0]~input_o\) # (!\in_data[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[3]~input_o\,
	datac => \in_data[4]~input_o\,
	datad => \in_data[0]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X13_Y7_N4
\byte_index[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[2]~45_combout\ = (byte_index(2) & (\byte_index[1]~44\ $ (GND))) # (!byte_index(2) & (!\byte_index[1]~44\ & VCC))
-- \byte_index[2]~46\ = CARRY((byte_index(2) & !\byte_index[1]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(2),
	datad => VCC,
	cin => \byte_index[1]~44\,
	combout => \byte_index[2]~45_combout\,
	cout => \byte_index[2]~46\);

-- Location: LCCOMB_X13_Y7_N6
\byte_index[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[3]~47_combout\ = (byte_index(3) & (!\byte_index[2]~46\)) # (!byte_index(3) & ((\byte_index[2]~46\) # (GND)))
-- \byte_index[3]~48\ = CARRY((!\byte_index[2]~46\) # (!byte_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datad => VCC,
	cin => \byte_index[2]~46\,
	combout => \byte_index[3]~47_combout\,
	cout => \byte_index[3]~48\);

-- Location: LCCOMB_X14_Y5_N20
\byte_index[31]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~41_combout\ = (!\s_state.DATA~q\ & (!\s_state.UDP_HEADER~q\ & (!\s_state.IP_HEADER~q\ & !\s_state.ETHERNET_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datab => \s_state.UDP_HEADER~q\,
	datac => \s_state.IP_HEADER~q\,
	datad => \s_state.ETHERNET_HEADER~q\,
	combout => \byte_index[31]~41_combout\);

-- Location: LCCOMB_X14_Y5_N8
\byte_index[31]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~106_combout\ = (\out_ready~input_o\ & ((\in_valid~input_o\) # ((\byte_index[31]~41_combout\)))) # (!\out_ready~input_o\ & (((!\s_state.CRC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \byte_index[31]~41_combout\,
	datac => \s_state.CRC~q\,
	datad => \out_ready~input_o\,
	combout => \byte_index[31]~106_combout\);

-- Location: LCCOMB_X14_Y5_N18
\byte_index[31]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~42_combout\ = (\PROCES2~0_combout\ & (\byte_index[31]~106_combout\ & ((\in_startofpacket~input_o\) # (\s_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_startofpacket~input_o\,
	datab => \PROCES2~0_combout\,
	datac => \s_state.IDLE~q\,
	datad => \byte_index[31]~106_combout\,
	combout => \byte_index[31]~42_combout\);

-- Location: FF_X13_Y7_N7
\byte_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[3]~47_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(3));

-- Location: LCCOMB_X13_Y7_N8
\byte_index[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[4]~49_combout\ = (byte_index(4) & (\byte_index[3]~48\ $ (GND))) # (!byte_index(4) & (!\byte_index[3]~48\ & VCC))
-- \byte_index[4]~50\ = CARRY((byte_index(4) & !\byte_index[3]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(4),
	datad => VCC,
	cin => \byte_index[3]~48\,
	combout => \byte_index[4]~49_combout\,
	cout => \byte_index[4]~50\);

-- Location: FF_X13_Y7_N9
\byte_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[4]~49_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(4));

-- Location: LCCOMB_X13_Y7_N10
\byte_index[5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[5]~51_combout\ = (byte_index(5) & (!\byte_index[4]~50\)) # (!byte_index(5) & ((\byte_index[4]~50\) # (GND)))
-- \byte_index[5]~52\ = CARRY((!\byte_index[4]~50\) # (!byte_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datad => VCC,
	cin => \byte_index[4]~50\,
	combout => \byte_index[5]~51_combout\,
	cout => \byte_index[5]~52\);

-- Location: FF_X13_Y7_N11
\byte_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[5]~51_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(5));

-- Location: LCCOMB_X13_Y7_N12
\byte_index[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[6]~53_combout\ = (byte_index(6) & (\byte_index[5]~52\ $ (GND))) # (!byte_index(6) & (!\byte_index[5]~52\ & VCC))
-- \byte_index[6]~54\ = CARRY((byte_index(6) & !\byte_index[5]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datad => VCC,
	cin => \byte_index[5]~52\,
	combout => \byte_index[6]~53_combout\,
	cout => \byte_index[6]~54\);

-- Location: FF_X13_Y7_N13
\byte_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[6]~53_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(6));

-- Location: LCCOMB_X13_Y7_N14
\byte_index[7]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[7]~55_combout\ = (byte_index(7) & (!\byte_index[6]~54\)) # (!byte_index(7) & ((\byte_index[6]~54\) # (GND)))
-- \byte_index[7]~56\ = CARRY((!\byte_index[6]~54\) # (!byte_index(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(7),
	datad => VCC,
	cin => \byte_index[6]~54\,
	combout => \byte_index[7]~55_combout\,
	cout => \byte_index[7]~56\);

-- Location: FF_X13_Y7_N15
\byte_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[7]~55_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(7));

-- Location: LCCOMB_X13_Y7_N16
\byte_index[8]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[8]~57_combout\ = (byte_index(8) & (\byte_index[7]~56\ $ (GND))) # (!byte_index(8) & (!\byte_index[7]~56\ & VCC))
-- \byte_index[8]~58\ = CARRY((byte_index(8) & !\byte_index[7]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(8),
	datad => VCC,
	cin => \byte_index[7]~56\,
	combout => \byte_index[8]~57_combout\,
	cout => \byte_index[8]~58\);

-- Location: FF_X13_Y7_N17
\byte_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[8]~57_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(8));

-- Location: LCCOMB_X13_Y7_N18
\byte_index[9]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[9]~59_combout\ = (byte_index(9) & (!\byte_index[8]~58\)) # (!byte_index(9) & ((\byte_index[8]~58\) # (GND)))
-- \byte_index[9]~60\ = CARRY((!\byte_index[8]~58\) # (!byte_index(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(9),
	datad => VCC,
	cin => \byte_index[8]~58\,
	combout => \byte_index[9]~59_combout\,
	cout => \byte_index[9]~60\);

-- Location: FF_X13_Y7_N19
\byte_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[9]~59_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(9));

-- Location: LCCOMB_X13_Y7_N20
\byte_index[10]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[10]~61_combout\ = (byte_index(10) & (\byte_index[9]~60\ $ (GND))) # (!byte_index(10) & (!\byte_index[9]~60\ & VCC))
-- \byte_index[10]~62\ = CARRY((byte_index(10) & !\byte_index[9]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(10),
	datad => VCC,
	cin => \byte_index[9]~60\,
	combout => \byte_index[10]~61_combout\,
	cout => \byte_index[10]~62\);

-- Location: FF_X13_Y7_N21
\byte_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[10]~61_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(10));

-- Location: LCCOMB_X13_Y7_N22
\byte_index[11]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[11]~63_combout\ = (byte_index(11) & (!\byte_index[10]~62\)) # (!byte_index(11) & ((\byte_index[10]~62\) # (GND)))
-- \byte_index[11]~64\ = CARRY((!\byte_index[10]~62\) # (!byte_index(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datad => VCC,
	cin => \byte_index[10]~62\,
	combout => \byte_index[11]~63_combout\,
	cout => \byte_index[11]~64\);

-- Location: FF_X13_Y7_N23
\byte_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[11]~63_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(11));

-- Location: LCCOMB_X13_Y7_N24
\byte_index[12]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[12]~65_combout\ = (byte_index(12) & (\byte_index[11]~64\ $ (GND))) # (!byte_index(12) & (!\byte_index[11]~64\ & VCC))
-- \byte_index[12]~66\ = CARRY((byte_index(12) & !\byte_index[11]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(12),
	datad => VCC,
	cin => \byte_index[11]~64\,
	combout => \byte_index[12]~65_combout\,
	cout => \byte_index[12]~66\);

-- Location: FF_X13_Y7_N25
\byte_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[12]~65_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(12));

-- Location: LCCOMB_X13_Y7_N26
\byte_index[13]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[13]~67_combout\ = (byte_index(13) & (!\byte_index[12]~66\)) # (!byte_index(13) & ((\byte_index[12]~66\) # (GND)))
-- \byte_index[13]~68\ = CARRY((!\byte_index[12]~66\) # (!byte_index(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datad => VCC,
	cin => \byte_index[12]~66\,
	combout => \byte_index[13]~67_combout\,
	cout => \byte_index[13]~68\);

-- Location: FF_X13_Y7_N27
\byte_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[13]~67_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(13));

-- Location: LCCOMB_X13_Y7_N28
\byte_index[14]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[14]~69_combout\ = (byte_index(14) & (\byte_index[13]~68\ $ (GND))) # (!byte_index(14) & (!\byte_index[13]~68\ & VCC))
-- \byte_index[14]~70\ = CARRY((byte_index(14) & !\byte_index[13]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(14),
	datad => VCC,
	cin => \byte_index[13]~68\,
	combout => \byte_index[14]~69_combout\,
	cout => \byte_index[14]~70\);

-- Location: FF_X13_Y7_N29
\byte_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[14]~69_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(14));

-- Location: LCCOMB_X13_Y7_N30
\byte_index[15]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~71_combout\ = (byte_index(15) & (!\byte_index[14]~70\)) # (!byte_index(15) & ((\byte_index[14]~70\) # (GND)))
-- \byte_index[15]~72\ = CARRY((!\byte_index[14]~70\) # (!byte_index(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datad => VCC,
	cin => \byte_index[14]~70\,
	combout => \byte_index[15]~71_combout\,
	cout => \byte_index[15]~72\);

-- Location: FF_X13_Y7_N31
\byte_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[15]~71_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(15));

-- Location: LCCOMB_X13_Y6_N0
\byte_index[16]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[16]~73_combout\ = (byte_index(16) & (\byte_index[15]~72\ $ (GND))) # (!byte_index(16) & (!\byte_index[15]~72\ & VCC))
-- \byte_index[16]~74\ = CARRY((byte_index(16) & !\byte_index[15]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(16),
	datad => VCC,
	cin => \byte_index[15]~72\,
	combout => \byte_index[16]~73_combout\,
	cout => \byte_index[16]~74\);

-- Location: FF_X13_Y6_N1
\byte_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[16]~73_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(16));

-- Location: LCCOMB_X13_Y6_N2
\byte_index[17]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[17]~75_combout\ = (byte_index(17) & (!\byte_index[16]~74\)) # (!byte_index(17) & ((\byte_index[16]~74\) # (GND)))
-- \byte_index[17]~76\ = CARRY((!\byte_index[16]~74\) # (!byte_index(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(17),
	datad => VCC,
	cin => \byte_index[16]~74\,
	combout => \byte_index[17]~75_combout\,
	cout => \byte_index[17]~76\);

-- Location: FF_X13_Y6_N3
\byte_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[17]~75_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(17));

-- Location: LCCOMB_X13_Y6_N4
\byte_index[18]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[18]~77_combout\ = (byte_index(18) & (\byte_index[17]~76\ $ (GND))) # (!byte_index(18) & (!\byte_index[17]~76\ & VCC))
-- \byte_index[18]~78\ = CARRY((byte_index(18) & !\byte_index[17]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(18),
	datad => VCC,
	cin => \byte_index[17]~76\,
	combout => \byte_index[18]~77_combout\,
	cout => \byte_index[18]~78\);

-- Location: FF_X13_Y6_N5
\byte_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[18]~77_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(18));

-- Location: LCCOMB_X13_Y6_N6
\byte_index[19]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[19]~79_combout\ = (byte_index(19) & (!\byte_index[18]~78\)) # (!byte_index(19) & ((\byte_index[18]~78\) # (GND)))
-- \byte_index[19]~80\ = CARRY((!\byte_index[18]~78\) # (!byte_index(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datad => VCC,
	cin => \byte_index[18]~78\,
	combout => \byte_index[19]~79_combout\,
	cout => \byte_index[19]~80\);

-- Location: FF_X13_Y6_N7
\byte_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[19]~79_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(19));

-- Location: LCCOMB_X13_Y6_N8
\byte_index[20]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[20]~81_combout\ = (byte_index(20) & (\byte_index[19]~80\ $ (GND))) # (!byte_index(20) & (!\byte_index[19]~80\ & VCC))
-- \byte_index[20]~82\ = CARRY((byte_index(20) & !\byte_index[19]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(20),
	datad => VCC,
	cin => \byte_index[19]~80\,
	combout => \byte_index[20]~81_combout\,
	cout => \byte_index[20]~82\);

-- Location: FF_X13_Y6_N9
\byte_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[20]~81_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(20));

-- Location: LCCOMB_X13_Y6_N10
\byte_index[21]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[21]~83_combout\ = (byte_index(21) & (!\byte_index[20]~82\)) # (!byte_index(21) & ((\byte_index[20]~82\) # (GND)))
-- \byte_index[21]~84\ = CARRY((!\byte_index[20]~82\) # (!byte_index(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datad => VCC,
	cin => \byte_index[20]~82\,
	combout => \byte_index[21]~83_combout\,
	cout => \byte_index[21]~84\);

-- Location: FF_X13_Y6_N11
\byte_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[21]~83_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(21));

-- Location: LCCOMB_X13_Y6_N12
\byte_index[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[22]~85_combout\ = (byte_index(22) & (\byte_index[21]~84\ $ (GND))) # (!byte_index(22) & (!\byte_index[21]~84\ & VCC))
-- \byte_index[22]~86\ = CARRY((byte_index(22) & !\byte_index[21]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datad => VCC,
	cin => \byte_index[21]~84\,
	combout => \byte_index[22]~85_combout\,
	cout => \byte_index[22]~86\);

-- Location: FF_X13_Y6_N13
\byte_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[22]~85_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(22));

-- Location: LCCOMB_X13_Y6_N14
\byte_index[23]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[23]~87_combout\ = (byte_index(23) & (!\byte_index[22]~86\)) # (!byte_index(23) & ((\byte_index[22]~86\) # (GND)))
-- \byte_index[23]~88\ = CARRY((!\byte_index[22]~86\) # (!byte_index(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(23),
	datad => VCC,
	cin => \byte_index[22]~86\,
	combout => \byte_index[23]~87_combout\,
	cout => \byte_index[23]~88\);

-- Location: FF_X13_Y6_N15
\byte_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[23]~87_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(23));

-- Location: LCCOMB_X13_Y6_N16
\byte_index[24]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[24]~89_combout\ = (byte_index(24) & (\byte_index[23]~88\ $ (GND))) # (!byte_index(24) & (!\byte_index[23]~88\ & VCC))
-- \byte_index[24]~90\ = CARRY((byte_index(24) & !\byte_index[23]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(24),
	datad => VCC,
	cin => \byte_index[23]~88\,
	combout => \byte_index[24]~89_combout\,
	cout => \byte_index[24]~90\);

-- Location: FF_X13_Y6_N17
\byte_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[24]~89_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(24));

-- Location: LCCOMB_X13_Y6_N18
\byte_index[25]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[25]~91_combout\ = (byte_index(25) & (!\byte_index[24]~90\)) # (!byte_index(25) & ((\byte_index[24]~90\) # (GND)))
-- \byte_index[25]~92\ = CARRY((!\byte_index[24]~90\) # (!byte_index(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(25),
	datad => VCC,
	cin => \byte_index[24]~90\,
	combout => \byte_index[25]~91_combout\,
	cout => \byte_index[25]~92\);

-- Location: FF_X13_Y6_N19
\byte_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[25]~91_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(25));

-- Location: LCCOMB_X13_Y6_N20
\byte_index[26]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[26]~93_combout\ = (byte_index(26) & (\byte_index[25]~92\ $ (GND))) # (!byte_index(26) & (!\byte_index[25]~92\ & VCC))
-- \byte_index[26]~94\ = CARRY((byte_index(26) & !\byte_index[25]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(26),
	datad => VCC,
	cin => \byte_index[25]~92\,
	combout => \byte_index[26]~93_combout\,
	cout => \byte_index[26]~94\);

-- Location: FF_X13_Y6_N21
\byte_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[26]~93_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(26));

-- Location: LCCOMB_X13_Y6_N22
\byte_index[27]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~95_combout\ = (byte_index(27) & (!\byte_index[26]~94\)) # (!byte_index(27) & ((\byte_index[26]~94\) # (GND)))
-- \byte_index[27]~96\ = CARRY((!\byte_index[26]~94\) # (!byte_index(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datad => VCC,
	cin => \byte_index[26]~94\,
	combout => \byte_index[27]~95_combout\,
	cout => \byte_index[27]~96\);

-- Location: FF_X13_Y6_N23
\byte_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[27]~95_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(27));

-- Location: LCCOMB_X13_Y6_N24
\byte_index[28]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[28]~97_combout\ = (byte_index(28) & (\byte_index[27]~96\ $ (GND))) # (!byte_index(28) & (!\byte_index[27]~96\ & VCC))
-- \byte_index[28]~98\ = CARRY((byte_index(28) & !\byte_index[27]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(28),
	datad => VCC,
	cin => \byte_index[27]~96\,
	combout => \byte_index[28]~97_combout\,
	cout => \byte_index[28]~98\);

-- Location: FF_X13_Y6_N25
\byte_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[28]~97_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(28));

-- Location: LCCOMB_X13_Y6_N26
\byte_index[29]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[29]~99_combout\ = (byte_index(29) & (!\byte_index[28]~98\)) # (!byte_index(29) & ((\byte_index[28]~98\) # (GND)))
-- \byte_index[29]~100\ = CARRY((!\byte_index[28]~98\) # (!byte_index(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datad => VCC,
	cin => \byte_index[28]~98\,
	combout => \byte_index[29]~99_combout\,
	cout => \byte_index[29]~100\);

-- Location: FF_X13_Y6_N27
\byte_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[29]~99_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(29));

-- Location: IOIBUF_X13_Y24_N8
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: IOIBUF_X3_Y24_N1
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: IOIBUF_X0_Y19_N15
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: LCCOMB_X13_Y10_N0
\udp_length[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[0]~32_combout\ = (\in_data[0]~input_o\ & (udp_length(0) $ (VCC))) # (!\in_data[0]~input_o\ & (udp_length(0) & VCC))
-- \udp_length[0]~33\ = CARRY((\in_data[0]~input_o\ & udp_length(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datab => udp_length(0),
	datad => VCC,
	combout => \udp_length[0]~32_combout\,
	cout => \udp_length[0]~33\);

-- Location: LCCOMB_X13_Y11_N20
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X13_Y6_N28
\byte_index[30]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[30]~101_combout\ = (byte_index(30) & (\byte_index[29]~100\ $ (GND))) # (!byte_index(30) & (!\byte_index[29]~100\ & VCC))
-- \byte_index[30]~102\ = CARRY((byte_index(30) & !\byte_index[29]~100\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(30),
	datad => VCC,
	cin => \byte_index[29]~100\,
	combout => \byte_index[30]~101_combout\,
	cout => \byte_index[30]~102\);

-- Location: FF_X13_Y6_N29
\byte_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[30]~101_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(30));

-- Location: LCCOMB_X13_Y6_N30
\byte_index[31]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~103_combout\ = byte_index(31) $ (\byte_index[30]~102\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	cin => \byte_index[30]~102\,
	combout => \byte_index[31]~103_combout\);

-- Location: FF_X13_Y6_N31
\byte_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[31]~103_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(31));

-- Location: LCCOMB_X12_Y6_N6
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!byte_index(26) & (!byte_index(24) & (!byte_index(23) & !byte_index(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(26),
	datab => byte_index(24),
	datac => byte_index(23),
	datad => byte_index(25),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X12_Y6_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!byte_index(19) & (!byte_index(20) & (!byte_index(21) & !byte_index(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datab => byte_index(20),
	datac => byte_index(21),
	datad => byte_index(22),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X10_Y7_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!byte_index(9) & (!byte_index(8) & (!byte_index(7) & !byte_index(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(8),
	datac => byte_index(7),
	datad => byte_index(10),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X14_Y7_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!byte_index(13) & (!byte_index(14) & (!byte_index(12) & !byte_index(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datab => byte_index(14),
	datac => byte_index(12),
	datad => byte_index(11),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X10_Y7_N6
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!byte_index(17) & (!byte_index(16) & (!byte_index(18) & !byte_index(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => byte_index(18),
	datad => byte_index(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X10_Y7_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X12_Y6_N16
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!byte_index(27) & (!byte_index(30) & (!byte_index(29) & !byte_index(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datab => byte_index(30),
	datac => byte_index(29),
	datad => byte_index(28),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X10_Y7_N2
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!byte_index(31) & (\Equal0~5_combout\ & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X9_Y7_N14
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (byte_index(0) & !byte_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datac => byte_index(4),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X9_Y7_N10
\ip_header_length[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_header_length[2]~0_combout\ = (\PROCES1~2_combout\ & (\Equal0~8_combout\ & (\s_state.IP_HEADER~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~2_combout\,
	datab => \Equal0~8_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal2~0_combout\,
	combout => \ip_header_length[2]~0_combout\);

-- Location: FF_X10_Y10_N13
\ip_header_length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ip_header_length[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(2));

-- Location: FF_X10_Y10_N9
\ip_header_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ip_header_length[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(4));

-- Location: FF_X10_Y10_N27
\ip_header_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ip_header_length[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(3));

-- Location: FF_X10_Y10_N3
\ip_header_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ip_header_length[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(5));

-- Location: LCCOMB_X10_Y10_N30
\Add8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~1_combout\ = ip_header_length(5) $ (((ip_header_length(4) & ((ip_header_length(2)) # (ip_header_length(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datab => ip_header_length(4),
	datac => ip_header_length(3),
	datad => ip_header_length(5),
	combout => \Add8~1_combout\);

-- Location: LCCOMB_X10_Y10_N2
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = \Add8~1_combout\ $ (byte_index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~1_combout\,
	datad => byte_index(5),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X9_Y10_N18
\Equal10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~11_combout\ = \Equal9~0_combout\ $ (((!ip_header_length(2) & (ip_header_length(4) & !ip_header_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(3),
	combout => \Equal10~11_combout\);

-- Location: LCCOMB_X10_Y10_N12
\Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = (byte_index(2) & (ip_header_length(2) & (byte_index(3) $ (!ip_header_length(3))))) # (!byte_index(2) & (!ip_header_length(2) & (byte_index(3) $ (!ip_header_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(3),
	datac => ip_header_length(2),
	datad => ip_header_length(3),
	combout => \Equal10~6_combout\);

-- Location: LCCOMB_X10_Y10_N26
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (!ip_header_length(2) & (ip_header_length(4) & (!ip_header_length(3) & ip_header_length(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datab => ip_header_length(4),
	datac => ip_header_length(3),
	datad => ip_header_length(5),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X10_Y10_N18
\Add8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~3_combout\ = (ip_header_length(4) & (ip_header_length(5) & ((ip_header_length(3)) # (ip_header_length(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(4),
	datab => ip_header_length(5),
	datac => ip_header_length(3),
	datad => ip_header_length(2),
	combout => \Add8~3_combout\);

-- Location: LCCOMB_X10_Y10_N16
\Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = \Add8~3_combout\ $ (byte_index(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~3_combout\,
	datad => byte_index(6),
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X10_Y10_N8
\Equal10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~7_combout\ = (\Add3~0_combout\ & (\Equal9~1_combout\ & (byte_index(4) $ (ip_header_length(4))))) # (!\Add3~0_combout\ & (!\Equal9~1_combout\ & (byte_index(4) $ (ip_header_length(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => byte_index(4),
	datac => ip_header_length(4),
	datad => \Equal9~1_combout\,
	combout => \Equal10~7_combout\);

-- Location: LCCOMB_X10_Y10_N0
\Equal10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~8_combout\ = (\Equal0~7_combout\ & (!\Equal10~11_combout\ & (\Equal10~6_combout\ & \Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal10~11_combout\,
	datac => \Equal10~6_combout\,
	datad => \Equal10~7_combout\,
	combout => \Equal10~8_combout\);

-- Location: LCCOMB_X11_Y8_N0
\Equal10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~10_combout\ = (byte_index(0) & (!byte_index(1) & \Equal10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datad => \Equal10~8_combout\,
	combout => \Equal10~10_combout\);

-- Location: LCCOMB_X14_Y5_N26
\udp_length[31]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[31]~36_combout\ = (\in_valid~input_o\ & (\out_ready~input_o\ & \s_state.UDP_HEADER~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datac => \out_ready~input_o\,
	datad => \s_state.UDP_HEADER~q\,
	combout => \udp_length[31]~36_combout\);

-- Location: LCCOMB_X11_Y8_N26
\udp_length[31]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[31]~37_combout\ = (\udp_length[31]~36_combout\ & (\Equal10~8_combout\ & (byte_index(1) $ (byte_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => \udp_length[31]~36_combout\,
	datac => byte_index(0),
	datad => \Equal10~8_combout\,
	combout => \udp_length[31]~37_combout\);

-- Location: FF_X13_Y10_N1
\udp_length[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[0]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(0));

-- Location: LCCOMB_X13_Y10_N2
\udp_length[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[1]~34_combout\ = (\in_data[1]~input_o\ & ((udp_length(1) & (\udp_length[0]~33\ & VCC)) # (!udp_length(1) & (!\udp_length[0]~33\)))) # (!\in_data[1]~input_o\ & ((udp_length(1) & (!\udp_length[0]~33\)) # (!udp_length(1) & ((\udp_length[0]~33\) # 
-- (GND)))))
-- \udp_length[1]~35\ = CARRY((\in_data[1]~input_o\ & (!udp_length(1) & !\udp_length[0]~33\)) # (!\in_data[1]~input_o\ & ((!\udp_length[0]~33\) # (!udp_length(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => udp_length(1),
	datad => VCC,
	cin => \udp_length[0]~33\,
	combout => \udp_length[1]~34_combout\,
	cout => \udp_length[1]~35\);

-- Location: FF_X13_Y10_N3
\udp_length[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[1]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(1));

-- Location: LCCOMB_X13_Y10_N4
\udp_length[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[2]~38_combout\ = ((\in_data[2]~input_o\ $ (udp_length(2) $ (!\udp_length[1]~35\)))) # (GND)
-- \udp_length[2]~39\ = CARRY((\in_data[2]~input_o\ & ((udp_length(2)) # (!\udp_length[1]~35\))) # (!\in_data[2]~input_o\ & (udp_length(2) & !\udp_length[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => udp_length(2),
	datad => VCC,
	cin => \udp_length[1]~35\,
	combout => \udp_length[2]~38_combout\,
	cout => \udp_length[2]~39\);

-- Location: FF_X13_Y10_N5
\udp_length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[2]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(2));

-- Location: LCCOMB_X13_Y10_N6
\udp_length[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[3]~40_combout\ = (udp_length(3) & ((\in_data[3]~input_o\ & (\udp_length[2]~39\ & VCC)) # (!\in_data[3]~input_o\ & (!\udp_length[2]~39\)))) # (!udp_length(3) & ((\in_data[3]~input_o\ & (!\udp_length[2]~39\)) # (!\in_data[3]~input_o\ & 
-- ((\udp_length[2]~39\) # (GND)))))
-- \udp_length[3]~41\ = CARRY((udp_length(3) & (!\in_data[3]~input_o\ & !\udp_length[2]~39\)) # (!udp_length(3) & ((!\udp_length[2]~39\) # (!\in_data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(3),
	datab => \in_data[3]~input_o\,
	datad => VCC,
	cin => \udp_length[2]~39\,
	combout => \udp_length[3]~40_combout\,
	cout => \udp_length[3]~41\);

-- Location: FF_X13_Y10_N7
\udp_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[3]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(3));

-- Location: LCCOMB_X13_Y10_N8
\udp_length[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[4]~42_combout\ = ((udp_length(4) $ (\in_data[4]~input_o\ $ (!\udp_length[3]~41\)))) # (GND)
-- \udp_length[4]~43\ = CARRY((udp_length(4) & ((\in_data[4]~input_o\) # (!\udp_length[3]~41\))) # (!udp_length(4) & (\in_data[4]~input_o\ & !\udp_length[3]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(4),
	datab => \in_data[4]~input_o\,
	datad => VCC,
	cin => \udp_length[3]~41\,
	combout => \udp_length[4]~42_combout\,
	cout => \udp_length[4]~43\);

-- Location: FF_X13_Y10_N9
\udp_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[4]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(4));

-- Location: LCCOMB_X13_Y10_N10
\udp_length[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[5]~44_combout\ = (udp_length(5) & ((\in_data[5]~input_o\ & (\udp_length[4]~43\ & VCC)) # (!\in_data[5]~input_o\ & (!\udp_length[4]~43\)))) # (!udp_length(5) & ((\in_data[5]~input_o\ & (!\udp_length[4]~43\)) # (!\in_data[5]~input_o\ & 
-- ((\udp_length[4]~43\) # (GND)))))
-- \udp_length[5]~45\ = CARRY((udp_length(5) & (!\in_data[5]~input_o\ & !\udp_length[4]~43\)) # (!udp_length(5) & ((!\udp_length[4]~43\) # (!\in_data[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(5),
	datab => \in_data[5]~input_o\,
	datad => VCC,
	cin => \udp_length[4]~43\,
	combout => \udp_length[5]~44_combout\,
	cout => \udp_length[5]~45\);

-- Location: FF_X13_Y10_N11
\udp_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[5]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(5));

-- Location: LCCOMB_X13_Y10_N12
\udp_length[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[6]~46_combout\ = ((udp_length(6) $ (\in_data[6]~input_o\ $ (!\udp_length[5]~45\)))) # (GND)
-- \udp_length[6]~47\ = CARRY((udp_length(6) & ((\in_data[6]~input_o\) # (!\udp_length[5]~45\))) # (!udp_length(6) & (\in_data[6]~input_o\ & !\udp_length[5]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(6),
	datab => \in_data[6]~input_o\,
	datad => VCC,
	cin => \udp_length[5]~45\,
	combout => \udp_length[6]~46_combout\,
	cout => \udp_length[6]~47\);

-- Location: FF_X13_Y10_N13
\udp_length[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[6]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(6));

-- Location: LCCOMB_X13_Y10_N14
\udp_length[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[7]~48_combout\ = (\in_data[7]~input_o\ & ((udp_length(7) & (\udp_length[6]~47\ & VCC)) # (!udp_length(7) & (!\udp_length[6]~47\)))) # (!\in_data[7]~input_o\ & ((udp_length(7) & (!\udp_length[6]~47\)) # (!udp_length(7) & ((\udp_length[6]~47\) # 
-- (GND)))))
-- \udp_length[7]~49\ = CARRY((\in_data[7]~input_o\ & (!udp_length(7) & !\udp_length[6]~47\)) # (!\in_data[7]~input_o\ & ((!\udp_length[6]~47\) # (!udp_length(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => udp_length(7),
	datad => VCC,
	cin => \udp_length[6]~47\,
	combout => \udp_length[7]~48_combout\,
	cout => \udp_length[7]~49\);

-- Location: FF_X13_Y10_N15
\udp_length[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[7]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(7));

-- Location: LCCOMB_X13_Y10_N16
\udp_length[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[8]~50_combout\ = (udp_length(8) & (\udp_length[7]~49\ $ (GND))) # (!udp_length(8) & (!\udp_length[7]~49\ & VCC))
-- \udp_length[8]~51\ = CARRY((udp_length(8) & !\udp_length[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(8),
	datad => VCC,
	cin => \udp_length[7]~49\,
	combout => \udp_length[8]~50_combout\,
	cout => \udp_length[8]~51\);

-- Location: FF_X13_Y10_N17
\udp_length[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[8]~50_combout\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(8));

-- Location: LCCOMB_X13_Y10_N18
\udp_length[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[9]~52_combout\ = (udp_length(9) & (!\udp_length[8]~51\)) # (!udp_length(9) & ((\udp_length[8]~51\) # (GND)))
-- \udp_length[9]~53\ = CARRY((!\udp_length[8]~51\) # (!udp_length(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(9),
	datad => VCC,
	cin => \udp_length[8]~51\,
	combout => \udp_length[9]~52_combout\,
	cout => \udp_length[9]~53\);

-- Location: FF_X13_Y10_N19
\udp_length[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[9]~52_combout\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(9));

-- Location: LCCOMB_X13_Y10_N20
\udp_length[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[10]~54_combout\ = (udp_length(10) & (\udp_length[9]~53\ $ (GND))) # (!udp_length(10) & (!\udp_length[9]~53\ & VCC))
-- \udp_length[10]~55\ = CARRY((udp_length(10) & !\udp_length[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(10),
	datad => VCC,
	cin => \udp_length[9]~53\,
	combout => \udp_length[10]~54_combout\,
	cout => \udp_length[10]~55\);

-- Location: FF_X13_Y10_N21
\udp_length[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[10]~54_combout\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(10));

-- Location: LCCOMB_X13_Y10_N22
\udp_length[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[11]~56_combout\ = (udp_length(11) & (!\udp_length[10]~55\)) # (!udp_length(11) & ((\udp_length[10]~55\) # (GND)))
-- \udp_length[11]~57\ = CARRY((!\udp_length[10]~55\) # (!udp_length(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(11),
	datad => VCC,
	cin => \udp_length[10]~55\,
	combout => \udp_length[11]~56_combout\,
	cout => \udp_length[11]~57\);

-- Location: FF_X13_Y10_N23
\udp_length[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[11]~56_combout\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(11));

-- Location: LCCOMB_X13_Y10_N24
\udp_length[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[12]~58_combout\ = (udp_length(12) & (\udp_length[11]~57\ $ (GND))) # (!udp_length(12) & (!\udp_length[11]~57\ & VCC))
-- \udp_length[12]~59\ = CARRY((udp_length(12) & !\udp_length[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(12),
	datad => VCC,
	cin => \udp_length[11]~57\,
	combout => \udp_length[12]~58_combout\,
	cout => \udp_length[12]~59\);

-- Location: FF_X13_Y10_N25
\udp_length[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[12]~58_combout\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(12));

-- Location: LCCOMB_X13_Y10_N26
\udp_length[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[13]~60_combout\ = (udp_length(13) & (!\udp_length[12]~59\)) # (!udp_length(13) & ((\udp_length[12]~59\) # (GND)))
-- \udp_length[13]~61\ = CARRY((!\udp_length[12]~59\) # (!udp_length(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(13),
	datad => VCC,
	cin => \udp_length[12]~59\,
	combout => \udp_length[13]~60_combout\,
	cout => \udp_length[13]~61\);

-- Location: FF_X13_Y10_N27
\udp_length[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[13]~60_combout\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(13));

-- Location: LCCOMB_X13_Y10_N28
\udp_length[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[14]~62_combout\ = (udp_length(14) & (\udp_length[13]~61\ $ (GND))) # (!udp_length(14) & (!\udp_length[13]~61\ & VCC))
-- \udp_length[14]~63\ = CARRY((udp_length(14) & !\udp_length[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(14),
	datad => VCC,
	cin => \udp_length[13]~61\,
	combout => \udp_length[14]~62_combout\,
	cout => \udp_length[14]~63\);

-- Location: FF_X13_Y10_N29
\udp_length[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[14]~62_combout\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(14));

-- Location: LCCOMB_X13_Y10_N30
\udp_length[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[15]~64_combout\ = (udp_length(15) & (!\udp_length[14]~63\)) # (!udp_length(15) & ((\udp_length[14]~63\) # (GND)))
-- \udp_length[15]~65\ = CARRY((!\udp_length[14]~63\) # (!udp_length(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(15),
	datad => VCC,
	cin => \udp_length[14]~63\,
	combout => \udp_length[15]~64_combout\,
	cout => \udp_length[15]~65\);

-- Location: FF_X13_Y10_N31
\udp_length[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[15]~64_combout\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(15));

-- Location: LCCOMB_X13_Y9_N0
\udp_length[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[16]~66_combout\ = (udp_length(16) & (\udp_length[15]~65\ $ (GND))) # (!udp_length(16) & (!\udp_length[15]~65\ & VCC))
-- \udp_length[16]~67\ = CARRY((udp_length(16) & !\udp_length[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(16),
	datad => VCC,
	cin => \udp_length[15]~65\,
	combout => \udp_length[16]~66_combout\,
	cout => \udp_length[16]~67\);

-- Location: FF_X13_Y9_N1
\udp_length[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[16]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(16));

-- Location: LCCOMB_X13_Y9_N2
\udp_length[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[17]~68_combout\ = (udp_length(17) & (!\udp_length[16]~67\)) # (!udp_length(17) & ((\udp_length[16]~67\) # (GND)))
-- \udp_length[17]~69\ = CARRY((!\udp_length[16]~67\) # (!udp_length(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(17),
	datad => VCC,
	cin => \udp_length[16]~67\,
	combout => \udp_length[17]~68_combout\,
	cout => \udp_length[17]~69\);

-- Location: FF_X13_Y9_N3
\udp_length[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[17]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(17));

-- Location: LCCOMB_X13_Y9_N4
\udp_length[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[18]~70_combout\ = (udp_length(18) & (\udp_length[17]~69\ $ (GND))) # (!udp_length(18) & (!\udp_length[17]~69\ & VCC))
-- \udp_length[18]~71\ = CARRY((udp_length(18) & !\udp_length[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(18),
	datad => VCC,
	cin => \udp_length[17]~69\,
	combout => \udp_length[18]~70_combout\,
	cout => \udp_length[18]~71\);

-- Location: FF_X13_Y9_N5
\udp_length[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[18]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(18));

-- Location: LCCOMB_X13_Y9_N6
\udp_length[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[19]~72_combout\ = (udp_length(19) & (!\udp_length[18]~71\)) # (!udp_length(19) & ((\udp_length[18]~71\) # (GND)))
-- \udp_length[19]~73\ = CARRY((!\udp_length[18]~71\) # (!udp_length(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(19),
	datad => VCC,
	cin => \udp_length[18]~71\,
	combout => \udp_length[19]~72_combout\,
	cout => \udp_length[19]~73\);

-- Location: FF_X13_Y9_N7
\udp_length[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[19]~72_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(19));

-- Location: LCCOMB_X13_Y9_N8
\udp_length[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[20]~74_combout\ = (udp_length(20) & (\udp_length[19]~73\ $ (GND))) # (!udp_length(20) & (!\udp_length[19]~73\ & VCC))
-- \udp_length[20]~75\ = CARRY((udp_length(20) & !\udp_length[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(20),
	datad => VCC,
	cin => \udp_length[19]~73\,
	combout => \udp_length[20]~74_combout\,
	cout => \udp_length[20]~75\);

-- Location: FF_X13_Y9_N9
\udp_length[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[20]~74_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(20));

-- Location: LCCOMB_X13_Y9_N10
\udp_length[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[21]~76_combout\ = (udp_length(21) & (!\udp_length[20]~75\)) # (!udp_length(21) & ((\udp_length[20]~75\) # (GND)))
-- \udp_length[21]~77\ = CARRY((!\udp_length[20]~75\) # (!udp_length(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(21),
	datad => VCC,
	cin => \udp_length[20]~75\,
	combout => \udp_length[21]~76_combout\,
	cout => \udp_length[21]~77\);

-- Location: FF_X13_Y9_N11
\udp_length[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[21]~76_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(21));

-- Location: LCCOMB_X13_Y9_N12
\udp_length[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[22]~78_combout\ = (udp_length(22) & (\udp_length[21]~77\ $ (GND))) # (!udp_length(22) & (!\udp_length[21]~77\ & VCC))
-- \udp_length[22]~79\ = CARRY((udp_length(22) & !\udp_length[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(22),
	datad => VCC,
	cin => \udp_length[21]~77\,
	combout => \udp_length[22]~78_combout\,
	cout => \udp_length[22]~79\);

-- Location: FF_X13_Y9_N13
\udp_length[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[22]~78_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(22));

-- Location: LCCOMB_X13_Y9_N14
\udp_length[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[23]~80_combout\ = (udp_length(23) & (!\udp_length[22]~79\)) # (!udp_length(23) & ((\udp_length[22]~79\) # (GND)))
-- \udp_length[23]~81\ = CARRY((!\udp_length[22]~79\) # (!udp_length(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(23),
	datad => VCC,
	cin => \udp_length[22]~79\,
	combout => \udp_length[23]~80_combout\,
	cout => \udp_length[23]~81\);

-- Location: FF_X13_Y9_N15
\udp_length[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[23]~80_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(23));

-- Location: LCCOMB_X13_Y9_N16
\udp_length[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[24]~82_combout\ = (udp_length(24) & (\udp_length[23]~81\ $ (GND))) # (!udp_length(24) & (!\udp_length[23]~81\ & VCC))
-- \udp_length[24]~83\ = CARRY((udp_length(24) & !\udp_length[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(24),
	datad => VCC,
	cin => \udp_length[23]~81\,
	combout => \udp_length[24]~82_combout\,
	cout => \udp_length[24]~83\);

-- Location: FF_X13_Y9_N17
\udp_length[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[24]~82_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(24));

-- Location: LCCOMB_X13_Y9_N18
\udp_length[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[25]~84_combout\ = (udp_length(25) & (!\udp_length[24]~83\)) # (!udp_length(25) & ((\udp_length[24]~83\) # (GND)))
-- \udp_length[25]~85\ = CARRY((!\udp_length[24]~83\) # (!udp_length(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(25),
	datad => VCC,
	cin => \udp_length[24]~83\,
	combout => \udp_length[25]~84_combout\,
	cout => \udp_length[25]~85\);

-- Location: FF_X13_Y9_N19
\udp_length[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[25]~84_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(25));

-- Location: LCCOMB_X13_Y9_N20
\udp_length[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[26]~86_combout\ = (udp_length(26) & (\udp_length[25]~85\ $ (GND))) # (!udp_length(26) & (!\udp_length[25]~85\ & VCC))
-- \udp_length[26]~87\ = CARRY((udp_length(26) & !\udp_length[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(26),
	datad => VCC,
	cin => \udp_length[25]~85\,
	combout => \udp_length[26]~86_combout\,
	cout => \udp_length[26]~87\);

-- Location: FF_X13_Y9_N21
\udp_length[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[26]~86_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(26));

-- Location: LCCOMB_X13_Y9_N22
\udp_length[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[27]~88_combout\ = (udp_length(27) & (!\udp_length[26]~87\)) # (!udp_length(27) & ((\udp_length[26]~87\) # (GND)))
-- \udp_length[27]~89\ = CARRY((!\udp_length[26]~87\) # (!udp_length(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(27),
	datad => VCC,
	cin => \udp_length[26]~87\,
	combout => \udp_length[27]~88_combout\,
	cout => \udp_length[27]~89\);

-- Location: FF_X13_Y9_N23
\udp_length[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[27]~88_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(27));

-- Location: LCCOMB_X13_Y9_N24
\udp_length[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[28]~90_combout\ = (udp_length(28) & (\udp_length[27]~89\ $ (GND))) # (!udp_length(28) & (!\udp_length[27]~89\ & VCC))
-- \udp_length[28]~91\ = CARRY((udp_length(28) & !\udp_length[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(28),
	datad => VCC,
	cin => \udp_length[27]~89\,
	combout => \udp_length[28]~90_combout\,
	cout => \udp_length[28]~91\);

-- Location: FF_X13_Y9_N25
\udp_length[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[28]~90_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(28));

-- Location: LCCOMB_X13_Y9_N26
\udp_length[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[29]~92_combout\ = (udp_length(29) & (!\udp_length[28]~91\)) # (!udp_length(29) & ((\udp_length[28]~91\) # (GND)))
-- \udp_length[29]~93\ = CARRY((!\udp_length[28]~91\) # (!udp_length(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(29),
	datad => VCC,
	cin => \udp_length[28]~91\,
	combout => \udp_length[29]~92_combout\,
	cout => \udp_length[29]~93\);

-- Location: FF_X13_Y9_N27
\udp_length[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[29]~92_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(29));

-- Location: LCCOMB_X10_Y10_N4
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = ip_header_length(4) $ (((ip_header_length(3)) # (ip_header_length(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ip_header_length(4),
	datac => ip_header_length(3),
	datad => ip_header_length(2),
	combout => \Add8~2_combout\);

-- Location: LCCOMB_X10_Y10_N28
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = ip_header_length(3) $ (ip_header_length(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ip_header_length(3),
	datad => ip_header_length(2),
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X12_Y10_N0
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = udp_length(0) $ (VCC)
-- \Add9~1\ = CARRY(udp_length(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => udp_length(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X12_Y10_N2
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (udp_length(1) & (!\Add9~1\)) # (!udp_length(1) & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!udp_length(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X12_Y10_N4
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((udp_length(2) $ (ip_header_length(2) $ (\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((udp_length(2) & ((!\Add9~3\) # (!ip_header_length(2)))) # (!udp_length(2) & (!ip_header_length(2) & !\Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(2),
	datab => ip_header_length(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X12_Y10_N6
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (udp_length(3) & ((\Add8~0_combout\ & (!\Add9~5\)) # (!\Add8~0_combout\ & (\Add9~5\ & VCC)))) # (!udp_length(3) & ((\Add8~0_combout\ & ((\Add9~5\) # (GND))) # (!\Add8~0_combout\ & (!\Add9~5\))))
-- \Add9~7\ = CARRY((udp_length(3) & (\Add8~0_combout\ & !\Add9~5\)) # (!udp_length(3) & ((\Add8~0_combout\) # (!\Add9~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(3),
	datab => \Add8~0_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X12_Y10_N8
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((\Add8~2_combout\ $ (udp_length(4) $ (!\Add9~7\)))) # (GND)
-- \Add9~9\ = CARRY((\Add8~2_combout\ & ((udp_length(4)) # (!\Add9~7\))) # (!\Add8~2_combout\ & (udp_length(4) & !\Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => udp_length(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X12_Y10_N10
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Add8~1_combout\ & ((udp_length(5) & (\Add9~9\ & VCC)) # (!udp_length(5) & (!\Add9~9\)))) # (!\Add8~1_combout\ & ((udp_length(5) & (!\Add9~9\)) # (!udp_length(5) & ((\Add9~9\) # (GND)))))
-- \Add9~11\ = CARRY((\Add8~1_combout\ & (!udp_length(5) & !\Add9~9\)) # (!\Add8~1_combout\ & ((!\Add9~9\) # (!udp_length(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~1_combout\,
	datab => udp_length(5),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X12_Y10_N12
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = ((\Add8~3_combout\ $ (udp_length(6) $ (!\Add9~11\)))) # (GND)
-- \Add9~13\ = CARRY((\Add8~3_combout\ & ((udp_length(6)) # (!\Add9~11\))) # (!\Add8~3_combout\ & (udp_length(6) & !\Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~3_combout\,
	datab => udp_length(6),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X12_Y10_N14
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (udp_length(7) & (!\Add9~13\)) # (!udp_length(7) & ((\Add9~13\) # (GND)))
-- \Add9~15\ = CARRY((!\Add9~13\) # (!udp_length(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(7),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X12_Y10_N16
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (udp_length(8) & (\Add9~15\ $ (GND))) # (!udp_length(8) & (!\Add9~15\ & VCC))
-- \Add9~17\ = CARRY((udp_length(8) & !\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X12_Y10_N18
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (udp_length(9) & (!\Add9~17\)) # (!udp_length(9) & ((\Add9~17\) # (GND)))
-- \Add9~19\ = CARRY((!\Add9~17\) # (!udp_length(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(9),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X12_Y10_N20
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (udp_length(10) & (\Add9~19\ $ (GND))) # (!udp_length(10) & (!\Add9~19\ & VCC))
-- \Add9~21\ = CARRY((udp_length(10) & !\Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(10),
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X12_Y10_N22
\Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (udp_length(11) & (!\Add9~21\)) # (!udp_length(11) & ((\Add9~21\) # (GND)))
-- \Add9~23\ = CARRY((!\Add9~21\) # (!udp_length(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(11),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X12_Y10_N24
\Add9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = (udp_length(12) & (\Add9~23\ $ (GND))) # (!udp_length(12) & (!\Add9~23\ & VCC))
-- \Add9~25\ = CARRY((udp_length(12) & !\Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(12),
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: LCCOMB_X12_Y10_N26
\Add9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (udp_length(13) & (!\Add9~25\)) # (!udp_length(13) & ((\Add9~25\) # (GND)))
-- \Add9~27\ = CARRY((!\Add9~25\) # (!udp_length(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(13),
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X12_Y10_N28
\Add9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = (udp_length(14) & (\Add9~27\ $ (GND))) # (!udp_length(14) & (!\Add9~27\ & VCC))
-- \Add9~29\ = CARRY((udp_length(14) & !\Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(14),
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X12_Y10_N30
\Add9~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (udp_length(15) & (!\Add9~29\)) # (!udp_length(15) & ((\Add9~29\) # (GND)))
-- \Add9~31\ = CARRY((!\Add9~29\) # (!udp_length(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(15),
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X12_Y9_N0
\Add9~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = (udp_length(16) & (\Add9~31\ $ (GND))) # (!udp_length(16) & (!\Add9~31\ & VCC))
-- \Add9~33\ = CARRY((udp_length(16) & !\Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(16),
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: LCCOMB_X12_Y9_N2
\Add9~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (udp_length(17) & (!\Add9~33\)) # (!udp_length(17) & ((\Add9~33\) # (GND)))
-- \Add9~35\ = CARRY((!\Add9~33\) # (!udp_length(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(17),
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: LCCOMB_X12_Y9_N4
\Add9~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (udp_length(18) & (\Add9~35\ $ (GND))) # (!udp_length(18) & (!\Add9~35\ & VCC))
-- \Add9~37\ = CARRY((udp_length(18) & !\Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(18),
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: LCCOMB_X12_Y9_N6
\Add9~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (udp_length(19) & (!\Add9~37\)) # (!udp_length(19) & ((\Add9~37\) # (GND)))
-- \Add9~39\ = CARRY((!\Add9~37\) # (!udp_length(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(19),
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: LCCOMB_X12_Y9_N8
\Add9~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (udp_length(20) & (\Add9~39\ $ (GND))) # (!udp_length(20) & (!\Add9~39\ & VCC))
-- \Add9~41\ = CARRY((udp_length(20) & !\Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(20),
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: LCCOMB_X12_Y9_N10
\Add9~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (udp_length(21) & (!\Add9~41\)) # (!udp_length(21) & ((\Add9~41\) # (GND)))
-- \Add9~43\ = CARRY((!\Add9~41\) # (!udp_length(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(21),
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: LCCOMB_X12_Y9_N12
\Add9~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (udp_length(22) & (\Add9~43\ $ (GND))) # (!udp_length(22) & (!\Add9~43\ & VCC))
-- \Add9~45\ = CARRY((udp_length(22) & !\Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(22),
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: LCCOMB_X12_Y9_N14
\Add9~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (udp_length(23) & (!\Add9~45\)) # (!udp_length(23) & ((\Add9~45\) # (GND)))
-- \Add9~47\ = CARRY((!\Add9~45\) # (!udp_length(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(23),
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: LCCOMB_X12_Y9_N16
\Add9~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = (udp_length(24) & (\Add9~47\ $ (GND))) # (!udp_length(24) & (!\Add9~47\ & VCC))
-- \Add9~49\ = CARRY((udp_length(24) & !\Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(24),
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: LCCOMB_X12_Y9_N18
\Add9~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (udp_length(25) & (!\Add9~49\)) # (!udp_length(25) & ((\Add9~49\) # (GND)))
-- \Add9~51\ = CARRY((!\Add9~49\) # (!udp_length(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(25),
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: LCCOMB_X12_Y9_N20
\Add9~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (udp_length(26) & (\Add9~51\ $ (GND))) # (!udp_length(26) & (!\Add9~51\ & VCC))
-- \Add9~53\ = CARRY((udp_length(26) & !\Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(26),
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: LCCOMB_X12_Y9_N22
\Add9~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (udp_length(27) & (!\Add9~53\)) # (!udp_length(27) & ((\Add9~53\) # (GND)))
-- \Add9~55\ = CARRY((!\Add9~53\) # (!udp_length(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(27),
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: LCCOMB_X12_Y9_N24
\Add9~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = (udp_length(28) & (\Add9~55\ $ (GND))) # (!udp_length(28) & (!\Add9~55\ & VCC))
-- \Add9~57\ = CARRY((udp_length(28) & !\Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(28),
	datad => VCC,
	cin => \Add9~55\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: LCCOMB_X12_Y9_N26
\Add9~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~58_combout\ = (udp_length(29) & (!\Add9~57\)) # (!udp_length(29) & ((\Add9~57\) # (GND)))
-- \Add9~59\ = CARRY((!\Add9~57\) # (!udp_length(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(29),
	datad => VCC,
	cin => \Add9~57\,
	combout => \Add9~58_combout\,
	cout => \Add9~59\);

-- Location: LCCOMB_X14_Y5_N28
\Selector3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~18_combout\ = (\in_valid~input_o\ & (\out_ready~input_o\ & (byte_index(24) $ (!\Add9~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \out_ready~input_o\,
	datac => byte_index(24),
	datad => \Add9~48_combout\,
	combout => \Selector3~18_combout\);

-- Location: LCCOMB_X14_Y5_N14
\Selector3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~19_combout\ = (\Selector3~18_combout\ & (byte_index(29) $ (!\Add9~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datac => \Add9~58_combout\,
	datad => \Selector3~18_combout\,
	combout => \Selector3~19_combout\);

-- Location: LCCOMB_X11_Y5_N20
\Selector3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~16_combout\ = (byte_index(25) & (\Add9~50_combout\ & (byte_index(26) $ (!\Add9~52_combout\)))) # (!byte_index(25) & (!\Add9~50_combout\ & (byte_index(26) $ (!\Add9~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(25),
	datab => byte_index(26),
	datac => \Add9~50_combout\,
	datad => \Add9~52_combout\,
	combout => \Selector3~16_combout\);

-- Location: LCCOMB_X13_Y5_N24
\Selector3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~17_combout\ = (byte_index(27) & (\Add9~54_combout\ & (byte_index(28) $ (!\Add9~56_combout\)))) # (!byte_index(27) & (!\Add9~54_combout\ & (byte_index(28) $ (!\Add9~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datab => byte_index(28),
	datac => \Add9~54_combout\,
	datad => \Add9~56_combout\,
	combout => \Selector3~17_combout\);

-- Location: LCCOMB_X14_Y5_N6
\Selector3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~20_combout\ = (\s_state.DATA~q\ & (\Selector3~19_combout\ & (\Selector3~16_combout\ & \Selector3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datab => \Selector3~19_combout\,
	datac => \Selector3~16_combout\,
	datad => \Selector3~17_combout\,
	combout => \Selector3~20_combout\);

-- Location: LCCOMB_X13_Y9_N28
\udp_length[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[30]~94_combout\ = (udp_length(30) & (\udp_length[29]~93\ $ (GND))) # (!udp_length(30) & (!\udp_length[29]~93\ & VCC))
-- \udp_length[30]~95\ = CARRY((udp_length(30) & !\udp_length[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(30),
	datad => VCC,
	cin => \udp_length[29]~93\,
	combout => \udp_length[30]~94_combout\,
	cout => \udp_length[30]~95\);

-- Location: FF_X13_Y9_N29
\udp_length[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[30]~94_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(30));

-- Location: LCCOMB_X13_Y9_N30
\udp_length[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[31]~96_combout\ = udp_length(31) $ (\udp_length[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(31),
	cin => \udp_length[30]~95\,
	combout => \udp_length[31]~96_combout\);

-- Location: FF_X13_Y9_N31
\udp_length[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[31]~96_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal10~10_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(31));

-- Location: LCCOMB_X12_Y9_N28
\Add9~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~60_combout\ = (udp_length(30) & (\Add9~59\ $ (GND))) # (!udp_length(30) & (!\Add9~59\ & VCC))
-- \Add9~61\ = CARRY((udp_length(30) & !\Add9~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(30),
	datad => VCC,
	cin => \Add9~59\,
	combout => \Add9~60_combout\,
	cout => \Add9~61\);

-- Location: LCCOMB_X12_Y9_N30
\Add9~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = udp_length(31) $ (\Add9~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(31),
	cin => \Add9~61\,
	combout => \Add9~62_combout\);

-- Location: LCCOMB_X14_Y5_N2
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (byte_index(30) & (\Add9~60_combout\ & (byte_index(31) $ (!\Add9~62_combout\)))) # (!byte_index(30) & (!\Add9~60_combout\ & (byte_index(31) $ (!\Add9~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(31),
	datac => \Add9~62_combout\,
	datad => \Add9~60_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X11_Y5_N6
\Selector3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~11_combout\ = (byte_index(17) & (\Add9~34_combout\ & (byte_index(16) $ (!\Add9~32_combout\)))) # (!byte_index(17) & (!\Add9~34_combout\ & (byte_index(16) $ (!\Add9~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => \Add9~32_combout\,
	datad => \Add9~34_combout\,
	combout => \Selector3~11_combout\);

-- Location: LCCOMB_X11_Y5_N28
\Selector3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~12_combout\ = (byte_index(19) & (\Add9~38_combout\ & (byte_index(18) $ (!\Add9~36_combout\)))) # (!byte_index(19) & (!\Add9~38_combout\ & (byte_index(18) $ (!\Add9~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datab => byte_index(18),
	datac => \Add9~36_combout\,
	datad => \Add9~38_combout\,
	combout => \Selector3~12_combout\);

-- Location: LCCOMB_X11_Y5_N22
\Selector3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~13_combout\ = (byte_index(20) & (\Add9~40_combout\ & (byte_index(21) $ (!\Add9~42_combout\)))) # (!byte_index(20) & (!\Add9~40_combout\ & (byte_index(21) $ (!\Add9~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(20),
	datab => byte_index(21),
	datac => \Add9~42_combout\,
	datad => \Add9~40_combout\,
	combout => \Selector3~13_combout\);

-- Location: LCCOMB_X11_Y5_N24
\Selector3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~14_combout\ = (\Add9~44_combout\ & (byte_index(22) & (byte_index(23) $ (!\Add9~46_combout\)))) # (!\Add9~44_combout\ & (!byte_index(22) & (byte_index(23) $ (!\Add9~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~44_combout\,
	datab => byte_index(23),
	datac => byte_index(22),
	datad => \Add9~46_combout\,
	combout => \Selector3~14_combout\);

-- Location: LCCOMB_X11_Y5_N2
\Selector3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~15_combout\ = (\Selector3~11_combout\ & (\Selector3~12_combout\ & (\Selector3~13_combout\ & \Selector3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~11_combout\,
	datab => \Selector3~12_combout\,
	datac => \Selector3~13_combout\,
	datad => \Selector3~14_combout\,
	combout => \Selector3~15_combout\);

-- Location: LCCOMB_X11_Y8_N16
\Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (byte_index(6) & (\Add9~12_combout\ & (byte_index(7) $ (!\Add9~14_combout\)))) # (!byte_index(6) & (!\Add9~12_combout\ & (byte_index(7) $ (!\Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => byte_index(7),
	datac => \Add9~12_combout\,
	datad => \Add9~14_combout\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X11_Y8_N22
\Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Add9~10_combout\ & (byte_index(5) & (byte_index(4) $ (!\Add9~8_combout\)))) # (!\Add9~10_combout\ & (!byte_index(5) & (byte_index(4) $ (!\Add9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datab => byte_index(4),
	datac => byte_index(5),
	datad => \Add9~8_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X11_Y8_N18
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = byte_index(2) $ (\Add9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datad => \Add9~4_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X11_Y8_N8
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (byte_index(0) & (\Add9~0_combout\ & (byte_index(1) $ (!\Add9~2_combout\)))) # (!byte_index(0) & (!\Add9~0_combout\ & (byte_index(1) $ (!\Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datac => \Add9~2_combout\,
	datad => \Add9~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X11_Y8_N28
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (!\Equal14~0_combout\ & (\Selector3~1_combout\ & (byte_index(3) $ (!\Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => \Equal14~0_combout\,
	datac => \Selector3~1_combout\,
	datad => \Add9~6_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X13_Y8_N10
\Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (byte_index(9) & (\Add9~18_combout\ & (byte_index(8) $ (!\Add9~16_combout\)))) # (!byte_index(9) & (!\Add9~18_combout\ & (byte_index(8) $ (!\Add9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(8),
	datac => \Add9~18_combout\,
	datad => \Add9~16_combout\,
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X11_Y7_N14
\Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (byte_index(11) & (\Add9~22_combout\ & (byte_index(10) $ (!\Add9~20_combout\)))) # (!byte_index(11) & (!\Add9~22_combout\ & (byte_index(10) $ (!\Add9~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => byte_index(10),
	datac => \Add9~20_combout\,
	datad => \Add9~22_combout\,
	combout => \Selector3~6_combout\);

-- Location: LCCOMB_X13_Y8_N8
\Selector3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~8_combout\ = (byte_index(15) & (\Add9~30_combout\ & (byte_index(14) $ (!\Add9~28_combout\)))) # (!byte_index(15) & (!\Add9~30_combout\ & (byte_index(14) $ (!\Add9~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datab => byte_index(14),
	datac => \Add9~30_combout\,
	datad => \Add9~28_combout\,
	combout => \Selector3~8_combout\);

-- Location: LCCOMB_X11_Y7_N16
\Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~7_combout\ = (byte_index(13) & (\Add9~26_combout\ & (byte_index(12) $ (!\Add9~24_combout\)))) # (!byte_index(13) & (!\Add9~26_combout\ & (byte_index(12) $ (!\Add9~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datab => byte_index(12),
	datac => \Add9~26_combout\,
	datad => \Add9~24_combout\,
	combout => \Selector3~7_combout\);

-- Location: LCCOMB_X14_Y5_N12
\Selector3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~9_combout\ = (\Selector3~5_combout\ & (\Selector3~6_combout\ & (\Selector3~8_combout\ & \Selector3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~5_combout\,
	datab => \Selector3~6_combout\,
	datac => \Selector3~8_combout\,
	datad => \Selector3~7_combout\,
	combout => \Selector3~9_combout\);

-- Location: LCCOMB_X14_Y5_N24
\Selector3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~10_combout\ = (\Selector3~4_combout\ & (\Selector3~3_combout\ & (\Selector3~2_combout\ & \Selector3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~4_combout\,
	datab => \Selector3~3_combout\,
	datac => \Selector3~2_combout\,
	datad => \Selector3~9_combout\,
	combout => \Selector3~10_combout\);

-- Location: LCCOMB_X14_Y5_N30
\Selector3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~21_combout\ = (\Selector3~20_combout\ & (\Selector3~0_combout\ & (\Selector3~15_combout\ & \Selector3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~20_combout\,
	datab => \Selector3~0_combout\,
	datac => \Selector3~15_combout\,
	datad => \Selector3~10_combout\,
	combout => \Selector3~21_combout\);

-- Location: LCCOMB_X12_Y8_N0
\Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~1_cout\ = CARRY(\Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datad => VCC,
	cout => \Add7~1_cout\);

-- Location: LCCOMB_X12_Y8_N2
\Add7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~3_cout\ = CARRY((!\Add9~2_combout\ & !\Add7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datad => VCC,
	cin => \Add7~1_cout\,
	cout => \Add7~3_cout\);

-- Location: LCCOMB_X12_Y8_N4
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\Add9~4_combout\ & ((GND) # (!\Add7~3_cout\))) # (!\Add9~4_combout\ & (\Add7~3_cout\ $ (GND)))
-- \Add7~5\ = CARRY((\Add9~4_combout\) # (!\Add7~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~4_combout\,
	datad => VCC,
	cin => \Add7~3_cout\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X12_Y8_N6
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add9~6_combout\ & (\Add7~5\ & VCC)) # (!\Add9~6_combout\ & (!\Add7~5\))
-- \Add7~7\ = CARRY((!\Add9~6_combout\ & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~6_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X12_Y8_N8
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\Add9~8_combout\ & ((GND) # (!\Add7~7\))) # (!\Add9~8_combout\ & (\Add7~7\ $ (GND)))
-- \Add7~9\ = CARRY((\Add9~8_combout\) # (!\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~8_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X12_Y8_N10
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add9~10_combout\ & (\Add7~9\ & VCC)) # (!\Add9~10_combout\ & (!\Add7~9\))
-- \Add7~11\ = CARRY((!\Add9~10_combout\ & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~10_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X12_Y8_N12
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\Add9~12_combout\ & ((GND) # (!\Add7~11\))) # (!\Add9~12_combout\ & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((\Add9~12_combout\) # (!\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~12_combout\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X12_Y8_N14
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\Add9~14_combout\ & (\Add7~13\ & VCC)) # (!\Add9~14_combout\ & (!\Add7~13\))
-- \Add7~15\ = CARRY((!\Add9~14_combout\ & !\Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~14_combout\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X12_Y8_N16
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (\Add9~16_combout\ & ((GND) # (!\Add7~15\))) # (!\Add9~16_combout\ & (\Add7~15\ $ (GND)))
-- \Add7~17\ = CARRY((\Add9~16_combout\) # (!\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~16_combout\,
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X12_Y8_N18
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (\Add9~18_combout\ & (\Add7~17\ & VCC)) # (!\Add9~18_combout\ & (!\Add7~17\))
-- \Add7~19\ = CARRY((!\Add9~18_combout\ & !\Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~18_combout\,
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X12_Y8_N20
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (\Add9~20_combout\ & ((GND) # (!\Add7~19\))) # (!\Add9~20_combout\ & (\Add7~19\ $ (GND)))
-- \Add7~21\ = CARRY((\Add9~20_combout\) # (!\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~20_combout\,
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X12_Y8_N22
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (\Add9~22_combout\ & (\Add7~21\ & VCC)) # (!\Add9~22_combout\ & (!\Add7~21\))
-- \Add7~23\ = CARRY((!\Add9~22_combout\ & !\Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~22_combout\,
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X12_Y8_N24
\Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (\Add9~24_combout\ & ((GND) # (!\Add7~23\))) # (!\Add9~24_combout\ & (\Add7~23\ $ (GND)))
-- \Add7~25\ = CARRY((\Add9~24_combout\) # (!\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~24_combout\,
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X12_Y8_N26
\Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (\Add9~26_combout\ & (\Add7~25\ & VCC)) # (!\Add9~26_combout\ & (!\Add7~25\))
-- \Add7~27\ = CARRY((!\Add9~26_combout\ & !\Add7~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~26_combout\,
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X12_Y8_N28
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (\Add9~28_combout\ & ((GND) # (!\Add7~27\))) # (!\Add9~28_combout\ & (\Add7~27\ $ (GND)))
-- \Add7~29\ = CARRY((\Add9~28_combout\) # (!\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~28_combout\,
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X12_Y8_N30
\Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (\Add9~30_combout\ & (\Add7~29\ & VCC)) # (!\Add9~30_combout\ & (!\Add7~29\))
-- \Add7~31\ = CARRY((!\Add9~30_combout\ & !\Add7~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~30_combout\,
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X13_Y8_N30
\Equal13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~9_combout\ = (byte_index(15) & (\Add7~30_combout\ & (byte_index(14) $ (!\Add7~28_combout\)))) # (!byte_index(15) & (!\Add7~30_combout\ & (byte_index(14) $ (!\Add7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datab => byte_index(14),
	datac => \Add7~30_combout\,
	datad => \Add7~28_combout\,
	combout => \Equal13~9_combout\);

-- Location: LCCOMB_X13_Y8_N22
\Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (byte_index(3) & (\Add7~6_combout\ & (byte_index(2) $ (!\Add7~4_combout\)))) # (!byte_index(3) & (!\Add7~6_combout\ & (byte_index(2) $ (!\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(2),
	datac => \Add7~4_combout\,
	datad => \Add7~6_combout\,
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X13_Y8_N0
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (udp_length(1) & (byte_index(1) & (byte_index(0) $ (!udp_length(0))))) # (!udp_length(1) & (!byte_index(1) & (byte_index(0) $ (!udp_length(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(1),
	datab => byte_index(0),
	datac => udp_length(0),
	datad => byte_index(1),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X13_Y8_N4
\Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (byte_index(4) & (\Add7~8_combout\ & (byte_index(5) $ (!\Add7~10_combout\)))) # (!byte_index(4) & (!\Add7~8_combout\ & (byte_index(5) $ (!\Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(5),
	datac => \Add7~8_combout\,
	datad => \Add7~10_combout\,
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X13_Y8_N2
\Equal13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = (\Add7~14_combout\ & (byte_index(7) & (byte_index(6) $ (!\Add7~12_combout\)))) # (!\Add7~14_combout\ & (!byte_index(7) & (byte_index(6) $ (!\Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => byte_index(6),
	datac => byte_index(7),
	datad => \Add7~12_combout\,
	combout => \Equal13~3_combout\);

-- Location: LCCOMB_X13_Y8_N24
\Equal13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (\Equal13~1_combout\ & (\Equal13~0_combout\ & (\Equal13~2_combout\ & \Equal13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => \Equal13~0_combout\,
	datac => \Equal13~2_combout\,
	datad => \Equal13~3_combout\,
	combout => \Equal13~4_combout\);

-- Location: LCCOMB_X13_Y8_N14
\Equal13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = (byte_index(9) & (\Add7~18_combout\ & (byte_index(8) $ (!\Add7~16_combout\)))) # (!byte_index(9) & (!\Add7~18_combout\ & (byte_index(8) $ (!\Add7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(8),
	datac => \Add7~16_combout\,
	datad => \Add7~18_combout\,
	combout => \Equal13~5_combout\);

-- Location: LCCOMB_X13_Y8_N12
\Equal13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = byte_index(10) $ (\Add7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(10),
	datad => \Add7~20_combout\,
	combout => \Equal13~6_combout\);

-- Location: LCCOMB_X13_Y8_N26
\Equal13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~7_combout\ = (\Equal13~5_combout\ & (!\Equal13~6_combout\ & (byte_index(11) $ (!\Add7~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => \Add7~22_combout\,
	datac => \Equal13~5_combout\,
	datad => \Equal13~6_combout\,
	combout => \Equal13~7_combout\);

-- Location: LCCOMB_X13_Y8_N28
\Equal13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~8_combout\ = (byte_index(12) & (\Add7~24_combout\ & (byte_index(13) $ (!\Add7~26_combout\)))) # (!byte_index(12) & (!\Add7~24_combout\ & (byte_index(13) $ (!\Add7~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datab => byte_index(13),
	datac => \Add7~26_combout\,
	datad => \Add7~24_combout\,
	combout => \Equal13~8_combout\);

-- Location: LCCOMB_X13_Y8_N16
\Equal13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~10_combout\ = (\Equal13~9_combout\ & (\Equal13~4_combout\ & (\Equal13~7_combout\ & \Equal13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~9_combout\,
	datab => \Equal13~4_combout\,
	datac => \Equal13~7_combout\,
	datad => \Equal13~8_combout\,
	combout => \Equal13~10_combout\);

-- Location: LCCOMB_X12_Y7_N0
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (\Add9~32_combout\ & ((GND) # (!\Add7~31\))) # (!\Add9~32_combout\ & (\Add7~31\ $ (GND)))
-- \Add7~33\ = CARRY((\Add9~32_combout\) # (!\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~32_combout\,
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X12_Y7_N2
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (\Add9~34_combout\ & (\Add7~33\ & VCC)) # (!\Add9~34_combout\ & (!\Add7~33\))
-- \Add7~35\ = CARRY((!\Add9~34_combout\ & !\Add7~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~34_combout\,
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X12_Y7_N4
\Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (\Add9~36_combout\ & ((GND) # (!\Add7~35\))) # (!\Add9~36_combout\ & (\Add7~35\ $ (GND)))
-- \Add7~37\ = CARRY((\Add9~36_combout\) # (!\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~36_combout\,
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: LCCOMB_X12_Y7_N6
\Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (\Add9~38_combout\ & (\Add7~37\ & VCC)) # (!\Add9~38_combout\ & (!\Add7~37\))
-- \Add7~39\ = CARRY((!\Add9~38_combout\ & !\Add7~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~38_combout\,
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X12_Y7_N8
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (\Add9~40_combout\ & ((GND) # (!\Add7~39\))) # (!\Add9~40_combout\ & (\Add7~39\ $ (GND)))
-- \Add7~41\ = CARRY((\Add9~40_combout\) # (!\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~40_combout\,
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X12_Y7_N10
\Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (\Add9~42_combout\ & (\Add7~41\ & VCC)) # (!\Add9~42_combout\ & (!\Add7~41\))
-- \Add7~43\ = CARRY((!\Add9~42_combout\ & !\Add7~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~42_combout\,
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X11_Y5_N12
\Equal13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~13_combout\ = (byte_index(20) & (\Add7~40_combout\ & (byte_index(21) $ (!\Add7~42_combout\)))) # (!byte_index(20) & (!\Add7~40_combout\ & (byte_index(21) $ (!\Add7~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(20),
	datab => byte_index(21),
	datac => \Add7~42_combout\,
	datad => \Add7~40_combout\,
	combout => \Equal13~13_combout\);

-- Location: LCCOMB_X11_Y5_N0
\Equal13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~11_combout\ = (byte_index(17) & (\Add7~34_combout\ & (byte_index(16) $ (!\Add7~32_combout\)))) # (!byte_index(17) & (!\Add7~34_combout\ & (byte_index(16) $ (!\Add7~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => \Add7~32_combout\,
	datad => \Add7~34_combout\,
	combout => \Equal13~11_combout\);

-- Location: LCCOMB_X11_Y5_N26
\Equal13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~12_combout\ = (byte_index(19) & (\Add7~38_combout\ & (byte_index(18) $ (!\Add7~36_combout\)))) # (!byte_index(19) & (!\Add7~38_combout\ & (byte_index(18) $ (!\Add7~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datab => byte_index(18),
	datac => \Add7~38_combout\,
	datad => \Add7~36_combout\,
	combout => \Equal13~12_combout\);

-- Location: LCCOMB_X12_Y7_N12
\Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (\Add9~44_combout\ & ((GND) # (!\Add7~43\))) # (!\Add9~44_combout\ & (\Add7~43\ $ (GND)))
-- \Add7~45\ = CARRY((\Add9~44_combout\) # (!\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~44_combout\,
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X12_Y7_N14
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (\Add9~46_combout\ & (\Add7~45\ & VCC)) # (!\Add9~46_combout\ & (!\Add7~45\))
-- \Add7~47\ = CARRY((!\Add9~46_combout\ & !\Add7~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~46_combout\,
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X11_Y5_N10
\Equal13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~14_combout\ = (byte_index(22) & (\Add7~44_combout\ & (byte_index(23) $ (!\Add7~46_combout\)))) # (!byte_index(22) & (!\Add7~44_combout\ & (byte_index(23) $ (!\Add7~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datab => byte_index(23),
	datac => \Add7~46_combout\,
	datad => \Add7~44_combout\,
	combout => \Equal13~14_combout\);

-- Location: LCCOMB_X11_Y5_N16
\Equal13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~15_combout\ = (\Equal13~13_combout\ & (\Equal13~11_combout\ & (\Equal13~12_combout\ & \Equal13~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~13_combout\,
	datab => \Equal13~11_combout\,
	datac => \Equal13~12_combout\,
	datad => \Equal13~14_combout\,
	combout => \Equal13~15_combout\);

-- Location: LCCOMB_X12_Y7_N16
\Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (\Add9~48_combout\ & ((GND) # (!\Add7~47\))) # (!\Add9~48_combout\ & (\Add7~47\ $ (GND)))
-- \Add7~49\ = CARRY((\Add9~48_combout\) # (!\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~48_combout\,
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: LCCOMB_X12_Y7_N18
\Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (\Add9~50_combout\ & (\Add7~49\ & VCC)) # (!\Add9~50_combout\ & (!\Add7~49\))
-- \Add7~51\ = CARRY((!\Add9~50_combout\ & !\Add7~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~50_combout\,
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X12_Y7_N20
\Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (\Add9~52_combout\ & ((GND) # (!\Add7~51\))) # (!\Add9~52_combout\ & (\Add7~51\ $ (GND)))
-- \Add7~53\ = CARRY((\Add9~52_combout\) # (!\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~52_combout\,
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: LCCOMB_X12_Y7_N22
\Add7~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (\Add9~54_combout\ & (\Add7~53\ & VCC)) # (!\Add9~54_combout\ & (!\Add7~53\))
-- \Add7~55\ = CARRY((!\Add9~54_combout\ & !\Add7~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~54_combout\,
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: LCCOMB_X11_Y7_N30
\Equal13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~17_combout\ = (byte_index(27) & (\Add7~54_combout\ & (byte_index(26) $ (!\Add7~52_combout\)))) # (!byte_index(27) & (!\Add7~54_combout\ & (byte_index(26) $ (!\Add7~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datab => byte_index(26),
	datac => \Add7~52_combout\,
	datad => \Add7~54_combout\,
	combout => \Equal13~17_combout\);

-- Location: LCCOMB_X11_Y7_N4
\Equal13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~16_combout\ = (byte_index(24) & (\Add7~48_combout\ & (\Add7~50_combout\ $ (!byte_index(25))))) # (!byte_index(24) & (!\Add7~48_combout\ & (\Add7~50_combout\ $ (!byte_index(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(24),
	datab => \Add7~50_combout\,
	datac => byte_index(25),
	datad => \Add7~48_combout\,
	combout => \Equal13~16_combout\);

-- Location: LCCOMB_X12_Y7_N24
\Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (\Add9~56_combout\ & ((GND) # (!\Add7~55\))) # (!\Add9~56_combout\ & (\Add7~55\ $ (GND)))
-- \Add7~57\ = CARRY((\Add9~56_combout\) # (!\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~56_combout\,
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X12_Y7_N26
\Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (\Add9~58_combout\ & (\Add7~57\ & VCC)) # (!\Add9~58_combout\ & (!\Add7~57\))
-- \Add7~59\ = CARRY((!\Add9~58_combout\ & !\Add7~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~58_combout\,
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: LCCOMB_X11_Y7_N8
\Equal13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~18_combout\ = (byte_index(28) & (\Add7~56_combout\ & (byte_index(29) $ (!\Add7~58_combout\)))) # (!byte_index(28) & (!\Add7~56_combout\ & (byte_index(29) $ (!\Add7~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(28),
	datab => byte_index(29),
	datac => \Add7~58_combout\,
	datad => \Add7~56_combout\,
	combout => \Equal13~18_combout\);

-- Location: LCCOMB_X12_Y7_N28
\Add7~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (\Add9~60_combout\ & ((GND) # (!\Add7~59\))) # (!\Add9~60_combout\ & (\Add7~59\ $ (GND)))
-- \Add7~61\ = CARRY((\Add9~60_combout\) # (!\Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~60_combout\,
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: LCCOMB_X12_Y7_N30
\Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = \Add7~61\ $ (!\Add9~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add9~62_combout\,
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: LCCOMB_X11_Y7_N6
\Equal13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~19_combout\ = (byte_index(31) & (\Add7~62_combout\ & (byte_index(30) $ (!\Add7~60_combout\)))) # (!byte_index(31) & (!\Add7~62_combout\ & (byte_index(30) $ (!\Add7~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => byte_index(30),
	datac => \Add7~62_combout\,
	datad => \Add7~60_combout\,
	combout => \Equal13~19_combout\);

-- Location: LCCOMB_X11_Y7_N20
\Equal13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~20_combout\ = (\Equal13~17_combout\ & (\Equal13~16_combout\ & (\Equal13~18_combout\ & \Equal13~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~17_combout\,
	datab => \Equal13~16_combout\,
	datac => \Equal13~18_combout\,
	datad => \Equal13~19_combout\,
	combout => \Equal13~20_combout\);

-- Location: LCCOMB_X12_Y5_N2
\Selector3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~35_combout\ = (\Selector3~21_combout\ & (((!\Equal13~20_combout\) # (!\Equal13~15_combout\)) # (!\Equal13~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~21_combout\,
	datab => \Equal13~10_combout\,
	datac => \Equal13~15_combout\,
	datad => \Equal13~20_combout\,
	combout => \Selector3~35_combout\);

-- Location: LCCOMB_X12_Y5_N20
\s_state.CRC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state.CRC~0_combout\ = (\Selector3~35_combout\) # ((\s_state.CRC~q\ & !\Selector3~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~35_combout\,
	datac => \s_state.CRC~q\,
	datad => \Selector3~34_combout\,
	combout => \s_state.CRC~0_combout\);

-- Location: FF_X12_Y5_N21
\s_state.CRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_state.CRC~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.CRC~q\);

-- Location: LCCOMB_X10_Y5_N28
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\in_data[6]~input_o\ & (!\in_data[1]~input_o\ & (!\in_data[2]~input_o\ & !\in_data[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[6]~input_o\,
	datab => \in_data[1]~input_o\,
	datac => \in_data[2]~input_o\,
	datad => \in_data[5]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X10_Y5_N26
\Selector0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~27_combout\ = (!\s_state.CRC~q\ & ((\in_data[7]~input_o\) # ((\Equal6~0_combout\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => \Equal6~0_combout\,
	datac => \s_state.CRC~q\,
	datad => \Equal3~0_combout\,
	combout => \Selector0~27_combout\);

-- Location: LCCOMB_X9_Y7_N28
\next_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = (byte_index(0) & (\in_valid~input_o\ & (!byte_index(1) & \out_ready~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \in_valid~input_o\,
	datac => byte_index(1),
	datad => \out_ready~input_o\,
	combout => \next_state~10_combout\);

-- Location: LCCOMB_X10_Y10_N6
\next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~9_combout\ = (\Add8~0_combout\ & (!\Equal9~0_combout\ & (byte_index(4) $ (!\Add8~2_combout\)))) # (!\Add8~0_combout\ & ((byte_index(4) & (!\Equal9~0_combout\ & !\Add8~2_combout\)) # (!byte_index(4) & (\Equal9~0_combout\ & \Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => byte_index(4),
	datac => \Equal9~0_combout\,
	datad => \Add8~2_combout\,
	combout => \next_state~9_combout\);

-- Location: LCCOMB_X10_Y10_N10
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = \Equal9~1_combout\ $ (((\Add8~2_combout\ & (\Add8~1_combout\ & !\Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Add8~1_combout\,
	datac => \Add8~0_combout\,
	datad => \Equal9~1_combout\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X10_Y10_N22
\next_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~12_combout\ = (!\Equal12~0_combout\ & (ip_header_length(2) $ (byte_index(3) $ (!ip_header_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datab => byte_index(3),
	datac => ip_header_length(3),
	datad => \Equal12~0_combout\,
	combout => \next_state~12_combout\);

-- Location: LCCOMB_X10_Y10_N20
\next_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~8_combout\ = (\Equal0~7_combout\ & (byte_index(2) $ (ip_header_length(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datac => ip_header_length(2),
	datad => \Equal0~7_combout\,
	combout => \next_state~8_combout\);

-- Location: LCCOMB_X13_Y5_N20
\next_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~11_combout\ = (\next_state~10_combout\ & (\next_state~9_combout\ & (\next_state~12_combout\ & \next_state~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~10_combout\,
	datab => \next_state~9_combout\,
	datac => \next_state~12_combout\,
	datad => \next_state~8_combout\,
	combout => \next_state~11_combout\);

-- Location: LCCOMB_X13_Y5_N10
\Selector3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~26_combout\ = (\s_state.IDLE~q\ & (((\s_state.UDP_HEADER~q\ & \next_state~11_combout\)))) # (!\s_state.IDLE~q\ & ((\in_startofpacket~input_o\) # ((\s_state.UDP_HEADER~q\ & \next_state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datab => \in_startofpacket~input_o\,
	datac => \s_state.UDP_HEADER~q\,
	datad => \next_state~11_combout\,
	combout => \Selector3~26_combout\);

-- Location: LCCOMB_X13_Y5_N6
\Selector3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~32_combout\ = (\Selector0~27_combout\) # ((\Selector0~26_combout\) # (\Selector3~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~27_combout\,
	datac => \Selector0~26_combout\,
	datad => \Selector3~26_combout\,
	combout => \Selector3~32_combout\);

-- Location: LCCOMB_X13_Y5_N12
\Selector3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~33_combout\ = (\Selector3~32_combout\) # ((\s_state.IP_HEADER~q\ & \Selector3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.IP_HEADER~q\,
	datac => \Selector3~24_combout\,
	datad => \Selector3~32_combout\,
	combout => \Selector3~33_combout\);

-- Location: LCCOMB_X10_Y7_N18
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!byte_index(6) & (!byte_index(0) & (!byte_index(3) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => byte_index(0),
	datac => byte_index(3),
	datad => \Equal0~7_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X11_Y8_N30
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ((byte_index(5)) # ((!byte_index(1)) # (!byte_index(4)))) # (!byte_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(5),
	datac => byte_index(4),
	datad => byte_index(1),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X10_Y7_N20
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Equal5~0_combout\) # (!\Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X13_Y5_N16
\Selector3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~29_combout\ = (\s_state.CRC~q\) # ((\s_state.IP_HEADER~q\ & (\Selector3~23_combout\ & !\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \s_state.IP_HEADER~q\,
	datac => \Selector3~23_combout\,
	datad => \Equal5~1_combout\,
	combout => \Selector3~29_combout\);

-- Location: LCCOMB_X13_Y5_N22
\Selector3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~30_combout\ = (\s_state.ETHERNET_HEADER~q\ & (((\Selector0~26_combout\)))) # (!\s_state.ETHERNET_HEADER~q\ & (\Selector3~29_combout\ & ((\out_ready~input_o\) # (\Selector0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \out_ready~input_o\,
	datac => \Selector0~26_combout\,
	datad => \Selector3~29_combout\,
	combout => \Selector3~30_combout\);

-- Location: LCCOMB_X13_Y5_N4
\Selector3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~31_combout\ = (\Selector3~26_combout\) # ((\Selector3~30_combout\) # ((\s_state.IP_HEADER~q\ & \Selector3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~26_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \Selector3~24_combout\,
	datad => \Selector3~30_combout\,
	combout => \Selector3~31_combout\);

-- Location: LCCOMB_X13_Y5_N8
\Selector3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~25_combout\ = (\s_state.IP_HEADER~q\ & ((\Selector3~24_combout\) # ((\Selector3~23_combout\ & !\Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~23_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \Selector3~24_combout\,
	datad => \Equal5~1_combout\,
	combout => \Selector3~25_combout\);

-- Location: LCCOMB_X13_Y5_N0
\Selector3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~27_combout\ = (\Selector3~26_combout\) # ((\Selector0~26_combout\) # ((\Selector3~25_combout\ & \Selector3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~26_combout\,
	datab => \Selector0~26_combout\,
	datac => \Selector3~25_combout\,
	datad => \Selector3~24_combout\,
	combout => \Selector3~27_combout\);

-- Location: LCCOMB_X13_Y5_N26
\Selector3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~28_combout\ = (\s_state.ETHERNET_HEADER~q\ & (((\Selector3~27_combout\)))) # (!\s_state.ETHERNET_HEADER~q\ & ((\s_state.CRC~q\) # ((\Selector3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \Selector3~25_combout\,
	datad => \Selector3~27_combout\,
	combout => \Selector3~28_combout\);

-- Location: LCCOMB_X11_Y10_N0
\Add10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~1_cout\ = CARRY(\Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~0_combout\,
	datad => VCC,
	cout => \Add10~1_cout\);

-- Location: LCCOMB_X11_Y10_N2
\Add10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~3_cout\ = CARRY((!\Add9~2_combout\ & !\Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datad => VCC,
	cin => \Add10~1_cout\,
	cout => \Add10~3_cout\);

-- Location: LCCOMB_X11_Y10_N4
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\Add9~4_combout\ & (\Add10~3_cout\ $ (GND))) # (!\Add9~4_combout\ & (!\Add10~3_cout\ & VCC))
-- \Add10~5\ = CARRY((\Add9~4_combout\ & !\Add10~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datad => VCC,
	cin => \Add10~3_cout\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X11_Y10_N6
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Add9~6_combout\ & (!\Add10~5\)) # (!\Add9~6_combout\ & ((\Add10~5\) # (GND)))
-- \Add10~7\ = CARRY((!\Add10~5\) # (!\Add9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X11_Y10_N8
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\Add9~8_combout\ & (\Add10~7\ $ (GND))) # (!\Add9~8_combout\ & (!\Add10~7\ & VCC))
-- \Add10~9\ = CARRY((\Add9~8_combout\ & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~8_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X11_Y10_N10
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\Add9~10_combout\ & (!\Add10~9\)) # (!\Add9~10_combout\ & ((\Add10~9\) # (GND)))
-- \Add10~11\ = CARRY((!\Add10~9\) # (!\Add9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~10_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X11_Y10_N12
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (\Add9~12_combout\ & (\Add10~11\ $ (GND))) # (!\Add9~12_combout\ & (!\Add10~11\ & VCC))
-- \Add10~13\ = CARRY((\Add9~12_combout\ & !\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~12_combout\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X11_Y10_N14
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (\Add9~14_combout\ & (!\Add10~13\)) # (!\Add9~14_combout\ & ((\Add10~13\) # (GND)))
-- \Add10~15\ = CARRY((!\Add10~13\) # (!\Add9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~14_combout\,
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X11_Y10_N16
\Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = (\Add9~16_combout\ & (\Add10~15\ $ (GND))) # (!\Add9~16_combout\ & (!\Add10~15\ & VCC))
-- \Add10~17\ = CARRY((\Add9~16_combout\ & !\Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~16_combout\,
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X11_Y10_N18
\Add10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = (\Add9~18_combout\ & (!\Add10~17\)) # (!\Add9~18_combout\ & ((\Add10~17\) # (GND)))
-- \Add10~19\ = CARRY((!\Add10~17\) # (!\Add9~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~18_combout\,
	datad => VCC,
	cin => \Add10~17\,
	combout => \Add10~18_combout\,
	cout => \Add10~19\);

-- Location: LCCOMB_X11_Y10_N20
\Add10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = (\Add9~20_combout\ & (\Add10~19\ $ (GND))) # (!\Add9~20_combout\ & (!\Add10~19\ & VCC))
-- \Add10~21\ = CARRY((\Add9~20_combout\ & !\Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~20_combout\,
	datad => VCC,
	cin => \Add10~19\,
	combout => \Add10~20_combout\,
	cout => \Add10~21\);

-- Location: LCCOMB_X11_Y10_N22
\Add10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~22_combout\ = (\Add9~22_combout\ & (!\Add10~21\)) # (!\Add9~22_combout\ & ((\Add10~21\) # (GND)))
-- \Add10~23\ = CARRY((!\Add10~21\) # (!\Add9~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~22_combout\,
	datad => VCC,
	cin => \Add10~21\,
	combout => \Add10~22_combout\,
	cout => \Add10~23\);

-- Location: LCCOMB_X11_Y10_N24
\Add10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~24_combout\ = (\Add9~24_combout\ & (\Add10~23\ $ (GND))) # (!\Add9~24_combout\ & (!\Add10~23\ & VCC))
-- \Add10~25\ = CARRY((\Add9~24_combout\ & !\Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~24_combout\,
	datad => VCC,
	cin => \Add10~23\,
	combout => \Add10~24_combout\,
	cout => \Add10~25\);

-- Location: LCCOMB_X11_Y10_N26
\Add10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~26_combout\ = (\Add9~26_combout\ & (!\Add10~25\)) # (!\Add9~26_combout\ & ((\Add10~25\) # (GND)))
-- \Add10~27\ = CARRY((!\Add10~25\) # (!\Add9~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~26_combout\,
	datad => VCC,
	cin => \Add10~25\,
	combout => \Add10~26_combout\,
	cout => \Add10~27\);

-- Location: LCCOMB_X11_Y10_N28
\Add10~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~28_combout\ = (\Add9~28_combout\ & (\Add10~27\ $ (GND))) # (!\Add9~28_combout\ & (!\Add10~27\ & VCC))
-- \Add10~29\ = CARRY((\Add9~28_combout\ & !\Add10~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~28_combout\,
	datad => VCC,
	cin => \Add10~27\,
	combout => \Add10~28_combout\,
	cout => \Add10~29\);

-- Location: LCCOMB_X11_Y10_N30
\Add10~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~30_combout\ = (\Add9~30_combout\ & (!\Add10~29\)) # (!\Add9~30_combout\ & ((\Add10~29\) # (GND)))
-- \Add10~31\ = CARRY((!\Add10~29\) # (!\Add9~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~30_combout\,
	datad => VCC,
	cin => \Add10~29\,
	combout => \Add10~30_combout\,
	cout => \Add10~31\);

-- Location: LCCOMB_X11_Y9_N0
\Add10~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~32_combout\ = (\Add9~32_combout\ & (\Add10~31\ $ (GND))) # (!\Add9~32_combout\ & (!\Add10~31\ & VCC))
-- \Add10~33\ = CARRY((\Add9~32_combout\ & !\Add10~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~32_combout\,
	datad => VCC,
	cin => \Add10~31\,
	combout => \Add10~32_combout\,
	cout => \Add10~33\);

-- Location: LCCOMB_X11_Y9_N2
\Add10~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~34_combout\ = (\Add9~34_combout\ & (!\Add10~33\)) # (!\Add9~34_combout\ & ((\Add10~33\) # (GND)))
-- \Add10~35\ = CARRY((!\Add10~33\) # (!\Add9~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~34_combout\,
	datad => VCC,
	cin => \Add10~33\,
	combout => \Add10~34_combout\,
	cout => \Add10~35\);

-- Location: LCCOMB_X11_Y9_N4
\Add10~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~36_combout\ = (\Add9~36_combout\ & (\Add10~35\ $ (GND))) # (!\Add9~36_combout\ & (!\Add10~35\ & VCC))
-- \Add10~37\ = CARRY((\Add9~36_combout\ & !\Add10~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~36_combout\,
	datad => VCC,
	cin => \Add10~35\,
	combout => \Add10~36_combout\,
	cout => \Add10~37\);

-- Location: LCCOMB_X11_Y9_N6
\Add10~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~38_combout\ = (\Add9~38_combout\ & (!\Add10~37\)) # (!\Add9~38_combout\ & ((\Add10~37\) # (GND)))
-- \Add10~39\ = CARRY((!\Add10~37\) # (!\Add9~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~38_combout\,
	datad => VCC,
	cin => \Add10~37\,
	combout => \Add10~38_combout\,
	cout => \Add10~39\);

-- Location: LCCOMB_X11_Y9_N8
\Add10~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~40_combout\ = (\Add9~40_combout\ & (\Add10~39\ $ (GND))) # (!\Add9~40_combout\ & (!\Add10~39\ & VCC))
-- \Add10~41\ = CARRY((\Add9~40_combout\ & !\Add10~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~40_combout\,
	datad => VCC,
	cin => \Add10~39\,
	combout => \Add10~40_combout\,
	cout => \Add10~41\);

-- Location: LCCOMB_X11_Y9_N10
\Add10~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~42_combout\ = (\Add9~42_combout\ & (!\Add10~41\)) # (!\Add9~42_combout\ & ((\Add10~41\) # (GND)))
-- \Add10~43\ = CARRY((!\Add10~41\) # (!\Add9~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~42_combout\,
	datad => VCC,
	cin => \Add10~41\,
	combout => \Add10~42_combout\,
	cout => \Add10~43\);

-- Location: LCCOMB_X11_Y9_N12
\Add10~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~44_combout\ = (\Add9~44_combout\ & (\Add10~43\ $ (GND))) # (!\Add9~44_combout\ & (!\Add10~43\ & VCC))
-- \Add10~45\ = CARRY((\Add9~44_combout\ & !\Add10~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~44_combout\,
	datad => VCC,
	cin => \Add10~43\,
	combout => \Add10~44_combout\,
	cout => \Add10~45\);

-- Location: LCCOMB_X11_Y9_N14
\Add10~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~46_combout\ = (\Add9~46_combout\ & (!\Add10~45\)) # (!\Add9~46_combout\ & ((\Add10~45\) # (GND)))
-- \Add10~47\ = CARRY((!\Add10~45\) # (!\Add9~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~46_combout\,
	datad => VCC,
	cin => \Add10~45\,
	combout => \Add10~46_combout\,
	cout => \Add10~47\);

-- Location: LCCOMB_X11_Y9_N16
\Add10~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~48_combout\ = (\Add9~48_combout\ & (\Add10~47\ $ (GND))) # (!\Add9~48_combout\ & (!\Add10~47\ & VCC))
-- \Add10~49\ = CARRY((\Add9~48_combout\ & !\Add10~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~48_combout\,
	datad => VCC,
	cin => \Add10~47\,
	combout => \Add10~48_combout\,
	cout => \Add10~49\);

-- Location: LCCOMB_X11_Y9_N18
\Add10~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~50_combout\ = (\Add9~50_combout\ & (!\Add10~49\)) # (!\Add9~50_combout\ & ((\Add10~49\) # (GND)))
-- \Add10~51\ = CARRY((!\Add10~49\) # (!\Add9~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~50_combout\,
	datad => VCC,
	cin => \Add10~49\,
	combout => \Add10~50_combout\,
	cout => \Add10~51\);

-- Location: LCCOMB_X12_Y5_N30
\Selector0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~20_combout\ = (byte_index(24) & (\Add10~48_combout\ & (byte_index(25) $ (!\Add10~50_combout\)))) # (!byte_index(24) & (!\Add10~48_combout\ & (byte_index(25) $ (!\Add10~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(24),
	datab => byte_index(25),
	datac => \Add10~48_combout\,
	datad => \Add10~50_combout\,
	combout => \Selector0~20_combout\);

-- Location: LCCOMB_X11_Y9_N20
\Add10~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~52_combout\ = (\Add9~52_combout\ & (\Add10~51\ $ (GND))) # (!\Add9~52_combout\ & (!\Add10~51\ & VCC))
-- \Add10~53\ = CARRY((\Add9~52_combout\ & !\Add10~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~52_combout\,
	datad => VCC,
	cin => \Add10~51\,
	combout => \Add10~52_combout\,
	cout => \Add10~53\);

-- Location: LCCOMB_X11_Y9_N22
\Add10~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~54_combout\ = (\Add9~54_combout\ & (!\Add10~53\)) # (!\Add9~54_combout\ & ((\Add10~53\) # (GND)))
-- \Add10~55\ = CARRY((!\Add10~53\) # (!\Add9~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~54_combout\,
	datad => VCC,
	cin => \Add10~53\,
	combout => \Add10~54_combout\,
	cout => \Add10~55\);

-- Location: LCCOMB_X11_Y9_N24
\Add10~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~56_combout\ = (\Add9~56_combout\ & (\Add10~55\ $ (GND))) # (!\Add9~56_combout\ & (!\Add10~55\ & VCC))
-- \Add10~57\ = CARRY((\Add9~56_combout\ & !\Add10~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~56_combout\,
	datad => VCC,
	cin => \Add10~55\,
	combout => \Add10~56_combout\,
	cout => \Add10~57\);

-- Location: LCCOMB_X11_Y9_N26
\Add10~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~58_combout\ = (\Add9~58_combout\ & (!\Add10~57\)) # (!\Add9~58_combout\ & ((\Add10~57\) # (GND)))
-- \Add10~59\ = CARRY((!\Add10~57\) # (!\Add9~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~58_combout\,
	datad => VCC,
	cin => \Add10~57\,
	combout => \Add10~58_combout\,
	cout => \Add10~59\);

-- Location: LCCOMB_X11_Y9_N28
\Add10~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~60_combout\ = (\Add9~60_combout\ & (\Add10~59\ $ (GND))) # (!\Add9~60_combout\ & (!\Add10~59\ & VCC))
-- \Add10~61\ = CARRY((\Add9~60_combout\ & !\Add10~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~60_combout\,
	datad => VCC,
	cin => \Add10~59\,
	combout => \Add10~60_combout\,
	cout => \Add10~61\);

-- Location: LCCOMB_X11_Y9_N30
\Add10~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~62_combout\ = \Add10~61\ $ (\Add9~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add9~62_combout\,
	cin => \Add10~61\,
	combout => \Add10~62_combout\);

-- Location: LCCOMB_X12_Y5_N0
\Selector0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~21_combout\ = (byte_index(31) & ((byte_index(29) $ (\Add10~58_combout\)) # (!\Add10~62_combout\))) # (!byte_index(31) & ((\Add10~62_combout\) # (byte_index(29) $ (\Add10~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => byte_index(29),
	datac => \Add10~58_combout\,
	datad => \Add10~62_combout\,
	combout => \Selector0~21_combout\);

-- Location: LCCOMB_X12_Y5_N6
\Selector0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~22_combout\ = (\Selector0~20_combout\ & (!\Selector0~21_combout\ & (byte_index(30) $ (!\Add10~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~20_combout\,
	datab => byte_index(30),
	datac => \Add10~60_combout\,
	datad => \Selector0~21_combout\,
	combout => \Selector0~22_combout\);

-- Location: LCCOMB_X10_Y9_N0
\Selector0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~9_combout\ = (byte_index(26) & (\Add10~52_combout\ & (byte_index(27) $ (!\Add10~54_combout\)))) # (!byte_index(26) & (!\Add10~52_combout\ & (byte_index(27) $ (!\Add10~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(26),
	datab => byte_index(27),
	datac => \Add10~52_combout\,
	datad => \Add10~54_combout\,
	combout => \Selector0~9_combout\);

-- Location: LCCOMB_X11_Y8_N2
\Selector0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~16_combout\ = (byte_index(13) & (\Add10~26_combout\ & (byte_index(12) $ (!\Add10~24_combout\)))) # (!byte_index(13) & (!\Add10~26_combout\ & (byte_index(12) $ (!\Add10~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datab => byte_index(12),
	datac => \Add10~24_combout\,
	datad => \Add10~26_combout\,
	combout => \Selector0~16_combout\);

-- Location: LCCOMB_X11_Y8_N12
\Selector0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~17_combout\ = (byte_index(14) & (\Add10~28_combout\ & (byte_index(15) $ (!\Add10~30_combout\)))) # (!byte_index(14) & (!\Add10~28_combout\ & (byte_index(15) $ (!\Add10~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(14),
	datab => byte_index(15),
	datac => \Add10~28_combout\,
	datad => \Add10~30_combout\,
	combout => \Selector0~17_combout\);

-- Location: LCCOMB_X12_Y6_N18
\Selector0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~14_combout\ = (byte_index(9) & (\Add10~18_combout\ & (\Add10~16_combout\ $ (!byte_index(8))))) # (!byte_index(9) & (!\Add10~18_combout\ & (\Add10~16_combout\ $ (!byte_index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => \Add10~16_combout\,
	datac => byte_index(8),
	datad => \Add10~18_combout\,
	combout => \Selector0~14_combout\);

-- Location: LCCOMB_X12_Y6_N8
\Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = byte_index(10) $ (\Add10~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(10),
	datad => \Add10~20_combout\,
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X12_Y6_N30
\Selector0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~15_combout\ = (\Selector0~14_combout\ & (!\Equal15~0_combout\ & (byte_index(11) $ (!\Add10~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => \Selector0~14_combout\,
	datac => \Equal15~0_combout\,
	datad => \Add10~22_combout\,
	combout => \Selector0~15_combout\);

-- Location: LCCOMB_X11_Y8_N6
\Selector0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~10_combout\ = (byte_index(2) & (\Add10~4_combout\ & (byte_index(3) $ (!\Add10~6_combout\)))) # (!byte_index(2) & (!\Add10~4_combout\ & (byte_index(3) $ (!\Add10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(3),
	datac => \Add10~6_combout\,
	datad => \Add10~4_combout\,
	combout => \Selector0~10_combout\);

-- Location: LCCOMB_X11_Y8_N14
\Selector0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~12_combout\ = (byte_index(6) & (\Add10~12_combout\ & (byte_index(7) $ (!\Add10~14_combout\)))) # (!byte_index(6) & (!\Add10~12_combout\ & (byte_index(7) $ (!\Add10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => byte_index(7),
	datac => \Add10~14_combout\,
	datad => \Add10~12_combout\,
	combout => \Selector0~12_combout\);

-- Location: LCCOMB_X11_Y8_N24
\Selector0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~11_combout\ = (byte_index(5) & (\Add10~10_combout\ & (byte_index(4) $ (!\Add10~8_combout\)))) # (!byte_index(5) & (!\Add10~10_combout\ & (byte_index(4) $ (!\Add10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => byte_index(4),
	datac => \Add10~10_combout\,
	datad => \Add10~8_combout\,
	combout => \Selector0~11_combout\);

-- Location: LCCOMB_X11_Y8_N20
\Selector0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~13_combout\ = (\Selector0~10_combout\ & (\Equal13~0_combout\ & (\Selector0~12_combout\ & \Selector0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~10_combout\,
	datab => \Equal13~0_combout\,
	datac => \Selector0~12_combout\,
	datad => \Selector0~11_combout\,
	combout => \Selector0~13_combout\);

-- Location: LCCOMB_X12_Y5_N14
\Selector0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~18_combout\ = (\Selector0~16_combout\ & (\Selector0~17_combout\ & (\Selector0~15_combout\ & \Selector0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~16_combout\,
	datab => \Selector0~17_combout\,
	datac => \Selector0~15_combout\,
	datad => \Selector0~13_combout\,
	combout => \Selector0~18_combout\);

-- Location: LCCOMB_X12_Y5_N4
\Selector0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~19_combout\ = (\s_state.CRC~q\ & (\Selector0~18_combout\ & (byte_index(28) $ (!\Add10~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(28),
	datab => \s_state.CRC~q\,
	datac => \Selector0~18_combout\,
	datad => \Add10~56_combout\,
	combout => \Selector0~19_combout\);

-- Location: LCCOMB_X11_Y5_N30
\Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (byte_index(17) & (\Add10~34_combout\ & (byte_index(16) $ (!\Add10~32_combout\)))) # (!byte_index(17) & (!\Add10~34_combout\ & (byte_index(16) $ (!\Add10~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => \Add10~34_combout\,
	datad => \Add10~32_combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X11_Y5_N8
\Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (byte_index(19) & (\Add10~38_combout\ & (byte_index(18) $ (!\Add10~36_combout\)))) # (!byte_index(19) & (!\Add10~38_combout\ & (byte_index(18) $ (!\Add10~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datab => byte_index(18),
	datac => \Add10~36_combout\,
	datad => \Add10~38_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X11_Y5_N4
\Selector0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = (byte_index(22) & (\Add10~44_combout\ & (byte_index(23) $ (!\Add10~46_combout\)))) # (!byte_index(22) & (!\Add10~44_combout\ & (byte_index(23) $ (!\Add10~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datab => byte_index(23),
	datac => \Add10~44_combout\,
	datad => \Add10~46_combout\,
	combout => \Selector0~7_combout\);

-- Location: LCCOMB_X11_Y5_N18
\Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (byte_index(20) & (\Add10~40_combout\ & (byte_index(21) $ (!\Add10~42_combout\)))) # (!byte_index(20) & (!\Add10~40_combout\ & (byte_index(21) $ (!\Add10~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(20),
	datab => byte_index(21),
	datac => \Add10~40_combout\,
	datad => \Add10~42_combout\,
	combout => \Selector0~6_combout\);

-- Location: LCCOMB_X11_Y5_N14
\Selector0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~8_combout\ = (\Selector0~4_combout\ & (\Selector0~5_combout\ & (\Selector0~7_combout\ & \Selector0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~4_combout\,
	datab => \Selector0~5_combout\,
	datac => \Selector0~7_combout\,
	datad => \Selector0~6_combout\,
	combout => \Selector0~8_combout\);

-- Location: LCCOMB_X12_Y5_N28
\Selector0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~23_combout\ = (\Selector0~22_combout\ & (\Selector0~9_combout\ & (\Selector0~19_combout\ & \Selector0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~22_combout\,
	datab => \Selector0~9_combout\,
	datac => \Selector0~19_combout\,
	datad => \Selector0~8_combout\,
	combout => \Selector0~23_combout\);

-- Location: LCCOMB_X13_Y5_N2
\Selector3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~34_combout\ = (\Selector3~28_combout\ & ((\Selector3~33_combout\) # ((\Selector3~31_combout\ & \Selector0~23_combout\)))) # (!\Selector3~28_combout\ & (((\Selector3~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~33_combout\,
	datab => \Selector3~31_combout\,
	datac => \Selector3~28_combout\,
	datad => \Selector0~23_combout\,
	combout => \Selector3~34_combout\);

-- Location: LCCOMB_X13_Y5_N18
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\Selector3~35_combout\ & ((\Selector3~34_combout\ & (\Selector3~38_combout\)) # (!\Selector3~34_combout\ & ((\s_state.ETHERNET_HEADER~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~38_combout\,
	datab => \Selector3~34_combout\,
	datac => \s_state.ETHERNET_HEADER~q\,
	datad => \Selector3~35_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X13_Y5_N19
\s_state.ETHERNET_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.ETHERNET_HEADER~q\);

-- Location: LCCOMB_X10_Y5_N30
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\in_data[0]~input_o\ & (\Equal3~0_combout\ & (!\in_data[4]~input_o\ & !\in_data[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datab => \Equal3~0_combout\,
	datac => \in_data[4]~input_o\,
	datad => \in_data[7]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X10_Y7_N16
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!byte_index(5) & (byte_index(3) & (!byte_index(6) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => byte_index(3),
	datac => byte_index(6),
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X10_Y7_N26
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!byte_index(2) & (\Equal0~8_combout\ & (byte_index(1) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Equal0~8_combout\,
	datac => byte_index(1),
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X10_Y5_N8
\Selector0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~24_combout\ = (\Equal0~10_combout\ & ((!\in_data[3]~input_o\) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \in_data[3]~input_o\,
	datac => \Equal0~10_combout\,
	combout => \Selector0~24_combout\);

-- Location: LCCOMB_X10_Y7_N0
\Selector0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~25_combout\ = (\Equal2~0_combout\ & (!byte_index(4) & (!byte_index(0) & !\Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => byte_index(4),
	datac => byte_index(0),
	datad => \Equal0~10_combout\,
	combout => \Selector0~25_combout\);

-- Location: LCCOMB_X10_Y5_N10
\Selector0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~26_combout\ = (\s_state.ETHERNET_HEADER~q\ & (\PROCES1~2_combout\ & ((\Selector0~24_combout\) # (\Selector0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \PROCES1~2_combout\,
	datac => \Selector0~24_combout\,
	datad => \Selector0~25_combout\,
	combout => \Selector0~26_combout\);

-- Location: LCCOMB_X10_Y7_N24
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (byte_index(5) & (!byte_index(4) & (!byte_index(1) & !byte_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => byte_index(4),
	datac => byte_index(1),
	datad => byte_index(2),
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X9_Y10_N24
\PROCES1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~0_combout\ = (!ip_header_length(5) & (ip_header_length(2) & (ip_header_length(4) & !ip_header_length(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(3),
	combout => \PROCES1~0_combout\);

-- Location: LCCOMB_X10_Y7_N14
\PROCES1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~1_combout\ = (\Equal7~1_combout\ & (\PROCES1~0_combout\ & \Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~1_combout\,
	datac => \PROCES1~0_combout\,
	datad => \Equal7~0_combout\,
	combout => \PROCES1~1_combout\);

-- Location: LCCOMB_X9_Y7_N30
\Selector0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~37_combout\ = (\PROCES1~1_combout\ & (\s_state.IP_HEADER~q\ & (\in_valid~input_o\ & \out_ready~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~1_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \in_valid~input_o\,
	datad => \out_ready~input_o\,
	combout => \Selector0~37_combout\);

-- Location: LCCOMB_X10_Y5_N24
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!\in_data[3]~input_o\ & \Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[3]~input_o\,
	datac => \Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X10_Y5_N14
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector0~26_combout\ & (!\Equal0~10_combout\ & (\Equal3~2_combout\))) # (!\Selector0~26_combout\ & (((\s_state.IP_HEADER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal3~2_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \Selector0~26_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X12_Y5_N10
\Selector0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~32_combout\ = (\Selector3~29_combout\ & ((\Selector0~27_combout\) # ((\out_ready~input_o\ & \Selector0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~27_combout\,
	datab => \Selector3~29_combout\,
	datac => \out_ready~input_o\,
	datad => \Selector0~23_combout\,
	combout => \Selector0~32_combout\);

-- Location: LCCOMB_X12_Y5_N8
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\Selector0~37_combout\ & (\Selector2~0_combout\ & ((\Selector0~26_combout\) # (!\Selector0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~26_combout\,
	datab => \Selector0~37_combout\,
	datac => \Selector2~0_combout\,
	datad => \Selector0~32_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X10_Y7_N30
\Selector0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~36_combout\ = (\PROCES1~1_combout\) # (((!\Equal5~0_combout\ & \Equal7~0_combout\)) # (!\Selector3~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \PROCES1~1_combout\,
	datad => \Selector3~23_combout\,
	combout => \Selector0~36_combout\);

-- Location: LCCOMB_X10_Y10_N24
\Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (\Add8~2_combout\ & (byte_index(4) & (\Add8~0_combout\ $ (byte_index(3))))) # (!\Add8~2_combout\ & (!byte_index(4) & (\Add8~0_combout\ $ (byte_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Add8~0_combout\,
	datac => byte_index(3),
	datad => byte_index(4),
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X10_Y10_N14
\Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~3_combout\ = (\Equal9~2_combout\ & (!\Equal9~1_combout\ & (!\Equal9~0_combout\ & \next_state~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~2_combout\,
	datab => \Equal9~1_combout\,
	datac => \Equal9~0_combout\,
	datad => \next_state~8_combout\,
	combout => \Equal9~3_combout\);

-- Location: LCCOMB_X10_Y7_N10
\Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~4_combout\ = (!byte_index(0) & (!byte_index(1) & \Equal9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal9~3_combout\,
	combout => \Equal9~4_combout\);

-- Location: LCCOMB_X10_Y5_N22
\Selector0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~28_combout\ = (\s_state.IP_HEADER~q\ & ((\Selector0~36_combout\) # ((\s_state.IDLE~q\ & !\Equal9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datab => \s_state.IP_HEADER~q\,
	datac => \Selector0~36_combout\,
	datad => \Equal9~4_combout\,
	combout => \Selector0~28_combout\);

-- Location: LCCOMB_X12_Y5_N22
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\ & ((\Selector0~31_combout\) # ((\Selector0~26_combout\) # (\Selector0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~31_combout\,
	datab => \Selector2~1_combout\,
	datac => \Selector0~26_combout\,
	datad => \Selector0~28_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X12_Y5_N23
\s_state.IP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IP_HEADER~q\);

-- Location: LCCOMB_X13_Y5_N14
\Selector0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~29_combout\ = (\s_state.IP_HEADER~q\) # ((!\s_state.DATA~q\ & \next_state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.IP_HEADER~q\,
	datac => \s_state.DATA~q\,
	datad => \next_state~11_combout\,
	combout => \Selector0~29_combout\);

-- Location: LCCOMB_X12_Y5_N26
\Selector0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~30_combout\ = (\s_state.IDLE~q\ & ((\Selector0~29_combout\) # ((\Selector3~35_combout\)))) # (!\s_state.IDLE~q\ & (((\in_startofpacket~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~29_combout\,
	datab => \Selector3~35_combout\,
	datac => \in_startofpacket~input_o\,
	datad => \s_state.IDLE~q\,
	combout => \Selector0~30_combout\);

-- Location: LCCOMB_X12_Y5_N12
\Selector0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~31_combout\ = ((\s_state.CRC~q\) # (\s_state.ETHERNET_HEADER~q\)) # (!\Selector0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~30_combout\,
	datab => \s_state.CRC~q\,
	datad => \s_state.ETHERNET_HEADER~q\,
	combout => \Selector0~31_combout\);

-- Location: LCCOMB_X10_Y5_N4
\Selector0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~33_combout\ = (!\Selector0~37_combout\ & (((\Equal0~10_combout\) # (!\Equal3~2_combout\)) # (!\Selector0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~26_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal0~10_combout\,
	datad => \Selector0~37_combout\,
	combout => \Selector0~33_combout\);

-- Location: LCCOMB_X12_Y5_N18
\Selector0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~34_combout\ = (\Selector0~33_combout\ & ((\Selector0~26_combout\) # ((\Selector0~32_combout\) # (!\s_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~26_combout\,
	datab => \s_state.IDLE~q\,
	datac => \Selector0~33_combout\,
	datad => \Selector0~32_combout\,
	combout => \Selector0~34_combout\);

-- Location: LCCOMB_X12_Y5_N16
\Selector0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~35_combout\ = ((!\Selector0~31_combout\ & (!\Selector0~28_combout\ & !\Selector0~26_combout\))) # (!\Selector0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~31_combout\,
	datab => \Selector0~28_combout\,
	datac => \Selector0~26_combout\,
	datad => \Selector0~34_combout\,
	combout => \Selector0~35_combout\);

-- Location: FF_X12_Y5_N17
\s_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~35_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IDLE~q\);

-- Location: LCCOMB_X10_Y5_N20
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\in_data[7]~input_o\) # ((\Equal6~0_combout\) # (!\Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => \Equal6~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X10_Y5_N18
\byte_index[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~38_combout\ = (\Equal7~0_combout\ & (\Equal6~1_combout\ & (\s_state.IP_HEADER~q\ & !\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal6~1_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal5~0_combout\,
	combout => \byte_index[0]~38_combout\);

-- Location: LCCOMB_X10_Y5_N6
\byte_index[0]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~105_combout\ = (\Equal3~1_combout\ & ((\in_data[3]~input_o\ & ((\Selector0~25_combout\))) # (!\in_data[3]~input_o\ & (\Equal0~10_combout\)))) # (!\Equal3~1_combout\ & (((\Equal0~10_combout\) # (\Selector0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \in_data[3]~input_o\,
	datac => \Equal0~10_combout\,
	datad => \Selector0~25_combout\,
	combout => \byte_index[0]~105_combout\);

-- Location: LCCOMB_X10_Y5_N12
\byte_index[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~39_combout\ = (\byte_index[0]~38_combout\) # ((\s_state.ETHERNET_HEADER~q\ & (!\s_state.CRC~q\ & \byte_index[0]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \byte_index[0]~38_combout\,
	datac => \s_state.CRC~q\,
	datad => \byte_index[0]~105_combout\,
	combout => \byte_index[0]~39_combout\);

-- Location: LCCOMB_X12_Y5_N24
\byte_index[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~40_combout\ = ((\Selector0~23_combout\) # ((\PROCES1~2_combout\ & \byte_index[0]~39_combout\))) # (!\s_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~2_combout\,
	datab => \s_state.IDLE~q\,
	datac => \byte_index[0]~39_combout\,
	datad => \Selector0~23_combout\,
	combout => \byte_index[0]~40_combout\);

-- Location: FF_X13_Y7_N1
\byte_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[0]~36_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(0));

-- Location: LCCOMB_X13_Y7_N2
\byte_index[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[1]~43_combout\ = (byte_index(1) & (!\byte_index[0]~37\)) # (!byte_index(1) & ((\byte_index[0]~37\) # (GND)))
-- \byte_index[1]~44\ = CARRY((!\byte_index[0]~37\) # (!byte_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datad => VCC,
	cin => \byte_index[0]~37\,
	combout => \byte_index[1]~43_combout\,
	cout => \byte_index[1]~44\);

-- Location: FF_X13_Y7_N3
\byte_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[1]~43_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(1));

-- Location: FF_X13_Y7_N5
\byte_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[2]~45_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[0]~40_combout\,
	ena => \byte_index[31]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(2));

-- Location: LCCOMB_X10_Y7_N22
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (byte_index(2) & (!byte_index(1) & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datac => byte_index(1),
	datad => \Equal0~9_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X10_Y7_N12
\Selector3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~23_combout\ = (\in_valid~input_o\ & (\out_ready~input_o\ & ((!\Equal0~8_combout\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \out_ready~input_o\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \Selector3~23_combout\);

-- Location: LCCOMB_X10_Y7_N28
\Selector3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~24_combout\ = (\Selector3~23_combout\ & (\Equal5~1_combout\ & ((\PROCES1~1_combout\) # (\Equal9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~23_combout\,
	datab => \Equal5~1_combout\,
	datac => \PROCES1~1_combout\,
	datad => \Equal9~4_combout\,
	combout => \Selector3~24_combout\);

-- Location: LCCOMB_X13_Y5_N28
\Selector3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~36_combout\ = (\Selector3~24_combout\ & \s_state.IP_HEADER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector3~24_combout\,
	datad => \s_state.IP_HEADER~q\,
	combout => \Selector3~36_combout\);

-- Location: LCCOMB_X13_Y5_N30
\Selector3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~37_combout\ = (!\Selector3~35_combout\ & ((\Selector3~36_combout\) # ((!\Selector3~34_combout\ & \s_state.UDP_HEADER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~36_combout\,
	datab => \Selector3~34_combout\,
	datac => \s_state.UDP_HEADER~q\,
	datad => \Selector3~35_combout\,
	combout => \Selector3~37_combout\);

-- Location: FF_X13_Y5_N31
\s_state.UDP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~37_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.UDP_HEADER~q\);

-- Location: LCCOMB_X14_Y5_N22
\Selector3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~22_combout\ = (\s_state.UDP_HEADER~q\ & \next_state~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.UDP_HEADER~q\,
	datad => \next_state~11_combout\,
	combout => \Selector3~22_combout\);

-- Location: LCCOMB_X14_Y5_N16
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\Selector3~35_combout\ & ((\Selector3~34_combout\ & (\Selector3~22_combout\)) # (!\Selector3~34_combout\ & ((\s_state.DATA~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~22_combout\,
	datab => \s_state.DATA~q\,
	datac => \Selector3~35_combout\,
	datad => \Selector3~34_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X14_Y5_N11
\s_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector4~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.DATA~q\);

-- Location: CLKCTRL_G3
\s_state.DATA~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_state.DATA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_state.DATA~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y4_N18
\out_data[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[0]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(0)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_data[0]$latch~combout\,
	datac => s_out_data(0),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[0]$latch~combout\);

-- Location: LCCOMB_X16_Y4_N30
\delayed_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \delayed_data[1]~feeder_combout\);

-- Location: FF_X16_Y4_N31
\delayed_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(1));

-- Location: FF_X16_Y4_N1
\s_out_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(1),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(1));

-- Location: LCCOMB_X16_Y4_N0
\out_data[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[1]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(1)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_data[1]$latch~combout\,
	datac => s_out_data(1),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[1]$latch~combout\);

-- Location: LCCOMB_X16_Y4_N28
\delayed_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \delayed_data[2]~feeder_combout\);

-- Location: FF_X16_Y4_N29
\delayed_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(2));

-- Location: FF_X16_Y4_N11
\s_out_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(2),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(2));

-- Location: LCCOMB_X16_Y4_N10
\out_data[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[2]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(2)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data[2]$latch~combout\,
	datac => s_out_data(2),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[2]$latch~combout\);

-- Location: LCCOMB_X16_Y4_N22
\delayed_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \delayed_data[3]~feeder_combout\);

-- Location: FF_X16_Y4_N23
\delayed_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(3));

-- Location: FF_X16_Y4_N17
\s_out_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(3),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(3));

-- Location: LCCOMB_X16_Y4_N16
\out_data[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[3]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(3)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_data[3]$latch~combout\,
	datac => s_out_data(3),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[3]$latch~combout\);

-- Location: FF_X16_Y4_N5
\delayed_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(4));

-- Location: FF_X16_Y4_N21
\s_out_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(4));

-- Location: LCCOMB_X16_Y4_N20
\out_data[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[4]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(4)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_data[4]$latch~combout\,
	datac => s_out_data(4),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[4]$latch~combout\);

-- Location: LCCOMB_X16_Y4_N26
\delayed_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \delayed_data[5]~feeder_combout\);

-- Location: FF_X16_Y4_N27
\delayed_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(5));

-- Location: FF_X16_Y4_N13
\s_out_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(5),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(5));

-- Location: LCCOMB_X16_Y4_N12
\out_data[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[5]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(5)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data[5]$latch~combout\,
	datac => s_out_data(5),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[5]$latch~combout\);

-- Location: FF_X16_Y4_N15
\delayed_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(6));

-- Location: FF_X16_Y4_N7
\s_out_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(6),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(6));

-- Location: LCCOMB_X16_Y4_N6
\out_data[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[6]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(6)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data[6]$latch~combout\,
	datac => s_out_data(6),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[6]$latch~combout\);

-- Location: FF_X16_Y4_N25
\delayed_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(7));

-- Location: FF_X16_Y4_N3
\s_out_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(7),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(7));

-- Location: LCCOMB_X16_Y4_N2
\out_data[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[7]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(7)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_data[7]$latch~combout\,
	datac => s_out_data(7),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[7]$latch~combout\);

-- Location: LCCOMB_X12_Y4_N18
\s_out_endofpacket~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_endofpacket~0_combout\ = (\s_state.DATA~q\ & (\in_valid~input_o\ & \out_ready~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => \in_valid~input_o\,
	datad => \out_ready~input_o\,
	combout => \s_out_endofpacket~0_combout\);

-- Location: LCCOMB_X12_Y4_N4
\s_out_endofpacket~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_endofpacket~1_combout\ = (\Equal13~10_combout\ & (\s_out_endofpacket~0_combout\ & (\Equal13~15_combout\ & \Equal13~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~10_combout\,
	datab => \s_out_endofpacket~0_combout\,
	datac => \Equal13~15_combout\,
	datad => \Equal13~20_combout\,
	combout => \s_out_endofpacket~1_combout\);

-- Location: LCCOMB_X12_Y4_N28
\s_out_endofpacket~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_endofpacket~2_combout\ = (\s_out_endofpacket~1_combout\) # ((!\Selector3~21_combout\ & \s_out_endofpacket~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~21_combout\,
	datab => \s_out_endofpacket~1_combout\,
	datac => \s_out_endofpacket~q\,
	combout => \s_out_endofpacket~2_combout\);

-- Location: FF_X12_Y4_N29
s_out_endofpacket : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_out_endofpacket~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_out_endofpacket~q\);

-- Location: LCCOMB_X11_Y8_N4
\s_channel[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~6_combout\ = (!byte_index(0) & (!byte_index(1) & \Equal10~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datad => \Equal10~8_combout\,
	combout => \s_channel[0]~6_combout\);

-- Location: LCCOMB_X9_Y8_N16
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (!byte_index(0) & (\Equal2~0_combout\ & byte_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datac => \Equal2~0_combout\,
	datad => byte_index(4),
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X9_Y8_N2
\s_channel[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~12_combout\ = (\s_channel[0]~6_combout\ & (!\Equal20~0_combout\ & ((!\Equal7~0_combout\) # (!\Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel[0]~6_combout\,
	datab => \Equal20~0_combout\,
	datac => \Equal7~1_combout\,
	datad => \Equal7~0_combout\,
	combout => \s_channel[0]~12_combout\);

-- Location: FF_X8_Y4_N25
\s_channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(0));

-- Location: LCCOMB_X8_Y4_N24
\channel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~0_combout\ = (s_channel(0) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(0),
	datad => \s_state.DATA~q\,
	combout => \channel~0_combout\);

-- Location: FF_X8_Y4_N15
\s_channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(1));

-- Location: LCCOMB_X8_Y4_N14
\channel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~1_combout\ = (s_channel(1) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(1),
	datad => \s_state.DATA~q\,
	combout => \channel~1_combout\);

-- Location: FF_X8_Y4_N1
\s_channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(2));

-- Location: LCCOMB_X8_Y4_N0
\channel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~2_combout\ = (s_channel(2) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(2),
	datad => \s_state.DATA~q\,
	combout => \channel~2_combout\);

-- Location: FF_X8_Y4_N23
\s_channel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(3));

-- Location: LCCOMB_X8_Y4_N22
\channel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~3_combout\ = (s_channel(3) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(3),
	datad => \s_state.DATA~q\,
	combout => \channel~3_combout\);

-- Location: FF_X8_Y4_N17
\s_channel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(4));

-- Location: LCCOMB_X8_Y4_N16
\channel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~4_combout\ = (s_channel(4) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(4),
	datad => \s_state.DATA~q\,
	combout => \channel~4_combout\);

-- Location: FF_X8_Y4_N7
\s_channel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(5));

-- Location: LCCOMB_X8_Y4_N6
\channel~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~5_combout\ = (s_channel(5) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(5),
	datad => \s_state.DATA~q\,
	combout => \channel~5_combout\);

-- Location: FF_X8_Y4_N13
\s_channel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(6));

-- Location: LCCOMB_X8_Y4_N12
\channel~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~6_combout\ = (s_channel(6) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(6),
	datad => \s_state.DATA~q\,
	combout => \channel~6_combout\);

-- Location: FF_X8_Y4_N27
\s_channel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(7));

-- Location: LCCOMB_X8_Y4_N26
\channel~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~7_combout\ = (s_channel(7) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(7),
	datad => \s_state.DATA~q\,
	combout => \channel~7_combout\);

-- Location: LCCOMB_X9_Y7_N0
\s_channel[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[8]~13_combout\ = (((!\Equal0~9_combout\) # (!byte_index(1))) # (!byte_index(4))) # (!byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(4),
	datac => byte_index(1),
	datad => \Equal0~9_combout\,
	combout => \s_channel[8]~13_combout\);

-- Location: LCCOMB_X9_Y8_N24
\s_channel[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[8]~7_combout\ = (\Equal9~3_combout\ & (byte_index(1) & (byte_index(0) & \s_channel[8]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~3_combout\,
	datab => byte_index(1),
	datac => byte_index(0),
	datad => \s_channel[8]~13_combout\,
	combout => \s_channel[8]~7_combout\);

-- Location: FF_X9_Y8_N21
\s_channel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(8));

-- Location: LCCOMB_X9_Y8_N20
\channel~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~8_combout\ = (\s_state.DATA~q\ & s_channel(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(8),
	combout => \channel~8_combout\);

-- Location: FF_X4_Y8_N5
\s_channel[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(9));

-- Location: LCCOMB_X4_Y8_N4
\channel~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~9_combout\ = (s_channel(9) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(9),
	datad => \s_state.DATA~q\,
	combout => \channel~9_combout\);

-- Location: FF_X4_Y8_N7
\s_channel[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(10));

-- Location: LCCOMB_X4_Y8_N6
\channel~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~10_combout\ = (s_channel(10) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(10),
	datad => \s_state.DATA~q\,
	combout => \channel~10_combout\);

-- Location: FF_X4_Y8_N1
\s_channel[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(11));

-- Location: LCCOMB_X4_Y8_N0
\channel~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~11_combout\ = (s_channel(11) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(11),
	datad => \s_state.DATA~q\,
	combout => \channel~11_combout\);

-- Location: FF_X4_Y8_N27
\s_channel[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(12));

-- Location: LCCOMB_X4_Y8_N26
\channel~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~12_combout\ = (s_channel(12) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(12),
	datad => \s_state.DATA~q\,
	combout => \channel~12_combout\);

-- Location: FF_X4_Y8_N17
\s_channel[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(13));

-- Location: LCCOMB_X4_Y8_N16
\channel~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~13_combout\ = (s_channel(13) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(13),
	datad => \s_state.DATA~q\,
	combout => \channel~13_combout\);

-- Location: FF_X4_Y8_N11
\s_channel[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(14));

-- Location: LCCOMB_X4_Y8_N10
\channel~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~14_combout\ = (s_channel(14) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(14),
	datad => \s_state.DATA~q\,
	combout => \channel~14_combout\);

-- Location: FF_X4_Y8_N9
\s_channel[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(15));

-- Location: LCCOMB_X4_Y8_N8
\channel~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~15_combout\ = (s_channel(15) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(15),
	datad => \s_state.DATA~q\,
	combout => \channel~15_combout\);

-- Location: LCCOMB_X9_Y8_N6
\Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (\Equal0~9_combout\ & byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => byte_index(1),
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X9_Y8_N12
\Equal18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~1_combout\ = (byte_index(4) & (!byte_index(0) & (!byte_index(2) & \Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(0),
	datac => byte_index(2),
	datad => \Equal18~0_combout\,
	combout => \Equal18~1_combout\);

-- Location: LCCOMB_X9_Y8_N14
\Equal10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~9_combout\ = (byte_index(0) & !byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(0),
	datad => byte_index(1),
	combout => \Equal10~9_combout\);

-- Location: LCCOMB_X9_Y8_N0
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (!byte_index(2) & (\Equal10~9_combout\ & (\Equal0~9_combout\ & byte_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Equal10~9_combout\,
	datac => \Equal0~9_combout\,
	datad => byte_index(4),
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X9_Y8_N8
\Equal22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (byte_index(4) & (!byte_index(0) & (byte_index(2) & \Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(0),
	datac => byte_index(2),
	datad => \Equal18~0_combout\,
	combout => \Equal22~0_combout\);

-- Location: LCCOMB_X9_Y7_N12
\Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (byte_index(0) & (byte_index(4) & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datac => byte_index(4),
	datad => \Equal2~0_combout\,
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X9_Y8_N26
\s_channel[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[24]~9_combout\ = (!\Equal17~0_combout\ & (!\Equal22~0_combout\ & !\Equal21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal17~0_combout\,
	datac => \Equal22~0_combout\,
	datad => \Equal21~0_combout\,
	combout => \s_channel[24]~9_combout\);

-- Location: LCCOMB_X9_Y8_N30
\Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\Equal7~1_combout\ & \Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~1_combout\,
	datad => \Equal7~0_combout\,
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X9_Y8_N18
\s_channel[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~8_combout\ = (!\Equal7~2_combout\ & ((byte_index(0)) # ((!byte_index(4)) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \Equal2~0_combout\,
	datac => \Equal7~2_combout\,
	datad => byte_index(4),
	combout => \s_channel[0]~8_combout\);

-- Location: LCCOMB_X9_Y8_N10
\s_channel[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[24]~10_combout\ = (!\Equal18~1_combout\ & (\s_channel[8]~13_combout\ & (\s_channel[24]~9_combout\ & \s_channel[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~1_combout\,
	datab => \s_channel[8]~13_combout\,
	datac => \s_channel[24]~9_combout\,
	datad => \s_channel[0]~8_combout\,
	combout => \s_channel[24]~10_combout\);

-- Location: LCCOMB_X9_Y8_N28
\s_channel[16]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[16]~11_combout\ = (!byte_index(0) & (byte_index(1) & (\Equal9~3_combout\ & \s_channel[24]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datac => \Equal9~3_combout\,
	datad => \s_channel[24]~10_combout\,
	combout => \s_channel[16]~11_combout\);

-- Location: FF_X8_Y4_N9
\s_channel[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(16));

-- Location: LCCOMB_X8_Y4_N8
\channel~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~16_combout\ = (s_channel(16) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(16),
	datad => \s_state.DATA~q\,
	combout => \channel~16_combout\);

-- Location: FF_X8_Y4_N11
\s_channel[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(17));

-- Location: LCCOMB_X8_Y4_N10
\channel~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~17_combout\ = (s_channel(17) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(17),
	datad => \s_state.DATA~q\,
	combout => \channel~17_combout\);

-- Location: FF_X8_Y4_N29
\s_channel[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(18));

-- Location: LCCOMB_X8_Y4_N28
\channel~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~18_combout\ = (s_channel(18) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(18),
	datad => \s_state.DATA~q\,
	combout => \channel~18_combout\);

-- Location: FF_X8_Y4_N3
\s_channel[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(19));

-- Location: LCCOMB_X8_Y4_N2
\channel~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~19_combout\ = (s_channel(19) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(19),
	datad => \s_state.DATA~q\,
	combout => \channel~19_combout\);

-- Location: FF_X8_Y4_N21
\s_channel[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(20));

-- Location: LCCOMB_X8_Y4_N20
\channel~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~20_combout\ = (s_channel(20) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(20),
	datad => \s_state.DATA~q\,
	combout => \channel~20_combout\);

-- Location: FF_X8_Y4_N19
\s_channel[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(21));

-- Location: LCCOMB_X8_Y4_N18
\channel~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~21_combout\ = (s_channel(21) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(21),
	datad => \s_state.DATA~q\,
	combout => \channel~21_combout\);

-- Location: FF_X8_Y4_N5
\s_channel[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(22));

-- Location: LCCOMB_X8_Y4_N4
\channel~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~22_combout\ = (s_channel(22) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(22),
	datad => \s_state.DATA~q\,
	combout => \channel~22_combout\);

-- Location: FF_X8_Y4_N31
\s_channel[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[16]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(23));

-- Location: LCCOMB_X8_Y4_N30
\channel~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~23_combout\ = (s_channel(23) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(23),
	datad => \s_state.DATA~q\,
	combout => \channel~23_combout\);

-- Location: LCCOMB_X4_Y8_N14
\s_channel[24]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[24]~14_combout\ = (\Equal9~3_combout\ & (byte_index(0) & (!byte_index(1) & \s_channel[24]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~3_combout\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \s_channel[24]~10_combout\,
	combout => \s_channel[24]~14_combout\);

-- Location: FF_X4_Y8_N31
\s_channel[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(24));

-- Location: LCCOMB_X4_Y8_N30
\channel~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~24_combout\ = (s_channel(24) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(24),
	datad => \s_state.DATA~q\,
	combout => \channel~24_combout\);

-- Location: FF_X4_Y8_N21
\s_channel[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(25));

-- Location: LCCOMB_X4_Y8_N20
\channel~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~25_combout\ = (s_channel(25) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(25),
	datad => \s_state.DATA~q\,
	combout => \channel~25_combout\);

-- Location: FF_X4_Y8_N23
\s_channel[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(26));

-- Location: LCCOMB_X4_Y8_N22
\channel~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~26_combout\ = (s_channel(26) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(26),
	datad => \s_state.DATA~q\,
	combout => \channel~26_combout\);

-- Location: FF_X4_Y8_N29
\s_channel[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(27));

-- Location: LCCOMB_X4_Y8_N28
\channel~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~27_combout\ = (s_channel(27) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(27),
	datad => \s_state.DATA~q\,
	combout => \channel~27_combout\);

-- Location: FF_X4_Y8_N3
\s_channel[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(28));

-- Location: LCCOMB_X4_Y8_N2
\channel~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~28_combout\ = (s_channel(28) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(28),
	datad => \s_state.DATA~q\,
	combout => \channel~28_combout\);

-- Location: FF_X4_Y8_N25
\s_channel[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(29));

-- Location: LCCOMB_X4_Y8_N24
\channel~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~29_combout\ = (s_channel(29) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(29),
	datad => \s_state.DATA~q\,
	combout => \channel~29_combout\);

-- Location: FF_X4_Y8_N19
\s_channel[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(30));

-- Location: LCCOMB_X4_Y8_N18
\channel~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~30_combout\ = (s_channel(30) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(30),
	datad => \s_state.DATA~q\,
	combout => \channel~30_combout\);

-- Location: FF_X4_Y8_N13
\s_channel[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(31));

-- Location: LCCOMB_X4_Y8_N12
\channel~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~31_combout\ = (s_channel(31) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(31),
	datad => \s_state.DATA~q\,
	combout => \channel~31_combout\);

-- Location: FF_X17_Y20_N5
\s_channel[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(32));

-- Location: LCCOMB_X17_Y20_N4
\channel~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~32_combout\ = (s_channel(32) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(32),
	datad => \s_state.DATA~q\,
	combout => \channel~32_combout\);

-- Location: FF_X17_Y20_N3
\s_channel[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(33));

-- Location: LCCOMB_X17_Y20_N2
\channel~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~33_combout\ = (s_channel(33) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(33),
	datad => \s_state.DATA~q\,
	combout => \channel~33_combout\);

-- Location: FF_X17_Y20_N21
\s_channel[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(34));

-- Location: LCCOMB_X17_Y20_N20
\channel~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~34_combout\ = (s_channel(34) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(34),
	datad => \s_state.DATA~q\,
	combout => \channel~34_combout\);

-- Location: FF_X17_Y20_N19
\s_channel[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(35));

-- Location: LCCOMB_X17_Y20_N18
\channel~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~35_combout\ = (s_channel(35) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(35),
	datad => \s_state.DATA~q\,
	combout => \channel~35_combout\);

-- Location: FF_X17_Y20_N29
\s_channel[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(36));

-- Location: LCCOMB_X17_Y20_N28
\channel~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~36_combout\ = (s_channel(36) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(36),
	datad => \s_state.DATA~q\,
	combout => \channel~36_combout\);

-- Location: FF_X17_Y20_N27
\s_channel[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(37));

-- Location: LCCOMB_X17_Y20_N26
\channel~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~37_combout\ = (s_channel(37) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(37),
	datad => \s_state.DATA~q\,
	combout => \channel~37_combout\);

-- Location: FF_X17_Y20_N17
\s_channel[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(38));

-- Location: LCCOMB_X17_Y20_N16
\channel~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~38_combout\ = (s_channel(38) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(38),
	datad => \s_state.DATA~q\,
	combout => \channel~38_combout\);

-- Location: FF_X17_Y20_N15
\s_channel[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(39));

-- Location: LCCOMB_X17_Y20_N14
\channel~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~39_combout\ = (s_channel(39) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(39),
	datad => \s_state.DATA~q\,
	combout => \channel~39_combout\);

-- Location: LCCOMB_X9_Y8_N22
\Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (byte_index(4) & (byte_index(0) & (byte_index(2) & \Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(0),
	datac => byte_index(2),
	datad => \Equal18~0_combout\,
	combout => \Equal23~0_combout\);

-- Location: FF_X1_Y10_N1
\s_channel[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(40));

-- Location: LCCOMB_X1_Y10_N0
\channel~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~40_combout\ = (\s_state.DATA~q\ & s_channel(40))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(40),
	combout => \channel~40_combout\);

-- Location: FF_X1_Y10_N15
\s_channel[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(41));

-- Location: LCCOMB_X1_Y10_N14
\channel~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~41_combout\ = (\s_state.DATA~q\ & s_channel(41))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(41),
	combout => \channel~41_combout\);

-- Location: FF_X1_Y10_N13
\s_channel[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(42));

-- Location: LCCOMB_X1_Y10_N12
\channel~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~42_combout\ = (\s_state.DATA~q\ & s_channel(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(42),
	combout => \channel~42_combout\);

-- Location: FF_X1_Y10_N3
\s_channel[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(43));

-- Location: LCCOMB_X1_Y10_N2
\channel~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~43_combout\ = (\s_state.DATA~q\ & s_channel(43))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(43),
	combout => \channel~43_combout\);

-- Location: FF_X1_Y10_N29
\s_channel[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(44));

-- Location: LCCOMB_X1_Y10_N28
\channel~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~44_combout\ = (\s_state.DATA~q\ & s_channel(44))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(44),
	combout => \channel~44_combout\);

-- Location: FF_X1_Y10_N7
\s_channel[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(45));

-- Location: LCCOMB_X1_Y10_N6
\channel~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~45_combout\ = (\s_state.DATA~q\ & s_channel(45))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(45),
	combout => \channel~45_combout\);

-- Location: FF_X1_Y10_N25
\s_channel[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(46));

-- Location: LCCOMB_X1_Y10_N24
\channel~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~46_combout\ = (\s_state.DATA~q\ & s_channel(46))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(46),
	combout => \channel~46_combout\);

-- Location: FF_X1_Y10_N19
\s_channel[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(47));

-- Location: LCCOMB_X1_Y10_N18
\channel~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~47_combout\ = (\s_state.DATA~q\ & s_channel(47))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(47),
	combout => \channel~47_combout\);

-- Location: FF_X8_Y20_N29
\s_channel[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(48));

-- Location: LCCOMB_X8_Y20_N28
\channel~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~48_combout\ = (s_channel(48) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(48),
	datad => \s_state.DATA~q\,
	combout => \channel~48_combout\);

-- Location: FF_X8_Y20_N27
\s_channel[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(49));

-- Location: LCCOMB_X8_Y20_N26
\channel~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~49_combout\ = (s_channel(49) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(49),
	datad => \s_state.DATA~q\,
	combout => \channel~49_combout\);

-- Location: FF_X8_Y20_N25
\s_channel[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(50));

-- Location: LCCOMB_X8_Y20_N24
\channel~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~50_combout\ = (s_channel(50) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(50),
	datad => \s_state.DATA~q\,
	combout => \channel~50_combout\);

-- Location: FF_X8_Y20_N19
\s_channel[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(51));

-- Location: LCCOMB_X8_Y20_N18
\channel~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~51_combout\ = (s_channel(51) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(51),
	datad => \s_state.DATA~q\,
	combout => \channel~51_combout\);

-- Location: FF_X8_Y20_N13
\s_channel[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(52));

-- Location: LCCOMB_X8_Y20_N12
\channel~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~52_combout\ = (s_channel(52) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(52),
	datad => \s_state.DATA~q\,
	combout => \channel~52_combout\);

-- Location: FF_X8_Y20_N3
\s_channel[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(53));

-- Location: LCCOMB_X8_Y20_N2
\channel~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~53_combout\ = (s_channel(53) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(53),
	datad => \s_state.DATA~q\,
	combout => \channel~53_combout\);

-- Location: FF_X8_Y20_N5
\s_channel[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(54));

-- Location: LCCOMB_X8_Y20_N4
\channel~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~54_combout\ = (s_channel(54) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(54),
	datad => \s_state.DATA~q\,
	combout => \channel~54_combout\);

-- Location: FF_X8_Y20_N11
\s_channel[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(55));

-- Location: LCCOMB_X8_Y20_N10
\channel~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~55_combout\ = (s_channel(55) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(55),
	datad => \s_state.DATA~q\,
	combout => \channel~55_combout\);

-- Location: FF_X17_Y20_N1
\s_channel[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(56));

-- Location: LCCOMB_X17_Y20_N0
\channel~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~56_combout\ = (s_channel(56) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(56),
	datad => \s_state.DATA~q\,
	combout => \channel~56_combout\);

-- Location: FF_X17_Y20_N31
\s_channel[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(57));

-- Location: LCCOMB_X17_Y20_N30
\channel~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~57_combout\ = (s_channel(57) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(57),
	datad => \s_state.DATA~q\,
	combout => \channel~57_combout\);

-- Location: FF_X17_Y20_N25
\s_channel[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(58));

-- Location: LCCOMB_X17_Y20_N24
\channel~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~58_combout\ = (s_channel(58) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(58),
	datad => \s_state.DATA~q\,
	combout => \channel~58_combout\);

-- Location: FF_X17_Y20_N11
\s_channel[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(59));

-- Location: LCCOMB_X17_Y20_N10
\channel~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~59_combout\ = (s_channel(59) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(59),
	datad => \s_state.DATA~q\,
	combout => \channel~59_combout\);

-- Location: FF_X17_Y20_N13
\s_channel[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(60));

-- Location: LCCOMB_X17_Y20_N12
\channel~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~60_combout\ = (s_channel(60) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(60),
	datad => \s_state.DATA~q\,
	combout => \channel~60_combout\);

-- Location: FF_X17_Y20_N7
\s_channel[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(61));

-- Location: LCCOMB_X17_Y20_N6
\channel~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~61_combout\ = (s_channel(61) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(61),
	datad => \s_state.DATA~q\,
	combout => \channel~61_combout\);

-- Location: FF_X17_Y20_N9
\s_channel[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(62));

-- Location: LCCOMB_X17_Y20_N8
\channel~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~62_combout\ = (s_channel(62) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(62),
	datad => \s_state.DATA~q\,
	combout => \channel~62_combout\);

-- Location: FF_X17_Y20_N23
\s_channel[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(63));

-- Location: LCCOMB_X17_Y20_N22
\channel~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~63_combout\ = (s_channel(63) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(63),
	datad => \s_state.DATA~q\,
	combout => \channel~63_combout\);

-- Location: FF_X1_Y10_N9
\s_channel[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(64));

-- Location: LCCOMB_X1_Y10_N8
\channel~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~64_combout\ = (\s_state.DATA~q\ & s_channel(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(64),
	combout => \channel~64_combout\);

-- Location: FF_X1_Y10_N27
\s_channel[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(65));

-- Location: LCCOMB_X1_Y10_N26
\channel~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~65_combout\ = (\s_state.DATA~q\ & s_channel(65))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(65),
	combout => \channel~65_combout\);

-- Location: FF_X1_Y10_N21
\s_channel[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(66));

-- Location: LCCOMB_X1_Y10_N20
\channel~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~66_combout\ = (\s_state.DATA~q\ & s_channel(66))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(66),
	combout => \channel~66_combout\);

-- Location: FF_X1_Y10_N31
\s_channel[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(67));

-- Location: LCCOMB_X1_Y10_N30
\channel~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~67_combout\ = (\s_state.DATA~q\ & s_channel(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(67),
	combout => \channel~67_combout\);

-- Location: FF_X1_Y10_N17
\s_channel[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(68));

-- Location: LCCOMB_X1_Y10_N16
\channel~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~68_combout\ = (\s_state.DATA~q\ & s_channel(68))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(68),
	combout => \channel~68_combout\);

-- Location: FF_X1_Y10_N23
\s_channel[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(69));

-- Location: LCCOMB_X1_Y10_N22
\channel~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~69_combout\ = (\s_state.DATA~q\ & s_channel(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(69),
	combout => \channel~69_combout\);

-- Location: FF_X1_Y10_N5
\s_channel[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(70));

-- Location: LCCOMB_X1_Y10_N4
\channel~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~70_combout\ = (\s_state.DATA~q\ & s_channel(70))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(70),
	combout => \channel~70_combout\);

-- Location: FF_X1_Y10_N11
\s_channel[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(71));

-- Location: LCCOMB_X1_Y10_N10
\channel~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~71_combout\ = (\s_state.DATA~q\ & s_channel(71))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(71),
	combout => \channel~71_combout\);

-- Location: LCCOMB_X9_Y8_N4
\Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (byte_index(4) & (byte_index(0) & (!byte_index(2) & \Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(0),
	datac => byte_index(2),
	datad => \Equal18~0_combout\,
	combout => \Equal19~0_combout\);

-- Location: FF_X8_Y20_N17
\s_channel[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(72));

-- Location: LCCOMB_X8_Y20_N16
\channel~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~72_combout\ = (s_channel(72) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(72),
	datad => \s_state.DATA~q\,
	combout => \channel~72_combout\);

-- Location: FF_X8_Y20_N23
\s_channel[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(73));

-- Location: LCCOMB_X8_Y20_N22
\channel~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~73_combout\ = (s_channel(73) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(73),
	datad => \s_state.DATA~q\,
	combout => \channel~73_combout\);

-- Location: FF_X8_Y20_N9
\s_channel[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(74));

-- Location: LCCOMB_X8_Y20_N8
\channel~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~74_combout\ = (s_channel(74) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(74),
	datad => \s_state.DATA~q\,
	combout => \channel~74_combout\);

-- Location: FF_X8_Y20_N15
\s_channel[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(75));

-- Location: LCCOMB_X8_Y20_N14
\channel~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~75_combout\ = (s_channel(75) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(75),
	datad => \s_state.DATA~q\,
	combout => \channel~75_combout\);

-- Location: FF_X8_Y20_N1
\s_channel[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(76));

-- Location: LCCOMB_X8_Y20_N0
\channel~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~76_combout\ = (s_channel(76) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(76),
	datad => \s_state.DATA~q\,
	combout => \channel~76_combout\);

-- Location: FF_X8_Y20_N31
\s_channel[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(77));

-- Location: LCCOMB_X8_Y20_N30
\channel~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~77_combout\ = (s_channel(77) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(77),
	datad => \s_state.DATA~q\,
	combout => \channel~77_combout\);

-- Location: FF_X8_Y20_N21
\s_channel[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(78));

-- Location: LCCOMB_X8_Y20_N20
\channel~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~78_combout\ = (s_channel(78) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(78),
	datad => \s_state.DATA~q\,
	combout => \channel~78_combout\);

-- Location: FF_X8_Y20_N7
\s_channel[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(79));

-- Location: LCCOMB_X8_Y20_N6
\channel~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~79_combout\ = (s_channel(79) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(79),
	datad => \s_state.DATA~q\,
	combout => \channel~79_combout\);

-- Location: FF_X17_Y4_N25
\s_channel[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(80));

-- Location: LCCOMB_X17_Y4_N24
\channel~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~80_combout\ = (s_channel(80) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(80),
	datad => \s_state.DATA~q\,
	combout => \channel~80_combout\);

-- Location: FF_X17_Y4_N15
\s_channel[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(81));

-- Location: LCCOMB_X17_Y4_N14
\channel~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~81_combout\ = (s_channel(81) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(81),
	datad => \s_state.DATA~q\,
	combout => \channel~81_combout\);

-- Location: FF_X17_Y4_N17
\s_channel[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(82));

-- Location: LCCOMB_X17_Y4_N16
\channel~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~82_combout\ = (s_channel(82) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(82),
	datad => \s_state.DATA~q\,
	combout => \channel~82_combout\);

-- Location: FF_X17_Y4_N3
\s_channel[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(83));

-- Location: LCCOMB_X17_Y4_N2
\channel~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~83_combout\ = (s_channel(83) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(83),
	datad => \s_state.DATA~q\,
	combout => \channel~83_combout\);

-- Location: FF_X17_Y4_N13
\s_channel[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(84));

-- Location: LCCOMB_X17_Y4_N12
\channel~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~84_combout\ = (s_channel(84) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(84),
	datad => \s_state.DATA~q\,
	combout => \channel~84_combout\);

-- Location: FF_X17_Y4_N19
\s_channel[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(85));

-- Location: LCCOMB_X17_Y4_N18
\channel~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~85_combout\ = (s_channel(85) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(85),
	datad => \s_state.DATA~q\,
	combout => \channel~85_combout\);

-- Location: FF_X17_Y4_N21
\s_channel[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(86));

-- Location: LCCOMB_X17_Y4_N20
\channel~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~86_combout\ = (s_channel(86) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(86),
	datad => \s_state.DATA~q\,
	combout => \channel~86_combout\);

-- Location: FF_X17_Y4_N31
\s_channel[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(87));

-- Location: LCCOMB_X17_Y4_N30
\channel~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~87_combout\ = (s_channel(87) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(87),
	datad => \s_state.DATA~q\,
	combout => \channel~87_combout\);

-- Location: FF_X17_Y4_N1
\s_channel[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(88));

-- Location: LCCOMB_X17_Y4_N0
\channel~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~88_combout\ = (s_channel(88) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(88),
	datad => \s_state.DATA~q\,
	combout => \channel~88_combout\);

-- Location: FF_X17_Y4_N27
\s_channel[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(89));

-- Location: LCCOMB_X17_Y4_N26
\channel~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~89_combout\ = (s_channel(89) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(89),
	datad => \s_state.DATA~q\,
	combout => \channel~89_combout\);

-- Location: FF_X17_Y4_N9
\s_channel[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(90));

-- Location: LCCOMB_X17_Y4_N8
\channel~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~90_combout\ = (s_channel(90) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(90),
	datad => \s_state.DATA~q\,
	combout => \channel~90_combout\);

-- Location: FF_X17_Y4_N7
\s_channel[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(91));

-- Location: LCCOMB_X17_Y4_N6
\channel~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~91_combout\ = (s_channel(91) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(91),
	datad => \s_state.DATA~q\,
	combout => \channel~91_combout\);

-- Location: FF_X17_Y4_N29
\s_channel[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(92));

-- Location: LCCOMB_X17_Y4_N28
\channel~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~92_combout\ = (s_channel(92) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(92),
	datad => \s_state.DATA~q\,
	combout => \channel~92_combout\);

-- Location: FF_X17_Y4_N23
\s_channel[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(93));

-- Location: LCCOMB_X17_Y4_N22
\channel~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~93_combout\ = (s_channel(93) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(93),
	datad => \s_state.DATA~q\,
	combout => \channel~93_combout\);

-- Location: FF_X17_Y4_N5
\s_channel[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(94));

-- Location: LCCOMB_X17_Y4_N4
\channel~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~94_combout\ = (s_channel(94) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(94),
	datad => \s_state.DATA~q\,
	combout => \channel~94_combout\);

-- Location: FF_X17_Y4_N11
\s_channel[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(95));

-- Location: LCCOMB_X17_Y4_N10
\channel~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~95_combout\ = (s_channel(95) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(95),
	datad => \s_state.DATA~q\,
	combout => \channel~95_combout\);

-- Location: IOIBUF_X0_Y11_N22
\in_endofpacket~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_endofpacket,
	o => \in_endofpacket~input_o\);

ww_in_ready <= \in_ready~output_o\;

ww_out_data(0) <= \out_data[0]~output_o\;

ww_out_data(1) <= \out_data[1]~output_o\;

ww_out_data(2) <= \out_data[2]~output_o\;

ww_out_data(3) <= \out_data[3]~output_o\;

ww_out_data(4) <= \out_data[4]~output_o\;

ww_out_data(5) <= \out_data[5]~output_o\;

ww_out_data(6) <= \out_data[6]~output_o\;

ww_out_data(7) <= \out_data[7]~output_o\;

ww_out_startofpacket <= \out_startofpacket~output_o\;

ww_out_endofpacket <= \out_endofpacket~output_o\;

ww_out_valid <= \out_valid~output_o\;

ww_channel(0) <= \channel[0]~output_o\;

ww_channel(1) <= \channel[1]~output_o\;

ww_channel(2) <= \channel[2]~output_o\;

ww_channel(3) <= \channel[3]~output_o\;

ww_channel(4) <= \channel[4]~output_o\;

ww_channel(5) <= \channel[5]~output_o\;

ww_channel(6) <= \channel[6]~output_o\;

ww_channel(7) <= \channel[7]~output_o\;

ww_channel(8) <= \channel[8]~output_o\;

ww_channel(9) <= \channel[9]~output_o\;

ww_channel(10) <= \channel[10]~output_o\;

ww_channel(11) <= \channel[11]~output_o\;

ww_channel(12) <= \channel[12]~output_o\;

ww_channel(13) <= \channel[13]~output_o\;

ww_channel(14) <= \channel[14]~output_o\;

ww_channel(15) <= \channel[15]~output_o\;

ww_channel(16) <= \channel[16]~output_o\;

ww_channel(17) <= \channel[17]~output_o\;

ww_channel(18) <= \channel[18]~output_o\;

ww_channel(19) <= \channel[19]~output_o\;

ww_channel(20) <= \channel[20]~output_o\;

ww_channel(21) <= \channel[21]~output_o\;

ww_channel(22) <= \channel[22]~output_o\;

ww_channel(23) <= \channel[23]~output_o\;

ww_channel(24) <= \channel[24]~output_o\;

ww_channel(25) <= \channel[25]~output_o\;

ww_channel(26) <= \channel[26]~output_o\;

ww_channel(27) <= \channel[27]~output_o\;

ww_channel(28) <= \channel[28]~output_o\;

ww_channel(29) <= \channel[29]~output_o\;

ww_channel(30) <= \channel[30]~output_o\;

ww_channel(31) <= \channel[31]~output_o\;

ww_channel(32) <= \channel[32]~output_o\;

ww_channel(33) <= \channel[33]~output_o\;

ww_channel(34) <= \channel[34]~output_o\;

ww_channel(35) <= \channel[35]~output_o\;

ww_channel(36) <= \channel[36]~output_o\;

ww_channel(37) <= \channel[37]~output_o\;

ww_channel(38) <= \channel[38]~output_o\;

ww_channel(39) <= \channel[39]~output_o\;

ww_channel(40) <= \channel[40]~output_o\;

ww_channel(41) <= \channel[41]~output_o\;

ww_channel(42) <= \channel[42]~output_o\;

ww_channel(43) <= \channel[43]~output_o\;

ww_channel(44) <= \channel[44]~output_o\;

ww_channel(45) <= \channel[45]~output_o\;

ww_channel(46) <= \channel[46]~output_o\;

ww_channel(47) <= \channel[47]~output_o\;

ww_channel(48) <= \channel[48]~output_o\;

ww_channel(49) <= \channel[49]~output_o\;

ww_channel(50) <= \channel[50]~output_o\;

ww_channel(51) <= \channel[51]~output_o\;

ww_channel(52) <= \channel[52]~output_o\;

ww_channel(53) <= \channel[53]~output_o\;

ww_channel(54) <= \channel[54]~output_o\;

ww_channel(55) <= \channel[55]~output_o\;

ww_channel(56) <= \channel[56]~output_o\;

ww_channel(57) <= \channel[57]~output_o\;

ww_channel(58) <= \channel[58]~output_o\;

ww_channel(59) <= \channel[59]~output_o\;

ww_channel(60) <= \channel[60]~output_o\;

ww_channel(61) <= \channel[61]~output_o\;

ww_channel(62) <= \channel[62]~output_o\;

ww_channel(63) <= \channel[63]~output_o\;

ww_channel(64) <= \channel[64]~output_o\;

ww_channel(65) <= \channel[65]~output_o\;

ww_channel(66) <= \channel[66]~output_o\;

ww_channel(67) <= \channel[67]~output_o\;

ww_channel(68) <= \channel[68]~output_o\;

ww_channel(69) <= \channel[69]~output_o\;

ww_channel(70) <= \channel[70]~output_o\;

ww_channel(71) <= \channel[71]~output_o\;

ww_channel(72) <= \channel[72]~output_o\;

ww_channel(73) <= \channel[73]~output_o\;

ww_channel(74) <= \channel[74]~output_o\;

ww_channel(75) <= \channel[75]~output_o\;

ww_channel(76) <= \channel[76]~output_o\;

ww_channel(77) <= \channel[77]~output_o\;

ww_channel(78) <= \channel[78]~output_o\;

ww_channel(79) <= \channel[79]~output_o\;

ww_channel(80) <= \channel[80]~output_o\;

ww_channel(81) <= \channel[81]~output_o\;

ww_channel(82) <= \channel[82]~output_o\;

ww_channel(83) <= \channel[83]~output_o\;

ww_channel(84) <= \channel[84]~output_o\;

ww_channel(85) <= \channel[85]~output_o\;

ww_channel(86) <= \channel[86]~output_o\;

ww_channel(87) <= \channel[87]~output_o\;

ww_channel(88) <= \channel[88]~output_o\;

ww_channel(89) <= \channel[89]~output_o\;

ww_channel(90) <= \channel[90]~output_o\;

ww_channel(91) <= \channel[91]~output_o\;

ww_channel(92) <= \channel[92]~output_o\;

ww_channel(93) <= \channel[93]~output_o\;

ww_channel(94) <= \channel[94]~output_o\;

ww_channel(95) <= \channel[95]~output_o\;
END structure;



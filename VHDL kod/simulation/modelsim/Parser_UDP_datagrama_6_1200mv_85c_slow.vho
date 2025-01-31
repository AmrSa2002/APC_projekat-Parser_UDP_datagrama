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

-- DATE "01/31/2025 14:13:21"

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
	reset : IN std_logic;
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
-- in_endofpacket	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_ready	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_startofpacket	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endofpacket	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[7]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[10]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[11]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[14]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[16]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[17]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[18]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[19]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[20]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[21]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[22]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[23]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[24]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[25]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[26]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[27]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[28]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[29]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[30]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[31]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[32]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[33]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[34]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[35]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[36]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[37]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[38]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[39]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[40]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[41]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[42]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[43]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[44]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[45]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[46]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[47]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[48]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[49]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[50]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[51]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[52]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[53]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[54]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[55]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[56]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[57]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[58]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[59]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[60]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[61]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[62]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[63]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[64]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[65]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[66]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[67]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[68]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[69]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[70]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[71]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[72]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[73]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[74]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[75]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[76]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[77]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[78]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[79]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[80]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[81]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[82]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[83]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[84]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[85]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[86]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[87]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[88]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[89]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[90]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[91]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[92]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[93]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[94]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[95]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_startofpacket	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
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
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \s_channel~2_combout\ : std_logic;
SIGNAL \delayed_data[0]~feeder_combout\ : std_logic;
SIGNAL \counter[0]~32_combout\ : std_logic;
SIGNAL \counter[0]~33\ : std_logic;
SIGNAL \counter[1]~34_combout\ : std_logic;
SIGNAL \counter[1]~35\ : std_logic;
SIGNAL \counter[2]~36_combout\ : std_logic;
SIGNAL \counter[2]~37\ : std_logic;
SIGNAL \counter[3]~38_combout\ : std_logic;
SIGNAL \counter[3]~39\ : std_logic;
SIGNAL \counter[4]~40_combout\ : std_logic;
SIGNAL \counter[4]~41\ : std_logic;
SIGNAL \counter[5]~42_combout\ : std_logic;
SIGNAL \counter[5]~43\ : std_logic;
SIGNAL \counter[6]~44_combout\ : std_logic;
SIGNAL \counter[6]~45\ : std_logic;
SIGNAL \counter[7]~46_combout\ : std_logic;
SIGNAL \counter[7]~47\ : std_logic;
SIGNAL \counter[8]~48_combout\ : std_logic;
SIGNAL \counter[8]~49\ : std_logic;
SIGNAL \counter[9]~50_combout\ : std_logic;
SIGNAL \counter[9]~51\ : std_logic;
SIGNAL \counter[10]~52_combout\ : std_logic;
SIGNAL \counter[10]~53\ : std_logic;
SIGNAL \counter[11]~54_combout\ : std_logic;
SIGNAL \counter[11]~55\ : std_logic;
SIGNAL \counter[12]~56_combout\ : std_logic;
SIGNAL \counter[12]~57\ : std_logic;
SIGNAL \counter[13]~58_combout\ : std_logic;
SIGNAL \counter[13]~59\ : std_logic;
SIGNAL \counter[14]~60_combout\ : std_logic;
SIGNAL \counter[14]~61\ : std_logic;
SIGNAL \counter[15]~62_combout\ : std_logic;
SIGNAL \counter[15]~63\ : std_logic;
SIGNAL \counter[16]~64_combout\ : std_logic;
SIGNAL \counter[16]~65\ : std_logic;
SIGNAL \counter[17]~66_combout\ : std_logic;
SIGNAL \counter[17]~67\ : std_logic;
SIGNAL \counter[18]~68_combout\ : std_logic;
SIGNAL \counter[18]~69\ : std_logic;
SIGNAL \counter[19]~70_combout\ : std_logic;
SIGNAL \Equal16~5_combout\ : std_logic;
SIGNAL \counter[19]~71\ : std_logic;
SIGNAL \counter[20]~72_combout\ : std_logic;
SIGNAL \counter[20]~73\ : std_logic;
SIGNAL \counter[21]~74_combout\ : std_logic;
SIGNAL \counter[21]~75\ : std_logic;
SIGNAL \counter[22]~76_combout\ : std_logic;
SIGNAL \counter[22]~77\ : std_logic;
SIGNAL \counter[23]~78_combout\ : std_logic;
SIGNAL \counter[23]~79\ : std_logic;
SIGNAL \counter[24]~80_combout\ : std_logic;
SIGNAL \counter[24]~81\ : std_logic;
SIGNAL \counter[25]~82_combout\ : std_logic;
SIGNAL \counter[25]~83\ : std_logic;
SIGNAL \counter[26]~84_combout\ : std_logic;
SIGNAL \counter[26]~85\ : std_logic;
SIGNAL \counter[27]~86_combout\ : std_logic;
SIGNAL \counter[27]~87\ : std_logic;
SIGNAL \counter[28]~88_combout\ : std_logic;
SIGNAL \counter[28]~89\ : std_logic;
SIGNAL \counter[29]~90_combout\ : std_logic;
SIGNAL \counter[29]~91\ : std_logic;
SIGNAL \counter[30]~92_combout\ : std_logic;
SIGNAL \counter[30]~93\ : std_logic;
SIGNAL \counter[31]~94_combout\ : std_logic;
SIGNAL \Equal16~8_combout\ : std_logic;
SIGNAL \Equal16~7_combout\ : std_logic;
SIGNAL \Equal16~6_combout\ : std_logic;
SIGNAL \Equal16~9_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal16~3_combout\ : std_logic;
SIGNAL \Equal16~2_combout\ : std_logic;
SIGNAL \Equal16~4_combout\ : std_logic;
SIGNAL \delayed_data[4]~0_combout\ : std_logic;
SIGNAL \s_out_data~0_combout\ : std_logic;
SIGNAL \byte_index[0]~34_combout\ : std_logic;
SIGNAL \in_startofpacket~input_o\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \byte_index[29]~102\ : std_logic;
SIGNAL \byte_index[30]~103_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \ip_header_length[5]~0_combout\ : std_logic;
SIGNAL \ip_header_length[5]~1_combout\ : std_logic;
SIGNAL \s_channel~3_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \s_channel~4_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \s_channel~5_combout\ : std_logic;
SIGNAL \Add6~3_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \next_state~6_combout\ : std_logic;
SIGNAL \Equal9~3_combout\ : std_logic;
SIGNAL \Equal9~4_combout\ : std_logic;
SIGNAL \PROCES1~2_combout\ : std_logic;
SIGNAL \PROCES1~1_combout\ : std_logic;
SIGNAL \next_state~7_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \next_state~8_combout\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \PROCES1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \s_state.ETHERNET_HEADER~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \s_state.IP_HEADER~q\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Selector3~8_combout\ : std_logic;
SIGNAL \Selector3~7_combout\ : std_logic;
SIGNAL \s_state.UDP_HEADER~q\ : std_logic;
SIGNAL \byte_index[0]~56_combout\ : std_logic;
SIGNAL \Equal10~8_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \udp_length[16]~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \udp_length~30_combout\ : std_logic;
SIGNAL \udp_length[16]~2_combout\ : std_logic;
SIGNAL \udp_length[16]~3_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \udp_length~29_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \udp_length~28_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \udp_length~27_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \udp_length~26_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \udp_length~25_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \udp_length~24_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \udp_length~23_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Equal10~7_combout\ : std_logic;
SIGNAL \udp_length~22_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \udp_length~21_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \udp_length~20_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \udp_length~19_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \udp_length~18_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \udp_length~17_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \udp_length~16_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \udp_length~15_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \udp_length~14_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \udp_length~13_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \udp_length~12_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \udp_length~11_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \udp_length~10_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \udp_length~9_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \udp_length~8_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \udp_length~7_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \udp_length~6_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \udp_length~5_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \udp_length~4_combout\ : std_logic;
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
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add8~1_cout\ : std_logic;
SIGNAL \Add8~3_cout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~29\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~41\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~49\ : std_logic;
SIGNAL \Add8~51\ : std_logic;
SIGNAL \Add8~52_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \udp_length~1_combout\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Add8~53\ : std_logic;
SIGNAL \Add8~54_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \udp_length~31_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \udp_length~33_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \udp_length~32_combout\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Add8~55\ : std_logic;
SIGNAL \Add8~57\ : std_logic;
SIGNAL \Add8~59\ : std_logic;
SIGNAL \Add8~60_combout\ : std_logic;
SIGNAL \Add8~58_combout\ : std_logic;
SIGNAL \Equal13~12_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Equal13~7_combout\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Equal13~9_combout\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \Equal13~8_combout\ : std_logic;
SIGNAL \Equal13~10_combout\ : std_logic;
SIGNAL \Add8~56_combout\ : std_logic;
SIGNAL \Equal13~11_combout\ : std_logic;
SIGNAL \Add5~61\ : std_logic;
SIGNAL \Add5~62_combout\ : std_logic;
SIGNAL \udp_length~34_combout\ : std_logic;
SIGNAL \Add9~61\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \Add8~61\ : std_logic;
SIGNAL \Add8~62_combout\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \Equal13~13_combout\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~38_combout\ : std_logic;
SIGNAL \Equal13~14_combout\ : std_logic;
SIGNAL \Add8~42_combout\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \Equal13~15_combout\ : std_logic;
SIGNAL \Add8~44_combout\ : std_logic;
SIGNAL \Add8~46_combout\ : std_logic;
SIGNAL \Equal13~16_combout\ : std_logic;
SIGNAL \Equal13~17_combout\ : std_logic;
SIGNAL \Add8~50_combout\ : std_logic;
SIGNAL \Add8~48_combout\ : std_logic;
SIGNAL \Equal13~18_combout\ : std_logic;
SIGNAL \Equal13~19_combout\ : std_logic;
SIGNAL \Equal13~20_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
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
SIGNAL \Add10~32_combout\ : std_logic;
SIGNAL \Add10~33\ : std_logic;
SIGNAL \Add10~34_combout\ : std_logic;
SIGNAL \Equal15~13_combout\ : std_logic;
SIGNAL \Add10~35\ : std_logic;
SIGNAL \Add10~37\ : std_logic;
SIGNAL \Add10~38_combout\ : std_logic;
SIGNAL \Add10~36_combout\ : std_logic;
SIGNAL \Equal15~14_combout\ : std_logic;
SIGNAL \Add10~39\ : std_logic;
SIGNAL \Add10~40_combout\ : std_logic;
SIGNAL \Add10~41\ : std_logic;
SIGNAL \Add10~42_combout\ : std_logic;
SIGNAL \Equal15~15_combout\ : std_logic;
SIGNAL \Add10~43\ : std_logic;
SIGNAL \Add10~44_combout\ : std_logic;
SIGNAL \Add10~45\ : std_logic;
SIGNAL \Add10~46_combout\ : std_logic;
SIGNAL \Equal15~16_combout\ : std_logic;
SIGNAL \Equal15~17_combout\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Equal15~5_combout\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Equal15~4_combout\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Equal15~6_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Equal15~3_combout\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Equal15~7_combout\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Equal15~8_combout\ : std_logic;
SIGNAL \Add10~24_combout\ : std_logic;
SIGNAL \Add10~26_combout\ : std_logic;
SIGNAL \Equal15~9_combout\ : std_logic;
SIGNAL \Add10~30_combout\ : std_logic;
SIGNAL \Add10~28_combout\ : std_logic;
SIGNAL \Equal15~10_combout\ : std_logic;
SIGNAL \Equal15~11_combout\ : std_logic;
SIGNAL \Equal15~12_combout\ : std_logic;
SIGNAL \Add10~47\ : std_logic;
SIGNAL \Add10~49\ : std_logic;
SIGNAL \Add10~51\ : std_logic;
SIGNAL \Add10~53\ : std_logic;
SIGNAL \Add10~55\ : std_logic;
SIGNAL \Add10~57\ : std_logic;
SIGNAL \Add10~58_combout\ : std_logic;
SIGNAL \Add10~56_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \Add10~59\ : std_logic;
SIGNAL \Add10~61\ : std_logic;
SIGNAL \Add10~62_combout\ : std_logic;
SIGNAL \Add10~60_combout\ : std_logic;
SIGNAL \Add10~50_combout\ : std_logic;
SIGNAL \Add10~48_combout\ : std_logic;
SIGNAL \Equal15~18_combout\ : std_logic;
SIGNAL \Add10~54_combout\ : std_logic;
SIGNAL \Add10~52_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal15~19_combout\ : std_logic;
SIGNAL \Equal15~20_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \s_state.CRC~q\ : std_logic;
SIGNAL \byte_index[0]~57_combout\ : std_logic;
SIGNAL \byte_index[0]~107_combout\ : std_logic;
SIGNAL \byte_index[0]~58_combout\ : std_logic;
SIGNAL \byte_index[30]~104\ : std_logic;
SIGNAL \byte_index[31]~105_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \s_state~10_combout\ : std_logic;
SIGNAL \s_state~11_combout\ : std_logic;
SIGNAL \s_state~15_combout\ : std_logic;
SIGNAL \s_state~12_combout\ : std_logic;
SIGNAL \s_state~13_combout\ : std_logic;
SIGNAL \s_state~14_combout\ : std_logic;
SIGNAL \s_state.IDLE~q\ : std_logic;
SIGNAL \byte_index[0]~52_combout\ : std_logic;
SIGNAL \byte_index[0]~53_combout\ : std_logic;
SIGNAL \byte_index[0]~54_combout\ : std_logic;
SIGNAL \Equal15~2_combout\ : std_logic;
SIGNAL \byte_index[0]~50_combout\ : std_logic;
SIGNAL \byte_index[0]~51_combout\ : std_logic;
SIGNAL \byte_index[0]~55_combout\ : std_logic;
SIGNAL \byte_index[0]~35\ : std_logic;
SIGNAL \byte_index[1]~36_combout\ : std_logic;
SIGNAL \byte_index[1]~37\ : std_logic;
SIGNAL \byte_index[2]~38_combout\ : std_logic;
SIGNAL \byte_index[2]~39\ : std_logic;
SIGNAL \byte_index[3]~40_combout\ : std_logic;
SIGNAL \byte_index[3]~41\ : std_logic;
SIGNAL \byte_index[4]~42_combout\ : std_logic;
SIGNAL \byte_index[4]~43\ : std_logic;
SIGNAL \byte_index[5]~44_combout\ : std_logic;
SIGNAL \byte_index[5]~45\ : std_logic;
SIGNAL \byte_index[6]~46_combout\ : std_logic;
SIGNAL \byte_index[6]~47\ : std_logic;
SIGNAL \byte_index[7]~48_combout\ : std_logic;
SIGNAL \byte_index[7]~49\ : std_logic;
SIGNAL \byte_index[8]~59_combout\ : std_logic;
SIGNAL \byte_index[8]~60\ : std_logic;
SIGNAL \byte_index[9]~61_combout\ : std_logic;
SIGNAL \byte_index[9]~62\ : std_logic;
SIGNAL \byte_index[10]~63_combout\ : std_logic;
SIGNAL \byte_index[10]~64\ : std_logic;
SIGNAL \byte_index[11]~65_combout\ : std_logic;
SIGNAL \byte_index[11]~66\ : std_logic;
SIGNAL \byte_index[12]~67_combout\ : std_logic;
SIGNAL \byte_index[12]~68\ : std_logic;
SIGNAL \byte_index[13]~69_combout\ : std_logic;
SIGNAL \byte_index[13]~70\ : std_logic;
SIGNAL \byte_index[14]~71_combout\ : std_logic;
SIGNAL \byte_index[14]~72\ : std_logic;
SIGNAL \byte_index[15]~73_combout\ : std_logic;
SIGNAL \byte_index[15]~74\ : std_logic;
SIGNAL \byte_index[16]~75_combout\ : std_logic;
SIGNAL \byte_index[16]~76\ : std_logic;
SIGNAL \byte_index[17]~77_combout\ : std_logic;
SIGNAL \byte_index[17]~78\ : std_logic;
SIGNAL \byte_index[18]~79_combout\ : std_logic;
SIGNAL \byte_index[18]~80\ : std_logic;
SIGNAL \byte_index[19]~81_combout\ : std_logic;
SIGNAL \byte_index[19]~82\ : std_logic;
SIGNAL \byte_index[20]~83_combout\ : std_logic;
SIGNAL \byte_index[20]~84\ : std_logic;
SIGNAL \byte_index[21]~85_combout\ : std_logic;
SIGNAL \byte_index[21]~86\ : std_logic;
SIGNAL \byte_index[22]~87_combout\ : std_logic;
SIGNAL \byte_index[22]~88\ : std_logic;
SIGNAL \byte_index[23]~89_combout\ : std_logic;
SIGNAL \byte_index[23]~90\ : std_logic;
SIGNAL \byte_index[24]~91_combout\ : std_logic;
SIGNAL \byte_index[24]~92\ : std_logic;
SIGNAL \byte_index[25]~93_combout\ : std_logic;
SIGNAL \byte_index[25]~94\ : std_logic;
SIGNAL \byte_index[26]~95_combout\ : std_logic;
SIGNAL \byte_index[26]~96\ : std_logic;
SIGNAL \byte_index[27]~97_combout\ : std_logic;
SIGNAL \byte_index[27]~98\ : std_logic;
SIGNAL \byte_index[28]~99_combout\ : std_logic;
SIGNAL \byte_index[28]~100\ : std_logic;
SIGNAL \byte_index[29]~101_combout\ : std_logic;
SIGNAL \Equal14~15_combout\ : std_logic;
SIGNAL \Equal14~14_combout\ : std_logic;
SIGNAL \Equal14~13_combout\ : std_logic;
SIGNAL \Equal14~12_combout\ : std_logic;
SIGNAL \Equal14~16_combout\ : std_logic;
SIGNAL \Equal14~17_combout\ : std_logic;
SIGNAL \Equal14~18_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal14~19_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \Equal14~2_combout\ : std_logic;
SIGNAL \Equal14~3_combout\ : std_logic;
SIGNAL \Equal14~4_combout\ : std_logic;
SIGNAL \Equal14~5_combout\ : std_logic;
SIGNAL \Equal14~6_combout\ : std_logic;
SIGNAL \Equal14~9_combout\ : std_logic;
SIGNAL \Equal14~8_combout\ : std_logic;
SIGNAL \Equal14~7_combout\ : std_logic;
SIGNAL \Equal14~10_combout\ : std_logic;
SIGNAL \Equal14~11_combout\ : std_logic;
SIGNAL \Equal14~20_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \s_state.DATA~q\ : std_logic;
SIGNAL \out_data~0_combout\ : std_logic;
SIGNAL \s_out_data~1_combout\ : std_logic;
SIGNAL \out_data~1_combout\ : std_logic;
SIGNAL \s_out_data~2_combout\ : std_logic;
SIGNAL \out_data~2_combout\ : std_logic;
SIGNAL \delayed_data[3]~feeder_combout\ : std_logic;
SIGNAL \s_out_data~3_combout\ : std_logic;
SIGNAL \out_data~3_combout\ : std_logic;
SIGNAL \s_channel~6_combout\ : std_logic;
SIGNAL \s_out_data~4_combout\ : std_logic;
SIGNAL \out_data~4_combout\ : std_logic;
SIGNAL \s_channel~7_combout\ : std_logic;
SIGNAL \s_out_data~5_combout\ : std_logic;
SIGNAL \out_data~5_combout\ : std_logic;
SIGNAL \s_channel~8_combout\ : std_logic;
SIGNAL \delayed_data[6]~feeder_combout\ : std_logic;
SIGNAL \s_out_data~6_combout\ : std_logic;
SIGNAL \out_data~6_combout\ : std_logic;
SIGNAL \s_channel~9_combout\ : std_logic;
SIGNAL \delayed_data[7]~feeder_combout\ : std_logic;
SIGNAL \s_out_data~7_combout\ : std_logic;
SIGNAL \out_data~7_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \s_out_startofpacket~q\ : std_logic;
SIGNAL \next_out_endofpacket~3_combout\ : std_logic;
SIGNAL \next_out_endofpacket~2_combout\ : std_logic;
SIGNAL \s_out_endofpacket~q\ : std_logic;
SIGNAL \s_channel[7]~21_combout\ : std_logic;
SIGNAL \channel~0_combout\ : std_logic;
SIGNAL \channel~1_combout\ : std_logic;
SIGNAL \channel~2_combout\ : std_logic;
SIGNAL \channel~3_combout\ : std_logic;
SIGNAL \channel~4_combout\ : std_logic;
SIGNAL \channel~5_combout\ : std_logic;
SIGNAL \channel~6_combout\ : std_logic;
SIGNAL \channel~7_combout\ : std_logic;
SIGNAL \s_channel[8]~10_combout\ : std_logic;
SIGNAL \channel~8_combout\ : std_logic;
SIGNAL \channel~9_combout\ : std_logic;
SIGNAL \channel~10_combout\ : std_logic;
SIGNAL \channel~11_combout\ : std_logic;
SIGNAL \channel~12_combout\ : std_logic;
SIGNAL \channel~13_combout\ : std_logic;
SIGNAL \channel~14_combout\ : std_logic;
SIGNAL \channel~15_combout\ : std_logic;
SIGNAL \s_channel[23]~11_combout\ : std_logic;
SIGNAL \channel~16_combout\ : std_logic;
SIGNAL \channel~17_combout\ : std_logic;
SIGNAL \channel~18_combout\ : std_logic;
SIGNAL \channel~19_combout\ : std_logic;
SIGNAL \channel~20_combout\ : std_logic;
SIGNAL \channel~21_combout\ : std_logic;
SIGNAL \channel~22_combout\ : std_logic;
SIGNAL \channel~23_combout\ : std_logic;
SIGNAL \s_channel[25]~12_combout\ : std_logic;
SIGNAL \channel~24_combout\ : std_logic;
SIGNAL \channel~25_combout\ : std_logic;
SIGNAL \channel~26_combout\ : std_logic;
SIGNAL \channel~27_combout\ : std_logic;
SIGNAL \channel~28_combout\ : std_logic;
SIGNAL \channel~29_combout\ : std_logic;
SIGNAL \channel~30_combout\ : std_logic;
SIGNAL \channel~31_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \s_channel[38]~13_combout\ : std_logic;
SIGNAL \channel~32_combout\ : std_logic;
SIGNAL \channel~33_combout\ : std_logic;
SIGNAL \channel~34_combout\ : std_logic;
SIGNAL \channel~35_combout\ : std_logic;
SIGNAL \channel~36_combout\ : std_logic;
SIGNAL \channel~37_combout\ : std_logic;
SIGNAL \channel~38_combout\ : std_logic;
SIGNAL \channel~39_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \s_channel[41]~14_combout\ : std_logic;
SIGNAL \channel~40_combout\ : std_logic;
SIGNAL \channel~41_combout\ : std_logic;
SIGNAL \channel~42_combout\ : std_logic;
SIGNAL \channel~43_combout\ : std_logic;
SIGNAL \channel~44_combout\ : std_logic;
SIGNAL \channel~45_combout\ : std_logic;
SIGNAL \channel~46_combout\ : std_logic;
SIGNAL \channel~47_combout\ : std_logic;
SIGNAL \s_channel[51]~15_combout\ : std_logic;
SIGNAL \channel~48_combout\ : std_logic;
SIGNAL \channel~49_combout\ : std_logic;
SIGNAL \channel~50_combout\ : std_logic;
SIGNAL \channel~51_combout\ : std_logic;
SIGNAL \channel~52_combout\ : std_logic;
SIGNAL \channel~53_combout\ : std_logic;
SIGNAL \channel~54_combout\ : std_logic;
SIGNAL \channel~55_combout\ : std_logic;
SIGNAL \s_channel[61]~16_combout\ : std_logic;
SIGNAL \channel~56_combout\ : std_logic;
SIGNAL \channel~57_combout\ : std_logic;
SIGNAL \channel~58_combout\ : std_logic;
SIGNAL \channel~59_combout\ : std_logic;
SIGNAL \channel~60_combout\ : std_logic;
SIGNAL \channel~61_combout\ : std_logic;
SIGNAL \channel~62_combout\ : std_logic;
SIGNAL \channel~63_combout\ : std_logic;
SIGNAL \s_channel[69]~17_combout\ : std_logic;
SIGNAL \channel~64_combout\ : std_logic;
SIGNAL \channel~65_combout\ : std_logic;
SIGNAL \channel~66_combout\ : std_logic;
SIGNAL \channel~67_combout\ : std_logic;
SIGNAL \channel~68_combout\ : std_logic;
SIGNAL \channel~69_combout\ : std_logic;
SIGNAL \channel~70_combout\ : std_logic;
SIGNAL \channel~71_combout\ : std_logic;
SIGNAL \Equal17~1_combout\ : std_logic;
SIGNAL \s_channel[77]~18_combout\ : std_logic;
SIGNAL \channel~72_combout\ : std_logic;
SIGNAL \channel~73_combout\ : std_logic;
SIGNAL \channel~74_combout\ : std_logic;
SIGNAL \channel~75_combout\ : std_logic;
SIGNAL \channel~76_combout\ : std_logic;
SIGNAL \channel~77_combout\ : std_logic;
SIGNAL \channel~78_combout\ : std_logic;
SIGNAL \channel~79_combout\ : std_logic;
SIGNAL \s_channel[86]~19_combout\ : std_logic;
SIGNAL \channel~80_combout\ : std_logic;
SIGNAL \channel~81_combout\ : std_logic;
SIGNAL \channel~82_combout\ : std_logic;
SIGNAL \channel~83_combout\ : std_logic;
SIGNAL \channel~84_combout\ : std_logic;
SIGNAL \channel~85_combout\ : std_logic;
SIGNAL \channel~86_combout\ : std_logic;
SIGNAL \channel~87_combout\ : std_logic;
SIGNAL \s_channel[95]~20_combout\ : std_logic;
SIGNAL \channel~88_combout\ : std_logic;
SIGNAL \channel~89_combout\ : std_logic;
SIGNAL \channel~90_combout\ : std_logic;
SIGNAL \channel~91_combout\ : std_logic;
SIGNAL \channel~92_combout\ : std_logic;
SIGNAL \channel~93_combout\ : std_logic;
SIGNAL \channel~94_combout\ : std_logic;
SIGNAL \channel~95_combout\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL byte_index : std_logic_vector(31 DOWNTO 0);
SIGNAL udp_length : std_logic_vector(31 DOWNTO 0);
SIGNAL s_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL s_channel : std_logic_vector(95 DOWNTO 0);
SIGNAL delayed_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ip_header_length : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
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

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X0_Y7_N16
\out_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~0_combout\,
	devoe => ww_devoe,
	o => \out_data[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\out_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~1_combout\,
	devoe => ww_devoe,
	o => \out_data[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\out_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~2_combout\,
	devoe => ww_devoe,
	o => \out_data[2]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\out_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~3_combout\,
	devoe => ww_devoe,
	o => \out_data[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\out_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~4_combout\,
	devoe => ww_devoe,
	o => \out_data[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\out_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~5_combout\,
	devoe => ww_devoe,
	o => \out_data[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\out_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~6_combout\,
	devoe => ww_devoe,
	o => \out_data[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\out_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_data~7_combout\,
	devoe => ww_devoe,
	o => \out_data[7]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\out_startofpacket~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_out_startofpacket~q\,
	devoe => ww_devoe,
	o => \out_startofpacket~output_o\);

-- Location: IOOBUF_X13_Y24_N16
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

-- Location: IOOBUF_X21_Y24_N16
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

-- Location: IOOBUF_X7_Y24_N16
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

-- Location: IOOBUF_X5_Y24_N2
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

-- Location: IOOBUF_X5_Y24_N23
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

-- Location: IOOBUF_X11_Y24_N23
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

-- Location: IOOBUF_X9_Y24_N9
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

-- Location: IOOBUF_X7_Y24_N2
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

-- Location: IOOBUF_X9_Y24_N23
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

-- Location: IOOBUF_X3_Y24_N2
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X13_Y0_N16
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X13_Y0_N23
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

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X0_Y5_N23
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

-- Location: IOOBUF_X3_Y24_N23
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X0_Y8_N23
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X23_Y24_N23
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X34_Y8_N23
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

-- Location: IOOBUF_X21_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N2
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

-- Location: IOOBUF_X34_Y7_N16
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

-- Location: IOOBUF_X34_Y8_N16
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

-- Location: IOOBUF_X28_Y0_N16
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

-- Location: IOOBUF_X34_Y8_N9
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X21_Y0_N23
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

-- Location: IOOBUF_X25_Y24_N23
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X11_Y24_N2
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

-- Location: IOOBUF_X7_Y24_N9
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

-- Location: IOOBUF_X3_Y24_N9
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

-- Location: IOOBUF_X3_Y24_N16
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

-- Location: IOOBUF_X9_Y24_N16
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

-- Location: IOOBUF_X5_Y24_N9
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

-- Location: IOOBUF_X1_Y24_N9
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X9_Y0_N2
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X32_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X0_Y6_N23
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

-- Location: IOOBUF_X0_Y7_N23
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

-- Location: IOOBUF_X0_Y4_N16
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X18_Y24_N9
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X25_Y0_N16
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

-- Location: IOOBUF_X25_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X34_Y7_N23
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

-- Location: IOOBUF_X21_Y0_N9
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

-- Location: IOOBUF_X25_Y24_N2
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

-- Location: IOOBUF_X21_Y0_N2
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

-- Location: IOOBUF_X28_Y0_N9
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X25_Y0_N9
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

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X11_Y24_N9
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

-- Location: IOOBUF_X16_Y24_N16
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

-- Location: IOOBUF_X21_Y24_N2
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

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X21_Y24_N9
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

-- Location: IOOBUF_X13_Y24_N2
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

-- Location: IOOBUF_X25_Y24_N16
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

-- Location: IOOBUF_X13_Y24_N9
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

-- Location: IOOBUF_X13_Y24_N23
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X18_Y24_N16
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOIBUF_X0_Y11_N22
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

-- Location: IOIBUF_X0_Y8_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: LCCOMB_X8_Y9_N0
\s_channel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~2_combout\ = (!\reset~input_o\ & \in_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \in_data[0]~input_o\,
	combout => \s_channel~2_combout\);

-- Location: LCCOMB_X8_Y9_N12
\delayed_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[0]~feeder_combout\ = \s_channel~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_channel~2_combout\,
	combout => \delayed_data[0]~feeder_combout\);

-- Location: LCCOMB_X10_Y14_N0
\counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~32_combout\ = counter(0) $ (VCC)
-- \counter[0]~33\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~32_combout\,
	cout => \counter[0]~33\);

-- Location: FF_X11_Y14_N5
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \counter[0]~32_combout\,
	sclr => \out_ready~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X10_Y14_N2
\counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~34_combout\ = (counter(1) & (!\counter[0]~33\)) # (!counter(1) & ((\counter[0]~33\) # (GND)))
-- \counter[1]~35\ = CARRY((!\counter[0]~33\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~33\,
	combout => \counter[1]~34_combout\,
	cout => \counter[1]~35\);

-- Location: FF_X11_Y14_N19
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \counter[1]~34_combout\,
	sclr => \out_ready~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X10_Y14_N4
\counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~36_combout\ = (counter(2) & (\counter[1]~35\ $ (GND))) # (!counter(2) & (!\counter[1]~35\ & VCC))
-- \counter[2]~37\ = CARRY((counter(2) & !\counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~35\,
	combout => \counter[2]~36_combout\,
	cout => \counter[2]~37\);

-- Location: FF_X11_Y14_N29
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \counter[2]~36_combout\,
	sclr => \out_ready~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X10_Y14_N6
\counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~38_combout\ = (counter(3) & (!\counter[2]~37\)) # (!counter(3) & ((\counter[2]~37\) # (GND)))
-- \counter[3]~39\ = CARRY((!\counter[2]~37\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~37\,
	combout => \counter[3]~38_combout\,
	cout => \counter[3]~39\);

-- Location: FF_X11_Y14_N31
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \counter[3]~38_combout\,
	sclr => \out_ready~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X10_Y14_N8
\counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~40_combout\ = (counter(4) & (\counter[3]~39\ $ (GND))) # (!counter(4) & (!\counter[3]~39\ & VCC))
-- \counter[4]~41\ = CARRY((counter(4) & !\counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~39\,
	combout => \counter[4]~40_combout\,
	cout => \counter[4]~41\);

-- Location: FF_X11_Y13_N5
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \counter[4]~40_combout\,
	sclr => \out_ready~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X10_Y14_N10
\counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~42_combout\ = (counter(5) & (!\counter[4]~41\)) # (!counter(5) & ((\counter[4]~41\) # (GND)))
-- \counter[5]~43\ = CARRY((!\counter[4]~41\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~41\,
	combout => \counter[5]~42_combout\,
	cout => \counter[5]~43\);

-- Location: FF_X11_Y13_N27
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \counter[5]~42_combout\,
	sclr => \out_ready~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X10_Y14_N12
\counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~44_combout\ = (counter(6) & (\counter[5]~43\ $ (GND))) # (!counter(6) & (!\counter[5]~43\ & VCC))
-- \counter[6]~45\ = CARRY((counter(6) & !\counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~43\,
	combout => \counter[6]~44_combout\,
	cout => \counter[6]~45\);

-- Location: FF_X10_Y14_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[6]~44_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X10_Y14_N14
\counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~46_combout\ = (counter(7) & (!\counter[6]~45\)) # (!counter(7) & ((\counter[6]~45\) # (GND)))
-- \counter[7]~47\ = CARRY((!\counter[6]~45\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~45\,
	combout => \counter[7]~46_combout\,
	cout => \counter[7]~47\);

-- Location: FF_X10_Y14_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[7]~46_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X10_Y14_N16
\counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~48_combout\ = (counter(8) & (\counter[7]~47\ $ (GND))) # (!counter(8) & (!\counter[7]~47\ & VCC))
-- \counter[8]~49\ = CARRY((counter(8) & !\counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~47\,
	combout => \counter[8]~48_combout\,
	cout => \counter[8]~49\);

-- Location: FF_X11_Y13_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \counter[8]~48_combout\,
	sclr => \out_ready~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X10_Y14_N18
\counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~50_combout\ = (counter(9) & (!\counter[8]~49\)) # (!counter(9) & ((\counter[8]~49\) # (GND)))
-- \counter[9]~51\ = CARRY((!\counter[8]~49\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~49\,
	combout => \counter[9]~50_combout\,
	cout => \counter[9]~51\);

-- Location: FF_X11_Y13_N7
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \counter[9]~50_combout\,
	sclr => \out_ready~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X10_Y14_N20
\counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~52_combout\ = (counter(10) & (\counter[9]~51\ $ (GND))) # (!counter(10) & (!\counter[9]~51\ & VCC))
-- \counter[10]~53\ = CARRY((counter(10) & !\counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~51\,
	combout => \counter[10]~52_combout\,
	cout => \counter[10]~53\);

-- Location: FF_X10_Y14_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[10]~52_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X10_Y14_N22
\counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~54_combout\ = (counter(11) & (!\counter[10]~53\)) # (!counter(11) & ((\counter[10]~53\) # (GND)))
-- \counter[11]~55\ = CARRY((!\counter[10]~53\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~53\,
	combout => \counter[11]~54_combout\,
	cout => \counter[11]~55\);

-- Location: FF_X10_Y14_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[11]~54_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X10_Y14_N24
\counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~56_combout\ = (counter(12) & (\counter[11]~55\ $ (GND))) # (!counter(12) & (!\counter[11]~55\ & VCC))
-- \counter[12]~57\ = CARRY((counter(12) & !\counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~55\,
	combout => \counter[12]~56_combout\,
	cout => \counter[12]~57\);

-- Location: FF_X10_Y14_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[12]~56_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X10_Y14_N26
\counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~58_combout\ = (counter(13) & (!\counter[12]~57\)) # (!counter(13) & ((\counter[12]~57\) # (GND)))
-- \counter[13]~59\ = CARRY((!\counter[12]~57\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~57\,
	combout => \counter[13]~58_combout\,
	cout => \counter[13]~59\);

-- Location: FF_X10_Y14_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[13]~58_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X10_Y14_N28
\counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~60_combout\ = (counter(14) & (\counter[13]~59\ $ (GND))) # (!counter(14) & (!\counter[13]~59\ & VCC))
-- \counter[14]~61\ = CARRY((counter(14) & !\counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~59\,
	combout => \counter[14]~60_combout\,
	cout => \counter[14]~61\);

-- Location: FF_X10_Y14_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[14]~60_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X10_Y14_N30
\counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~62_combout\ = (counter(15) & (!\counter[14]~61\)) # (!counter(15) & ((\counter[14]~61\) # (GND)))
-- \counter[15]~63\ = CARRY((!\counter[14]~61\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~61\,
	combout => \counter[15]~62_combout\,
	cout => \counter[15]~63\);

-- Location: FF_X11_Y13_N13
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \counter[15]~62_combout\,
	sclr => \out_ready~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X10_Y13_N0
\counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~64_combout\ = (counter(16) & (\counter[15]~63\ $ (GND))) # (!counter(16) & (!\counter[15]~63\ & VCC))
-- \counter[16]~65\ = CARRY((counter(16) & !\counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~63\,
	combout => \counter[16]~64_combout\,
	cout => \counter[16]~65\);

-- Location: FF_X10_Y13_N1
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[16]~64_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X10_Y13_N2
\counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~66_combout\ = (counter(17) & (!\counter[16]~65\)) # (!counter(17) & ((\counter[16]~65\) # (GND)))
-- \counter[17]~67\ = CARRY((!\counter[16]~65\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~65\,
	combout => \counter[17]~66_combout\,
	cout => \counter[17]~67\);

-- Location: FF_X10_Y13_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[17]~66_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X10_Y13_N4
\counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~68_combout\ = (counter(18) & (\counter[17]~67\ $ (GND))) # (!counter(18) & (!\counter[17]~67\ & VCC))
-- \counter[18]~69\ = CARRY((counter(18) & !\counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~67\,
	combout => \counter[18]~68_combout\,
	cout => \counter[18]~69\);

-- Location: FF_X10_Y13_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[18]~68_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X10_Y13_N6
\counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~70_combout\ = (counter(19) & (!\counter[18]~69\)) # (!counter(19) & ((\counter[18]~69\) # (GND)))
-- \counter[19]~71\ = CARRY((!\counter[18]~69\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~69\,
	combout => \counter[19]~70_combout\,
	cout => \counter[19]~71\);

-- Location: FF_X10_Y13_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[19]~70_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X11_Y13_N30
\Equal16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~5_combout\ = (!counter(17) & (!counter(18) & (!counter(16) & !counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(18),
	datac => counter(16),
	datad => counter(19),
	combout => \Equal16~5_combout\);

-- Location: LCCOMB_X10_Y13_N8
\counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~72_combout\ = (counter(20) & (\counter[19]~71\ $ (GND))) # (!counter(20) & (!\counter[19]~71\ & VCC))
-- \counter[20]~73\ = CARRY((counter(20) & !\counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~71\,
	combout => \counter[20]~72_combout\,
	cout => \counter[20]~73\);

-- Location: FF_X10_Y13_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[20]~72_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X10_Y13_N10
\counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[21]~74_combout\ = (counter(21) & (!\counter[20]~73\)) # (!counter(21) & ((\counter[20]~73\) # (GND)))
-- \counter[21]~75\ = CARRY((!\counter[20]~73\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~73\,
	combout => \counter[21]~74_combout\,
	cout => \counter[21]~75\);

-- Location: FF_X10_Y13_N11
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[21]~74_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X10_Y13_N12
\counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[22]~76_combout\ = (counter(22) & (\counter[21]~75\ $ (GND))) # (!counter(22) & (!\counter[21]~75\ & VCC))
-- \counter[22]~77\ = CARRY((counter(22) & !\counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \counter[21]~75\,
	combout => \counter[22]~76_combout\,
	cout => \counter[22]~77\);

-- Location: FF_X10_Y13_N13
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[22]~76_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X10_Y13_N14
\counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[23]~78_combout\ = (counter(23) & (!\counter[22]~77\)) # (!counter(23) & ((\counter[22]~77\) # (GND)))
-- \counter[23]~79\ = CARRY((!\counter[22]~77\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~77\,
	combout => \counter[23]~78_combout\,
	cout => \counter[23]~79\);

-- Location: FF_X10_Y13_N15
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[23]~78_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X10_Y13_N16
\counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[24]~80_combout\ = (counter(24) & (\counter[23]~79\ $ (GND))) # (!counter(24) & (!\counter[23]~79\ & VCC))
-- \counter[24]~81\ = CARRY((counter(24) & !\counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~79\,
	combout => \counter[24]~80_combout\,
	cout => \counter[24]~81\);

-- Location: FF_X10_Y13_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[24]~80_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X10_Y13_N18
\counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[25]~82_combout\ = (counter(25) & (!\counter[24]~81\)) # (!counter(25) & ((\counter[24]~81\) # (GND)))
-- \counter[25]~83\ = CARRY((!\counter[24]~81\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~81\,
	combout => \counter[25]~82_combout\,
	cout => \counter[25]~83\);

-- Location: FF_X10_Y13_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[25]~82_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X10_Y13_N20
\counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[26]~84_combout\ = (counter(26) & (\counter[25]~83\ $ (GND))) # (!counter(26) & (!\counter[25]~83\ & VCC))
-- \counter[26]~85\ = CARRY((counter(26) & !\counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~83\,
	combout => \counter[26]~84_combout\,
	cout => \counter[26]~85\);

-- Location: FF_X10_Y13_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[26]~84_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X10_Y13_N22
\counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[27]~86_combout\ = (counter(27) & (!\counter[26]~85\)) # (!counter(27) & ((\counter[26]~85\) # (GND)))
-- \counter[27]~87\ = CARRY((!\counter[26]~85\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \counter[26]~85\,
	combout => \counter[27]~86_combout\,
	cout => \counter[27]~87\);

-- Location: FF_X10_Y13_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[27]~86_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X10_Y13_N24
\counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[28]~88_combout\ = (counter(28) & (\counter[27]~87\ $ (GND))) # (!counter(28) & (!\counter[27]~87\ & VCC))
-- \counter[28]~89\ = CARRY((counter(28) & !\counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \counter[27]~87\,
	combout => \counter[28]~88_combout\,
	cout => \counter[28]~89\);

-- Location: FF_X10_Y13_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[28]~88_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X10_Y13_N26
\counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[29]~90_combout\ = (counter(29) & (!\counter[28]~89\)) # (!counter(29) & ((\counter[28]~89\) # (GND)))
-- \counter[29]~91\ = CARRY((!\counter[28]~89\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \counter[28]~89\,
	combout => \counter[29]~90_combout\,
	cout => \counter[29]~91\);

-- Location: FF_X10_Y13_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[29]~90_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X10_Y13_N28
\counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[30]~92_combout\ = (counter(30) & (\counter[29]~91\ $ (GND))) # (!counter(30) & (!\counter[29]~91\ & VCC))
-- \counter[30]~93\ = CARRY((counter(30) & !\counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \counter[29]~91\,
	combout => \counter[30]~92_combout\,
	cout => \counter[30]~93\);

-- Location: FF_X10_Y13_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[30]~92_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X10_Y13_N30
\counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[31]~94_combout\ = counter(31) $ (\counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \counter[30]~93\,
	combout => \counter[31]~94_combout\);

-- Location: FF_X10_Y13_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \counter[31]~94_combout\,
	sclr => \out_ready~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X11_Y13_N28
\Equal16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~8_combout\ = (!counter(29) & (!counter(28) & (!counter(31) & !counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datab => counter(28),
	datac => counter(31),
	datad => counter(30),
	combout => \Equal16~8_combout\);

-- Location: LCCOMB_X11_Y13_N22
\Equal16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~7_combout\ = (!counter(24) & (!counter(26) & (!counter(25) & !counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(26),
	datac => counter(25),
	datad => counter(27),
	combout => \Equal16~7_combout\);

-- Location: LCCOMB_X11_Y13_N20
\Equal16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~6_combout\ = (!counter(20) & (!counter(22) & (!counter(23) & !counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(22),
	datac => counter(23),
	datad => counter(21),
	combout => \Equal16~6_combout\);

-- Location: LCCOMB_X11_Y13_N10
\Equal16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~9_combout\ = (\Equal16~5_combout\ & (\Equal16~8_combout\ & (\Equal16~7_combout\ & \Equal16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~5_combout\,
	datab => \Equal16~8_combout\,
	datac => \Equal16~7_combout\,
	datad => \Equal16~6_combout\,
	combout => \Equal16~9_combout\);

-- Location: LCCOMB_X11_Y13_N26
\Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (!counter(4) & (!counter(7) & (!counter(5) & !counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(7),
	datac => counter(5),
	datad => counter(6),
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X11_Y14_N8
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (!counter(3) & (!counter(1) & (!counter(0) & !counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X11_Y13_N14
\Equal16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~3_combout\ = (!counter(15) & (!counter(14) & (!counter(12) & !counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(14),
	datac => counter(12),
	datad => counter(13),
	combout => \Equal16~3_combout\);

-- Location: LCCOMB_X11_Y13_N6
\Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~2_combout\ = (!counter(10) & (!counter(11) & (!counter(9) & !counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(11),
	datac => counter(9),
	datad => counter(8),
	combout => \Equal16~2_combout\);

-- Location: LCCOMB_X11_Y13_N16
\Equal16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~4_combout\ = (\Equal16~1_combout\ & (\Equal16~0_combout\ & (\Equal16~3_combout\ & \Equal16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~1_combout\,
	datab => \Equal16~0_combout\,
	datac => \Equal16~3_combout\,
	datad => \Equal16~2_combout\,
	combout => \Equal16~4_combout\);

-- Location: LCCOMB_X11_Y13_N8
\delayed_data[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[4]~0_combout\ = (\out_ready~input_o\) # ((\reset~input_o\) # ((\Equal16~9_combout\ & \Equal16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~9_combout\,
	datab => \out_ready~input_o\,
	datac => \reset~input_o\,
	datad => \Equal16~4_combout\,
	combout => \delayed_data[4]~0_combout\);

-- Location: FF_X8_Y9_N13
\delayed_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[0]~feeder_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(0));

-- Location: LCCOMB_X8_Y9_N16
\s_out_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_data~0_combout\ = (!\reset~input_o\ & delayed_data(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => delayed_data(0),
	combout => \s_out_data~0_combout\);

-- Location: FF_X8_Y9_N17
\s_out_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_out_data~0_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(0));

-- Location: LCCOMB_X12_Y13_N0
\byte_index[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~34_combout\ = byte_index(0) $ (VCC)
-- \byte_index[0]~35\ = CARRY(byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datad => VCC,
	combout => \byte_index[0]~34_combout\,
	cout => \byte_index[0]~35\);

-- Location: IOIBUF_X5_Y24_N15
\in_startofpacket~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_startofpacket,
	o => \in_startofpacket~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\in_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: LCCOMB_X11_Y11_N26
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (byte_index(2) & (byte_index(1) & (byte_index(4) & !byte_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(1),
	datac => byte_index(4),
	datad => byte_index(5),
	combout => \Equal5~1_combout\);

-- Location: IOIBUF_X0_Y7_N1
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: LCCOMB_X8_Y9_N2
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\in_data[1]~input_o\ & (!\in_data[2]~input_o\ & (!\in_data[6]~input_o\ & !\in_data[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \in_data[2]~input_o\,
	datac => \in_data[6]~input_o\,
	datad => \in_data[5]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: LCCOMB_X11_Y10_N8
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\in_data[3]~input_o\ & (\in_data[0]~input_o\ & \in_data[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datac => \in_data[0]~input_o\,
	datad => \in_data[4]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: IOIBUF_X0_Y10_N15
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: LCCOMB_X11_Y10_N30
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Equal3~0_combout\ & (\Equal6~0_combout\ & !\in_data[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \in_data[7]~input_o\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X12_Y12_N26
\byte_index[29]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[29]~101_combout\ = (byte_index(29) & (!\byte_index[28]~100\)) # (!byte_index(29) & ((\byte_index[28]~100\) # (GND)))
-- \byte_index[29]~102\ = CARRY((!\byte_index[28]~100\) # (!byte_index(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datad => VCC,
	cin => \byte_index[28]~100\,
	combout => \byte_index[29]~101_combout\,
	cout => \byte_index[29]~102\);

-- Location: LCCOMB_X12_Y12_N28
\byte_index[30]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[30]~103_combout\ = (byte_index(30) & (\byte_index[29]~102\ $ (GND))) # (!byte_index(30) & (!\byte_index[29]~102\ & VCC))
-- \byte_index[30]~104\ = CARRY((byte_index(30) & !\byte_index[29]~102\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(30),
	datad => VCC,
	cin => \byte_index[29]~102\,
	combout => \byte_index[30]~103_combout\,
	cout => \byte_index[30]~104\);

-- Location: LCCOMB_X11_Y11_N12
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\Equal5~0_combout\ & \Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_combout\,
	datac => \Equal5~1_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X13_Y11_N28
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!byte_index(6) & (!byte_index(5) & (byte_index(3) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => byte_index(5),
	datac => byte_index(3),
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X11_Y10_N18
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (byte_index(2) & (!byte_index(1) & (!byte_index(4) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(1),
	datac => byte_index(4),
	datad => \Equal0~9_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X10_Y11_N4
\Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\out_ready~input_o\ & (\in_valid~input_o\ & ((!byte_index(0)) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \out_ready~input_o\,
	datac => \in_valid~input_o\,
	datad => byte_index(0),
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X10_Y11_N14
\ip_header_length[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_header_length[5]~0_combout\ = ((!\s_state.IP_HEADER~q\) # (!\out_ready~input_o\)) # (!\in_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_valid~input_o\,
	datac => \out_ready~input_o\,
	datad => \s_state.IP_HEADER~q\,
	combout => \ip_header_length[5]~0_combout\);

-- Location: LCCOMB_X10_Y11_N20
\ip_header_length[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_header_length[5]~1_combout\ = (\reset~input_o\) # ((byte_index(0) & (!\ip_header_length[5]~0_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => byte_index(0),
	datac => \ip_header_length[5]~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \ip_header_length[5]~1_combout\);

-- Location: FF_X12_Y11_N5
\ip_header_length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \ip_header_length[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(2));

-- Location: LCCOMB_X8_Y9_N6
\s_channel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~3_combout\ = (!\reset~input_o\ & \in_data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \in_data[1]~input_o\,
	combout => \s_channel~3_combout\);

-- Location: FF_X12_Y11_N29
\ip_header_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \ip_header_length[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(3));

-- Location: LCCOMB_X12_Y11_N22
\Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = ip_header_length(2) $ (ip_header_length(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ip_header_length(2),
	datad => ip_header_length(3),
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X8_Y9_N4
\s_channel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~4_combout\ = (!\reset~input_o\ & \in_data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \in_data[2]~input_o\,
	combout => \s_channel~4_combout\);

-- Location: FF_X12_Y11_N27
\ip_header_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \ip_header_length[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(4));

-- Location: LCCOMB_X12_Y11_N0
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = ip_header_length(4) $ (((ip_header_length(2)) # (ip_header_length(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(3),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X12_Y11_N30
\Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (byte_index(3) & (!\Add6~1_combout\ & (byte_index(4) $ (!\Add6~0_combout\)))) # (!byte_index(3) & (\Add6~1_combout\ & (byte_index(4) $ (!\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(4),
	datac => \Add6~1_combout\,
	datad => \Add6~0_combout\,
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X10_Y12_N20
\s_channel~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~5_combout\ = (\in_data[3]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_data[3]~input_o\,
	datad => \reset~input_o\,
	combout => \s_channel~5_combout\);

-- Location: FF_X12_Y11_N13
\ip_header_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \ip_header_length[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(5));

-- Location: LCCOMB_X12_Y11_N8
\Add6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~3_combout\ = (ip_header_length(5) & (ip_header_length(4) & ((ip_header_length(2)) # (ip_header_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(3),
	combout => \Add6~3_combout\);

-- Location: LCCOMB_X13_Y11_N26
\Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = byte_index(6) $ (\Add6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(6),
	datad => \Add6~3_combout\,
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X12_Y11_N10
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = ip_header_length(5) $ (((ip_header_length(4) & ((ip_header_length(2)) # (ip_header_length(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(3),
	combout => \Add6~2_combout\);

-- Location: LCCOMB_X12_Y11_N24
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = byte_index(5) $ (\Add6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(5),
	datad => \Add6~2_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X12_Y11_N18
\next_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~6_combout\ = (\Equal0~7_combout\ & (ip_header_length(2) $ (byte_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ip_header_length(2),
	datac => byte_index(2),
	datad => \Equal0~7_combout\,
	combout => \next_state~6_combout\);

-- Location: LCCOMB_X11_Y11_N14
\Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~3_combout\ = (\Equal9~2_combout\ & (!\Equal9~1_combout\ & (!\Equal9~0_combout\ & \next_state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~2_combout\,
	datab => \Equal9~1_combout\,
	datac => \Equal9~0_combout\,
	datad => \next_state~6_combout\,
	combout => \Equal9~3_combout\);

-- Location: LCCOMB_X11_Y11_N10
\Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~4_combout\ = (!byte_index(0) & (!byte_index(1) & \Equal9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datac => \Equal9~3_combout\,
	combout => \Equal9~4_combout\);

-- Location: LCCOMB_X12_Y11_N28
\PROCES1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~2_combout\ = (byte_index(5) & (ip_header_length(2) & (!ip_header_length(3) & !byte_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => ip_header_length(2),
	datac => ip_header_length(3),
	datad => byte_index(1),
	combout => \PROCES1~2_combout\);

-- Location: LCCOMB_X12_Y11_N26
\PROCES1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~1_combout\ = (!ip_header_length(5) & (!byte_index(2) & (ip_header_length(4) & !byte_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => byte_index(2),
	datac => ip_header_length(4),
	datad => byte_index(4),
	combout => \PROCES1~1_combout\);

-- Location: LCCOMB_X11_Y11_N20
\next_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~7_combout\ = (\Equal9~4_combout\) # ((\PROCES1~2_combout\ & (\Equal5~0_combout\ & \PROCES1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~4_combout\,
	datab => \PROCES1~2_combout\,
	datac => \Equal5~0_combout\,
	datad => \PROCES1~1_combout\,
	combout => \next_state~7_combout\);

-- Location: LCCOMB_X11_Y11_N30
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = ((\Equal5~2_combout\ & (\Equal6~1_combout\)) # (!\Equal5~2_combout\ & ((!\next_state~7_combout\)))) # (!\Selector3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Equal6~1_combout\,
	datac => \Selector3~5_combout\,
	datad => \next_state~7_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X11_Y13_N12
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\in_startofpacket~input_o\ & !\s_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_startofpacket~input_o\,
	datad => \s_state.IDLE~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X11_Y10_N20
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\Equal3~0_combout\ & (!\in_data[7]~input_o\ & (!\in_data[0]~input_o\ & !\in_data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \in_data[7]~input_o\,
	datac => \in_data[0]~input_o\,
	datad => \in_data[4]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X11_Y10_N28
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (byte_index(0) & byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datad => byte_index(1),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X11_Y10_N4
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!byte_index(2) & (\Equal0~8_combout\ & (!byte_index(4) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Equal0~8_combout\,
	datac => byte_index(4),
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X11_Y10_N2
\next_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~8_combout\ = (!byte_index(0) & (!\Equal0~10_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datac => \Equal0~10_combout\,
	datad => \Equal2~0_combout\,
	combout => \next_state~8_combout\);

-- Location: LCCOMB_X11_Y10_N6
\next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~9_combout\ = (\next_state~8_combout\) # ((\Equal0~10_combout\ & ((!\Equal3~1_combout\) # (!\in_data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \Equal3~1_combout\,
	datac => \Equal0~10_combout\,
	datad => \next_state~8_combout\,
	combout => \next_state~9_combout\);

-- Location: LCCOMB_X11_Y13_N24
\PROCES1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~0_combout\ = (\out_ready~input_o\ & \in_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datad => \in_valid~input_o\,
	combout => \PROCES1~0_combout\);

-- Location: LCCOMB_X12_Y10_N24
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\s_state.ETHERNET_HEADER~q\ & ((!\PROCES1~0_combout\) # (!\next_state~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \next_state~9_combout\,
	datac => \s_state.ETHERNET_HEADER~q\,
	datad => \PROCES1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X12_Y10_N25
\s_state.ETHERNET_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.ETHERNET_HEADER~q\);

-- Location: LCCOMB_X11_Y10_N0
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\s_state.ETHERNET_HEADER~q\ & \next_state~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.ETHERNET_HEADER~q\,
	datad => \next_state~9_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X11_Y10_N10
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\in_data[3]~input_o\ & (\PROCES1~0_combout\ & (!\Equal0~10_combout\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \PROCES1~0_combout\,
	datac => \Equal0~10_combout\,
	datad => \Equal3~1_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X11_Y11_N6
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~2_combout\ & ((\s_state.IP_HEADER~q\) # ((\Selector2~0_combout\ & \Selector2~1_combout\)))) # (!\Selector2~2_combout\ & (\Selector2~0_combout\ & ((\Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \Selector2~0_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~3_combout\);

-- Location: FF_X11_Y11_N7
\s_state.IP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IP_HEADER~q\);

-- Location: LCCOMB_X12_Y11_N6
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Equal9~0_combout\ & (!byte_index(4) & (!\Add6~1_combout\ & \Add6~0_combout\))) # (!\Equal9~0_combout\ & ((byte_index(4) & (\Add6~1_combout\ $ (!\Add6~0_combout\))) # (!byte_index(4) & (\Add6~1_combout\ & !\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => byte_index(4),
	datac => \Add6~1_combout\,
	datad => \Add6~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X10_Y11_N0
\Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (!byte_index(1) & (\out_ready~input_o\ & (\in_valid~input_o\ & byte_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => \out_ready~input_o\,
	datac => \in_valid~input_o\,
	datad => byte_index(0),
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X12_Y11_N2
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = \Equal9~1_combout\ $ (((\Add6~2_combout\ & (!\Add6~1_combout\ & \Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \Equal9~1_combout\,
	datac => \Add6~1_combout\,
	datad => \Add6~0_combout\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X12_Y11_N16
\Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Selector3~3_combout\ & (!\Equal12~0_combout\ & (byte_index(3) $ (!\Add6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => \Selector3~3_combout\,
	datac => \Add6~1_combout\,
	datad => \Equal12~0_combout\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X11_Y11_N22
\Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (\Selector3~2_combout\ & (\Selector3~4_combout\ & \next_state~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datac => \Selector3~4_combout\,
	datad => \next_state~6_combout\,
	combout => \Selector3~6_combout\);

-- Location: LCCOMB_X11_Y11_N28
\Selector3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~8_combout\ = (\Selector3~5_combout\ & (\s_state.IP_HEADER~q\ & ((!\Equal5~0_combout\) # (!\Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Equal5~0_combout\,
	datac => \Selector3~5_combout\,
	datad => \s_state.IP_HEADER~q\,
	combout => \Selector3~8_combout\);

-- Location: LCCOMB_X11_Y11_N0
\Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~7_combout\ = (\Selector3~6_combout\ & (\next_state~7_combout\ & ((\Selector3~8_combout\)))) # (!\Selector3~6_combout\ & ((\s_state.UDP_HEADER~q\) # ((\next_state~7_combout\ & \Selector3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~6_combout\,
	datab => \next_state~7_combout\,
	datac => \s_state.UDP_HEADER~q\,
	datad => \Selector3~8_combout\,
	combout => \Selector3~7_combout\);

-- Location: FF_X11_Y11_N1
\s_state.UDP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~7_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.UDP_HEADER~q\);

-- Location: LCCOMB_X11_Y11_N18
\byte_index[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~56_combout\ = (\s_state.IP_HEADER~q\) # ((\s_state.ETHERNET_HEADER~q\) # ((\s_state.DATA~q\) # (\s_state.UDP_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \s_state.DATA~q\,
	datad => \s_state.UDP_HEADER~q\,
	combout => \byte_index[0]~56_combout\);

-- Location: LCCOMB_X12_Y11_N14
\Equal10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~8_combout\ = \Equal9~0_combout\ $ (((ip_header_length(4) & (!ip_header_length(3) & !ip_header_length(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(4),
	datab => ip_header_length(3),
	datac => ip_header_length(2),
	datad => \Equal9~0_combout\,
	combout => \Equal10~8_combout\);

-- Location: LCCOMB_X12_Y11_N12
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (ip_header_length(4) & (!ip_header_length(2) & (ip_header_length(5) & !ip_header_length(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(4),
	datab => ip_header_length(2),
	datac => ip_header_length(5),
	datad => ip_header_length(3),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X12_Y11_N20
\Equal10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (\Add3~0_combout\ & (\Equal9~1_combout\ & (byte_index(4) $ (ip_header_length(4))))) # (!\Add3~0_combout\ & (!\Equal9~1_combout\ & (byte_index(4) $ (ip_header_length(4)))))

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
	combout => \Equal10~5_combout\);

-- Location: LCCOMB_X12_Y11_N4
\Equal10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (byte_index(3) & (ip_header_length(3) & (ip_header_length(2) $ (!byte_index(2))))) # (!byte_index(3) & (!ip_header_length(3) & (ip_header_length(2) $ (!byte_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => ip_header_length(3),
	datac => ip_header_length(2),
	datad => byte_index(2),
	combout => \Equal10~4_combout\);

-- Location: LCCOMB_X13_Y11_N12
\Equal10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = (!\Equal10~8_combout\ & (\Equal10~5_combout\ & (\Equal10~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~8_combout\,
	datab => \Equal10~5_combout\,
	datac => \Equal10~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal10~6_combout\);

-- Location: LCCOMB_X10_Y11_N30
\udp_length[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[16]~0_combout\ = (\reset~input_o\) # ((!byte_index(1) & (byte_index(0) & \Equal10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(0),
	datac => \Equal10~6_combout\,
	datad => \reset~input_o\,
	combout => \udp_length[16]~0_combout\);

-- Location: LCCOMB_X10_Y9_N0
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\in_data[0]~input_o\ & (udp_length(0) $ (VCC))) # (!\in_data[0]~input_o\ & (udp_length(0) & VCC))
-- \Add5~1\ = CARRY((\in_data[0]~input_o\ & udp_length(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datab => udp_length(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X9_Y9_N14
\udp_length~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~30_combout\ = (\Add5~0_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~0_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~30_combout\);

-- Location: LCCOMB_X10_Y11_N24
\udp_length[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[16]~2_combout\ = (byte_index(1) $ (!byte_index(0))) # (!\Equal10~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datac => \Equal10~6_combout\,
	datad => byte_index(0),
	combout => \udp_length[16]~2_combout\);

-- Location: LCCOMB_X11_Y11_N8
\udp_length[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[16]~3_combout\ = (\reset~input_o\) # ((!\udp_length[16]~2_combout\ & (\PROCES1~0_combout\ & \s_state.UDP_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \udp_length[16]~2_combout\,
	datac => \PROCES1~0_combout\,
	datad => \s_state.UDP_HEADER~q\,
	combout => \udp_length[16]~3_combout\);

-- Location: FF_X11_Y9_N17
\udp_length[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~30_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(0));

-- Location: LCCOMB_X10_Y9_N2
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (udp_length(1) & ((\in_data[1]~input_o\ & (\Add5~1\ & VCC)) # (!\in_data[1]~input_o\ & (!\Add5~1\)))) # (!udp_length(1) & ((\in_data[1]~input_o\ & (!\Add5~1\)) # (!\in_data[1]~input_o\ & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((udp_length(1) & (!\in_data[1]~input_o\ & !\Add5~1\)) # (!udp_length(1) & ((!\Add5~1\) # (!\in_data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(1),
	datab => \in_data[1]~input_o\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X9_Y9_N28
\udp_length~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~29_combout\ = (\Add5~2_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~29_combout\);

-- Location: FF_X11_Y9_N21
\udp_length[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~29_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(1));

-- Location: LCCOMB_X10_Y9_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((udp_length(2) $ (\in_data[2]~input_o\ $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((udp_length(2) & ((\in_data[2]~input_o\) # (!\Add5~3\))) # (!udp_length(2) & (\in_data[2]~input_o\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(2),
	datab => \in_data[2]~input_o\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X9_Y9_N10
\udp_length~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~28_combout\ = (\Add5~4_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~28_combout\);

-- Location: FF_X11_Y9_N3
\udp_length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~28_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(2));

-- Location: LCCOMB_X10_Y9_N6
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\in_data[3]~input_o\ & ((udp_length(3) & (\Add5~5\ & VCC)) # (!udp_length(3) & (!\Add5~5\)))) # (!\in_data[3]~input_o\ & ((udp_length(3) & (!\Add5~5\)) # (!udp_length(3) & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((\in_data[3]~input_o\ & (!udp_length(3) & !\Add5~5\)) # (!\in_data[3]~input_o\ & ((!\Add5~5\) # (!udp_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => udp_length(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X9_Y9_N24
\udp_length~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~27_combout\ = (\Add5~6_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~27_combout\);

-- Location: FF_X11_Y9_N13
\udp_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~27_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(3));

-- Location: LCCOMB_X10_Y9_N8
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((\in_data[4]~input_o\ $ (udp_length(4) $ (!\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((\in_data[4]~input_o\ & ((udp_length(4)) # (!\Add5~7\))) # (!\in_data[4]~input_o\ & (udp_length(4) & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => udp_length(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X9_Y9_N30
\udp_length~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~26_combout\ = (\Add5~8_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~8_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~26_combout\);

-- Location: FF_X11_Y9_N19
\udp_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~26_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(4));

-- Location: LCCOMB_X10_Y9_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\in_data[5]~input_o\ & ((udp_length(5) & (\Add5~9\ & VCC)) # (!udp_length(5) & (!\Add5~9\)))) # (!\in_data[5]~input_o\ & ((udp_length(5) & (!\Add5~9\)) # (!udp_length(5) & ((\Add5~9\) # (GND)))))
-- \Add5~11\ = CARRY((\in_data[5]~input_o\ & (!udp_length(5) & !\Add5~9\)) # (!\in_data[5]~input_o\ & ((!\Add5~9\) # (!udp_length(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[5]~input_o\,
	datab => udp_length(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X9_Y9_N20
\udp_length~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~25_combout\ = (\Add5~10_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~10_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~25_combout\);

-- Location: FF_X11_Y9_N15
\udp_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~25_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(5));

-- Location: LCCOMB_X10_Y9_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = ((udp_length(6) $ (\in_data[6]~input_o\ $ (!\Add5~11\)))) # (GND)
-- \Add5~13\ = CARRY((udp_length(6) & ((\in_data[6]~input_o\) # (!\Add5~11\))) # (!udp_length(6) & (\in_data[6]~input_o\ & !\Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(6),
	datab => \in_data[6]~input_o\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X9_Y9_N18
\udp_length~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~24_combout\ = (\Add5~12_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~12_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~24_combout\);

-- Location: FF_X11_Y9_N5
\udp_length[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~24_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(6));

-- Location: LCCOMB_X10_Y9_N14
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (udp_length(7) & ((\in_data[7]~input_o\ & (\Add5~13\ & VCC)) # (!\in_data[7]~input_o\ & (!\Add5~13\)))) # (!udp_length(7) & ((\in_data[7]~input_o\ & (!\Add5~13\)) # (!\in_data[7]~input_o\ & ((\Add5~13\) # (GND)))))
-- \Add5~15\ = CARRY((udp_length(7) & (!\in_data[7]~input_o\ & !\Add5~13\)) # (!udp_length(7) & ((!\Add5~13\) # (!\in_data[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(7),
	datab => \in_data[7]~input_o\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X9_Y9_N12
\udp_length~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~23_combout\ = (\Add5~14_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~14_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~23_combout\);

-- Location: FF_X11_Y9_N23
\udp_length[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~23_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(7));

-- Location: LCCOMB_X10_Y9_N16
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (udp_length(8) & (\Add5~15\ $ (GND))) # (!udp_length(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((udp_length(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X10_Y11_N26
\Equal10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~7_combout\ = (!byte_index(1) & (\Equal10~6_combout\ & byte_index(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datac => \Equal10~6_combout\,
	datad => byte_index(0),
	combout => \Equal10~7_combout\);

-- Location: LCCOMB_X9_Y9_N26
\udp_length~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~22_combout\ = (\Equal10~7_combout\ & (\in_data[0]~input_o\)) # (!\Equal10~7_combout\ & ((\Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datac => \Add5~16_combout\,
	datad => \Equal10~7_combout\,
	combout => \udp_length~22_combout\);

-- Location: FF_X10_Y9_N11
\udp_length[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~22_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(8));

-- Location: LCCOMB_X10_Y9_N18
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (udp_length(9) & (!\Add5~17\)) # (!udp_length(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!udp_length(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X8_Y9_N18
\udp_length~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~21_combout\ = (\Equal10~7_combout\ & (\in_data[1]~input_o\)) # (!\Equal10~7_combout\ & ((\Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datac => \Add5~18_combout\,
	datad => \Equal10~7_combout\,
	combout => \udp_length~21_combout\);

-- Location: FF_X10_Y9_N25
\udp_length[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~21_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(9));

-- Location: LCCOMB_X10_Y9_N20
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (udp_length(10) & (\Add5~19\ $ (GND))) # (!udp_length(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((udp_length(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X9_Y9_N0
\udp_length~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~20_combout\ = (\Equal10~7_combout\ & ((\in_data[2]~input_o\))) # (!\Equal10~7_combout\ & (\Add5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~20_combout\,
	datab => \in_data[2]~input_o\,
	datad => \Equal10~7_combout\,
	combout => \udp_length~20_combout\);

-- Location: FF_X10_Y9_N13
\udp_length[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~20_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(10));

-- Location: LCCOMB_X10_Y9_N22
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (udp_length(11) & (!\Add5~21\)) # (!udp_length(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!udp_length(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X9_Y9_N6
\udp_length~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~19_combout\ = (\Equal10~7_combout\ & (\in_data[3]~input_o\)) # (!\Equal10~7_combout\ & ((\Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \Add5~22_combout\,
	datad => \Equal10~7_combout\,
	combout => \udp_length~19_combout\);

-- Location: FF_X10_Y9_N15
\udp_length[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~19_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(11));

-- Location: LCCOMB_X10_Y9_N24
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (udp_length(12) & (\Add5~23\ $ (GND))) # (!udp_length(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((udp_length(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X9_Y9_N16
\udp_length~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~18_combout\ = (\Equal10~7_combout\ & ((\in_data[4]~input_o\))) # (!\Equal10~7_combout\ & (\Add5~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datac => \in_data[4]~input_o\,
	datad => \Equal10~7_combout\,
	combout => \udp_length~18_combout\);

-- Location: FF_X10_Y9_N5
\udp_length[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~18_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(12));

-- Location: LCCOMB_X10_Y9_N26
\Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (udp_length(13) & (!\Add5~25\)) # (!udp_length(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!udp_length(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X8_Y9_N24
\udp_length~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~17_combout\ = (\Equal10~7_combout\ & (\in_data[5]~input_o\)) # (!\Equal10~7_combout\ & ((\Add5~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[5]~input_o\,
	datac => \Add5~26_combout\,
	datad => \Equal10~7_combout\,
	combout => \udp_length~17_combout\);

-- Location: FF_X10_Y9_N17
\udp_length[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~17_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(13));

-- Location: LCCOMB_X10_Y9_N28
\Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (udp_length(14) & (\Add5~27\ $ (GND))) # (!udp_length(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((udp_length(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X9_Y9_N2
\udp_length~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~16_combout\ = (\Equal10~7_combout\ & (\in_data[6]~input_o\)) # (!\Equal10~7_combout\ & ((\Add5~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[6]~input_o\,
	datab => \Add5~28_combout\,
	datad => \Equal10~7_combout\,
	combout => \udp_length~16_combout\);

-- Location: FF_X10_Y9_N3
\udp_length[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~16_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(14));

-- Location: LCCOMB_X10_Y9_N30
\Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (udp_length(15) & (!\Add5~29\)) # (!udp_length(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!udp_length(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X9_Y9_N4
\udp_length~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~15_combout\ = (\Equal10~7_combout\ & ((\in_data[7]~input_o\))) # (!\Equal10~7_combout\ & (\Add5~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~30_combout\,
	datab => \in_data[7]~input_o\,
	datad => \Equal10~7_combout\,
	combout => \udp_length~15_combout\);

-- Location: FF_X10_Y9_N31
\udp_length[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~15_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(15));

-- Location: LCCOMB_X10_Y8_N0
\Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (udp_length(16) & (\Add5~31\ $ (GND))) # (!udp_length(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((udp_length(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X9_Y8_N30
\udp_length~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~14_combout\ = (\Add5~32_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~32_combout\,
	datac => \udp_length[16]~0_combout\,
	combout => \udp_length~14_combout\);

-- Location: FF_X11_Y8_N19
\udp_length[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~14_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(16));

-- Location: LCCOMB_X10_Y8_N2
\Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (udp_length(17) & (!\Add5~33\)) # (!udp_length(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!udp_length(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X9_Y9_N22
\udp_length~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~13_combout\ = (\Add5~34_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~34_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~13_combout\);

-- Location: FF_X11_Y8_N5
\udp_length[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~13_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(17));

-- Location: LCCOMB_X10_Y8_N4
\Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (udp_length(18) & (\Add5~35\ $ (GND))) # (!udp_length(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((udp_length(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X9_Y9_N8
\udp_length~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~12_combout\ = (\Add5~36_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~36_combout\,
	datad => \udp_length[16]~0_combout\,
	combout => \udp_length~12_combout\);

-- Location: FF_X11_Y8_N23
\udp_length[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~12_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(18));

-- Location: LCCOMB_X10_Y8_N6
\Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (udp_length(19) & (!\Add5~37\)) # (!udp_length(19) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!udp_length(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(19),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X9_Y8_N24
\udp_length~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~11_combout\ = (!\udp_length[16]~0_combout\ & \Add5~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udp_length[16]~0_combout\,
	datad => \Add5~38_combout\,
	combout => \udp_length~11_combout\);

-- Location: FF_X11_Y8_N21
\udp_length[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~11_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(19));

-- Location: LCCOMB_X10_Y8_N8
\Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (udp_length(20) & (\Add5~39\ $ (GND))) # (!udp_length(20) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((udp_length(20) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(20),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X9_Y8_N14
\udp_length~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~10_combout\ = (\Add5~40_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~40_combout\,
	datac => \udp_length[16]~0_combout\,
	combout => \udp_length~10_combout\);

-- Location: FF_X11_Y8_N25
\udp_length[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~10_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(20));

-- Location: LCCOMB_X10_Y8_N10
\Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (udp_length(21) & (!\Add5~41\)) # (!udp_length(21) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!udp_length(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(21),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X9_Y8_N28
\udp_length~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~9_combout\ = (\Add5~42_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~42_combout\,
	datac => \udp_length[16]~0_combout\,
	combout => \udp_length~9_combout\);

-- Location: FF_X11_Y8_N17
\udp_length[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~9_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(21));

-- Location: LCCOMB_X10_Y8_N12
\Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (udp_length(22) & (\Add5~43\ $ (GND))) # (!udp_length(22) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((udp_length(22) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(22),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X9_Y8_N26
\udp_length~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~8_combout\ = (\Add5~44_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~44_combout\,
	datac => \udp_length[16]~0_combout\,
	combout => \udp_length~8_combout\);

-- Location: FF_X11_Y8_N27
\udp_length[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~8_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(22));

-- Location: LCCOMB_X10_Y8_N14
\Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (udp_length(23) & (!\Add5~45\)) # (!udp_length(23) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!udp_length(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(23),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X9_Y8_N12
\udp_length~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~7_combout\ = (\Add5~46_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~46_combout\,
	datac => \udp_length[16]~0_combout\,
	combout => \udp_length~7_combout\);

-- Location: FF_X11_Y8_N31
\udp_length[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~7_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(23));

-- Location: LCCOMB_X10_Y8_N16
\Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (udp_length(24) & (\Add5~47\ $ (GND))) # (!udp_length(24) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((udp_length(24) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(24),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: LCCOMB_X9_Y8_N22
\udp_length~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~6_combout\ = (!\udp_length[16]~0_combout\ & \Add5~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udp_length[16]~0_combout\,
	datad => \Add5~48_combout\,
	combout => \udp_length~6_combout\);

-- Location: FF_X11_Y8_N7
\udp_length[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~6_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(24));

-- Location: LCCOMB_X10_Y8_N18
\Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (udp_length(25) & (!\Add5~49\)) # (!udp_length(25) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!udp_length(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(25),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: LCCOMB_X9_Y8_N8
\udp_length~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~5_combout\ = (!\udp_length[16]~0_combout\ & \Add5~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udp_length[16]~0_combout\,
	datad => \Add5~50_combout\,
	combout => \udp_length~5_combout\);

-- Location: FF_X11_Y8_N1
\udp_length[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~5_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(25));

-- Location: LCCOMB_X10_Y8_N20
\Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (udp_length(26) & (\Add5~51\ $ (GND))) # (!udp_length(26) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((udp_length(26) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(26),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: LCCOMB_X9_Y8_N2
\udp_length~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~4_combout\ = (\Add5~52_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~52_combout\,
	datac => \udp_length[16]~0_combout\,
	combout => \udp_length~4_combout\);

-- Location: FF_X11_Y8_N15
\udp_length[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~4_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(26));

-- Location: LCCOMB_X11_Y9_N0
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

-- Location: LCCOMB_X11_Y9_N2
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (udp_length(1) & (!\Add9~1\)) # (!udp_length(1) & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!udp_length(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X11_Y9_N4
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((ip_header_length(2) $ (udp_length(2) $ (\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((ip_header_length(2) & (udp_length(2) & !\Add9~3\)) # (!ip_header_length(2) & ((udp_length(2)) # (!\Add9~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datab => udp_length(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X11_Y9_N6
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (udp_length(3) & ((\Add6~1_combout\ & (!\Add9~5\)) # (!\Add6~1_combout\ & (\Add9~5\ & VCC)))) # (!udp_length(3) & ((\Add6~1_combout\ & ((\Add9~5\) # (GND))) # (!\Add6~1_combout\ & (!\Add9~5\))))
-- \Add9~7\ = CARRY((udp_length(3) & (\Add6~1_combout\ & !\Add9~5\)) # (!udp_length(3) & ((\Add6~1_combout\) # (!\Add9~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(3),
	datab => \Add6~1_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X11_Y9_N8
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((\Add6~0_combout\ $ (udp_length(4) $ (!\Add9~7\)))) # (GND)
-- \Add9~9\ = CARRY((\Add6~0_combout\ & ((udp_length(4)) # (!\Add9~7\))) # (!\Add6~0_combout\ & (udp_length(4) & !\Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => udp_length(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X11_Y9_N10
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (udp_length(5) & ((\Add6~2_combout\ & (\Add9~9\ & VCC)) # (!\Add6~2_combout\ & (!\Add9~9\)))) # (!udp_length(5) & ((\Add6~2_combout\ & (!\Add9~9\)) # (!\Add6~2_combout\ & ((\Add9~9\) # (GND)))))
-- \Add9~11\ = CARRY((udp_length(5) & (!\Add6~2_combout\ & !\Add9~9\)) # (!udp_length(5) & ((!\Add9~9\) # (!\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(5),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X11_Y9_N12
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = ((udp_length(6) $ (\Add6~3_combout\ $ (!\Add9~11\)))) # (GND)
-- \Add9~13\ = CARRY((udp_length(6) & ((\Add6~3_combout\) # (!\Add9~11\))) # (!udp_length(6) & (\Add6~3_combout\ & !\Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(6),
	datab => \Add6~3_combout\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X11_Y9_N14
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (udp_length(7) & (!\Add9~13\)) # (!udp_length(7) & ((\Add9~13\) # (GND)))
-- \Add9~15\ = CARRY((!\Add9~13\) # (!udp_length(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(7),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X11_Y9_N16
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (udp_length(8) & (\Add9~15\ $ (GND))) # (!udp_length(8) & (!\Add9~15\ & VCC))
-- \Add9~17\ = CARRY((udp_length(8) & !\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X11_Y9_N18
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

-- Location: LCCOMB_X11_Y9_N20
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

-- Location: LCCOMB_X11_Y9_N22
\Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (udp_length(11) & (!\Add9~21\)) # (!udp_length(11) & ((\Add9~21\) # (GND)))
-- \Add9~23\ = CARRY((!\Add9~21\) # (!udp_length(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(11),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X11_Y9_N24
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

-- Location: LCCOMB_X11_Y9_N26
\Add9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (udp_length(13) & (!\Add9~25\)) # (!udp_length(13) & ((\Add9~25\) # (GND)))
-- \Add9~27\ = CARRY((!\Add9~25\) # (!udp_length(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(13),
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X11_Y9_N28
\Add9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = (udp_length(14) & (\Add9~27\ $ (GND))) # (!udp_length(14) & (!\Add9~27\ & VCC))
-- \Add9~29\ = CARRY((udp_length(14) & !\Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(14),
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X11_Y9_N30
\Add9~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (udp_length(15) & (!\Add9~29\)) # (!udp_length(15) & ((\Add9~29\) # (GND)))
-- \Add9~31\ = CARRY((!\Add9~29\) # (!udp_length(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(15),
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X11_Y8_N0
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

-- Location: LCCOMB_X11_Y8_N2
\Add9~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (udp_length(17) & (!\Add9~33\)) # (!udp_length(17) & ((\Add9~33\) # (GND)))
-- \Add9~35\ = CARRY((!\Add9~33\) # (!udp_length(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(17),
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: LCCOMB_X11_Y8_N4
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

-- Location: LCCOMB_X11_Y8_N6
\Add9~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (udp_length(19) & (!\Add9~37\)) # (!udp_length(19) & ((\Add9~37\) # (GND)))
-- \Add9~39\ = CARRY((!\Add9~37\) # (!udp_length(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(19),
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: LCCOMB_X11_Y8_N8
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

-- Location: LCCOMB_X11_Y8_N10
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

-- Location: LCCOMB_X11_Y8_N12
\Add9~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (udp_length(22) & (\Add9~43\ $ (GND))) # (!udp_length(22) & (!\Add9~43\ & VCC))
-- \Add9~45\ = CARRY((udp_length(22) & !\Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(22),
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: LCCOMB_X11_Y8_N14
\Add9~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (udp_length(23) & (!\Add9~45\)) # (!udp_length(23) & ((\Add9~45\) # (GND)))
-- \Add9~47\ = CARRY((!\Add9~45\) # (!udp_length(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(23),
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: LCCOMB_X11_Y8_N16
\Add9~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = (udp_length(24) & (\Add9~47\ $ (GND))) # (!udp_length(24) & (!\Add9~47\ & VCC))
-- \Add9~49\ = CARRY((udp_length(24) & !\Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(24),
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: LCCOMB_X11_Y8_N18
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

-- Location: LCCOMB_X11_Y8_N20
\Add9~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (udp_length(26) & (\Add9~51\ $ (GND))) # (!udp_length(26) & (!\Add9~51\ & VCC))
-- \Add9~53\ = CARRY((udp_length(26) & !\Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(26),
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: LCCOMB_X14_Y9_N0
\Add8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~1_cout\ = CARRY(\Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~0_combout\,
	datad => VCC,
	cout => \Add8~1_cout\);

-- Location: LCCOMB_X14_Y9_N2
\Add8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~3_cout\ = CARRY((!\Add9~2_combout\ & !\Add8~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datad => VCC,
	cin => \Add8~1_cout\,
	cout => \Add8~3_cout\);

-- Location: LCCOMB_X14_Y9_N4
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Add9~4_combout\ & ((GND) # (!\Add8~3_cout\))) # (!\Add9~4_combout\ & (\Add8~3_cout\ $ (GND)))
-- \Add8~5\ = CARRY((\Add9~4_combout\) # (!\Add8~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~4_combout\,
	datad => VCC,
	cin => \Add8~3_cout\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X14_Y9_N6
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add9~6_combout\ & (\Add8~5\ & VCC)) # (!\Add9~6_combout\ & (!\Add8~5\))
-- \Add8~7\ = CARRY((!\Add9~6_combout\ & !\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~6_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X14_Y9_N8
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add9~8_combout\ & ((GND) # (!\Add8~7\))) # (!\Add9~8_combout\ & (\Add8~7\ $ (GND)))
-- \Add8~9\ = CARRY((\Add9~8_combout\) # (!\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~8_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X14_Y9_N10
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add9~10_combout\ & (\Add8~9\ & VCC)) # (!\Add9~10_combout\ & (!\Add8~9\))
-- \Add8~11\ = CARRY((!\Add9~10_combout\ & !\Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~10_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X14_Y9_N12
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (\Add9~12_combout\ & ((GND) # (!\Add8~11\))) # (!\Add9~12_combout\ & (\Add8~11\ $ (GND)))
-- \Add8~13\ = CARRY((\Add9~12_combout\) # (!\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~12_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X14_Y9_N14
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\Add9~14_combout\ & (\Add8~13\ & VCC)) # (!\Add9~14_combout\ & (!\Add8~13\))
-- \Add8~15\ = CARRY((!\Add9~14_combout\ & !\Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X14_Y9_N16
\Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (\Add9~16_combout\ & ((GND) # (!\Add8~15\))) # (!\Add9~16_combout\ & (\Add8~15\ $ (GND)))
-- \Add8~17\ = CARRY((\Add9~16_combout\) # (!\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~16_combout\,
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X14_Y9_N18
\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (\Add9~18_combout\ & (\Add8~17\ & VCC)) # (!\Add9~18_combout\ & (!\Add8~17\))
-- \Add8~19\ = CARRY((!\Add9~18_combout\ & !\Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~18_combout\,
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X14_Y9_N20
\Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (\Add9~20_combout\ & ((GND) # (!\Add8~19\))) # (!\Add9~20_combout\ & (\Add8~19\ $ (GND)))
-- \Add8~21\ = CARRY((\Add9~20_combout\) # (!\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~20_combout\,
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: LCCOMB_X14_Y9_N22
\Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (\Add9~22_combout\ & (\Add8~21\ & VCC)) # (!\Add9~22_combout\ & (!\Add8~21\))
-- \Add8~23\ = CARRY((!\Add9~22_combout\ & !\Add8~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~22_combout\,
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X14_Y9_N24
\Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (\Add9~24_combout\ & ((GND) # (!\Add8~23\))) # (!\Add9~24_combout\ & (\Add8~23\ $ (GND)))
-- \Add8~25\ = CARRY((\Add9~24_combout\) # (!\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~24_combout\,
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: LCCOMB_X14_Y9_N26
\Add8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (\Add9~26_combout\ & (\Add8~25\ & VCC)) # (!\Add9~26_combout\ & (!\Add8~25\))
-- \Add8~27\ = CARRY((!\Add9~26_combout\ & !\Add8~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~26_combout\,
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

-- Location: LCCOMB_X14_Y9_N28
\Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = (\Add9~28_combout\ & ((GND) # (!\Add8~27\))) # (!\Add9~28_combout\ & (\Add8~27\ $ (GND)))
-- \Add8~29\ = CARRY((\Add9~28_combout\) # (!\Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~28_combout\,
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

-- Location: LCCOMB_X14_Y9_N30
\Add8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = (\Add9~30_combout\ & (\Add8~29\ & VCC)) # (!\Add9~30_combout\ & (!\Add8~29\))
-- \Add8~31\ = CARRY((!\Add9~30_combout\ & !\Add8~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~30_combout\,
	datad => VCC,
	cin => \Add8~29\,
	combout => \Add8~30_combout\,
	cout => \Add8~31\);

-- Location: LCCOMB_X14_Y8_N0
\Add8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = (\Add9~32_combout\ & ((GND) # (!\Add8~31\))) # (!\Add9~32_combout\ & (\Add8~31\ $ (GND)))
-- \Add8~33\ = CARRY((\Add9~32_combout\) # (!\Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~32_combout\,
	datad => VCC,
	cin => \Add8~31\,
	combout => \Add8~32_combout\,
	cout => \Add8~33\);

-- Location: LCCOMB_X14_Y8_N2
\Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (\Add9~34_combout\ & (\Add8~33\ & VCC)) # (!\Add9~34_combout\ & (!\Add8~33\))
-- \Add8~35\ = CARRY((!\Add9~34_combout\ & !\Add8~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~34_combout\,
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

-- Location: LCCOMB_X14_Y8_N4
\Add8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = (\Add9~36_combout\ & ((GND) # (!\Add8~35\))) # (!\Add9~36_combout\ & (\Add8~35\ $ (GND)))
-- \Add8~37\ = CARRY((\Add9~36_combout\) # (!\Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~36_combout\,
	datad => VCC,
	cin => \Add8~35\,
	combout => \Add8~36_combout\,
	cout => \Add8~37\);

-- Location: LCCOMB_X14_Y8_N6
\Add8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~38_combout\ = (\Add9~38_combout\ & (\Add8~37\ & VCC)) # (!\Add9~38_combout\ & (!\Add8~37\))
-- \Add8~39\ = CARRY((!\Add9~38_combout\ & !\Add8~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~38_combout\,
	datad => VCC,
	cin => \Add8~37\,
	combout => \Add8~38_combout\,
	cout => \Add8~39\);

-- Location: LCCOMB_X14_Y8_N8
\Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~40_combout\ = (\Add9~40_combout\ & ((GND) # (!\Add8~39\))) # (!\Add9~40_combout\ & (\Add8~39\ $ (GND)))
-- \Add8~41\ = CARRY((\Add9~40_combout\) # (!\Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~40_combout\,
	datad => VCC,
	cin => \Add8~39\,
	combout => \Add8~40_combout\,
	cout => \Add8~41\);

-- Location: LCCOMB_X14_Y8_N10
\Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~42_combout\ = (\Add9~42_combout\ & (\Add8~41\ & VCC)) # (!\Add9~42_combout\ & (!\Add8~41\))
-- \Add8~43\ = CARRY((!\Add9~42_combout\ & !\Add8~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~42_combout\,
	datad => VCC,
	cin => \Add8~41\,
	combout => \Add8~42_combout\,
	cout => \Add8~43\);

-- Location: LCCOMB_X14_Y8_N12
\Add8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~44_combout\ = (\Add9~44_combout\ & ((GND) # (!\Add8~43\))) # (!\Add9~44_combout\ & (\Add8~43\ $ (GND)))
-- \Add8~45\ = CARRY((\Add9~44_combout\) # (!\Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~44_combout\,
	datad => VCC,
	cin => \Add8~43\,
	combout => \Add8~44_combout\,
	cout => \Add8~45\);

-- Location: LCCOMB_X14_Y8_N14
\Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~46_combout\ = (\Add9~46_combout\ & (\Add8~45\ & VCC)) # (!\Add9~46_combout\ & (!\Add8~45\))
-- \Add8~47\ = CARRY((!\Add9~46_combout\ & !\Add8~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~46_combout\,
	datad => VCC,
	cin => \Add8~45\,
	combout => \Add8~46_combout\,
	cout => \Add8~47\);

-- Location: LCCOMB_X14_Y8_N16
\Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~48_combout\ = (\Add9~48_combout\ & ((GND) # (!\Add8~47\))) # (!\Add9~48_combout\ & (\Add8~47\ $ (GND)))
-- \Add8~49\ = CARRY((\Add9~48_combout\) # (!\Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~48_combout\,
	datad => VCC,
	cin => \Add8~47\,
	combout => \Add8~48_combout\,
	cout => \Add8~49\);

-- Location: LCCOMB_X14_Y8_N18
\Add8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~50_combout\ = (\Add9~50_combout\ & (\Add8~49\ & VCC)) # (!\Add9~50_combout\ & (!\Add8~49\))
-- \Add8~51\ = CARRY((!\Add9~50_combout\ & !\Add8~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~50_combout\,
	datad => VCC,
	cin => \Add8~49\,
	combout => \Add8~50_combout\,
	cout => \Add8~51\);

-- Location: LCCOMB_X14_Y8_N20
\Add8~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~52_combout\ = (\Add9~52_combout\ & ((GND) # (!\Add8~51\))) # (!\Add9~52_combout\ & (\Add8~51\ $ (GND)))
-- \Add8~53\ = CARRY((\Add9~52_combout\) # (!\Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~52_combout\,
	datad => VCC,
	cin => \Add8~51\,
	combout => \Add8~52_combout\,
	cout => \Add8~53\);

-- Location: LCCOMB_X10_Y8_N22
\Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (udp_length(27) & (!\Add5~53\)) # (!udp_length(27) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!udp_length(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(27),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X9_Y8_N16
\udp_length~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~1_combout\ = (!\udp_length[16]~0_combout\ & \Add5~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udp_length[16]~0_combout\,
	datad => \Add5~54_combout\,
	combout => \udp_length~1_combout\);

-- Location: FF_X11_Y8_N13
\udp_length[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~1_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(27));

-- Location: LCCOMB_X11_Y8_N22
\Add9~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (udp_length(27) & (!\Add9~53\)) # (!udp_length(27) & ((\Add9~53\) # (GND)))
-- \Add9~55\ = CARRY((!\Add9~53\) # (!udp_length(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(27),
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: LCCOMB_X14_Y8_N22
\Add8~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~54_combout\ = (\Add9~54_combout\ & (\Add8~53\ & VCC)) # (!\Add9~54_combout\ & (!\Add8~53\))
-- \Add8~55\ = CARRY((!\Add9~54_combout\ & !\Add8~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~54_combout\,
	datad => VCC,
	cin => \Add8~53\,
	combout => \Add8~54_combout\,
	cout => \Add8~55\);

-- Location: LCCOMB_X14_Y10_N6
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (byte_index(26) & (\Add8~52_combout\ & (\Add8~54_combout\ $ (!byte_index(27))))) # (!byte_index(26) & (!\Add8~52_combout\ & (\Add8~54_combout\ $ (!byte_index(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(26),
	datab => \Add8~52_combout\,
	datac => \Add8~54_combout\,
	datad => byte_index(27),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X10_Y8_N24
\Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (udp_length(28) & (\Add5~55\ $ (GND))) # (!udp_length(28) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((udp_length(28) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(28),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: LCCOMB_X9_Y8_N4
\udp_length~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~31_combout\ = (!\udp_length[16]~0_combout\ & \Add5~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udp_length[16]~0_combout\,
	datad => \Add5~56_combout\,
	combout => \udp_length~31_combout\);

-- Location: FF_X10_Y8_N11
\udp_length[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~31_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(28));

-- Location: LCCOMB_X10_Y8_N26
\Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (udp_length(29) & (!\Add5~57\)) # (!udp_length(29) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!udp_length(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(29),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X9_Y8_N0
\udp_length~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~33_combout\ = (!\udp_length[16]~0_combout\ & \Add5~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udp_length[16]~0_combout\,
	datad => \Add5~58_combout\,
	combout => \udp_length~33_combout\);

-- Location: FF_X10_Y8_N15
\udp_length[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~33_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(29));

-- Location: LCCOMB_X10_Y8_N28
\Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = (udp_length(30) & (\Add5~59\ $ (GND))) # (!udp_length(30) & (!\Add5~59\ & VCC))
-- \Add5~61\ = CARRY((udp_length(30) & !\Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(30),
	datad => VCC,
	cin => \Add5~59\,
	combout => \Add5~60_combout\,
	cout => \Add5~61\);

-- Location: LCCOMB_X9_Y8_N18
\udp_length~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~32_combout\ = (!\udp_length[16]~0_combout\ & \Add5~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \udp_length[16]~0_combout\,
	datad => \Add5~60_combout\,
	combout => \udp_length~32_combout\);

-- Location: FF_X10_Y8_N5
\udp_length[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~32_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(30));

-- Location: LCCOMB_X11_Y8_N24
\Add9~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = (udp_length(28) & (\Add9~55\ $ (GND))) # (!udp_length(28) & (!\Add9~55\ & VCC))
-- \Add9~57\ = CARRY((udp_length(28) & !\Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(28),
	datad => VCC,
	cin => \Add9~55\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: LCCOMB_X11_Y8_N26
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

-- Location: LCCOMB_X11_Y8_N28
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

-- Location: LCCOMB_X14_Y8_N24
\Add8~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~56_combout\ = (\Add9~56_combout\ & ((GND) # (!\Add8~55\))) # (!\Add9~56_combout\ & (\Add8~55\ $ (GND)))
-- \Add8~57\ = CARRY((\Add9~56_combout\) # (!\Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~56_combout\,
	datad => VCC,
	cin => \Add8~55\,
	combout => \Add8~56_combout\,
	cout => \Add8~57\);

-- Location: LCCOMB_X14_Y8_N26
\Add8~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~58_combout\ = (\Add9~58_combout\ & (\Add8~57\ & VCC)) # (!\Add9~58_combout\ & (!\Add8~57\))
-- \Add8~59\ = CARRY((!\Add9~58_combout\ & !\Add8~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~58_combout\,
	datad => VCC,
	cin => \Add8~57\,
	combout => \Add8~58_combout\,
	cout => \Add8~59\);

-- Location: LCCOMB_X14_Y8_N28
\Add8~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~60_combout\ = (\Add9~60_combout\ & ((GND) # (!\Add8~59\))) # (!\Add9~60_combout\ & (\Add8~59\ $ (GND)))
-- \Add8~61\ = CARRY((\Add9~60_combout\) # (!\Add8~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~60_combout\,
	datad => VCC,
	cin => \Add8~59\,
	combout => \Add8~60_combout\,
	cout => \Add8~61\);

-- Location: LCCOMB_X14_Y10_N14
\Equal13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~12_combout\ = (\Add8~60_combout\ & (byte_index(30) & (byte_index(29) $ (!\Add8~58_combout\)))) # (!\Add8~60_combout\ & (!byte_index(30) & (byte_index(29) $ (!\Add8~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~60_combout\,
	datab => byte_index(29),
	datac => byte_index(30),
	datad => \Add8~58_combout\,
	combout => \Equal13~12_combout\);

-- Location: LCCOMB_X13_Y9_N30
\Equal13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (byte_index(6) & (\Add8~12_combout\ & (byte_index(7) $ (!\Add8~14_combout\)))) # (!byte_index(6) & (!\Add8~12_combout\ & (byte_index(7) $ (!\Add8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => byte_index(7),
	datac => \Add8~12_combout\,
	datad => \Add8~14_combout\,
	combout => \Equal13~4_combout\);

-- Location: LCCOMB_X13_Y9_N16
\Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (udp_length(0) & (byte_index(0) & (byte_index(1) $ (!udp_length(1))))) # (!udp_length(0) & (!byte_index(0) & (byte_index(1) $ (!udp_length(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(0),
	datab => byte_index(1),
	datac => byte_index(0),
	datad => udp_length(1),
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X13_Y9_N14
\Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (\Add8~4_combout\ & (byte_index(2) & (byte_index(3) $ (!\Add8~6_combout\)))) # (!\Add8~4_combout\ & (!byte_index(2) & (byte_index(3) $ (!\Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => byte_index(2),
	datac => byte_index(3),
	datad => \Add8~6_combout\,
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X13_Y9_N28
\Equal13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = (byte_index(4) & (\Add8~8_combout\ & (byte_index(5) $ (!\Add8~10_combout\)))) # (!byte_index(4) & (!\Add8~8_combout\ & (byte_index(5) $ (!\Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(5),
	datac => \Add8~10_combout\,
	datad => \Add8~8_combout\,
	combout => \Equal13~3_combout\);

-- Location: LCCOMB_X13_Y9_N8
\Equal13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = (\Equal13~4_combout\ & (\Equal13~1_combout\ & (\Equal13~2_combout\ & \Equal13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~4_combout\,
	datab => \Equal13~1_combout\,
	datac => \Equal13~2_combout\,
	datad => \Equal13~3_combout\,
	combout => \Equal13~5_combout\);

-- Location: LCCOMB_X13_Y10_N14
\Equal13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~7_combout\ = (byte_index(11) & (\Add8~22_combout\ & (byte_index(10) $ (!\Add8~20_combout\)))) # (!byte_index(11) & (!\Add8~22_combout\ & (byte_index(10) $ (!\Add8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => \Add8~22_combout\,
	datac => byte_index(10),
	datad => \Add8~20_combout\,
	combout => \Equal13~7_combout\);

-- Location: LCCOMB_X14_Y10_N8
\Equal13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~9_combout\ = (byte_index(15) & (\Add8~30_combout\ & (byte_index(14) $ (!\Add8~28_combout\)))) # (!byte_index(15) & (!\Add8~30_combout\ & (byte_index(14) $ (!\Add8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datab => byte_index(14),
	datac => \Add8~28_combout\,
	datad => \Add8~30_combout\,
	combout => \Equal13~9_combout\);

-- Location: LCCOMB_X13_Y10_N4
\Equal13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = (byte_index(8) & (\Add8~16_combout\ & (byte_index(9) $ (!\Add8~18_combout\)))) # (!byte_index(8) & (!\Add8~16_combout\ & (byte_index(9) $ (!\Add8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(8),
	datab => byte_index(9),
	datac => \Add8~18_combout\,
	datad => \Add8~16_combout\,
	combout => \Equal13~6_combout\);

-- Location: LCCOMB_X13_Y10_N20
\Equal13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~8_combout\ = (byte_index(13) & (\Add8~26_combout\ & (byte_index(12) $ (!\Add8~24_combout\)))) # (!byte_index(13) & (!\Add8~26_combout\ & (byte_index(12) $ (!\Add8~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datab => byte_index(12),
	datac => \Add8~26_combout\,
	datad => \Add8~24_combout\,
	combout => \Equal13~8_combout\);

-- Location: LCCOMB_X14_Y10_N26
\Equal13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~10_combout\ = (\Equal13~7_combout\ & (\Equal13~9_combout\ & (\Equal13~6_combout\ & \Equal13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~7_combout\,
	datab => \Equal13~9_combout\,
	datac => \Equal13~6_combout\,
	datad => \Equal13~8_combout\,
	combout => \Equal13~10_combout\);

-- Location: LCCOMB_X14_Y10_N4
\Equal13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~11_combout\ = (\Equal13~5_combout\ & (\Equal13~10_combout\ & (byte_index(28) $ (!\Add8~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~5_combout\,
	datab => byte_index(28),
	datac => \Equal13~10_combout\,
	datad => \Add8~56_combout\,
	combout => \Equal13~11_combout\);

-- Location: LCCOMB_X10_Y8_N30
\Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~62_combout\ = \Add5~61\ $ (udp_length(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => udp_length(31),
	cin => \Add5~61\,
	combout => \Add5~62_combout\);

-- Location: LCCOMB_X9_Y8_N6
\udp_length~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~34_combout\ = (\Add5~62_combout\ & !\udp_length[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~62_combout\,
	datac => \udp_length[16]~0_combout\,
	combout => \udp_length~34_combout\);

-- Location: FF_X10_Y8_N7
\udp_length[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~34_combout\,
	sload => VCC,
	ena => \udp_length[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(31));

-- Location: LCCOMB_X11_Y8_N30
\Add9~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = udp_length(31) $ (\Add9~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(31),
	cin => \Add9~61\,
	combout => \Add9~62_combout\);

-- Location: LCCOMB_X14_Y8_N30
\Add8~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~62_combout\ = \Add8~61\ $ (!\Add9~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add9~62_combout\,
	cin => \Add8~61\,
	combout => \Add8~62_combout\);

-- Location: LCCOMB_X13_Y8_N26
\Equal13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~13_combout\ = (byte_index(17) & (\Add8~34_combout\ & (byte_index(16) $ (!\Add8~32_combout\)))) # (!byte_index(17) & (!\Add8~34_combout\ & (byte_index(16) $ (!\Add8~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => \Add8~32_combout\,
	datad => \Add8~34_combout\,
	combout => \Equal13~13_combout\);

-- Location: LCCOMB_X13_Y8_N24
\Equal13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~14_combout\ = (byte_index(19) & (\Add8~38_combout\ & (byte_index(18) $ (!\Add8~36_combout\)))) # (!byte_index(19) & (!\Add8~38_combout\ & (byte_index(18) $ (!\Add8~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datab => byte_index(18),
	datac => \Add8~36_combout\,
	datad => \Add8~38_combout\,
	combout => \Equal13~14_combout\);

-- Location: LCCOMB_X13_Y8_N14
\Equal13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~15_combout\ = (byte_index(21) & (\Add8~42_combout\ & (byte_index(20) $ (!\Add8~40_combout\)))) # (!byte_index(21) & (!\Add8~42_combout\ & (byte_index(20) $ (!\Add8~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => byte_index(20),
	datac => \Add8~42_combout\,
	datad => \Add8~40_combout\,
	combout => \Equal13~15_combout\);

-- Location: LCCOMB_X13_Y8_N0
\Equal13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~16_combout\ = (byte_index(23) & (\Add8~46_combout\ & (\Add8~44_combout\ $ (!byte_index(22))))) # (!byte_index(23) & (!\Add8~46_combout\ & (\Add8~44_combout\ $ (!byte_index(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(23),
	datab => \Add8~44_combout\,
	datac => \Add8~46_combout\,
	datad => byte_index(22),
	combout => \Equal13~16_combout\);

-- Location: LCCOMB_X13_Y8_N18
\Equal13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~17_combout\ = (\Equal13~13_combout\ & (\Equal13~14_combout\ & (\Equal13~15_combout\ & \Equal13~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~13_combout\,
	datab => \Equal13~14_combout\,
	datac => \Equal13~15_combout\,
	datad => \Equal13~16_combout\,
	combout => \Equal13~17_combout\);

-- Location: LCCOMB_X14_Y10_N28
\Equal13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~18_combout\ = (byte_index(24) & (\Add8~48_combout\ & (byte_index(25) $ (!\Add8~50_combout\)))) # (!byte_index(24) & (!\Add8~48_combout\ & (byte_index(25) $ (!\Add8~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(24),
	datab => byte_index(25),
	datac => \Add8~50_combout\,
	datad => \Add8~48_combout\,
	combout => \Equal13~18_combout\);

-- Location: LCCOMB_X14_Y10_N2
\Equal13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~19_combout\ = (\Equal13~17_combout\ & (\Equal13~18_combout\ & (byte_index(31) $ (!\Add8~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => \Add8~62_combout\,
	datac => \Equal13~17_combout\,
	datad => \Equal13~18_combout\,
	combout => \Equal13~19_combout\);

-- Location: LCCOMB_X14_Y10_N12
\Equal13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~20_combout\ = (\Equal13~0_combout\ & (\Equal13~12_combout\ & (\Equal13~11_combout\ & \Equal13~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal13~12_combout\,
	datac => \Equal13~11_combout\,
	datad => \Equal13~19_combout\,
	combout => \Equal13~20_combout\);

-- Location: LCCOMB_X14_Y10_N18
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\in_valid~input_o\ & (\s_state.DATA~q\ & (\Equal14~20_combout\ & \out_ready~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \s_state.DATA~q\,
	datac => \Equal14~20_combout\,
	datad => \out_ready~input_o\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X12_Y9_N0
\Add10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~1_cout\ = CARRY(\Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datad => VCC,
	cout => \Add10~1_cout\);

-- Location: LCCOMB_X12_Y9_N2
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

-- Location: LCCOMB_X12_Y9_N4
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

-- Location: LCCOMB_X12_Y9_N6
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Add9~6_combout\ & (!\Add10~5\)) # (!\Add9~6_combout\ & ((\Add10~5\) # (GND)))
-- \Add10~7\ = CARRY((!\Add10~5\) # (!\Add9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~6_combout\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X12_Y9_N8
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\Add9~8_combout\ & (\Add10~7\ $ (GND))) # (!\Add9~8_combout\ & (!\Add10~7\ & VCC))
-- \Add10~9\ = CARRY((\Add9~8_combout\ & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X12_Y9_N10
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\Add9~10_combout\ & (!\Add10~9\)) # (!\Add9~10_combout\ & ((\Add10~9\) # (GND)))
-- \Add10~11\ = CARRY((!\Add10~9\) # (!\Add9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X12_Y9_N12
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (\Add9~12_combout\ & (\Add10~11\ $ (GND))) # (!\Add9~12_combout\ & (!\Add10~11\ & VCC))
-- \Add10~13\ = CARRY((\Add9~12_combout\ & !\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~12_combout\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X12_Y9_N14
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (\Add9~14_combout\ & (!\Add10~13\)) # (!\Add9~14_combout\ & ((\Add10~13\) # (GND)))
-- \Add10~15\ = CARRY((!\Add10~13\) # (!\Add9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X12_Y9_N16
\Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = (\Add9~16_combout\ & (\Add10~15\ $ (GND))) # (!\Add9~16_combout\ & (!\Add10~15\ & VCC))
-- \Add10~17\ = CARRY((\Add9~16_combout\ & !\Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~16_combout\,
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X12_Y9_N18
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

-- Location: LCCOMB_X12_Y9_N20
\Add10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = (\Add9~20_combout\ & (\Add10~19\ $ (GND))) # (!\Add9~20_combout\ & (!\Add10~19\ & VCC))
-- \Add10~21\ = CARRY((\Add9~20_combout\ & !\Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~20_combout\,
	datad => VCC,
	cin => \Add10~19\,
	combout => \Add10~20_combout\,
	cout => \Add10~21\);

-- Location: LCCOMB_X12_Y9_N22
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

-- Location: LCCOMB_X12_Y9_N24
\Add10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~24_combout\ = (\Add9~24_combout\ & (\Add10~23\ $ (GND))) # (!\Add9~24_combout\ & (!\Add10~23\ & VCC))
-- \Add10~25\ = CARRY((\Add9~24_combout\ & !\Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~24_combout\,
	datad => VCC,
	cin => \Add10~23\,
	combout => \Add10~24_combout\,
	cout => \Add10~25\);

-- Location: LCCOMB_X12_Y9_N26
\Add10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~26_combout\ = (\Add9~26_combout\ & (!\Add10~25\)) # (!\Add9~26_combout\ & ((\Add10~25\) # (GND)))
-- \Add10~27\ = CARRY((!\Add10~25\) # (!\Add9~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~26_combout\,
	datad => VCC,
	cin => \Add10~25\,
	combout => \Add10~26_combout\,
	cout => \Add10~27\);

-- Location: LCCOMB_X12_Y9_N28
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

-- Location: LCCOMB_X12_Y9_N30
\Add10~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~30_combout\ = (\Add9~30_combout\ & (!\Add10~29\)) # (!\Add9~30_combout\ & ((\Add10~29\) # (GND)))
-- \Add10~31\ = CARRY((!\Add10~29\) # (!\Add9~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~30_combout\,
	datad => VCC,
	cin => \Add10~29\,
	combout => \Add10~30_combout\,
	cout => \Add10~31\);

-- Location: LCCOMB_X12_Y8_N0
\Add10~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~32_combout\ = (\Add9~32_combout\ & (\Add10~31\ $ (GND))) # (!\Add9~32_combout\ & (!\Add10~31\ & VCC))
-- \Add10~33\ = CARRY((\Add9~32_combout\ & !\Add10~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~32_combout\,
	datad => VCC,
	cin => \Add10~31\,
	combout => \Add10~32_combout\,
	cout => \Add10~33\);

-- Location: LCCOMB_X12_Y8_N2
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

-- Location: LCCOMB_X13_Y8_N6
\Equal15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~13_combout\ = (byte_index(17) & (\Add10~34_combout\ & (byte_index(16) $ (!\Add10~32_combout\)))) # (!byte_index(17) & (!\Add10~34_combout\ & (byte_index(16) $ (!\Add10~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => \Add10~32_combout\,
	datad => \Add10~34_combout\,
	combout => \Equal15~13_combout\);

-- Location: LCCOMB_X12_Y8_N4
\Add10~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~36_combout\ = (\Add9~36_combout\ & (\Add10~35\ $ (GND))) # (!\Add9~36_combout\ & (!\Add10~35\ & VCC))
-- \Add10~37\ = CARRY((\Add9~36_combout\ & !\Add10~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~36_combout\,
	datad => VCC,
	cin => \Add10~35\,
	combout => \Add10~36_combout\,
	cout => \Add10~37\);

-- Location: LCCOMB_X12_Y8_N6
\Add10~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~38_combout\ = (\Add9~38_combout\ & (!\Add10~37\)) # (!\Add9~38_combout\ & ((\Add10~37\) # (GND)))
-- \Add10~39\ = CARRY((!\Add10~37\) # (!\Add9~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~38_combout\,
	datad => VCC,
	cin => \Add10~37\,
	combout => \Add10~38_combout\,
	cout => \Add10~39\);

-- Location: LCCOMB_X13_Y8_N4
\Equal15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~14_combout\ = (byte_index(19) & (\Add10~38_combout\ & (\Add10~36_combout\ $ (!byte_index(18))))) # (!byte_index(19) & (!\Add10~38_combout\ & (\Add10~36_combout\ $ (!byte_index(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datab => \Add10~38_combout\,
	datac => \Add10~36_combout\,
	datad => byte_index(18),
	combout => \Equal15~14_combout\);

-- Location: LCCOMB_X12_Y8_N8
\Add10~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~40_combout\ = (\Add9~40_combout\ & (\Add10~39\ $ (GND))) # (!\Add9~40_combout\ & (!\Add10~39\ & VCC))
-- \Add10~41\ = CARRY((\Add9~40_combout\ & !\Add10~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~40_combout\,
	datad => VCC,
	cin => \Add10~39\,
	combout => \Add10~40_combout\,
	cout => \Add10~41\);

-- Location: LCCOMB_X12_Y8_N10
\Add10~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~42_combout\ = (\Add9~42_combout\ & (!\Add10~41\)) # (!\Add9~42_combout\ & ((\Add10~41\) # (GND)))
-- \Add10~43\ = CARRY((!\Add10~41\) # (!\Add9~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~42_combout\,
	datad => VCC,
	cin => \Add10~41\,
	combout => \Add10~42_combout\,
	cout => \Add10~43\);

-- Location: LCCOMB_X13_Y8_N30
\Equal15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~15_combout\ = (\Add10~40_combout\ & (byte_index(20) & (byte_index(21) $ (!\Add10~42_combout\)))) # (!\Add10~40_combout\ & (!byte_index(20) & (byte_index(21) $ (!\Add10~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~40_combout\,
	datab => byte_index(21),
	datac => byte_index(20),
	datad => \Add10~42_combout\,
	combout => \Equal15~15_combout\);

-- Location: LCCOMB_X12_Y8_N12
\Add10~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~44_combout\ = (\Add9~44_combout\ & (\Add10~43\ $ (GND))) # (!\Add9~44_combout\ & (!\Add10~43\ & VCC))
-- \Add10~45\ = CARRY((\Add9~44_combout\ & !\Add10~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~44_combout\,
	datad => VCC,
	cin => \Add10~43\,
	combout => \Add10~44_combout\,
	cout => \Add10~45\);

-- Location: LCCOMB_X12_Y8_N14
\Add10~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~46_combout\ = (\Add9~46_combout\ & (!\Add10~45\)) # (!\Add9~46_combout\ & ((\Add10~45\) # (GND)))
-- \Add10~47\ = CARRY((!\Add10~45\) # (!\Add9~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~46_combout\,
	datad => VCC,
	cin => \Add10~45\,
	combout => \Add10~46_combout\,
	cout => \Add10~47\);

-- Location: LCCOMB_X13_Y8_N20
\Equal15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~16_combout\ = (\Add10~44_combout\ & (byte_index(22) & (byte_index(23) $ (!\Add10~46_combout\)))) # (!\Add10~44_combout\ & (!byte_index(22) & (byte_index(23) $ (!\Add10~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~44_combout\,
	datab => byte_index(23),
	datac => byte_index(22),
	datad => \Add10~46_combout\,
	combout => \Equal15~16_combout\);

-- Location: LCCOMB_X13_Y8_N2
\Equal15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~17_combout\ = (\Equal15~13_combout\ & (\Equal15~14_combout\ & (\Equal15~15_combout\ & \Equal15~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~13_combout\,
	datab => \Equal15~14_combout\,
	datac => \Equal15~15_combout\,
	datad => \Equal15~16_combout\,
	combout => \Equal15~17_combout\);

-- Location: LCCOMB_X13_Y9_N18
\Equal15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~5_combout\ = byte_index(6) $ (\Add10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(6),
	datad => \Add10~12_combout\,
	combout => \Equal15~5_combout\);

-- Location: LCCOMB_X13_Y9_N4
\Equal15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~4_combout\ = (\Add10~8_combout\ & (byte_index(4) & (byte_index(5) $ (!\Add10~10_combout\)))) # (!\Add10~8_combout\ & (!byte_index(4) & (byte_index(5) $ (!\Add10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => byte_index(5),
	datac => byte_index(4),
	datad => \Add10~10_combout\,
	combout => \Equal15~4_combout\);

-- Location: LCCOMB_X13_Y9_N0
\Equal15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~6_combout\ = (!\Equal15~5_combout\ & (\Equal15~4_combout\ & (byte_index(7) $ (!\Add10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(7),
	datab => \Equal15~5_combout\,
	datac => \Equal15~4_combout\,
	datad => \Add10~14_combout\,
	combout => \Equal15~6_combout\);

-- Location: LCCOMB_X13_Y9_N6
\Equal15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~3_combout\ = (byte_index(3) & (\Add10~6_combout\ & (\Add10~4_combout\ $ (!byte_index(2))))) # (!byte_index(3) & (!\Add10~6_combout\ & (\Add10~4_combout\ $ (!byte_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => \Add10~4_combout\,
	datac => \Add10~6_combout\,
	datad => byte_index(2),
	combout => \Equal15~3_combout\);

-- Location: LCCOMB_X13_Y10_N6
\Equal15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~7_combout\ = (byte_index(8) & (\Add10~16_combout\ & (byte_index(9) $ (!\Add10~18_combout\)))) # (!byte_index(8) & (!\Add10~16_combout\ & (byte_index(9) $ (!\Add10~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(8),
	datab => byte_index(9),
	datac => \Add10~18_combout\,
	datad => \Add10~16_combout\,
	combout => \Equal15~7_combout\);

-- Location: LCCOMB_X13_Y10_N8
\Equal15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~8_combout\ = (byte_index(11) & (\Add10~22_combout\ & (byte_index(10) $ (!\Add10~20_combout\)))) # (!byte_index(11) & (!\Add10~22_combout\ & (byte_index(10) $ (!\Add10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => \Add10~22_combout\,
	datac => byte_index(10),
	datad => \Add10~20_combout\,
	combout => \Equal15~8_combout\);

-- Location: LCCOMB_X13_Y10_N30
\Equal15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~9_combout\ = (byte_index(13) & (\Add10~26_combout\ & (byte_index(12) $ (!\Add10~24_combout\)))) # (!byte_index(13) & (!\Add10~26_combout\ & (byte_index(12) $ (!\Add10~24_combout\))))

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
	combout => \Equal15~9_combout\);

-- Location: LCCOMB_X13_Y10_N24
\Equal15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~10_combout\ = (\Add10~30_combout\ & (byte_index(15) & (byte_index(14) $ (!\Add10~28_combout\)))) # (!\Add10~30_combout\ & (!byte_index(15) & (byte_index(14) $ (!\Add10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~30_combout\,
	datab => byte_index(15),
	datac => byte_index(14),
	datad => \Add10~28_combout\,
	combout => \Equal15~10_combout\);

-- Location: LCCOMB_X13_Y10_N22
\Equal15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~11_combout\ = (\Equal15~7_combout\ & (\Equal15~8_combout\ & (\Equal15~9_combout\ & \Equal15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datab => \Equal15~8_combout\,
	datac => \Equal15~9_combout\,
	datad => \Equal15~10_combout\,
	combout => \Equal15~11_combout\);

-- Location: LCCOMB_X12_Y10_N8
\Equal15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~12_combout\ = (\Equal15~6_combout\ & (\Equal13~1_combout\ & (\Equal15~3_combout\ & \Equal15~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~6_combout\,
	datab => \Equal13~1_combout\,
	datac => \Equal15~3_combout\,
	datad => \Equal15~11_combout\,
	combout => \Equal15~12_combout\);

-- Location: LCCOMB_X12_Y8_N16
\Add10~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~48_combout\ = (\Add9~48_combout\ & (\Add10~47\ $ (GND))) # (!\Add9~48_combout\ & (!\Add10~47\ & VCC))
-- \Add10~49\ = CARRY((\Add9~48_combout\ & !\Add10~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~48_combout\,
	datad => VCC,
	cin => \Add10~47\,
	combout => \Add10~48_combout\,
	cout => \Add10~49\);

-- Location: LCCOMB_X12_Y8_N18
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

-- Location: LCCOMB_X12_Y8_N20
\Add10~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~52_combout\ = (\Add9~52_combout\ & (\Add10~51\ $ (GND))) # (!\Add9~52_combout\ & (!\Add10~51\ & VCC))
-- \Add10~53\ = CARRY((\Add9~52_combout\ & !\Add10~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~52_combout\,
	datad => VCC,
	cin => \Add10~51\,
	combout => \Add10~52_combout\,
	cout => \Add10~53\);

-- Location: LCCOMB_X12_Y8_N22
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

-- Location: LCCOMB_X12_Y8_N24
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

-- Location: LCCOMB_X12_Y8_N26
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

-- Location: LCCOMB_X12_Y10_N20
\Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (byte_index(29) & (\Add10~58_combout\ & (byte_index(28) $ (!\Add10~56_combout\)))) # (!byte_index(29) & (!\Add10~58_combout\ & (byte_index(28) $ (!\Add10~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datab => byte_index(28),
	datac => \Add10~58_combout\,
	datad => \Add10~56_combout\,
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X12_Y8_N28
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

-- Location: LCCOMB_X12_Y8_N30
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

-- Location: LCCOMB_X12_Y10_N14
\Equal15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~18_combout\ = (byte_index(24) & (\Add10~48_combout\ & (byte_index(25) $ (!\Add10~50_combout\)))) # (!byte_index(24) & (!\Add10~48_combout\ & (byte_index(25) $ (!\Add10~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(24),
	datab => byte_index(25),
	datac => \Add10~50_combout\,
	datad => \Add10~48_combout\,
	combout => \Equal15~18_combout\);

-- Location: LCCOMB_X12_Y10_N10
\Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (byte_index(27) & (\Add10~54_combout\ & (byte_index(26) $ (!\Add10~52_combout\)))) # (!byte_index(27) & (!\Add10~54_combout\ & (byte_index(26) $ (!\Add10~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datab => byte_index(26),
	datac => \Add10~54_combout\,
	datad => \Add10~52_combout\,
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X12_Y10_N6
\Equal15~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~19_combout\ = (\Equal15~18_combout\ & (\Equal15~0_combout\ & (\Add10~60_combout\ $ (!byte_index(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~60_combout\,
	datab => byte_index(30),
	datac => \Equal15~18_combout\,
	datad => \Equal15~0_combout\,
	combout => \Equal15~19_combout\);

-- Location: LCCOMB_X12_Y10_N4
\Equal15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~20_combout\ = (\Equal15~1_combout\ & (\Equal15~19_combout\ & (byte_index(31) $ (!\Add10~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => \Equal15~1_combout\,
	datac => \Add10~62_combout\,
	datad => \Equal15~19_combout\,
	combout => \Equal15~20_combout\);

-- Location: LCCOMB_X14_Y10_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Equal15~17_combout\ & (\out_ready~input_o\ & (\Equal15~12_combout\ & \Equal15~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~17_combout\,
	datab => \out_ready~input_o\,
	datac => \Equal15~12_combout\,
	datad => \Equal15~20_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Equal13~20_combout\ & (((\s_state.CRC~q\ & !\Selector0~0_combout\)))) # (!\Equal13~20_combout\ & ((\Selector5~3_combout\) # ((\s_state.CRC~q\ & !\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~20_combout\,
	datab => \Selector5~3_combout\,
	datac => \s_state.CRC~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector5~2_combout\);

-- Location: FF_X14_Y10_N23
\s_state.CRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.CRC~q\);

-- Location: LCCOMB_X11_Y13_N2
\byte_index[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~57_combout\ = (!\s_state.CRC~q\ & (\Equal16~4_combout\ & \Equal16~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \Equal16~4_combout\,
	datad => \Equal16~9_combout\,
	combout => \byte_index[0]~57_combout\);

-- Location: LCCOMB_X11_Y13_N18
\byte_index[0]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~107_combout\ = (\out_ready~input_o\ & ((\in_valid~input_o\) # ((!\byte_index[0]~56_combout\)))) # (!\out_ready~input_o\ & (((\byte_index[0]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \out_ready~input_o\,
	datac => \byte_index[0]~56_combout\,
	datad => \byte_index[0]~57_combout\,
	combout => \byte_index[0]~107_combout\);

-- Location: LCCOMB_X11_Y13_N0
\byte_index[0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~58_combout\ = (\reset~input_o\) # ((\byte_index[0]~107_combout\ & ((\s_state.IDLE~q\) # (\in_startofpacket~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datab => \in_startofpacket~input_o\,
	datac => \reset~input_o\,
	datad => \byte_index[0]~107_combout\,
	combout => \byte_index[0]~58_combout\);

-- Location: FF_X12_Y12_N29
\byte_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[30]~103_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(30));

-- Location: LCCOMB_X12_Y12_N30
\byte_index[31]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~105_combout\ = byte_index(31) $ (\byte_index[30]~104\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	cin => \byte_index[30]~104\,
	combout => \byte_index[31]~105_combout\);

-- Location: FF_X12_Y12_N31
\byte_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[31]~105_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(31));

-- Location: LCCOMB_X13_Y11_N8
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!byte_index(25) & (!byte_index(23) & (!byte_index(24) & !byte_index(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(25),
	datab => byte_index(23),
	datac => byte_index(24),
	datad => byte_index(26),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X13_Y11_N22
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!byte_index(28) & (!byte_index(29) & (!byte_index(27) & !byte_index(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(28),
	datab => byte_index(29),
	datac => byte_index(27),
	datad => byte_index(30),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X13_Y11_N10
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

-- Location: LCCOMB_X13_Y11_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!byte_index(16) & (!byte_index(18) & (!byte_index(17) & !byte_index(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(16),
	datab => byte_index(18),
	datac => byte_index(17),
	datad => byte_index(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X13_Y8_N8
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!byte_index(21) & (!byte_index(19) & (!byte_index(22) & !byte_index(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => byte_index(19),
	datac => byte_index(22),
	datad => byte_index(20),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X13_Y11_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!byte_index(7) & (!byte_index(9) & (!byte_index(8) & !byte_index(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(7),
	datab => byte_index(9),
	datac => byte_index(8),
	datad => byte_index(10),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X13_Y11_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X13_Y11_N16
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!byte_index(31) & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X13_Y11_N14
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!byte_index(3) & (!byte_index(6) & (!byte_index(0) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(6),
	datac => byte_index(0),
	datad => \Equal0~7_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X11_Y11_N24
\s_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~10_combout\ = (\Equal5~1_combout\ & (!\Equal6~1_combout\ & (\Equal5~0_combout\ & \s_state.IP_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Equal6~1_combout\,
	datac => \Equal5~0_combout\,
	datad => \s_state.IP_HEADER~q\,
	combout => \s_state~10_combout\);

-- Location: LCCOMB_X11_Y10_N12
\s_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~11_combout\ = (\Selector2~0_combout\ & ((\in_data[3]~input_o\) # ((\Equal0~10_combout\) # (!\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \Equal3~1_combout\,
	datac => \Equal0~10_combout\,
	datad => \Selector2~0_combout\,
	combout => \s_state~11_combout\);

-- Location: LCCOMB_X11_Y10_N26
\s_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~15_combout\ = (\in_valid~input_o\ & (\out_ready~input_o\ & ((\s_state~10_combout\) # (\s_state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \s_state~10_combout\,
	datac => \out_ready~input_o\,
	datad => \s_state~11_combout\,
	combout => \s_state~15_combout\);

-- Location: LCCOMB_X12_Y10_N26
\s_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~12_combout\ = (\s_state~15_combout\) # ((\reset~input_o\) # ((!\in_startofpacket~input_o\ & !\s_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_startofpacket~input_o\,
	datab => \s_state.IDLE~q\,
	datac => \s_state~15_combout\,
	datad => \reset~input_o\,
	combout => \s_state~12_combout\);

-- Location: LCCOMB_X12_Y10_N16
\s_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~13_combout\ = (\out_ready~input_o\ & (\s_state.CRC~q\ & \Equal15~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \s_state.CRC~q\,
	datac => \Equal15~12_combout\,
	combout => \s_state~13_combout\);

-- Location: LCCOMB_X12_Y10_N28
\s_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~14_combout\ = (!\s_state~12_combout\ & (((!\s_state~13_combout\) # (!\Equal15~20_combout\)) # (!\Equal15~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~12_combout\,
	datab => \Equal15~17_combout\,
	datac => \Equal15~20_combout\,
	datad => \s_state~13_combout\,
	combout => \s_state~14_combout\);

-- Location: FF_X12_Y10_N29
\s_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IDLE~q\);

-- Location: LCCOMB_X12_Y10_N22
\byte_index[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~52_combout\ = (\reset~input_o\) # (!\s_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \s_state.IDLE~q\,
	combout => \byte_index[0]~52_combout\);

-- Location: LCCOMB_X11_Y10_N14
\byte_index[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~53_combout\ = (\Equal3~1_combout\ & ((\in_data[3]~input_o\ & ((\next_state~8_combout\))) # (!\in_data[3]~input_o\ & (\Equal0~10_combout\)))) # (!\Equal3~1_combout\ & (((\Equal0~10_combout\) # (\next_state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \Equal3~1_combout\,
	datac => \Equal0~10_combout\,
	datad => \next_state~8_combout\,
	combout => \byte_index[0]~53_combout\);

-- Location: LCCOMB_X11_Y10_N16
\byte_index[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~54_combout\ = (\s_state~10_combout\) # ((!\s_state.CRC~q\ & (\s_state.ETHERNET_HEADER~q\ & \byte_index[0]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \byte_index[0]~53_combout\,
	datad => \s_state~10_combout\,
	combout => \byte_index[0]~54_combout\);

-- Location: LCCOMB_X12_Y10_N30
\Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~2_combout\ = (byte_index(31) & (\Add10~62_combout\ & (byte_index(30) $ (!\Add10~60_combout\)))) # (!byte_index(31) & (!\Add10~62_combout\ & (byte_index(30) $ (!\Add10~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => byte_index(30),
	datac => \Add10~62_combout\,
	datad => \Add10~60_combout\,
	combout => \Equal15~2_combout\);

-- Location: LCCOMB_X12_Y10_N0
\byte_index[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~50_combout\ = (\s_state.CRC~q\ & (\Equal15~18_combout\ & (\Equal15~12_combout\ & \Equal15~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \Equal15~18_combout\,
	datac => \Equal15~12_combout\,
	datad => \Equal15~17_combout\,
	combout => \byte_index[0]~50_combout\);

-- Location: LCCOMB_X12_Y10_N18
\byte_index[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~51_combout\ = (\Equal15~0_combout\ & (\Equal15~1_combout\ & (\Equal15~2_combout\ & \byte_index[0]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~0_combout\,
	datab => \Equal15~1_combout\,
	datac => \Equal15~2_combout\,
	datad => \byte_index[0]~50_combout\,
	combout => \byte_index[0]~51_combout\);

-- Location: LCCOMB_X12_Y10_N12
\byte_index[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~55_combout\ = (\byte_index[0]~52_combout\) # ((\byte_index[0]~51_combout\) # ((\PROCES1~0_combout\ & \byte_index[0]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_index[0]~52_combout\,
	datab => \PROCES1~0_combout\,
	datac => \byte_index[0]~54_combout\,
	datad => \byte_index[0]~51_combout\,
	combout => \byte_index[0]~55_combout\);

-- Location: FF_X12_Y13_N1
\byte_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[0]~34_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(0));

-- Location: LCCOMB_X12_Y13_N2
\byte_index[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[1]~36_combout\ = (byte_index(1) & (!\byte_index[0]~35\)) # (!byte_index(1) & ((\byte_index[0]~35\) # (GND)))
-- \byte_index[1]~37\ = CARRY((!\byte_index[0]~35\) # (!byte_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datad => VCC,
	cin => \byte_index[0]~35\,
	combout => \byte_index[1]~36_combout\,
	cout => \byte_index[1]~37\);

-- Location: FF_X12_Y13_N3
\byte_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[1]~36_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(1));

-- Location: LCCOMB_X12_Y13_N4
\byte_index[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[2]~38_combout\ = (byte_index(2) & (\byte_index[1]~37\ $ (GND))) # (!byte_index(2) & (!\byte_index[1]~37\ & VCC))
-- \byte_index[2]~39\ = CARRY((byte_index(2) & !\byte_index[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(2),
	datad => VCC,
	cin => \byte_index[1]~37\,
	combout => \byte_index[2]~38_combout\,
	cout => \byte_index[2]~39\);

-- Location: FF_X12_Y13_N5
\byte_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[2]~38_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(2));

-- Location: LCCOMB_X12_Y13_N6
\byte_index[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[3]~40_combout\ = (byte_index(3) & (!\byte_index[2]~39\)) # (!byte_index(3) & ((\byte_index[2]~39\) # (GND)))
-- \byte_index[3]~41\ = CARRY((!\byte_index[2]~39\) # (!byte_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datad => VCC,
	cin => \byte_index[2]~39\,
	combout => \byte_index[3]~40_combout\,
	cout => \byte_index[3]~41\);

-- Location: FF_X12_Y13_N7
\byte_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[3]~40_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(3));

-- Location: LCCOMB_X12_Y13_N8
\byte_index[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[4]~42_combout\ = (byte_index(4) & (\byte_index[3]~41\ $ (GND))) # (!byte_index(4) & (!\byte_index[3]~41\ & VCC))
-- \byte_index[4]~43\ = CARRY((byte_index(4) & !\byte_index[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(4),
	datad => VCC,
	cin => \byte_index[3]~41\,
	combout => \byte_index[4]~42_combout\,
	cout => \byte_index[4]~43\);

-- Location: FF_X12_Y13_N9
\byte_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[4]~42_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(4));

-- Location: LCCOMB_X12_Y13_N10
\byte_index[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[5]~44_combout\ = (byte_index(5) & (!\byte_index[4]~43\)) # (!byte_index(5) & ((\byte_index[4]~43\) # (GND)))
-- \byte_index[5]~45\ = CARRY((!\byte_index[4]~43\) # (!byte_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datad => VCC,
	cin => \byte_index[4]~43\,
	combout => \byte_index[5]~44_combout\,
	cout => \byte_index[5]~45\);

-- Location: FF_X12_Y13_N11
\byte_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[5]~44_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(5));

-- Location: LCCOMB_X12_Y13_N12
\byte_index[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[6]~46_combout\ = (byte_index(6) & (\byte_index[5]~45\ $ (GND))) # (!byte_index(6) & (!\byte_index[5]~45\ & VCC))
-- \byte_index[6]~47\ = CARRY((byte_index(6) & !\byte_index[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datad => VCC,
	cin => \byte_index[5]~45\,
	combout => \byte_index[6]~46_combout\,
	cout => \byte_index[6]~47\);

-- Location: FF_X12_Y13_N13
\byte_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[6]~46_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(6));

-- Location: LCCOMB_X12_Y13_N14
\byte_index[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[7]~48_combout\ = (byte_index(7) & (!\byte_index[6]~47\)) # (!byte_index(7) & ((\byte_index[6]~47\) # (GND)))
-- \byte_index[7]~49\ = CARRY((!\byte_index[6]~47\) # (!byte_index(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(7),
	datad => VCC,
	cin => \byte_index[6]~47\,
	combout => \byte_index[7]~48_combout\,
	cout => \byte_index[7]~49\);

-- Location: FF_X12_Y13_N15
\byte_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[7]~48_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(7));

-- Location: LCCOMB_X12_Y13_N16
\byte_index[8]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[8]~59_combout\ = (byte_index(8) & (\byte_index[7]~49\ $ (GND))) # (!byte_index(8) & (!\byte_index[7]~49\ & VCC))
-- \byte_index[8]~60\ = CARRY((byte_index(8) & !\byte_index[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(8),
	datad => VCC,
	cin => \byte_index[7]~49\,
	combout => \byte_index[8]~59_combout\,
	cout => \byte_index[8]~60\);

-- Location: FF_X12_Y13_N17
\byte_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[8]~59_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(8));

-- Location: LCCOMB_X12_Y13_N18
\byte_index[9]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[9]~61_combout\ = (byte_index(9) & (!\byte_index[8]~60\)) # (!byte_index(9) & ((\byte_index[8]~60\) # (GND)))
-- \byte_index[9]~62\ = CARRY((!\byte_index[8]~60\) # (!byte_index(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(9),
	datad => VCC,
	cin => \byte_index[8]~60\,
	combout => \byte_index[9]~61_combout\,
	cout => \byte_index[9]~62\);

-- Location: FF_X12_Y13_N19
\byte_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[9]~61_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(9));

-- Location: LCCOMB_X12_Y13_N20
\byte_index[10]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[10]~63_combout\ = (byte_index(10) & (\byte_index[9]~62\ $ (GND))) # (!byte_index(10) & (!\byte_index[9]~62\ & VCC))
-- \byte_index[10]~64\ = CARRY((byte_index(10) & !\byte_index[9]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(10),
	datad => VCC,
	cin => \byte_index[9]~62\,
	combout => \byte_index[10]~63_combout\,
	cout => \byte_index[10]~64\);

-- Location: FF_X12_Y13_N21
\byte_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[10]~63_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(10));

-- Location: LCCOMB_X12_Y13_N22
\byte_index[11]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[11]~65_combout\ = (byte_index(11) & (!\byte_index[10]~64\)) # (!byte_index(11) & ((\byte_index[10]~64\) # (GND)))
-- \byte_index[11]~66\ = CARRY((!\byte_index[10]~64\) # (!byte_index(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datad => VCC,
	cin => \byte_index[10]~64\,
	combout => \byte_index[11]~65_combout\,
	cout => \byte_index[11]~66\);

-- Location: FF_X12_Y13_N23
\byte_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[11]~65_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(11));

-- Location: LCCOMB_X12_Y13_N24
\byte_index[12]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[12]~67_combout\ = (byte_index(12) & (\byte_index[11]~66\ $ (GND))) # (!byte_index(12) & (!\byte_index[11]~66\ & VCC))
-- \byte_index[12]~68\ = CARRY((byte_index(12) & !\byte_index[11]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(12),
	datad => VCC,
	cin => \byte_index[11]~66\,
	combout => \byte_index[12]~67_combout\,
	cout => \byte_index[12]~68\);

-- Location: FF_X12_Y13_N25
\byte_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[12]~67_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(12));

-- Location: LCCOMB_X12_Y13_N26
\byte_index[13]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[13]~69_combout\ = (byte_index(13) & (!\byte_index[12]~68\)) # (!byte_index(13) & ((\byte_index[12]~68\) # (GND)))
-- \byte_index[13]~70\ = CARRY((!\byte_index[12]~68\) # (!byte_index(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datad => VCC,
	cin => \byte_index[12]~68\,
	combout => \byte_index[13]~69_combout\,
	cout => \byte_index[13]~70\);

-- Location: FF_X12_Y13_N27
\byte_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[13]~69_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(13));

-- Location: LCCOMB_X12_Y13_N28
\byte_index[14]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[14]~71_combout\ = (byte_index(14) & (\byte_index[13]~70\ $ (GND))) # (!byte_index(14) & (!\byte_index[13]~70\ & VCC))
-- \byte_index[14]~72\ = CARRY((byte_index(14) & !\byte_index[13]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(14),
	datad => VCC,
	cin => \byte_index[13]~70\,
	combout => \byte_index[14]~71_combout\,
	cout => \byte_index[14]~72\);

-- Location: FF_X12_Y13_N29
\byte_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[14]~71_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(14));

-- Location: LCCOMB_X12_Y13_N30
\byte_index[15]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~73_combout\ = (byte_index(15) & (!\byte_index[14]~72\)) # (!byte_index(15) & ((\byte_index[14]~72\) # (GND)))
-- \byte_index[15]~74\ = CARRY((!\byte_index[14]~72\) # (!byte_index(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datad => VCC,
	cin => \byte_index[14]~72\,
	combout => \byte_index[15]~73_combout\,
	cout => \byte_index[15]~74\);

-- Location: FF_X12_Y13_N31
\byte_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[15]~73_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(15));

-- Location: LCCOMB_X12_Y12_N0
\byte_index[16]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[16]~75_combout\ = (byte_index(16) & (\byte_index[15]~74\ $ (GND))) # (!byte_index(16) & (!\byte_index[15]~74\ & VCC))
-- \byte_index[16]~76\ = CARRY((byte_index(16) & !\byte_index[15]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(16),
	datad => VCC,
	cin => \byte_index[15]~74\,
	combout => \byte_index[16]~75_combout\,
	cout => \byte_index[16]~76\);

-- Location: FF_X12_Y12_N1
\byte_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[16]~75_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(16));

-- Location: LCCOMB_X12_Y12_N2
\byte_index[17]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[17]~77_combout\ = (byte_index(17) & (!\byte_index[16]~76\)) # (!byte_index(17) & ((\byte_index[16]~76\) # (GND)))
-- \byte_index[17]~78\ = CARRY((!\byte_index[16]~76\) # (!byte_index(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(17),
	datad => VCC,
	cin => \byte_index[16]~76\,
	combout => \byte_index[17]~77_combout\,
	cout => \byte_index[17]~78\);

-- Location: FF_X12_Y12_N3
\byte_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[17]~77_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(17));

-- Location: LCCOMB_X12_Y12_N4
\byte_index[18]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[18]~79_combout\ = (byte_index(18) & (\byte_index[17]~78\ $ (GND))) # (!byte_index(18) & (!\byte_index[17]~78\ & VCC))
-- \byte_index[18]~80\ = CARRY((byte_index(18) & !\byte_index[17]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(18),
	datad => VCC,
	cin => \byte_index[17]~78\,
	combout => \byte_index[18]~79_combout\,
	cout => \byte_index[18]~80\);

-- Location: FF_X12_Y12_N5
\byte_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[18]~79_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(18));

-- Location: LCCOMB_X12_Y12_N6
\byte_index[19]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[19]~81_combout\ = (byte_index(19) & (!\byte_index[18]~80\)) # (!byte_index(19) & ((\byte_index[18]~80\) # (GND)))
-- \byte_index[19]~82\ = CARRY((!\byte_index[18]~80\) # (!byte_index(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datad => VCC,
	cin => \byte_index[18]~80\,
	combout => \byte_index[19]~81_combout\,
	cout => \byte_index[19]~82\);

-- Location: FF_X12_Y12_N7
\byte_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[19]~81_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(19));

-- Location: LCCOMB_X12_Y12_N8
\byte_index[20]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[20]~83_combout\ = (byte_index(20) & (\byte_index[19]~82\ $ (GND))) # (!byte_index(20) & (!\byte_index[19]~82\ & VCC))
-- \byte_index[20]~84\ = CARRY((byte_index(20) & !\byte_index[19]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(20),
	datad => VCC,
	cin => \byte_index[19]~82\,
	combout => \byte_index[20]~83_combout\,
	cout => \byte_index[20]~84\);

-- Location: FF_X12_Y12_N9
\byte_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[20]~83_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(20));

-- Location: LCCOMB_X12_Y12_N10
\byte_index[21]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[21]~85_combout\ = (byte_index(21) & (!\byte_index[20]~84\)) # (!byte_index(21) & ((\byte_index[20]~84\) # (GND)))
-- \byte_index[21]~86\ = CARRY((!\byte_index[20]~84\) # (!byte_index(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datad => VCC,
	cin => \byte_index[20]~84\,
	combout => \byte_index[21]~85_combout\,
	cout => \byte_index[21]~86\);

-- Location: FF_X12_Y12_N11
\byte_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[21]~85_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(21));

-- Location: LCCOMB_X12_Y12_N12
\byte_index[22]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[22]~87_combout\ = (byte_index(22) & (\byte_index[21]~86\ $ (GND))) # (!byte_index(22) & (!\byte_index[21]~86\ & VCC))
-- \byte_index[22]~88\ = CARRY((byte_index(22) & !\byte_index[21]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datad => VCC,
	cin => \byte_index[21]~86\,
	combout => \byte_index[22]~87_combout\,
	cout => \byte_index[22]~88\);

-- Location: FF_X12_Y12_N13
\byte_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[22]~87_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(22));

-- Location: LCCOMB_X12_Y12_N14
\byte_index[23]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[23]~89_combout\ = (byte_index(23) & (!\byte_index[22]~88\)) # (!byte_index(23) & ((\byte_index[22]~88\) # (GND)))
-- \byte_index[23]~90\ = CARRY((!\byte_index[22]~88\) # (!byte_index(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(23),
	datad => VCC,
	cin => \byte_index[22]~88\,
	combout => \byte_index[23]~89_combout\,
	cout => \byte_index[23]~90\);

-- Location: FF_X12_Y12_N15
\byte_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[23]~89_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(23));

-- Location: LCCOMB_X12_Y12_N16
\byte_index[24]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[24]~91_combout\ = (byte_index(24) & (\byte_index[23]~90\ $ (GND))) # (!byte_index(24) & (!\byte_index[23]~90\ & VCC))
-- \byte_index[24]~92\ = CARRY((byte_index(24) & !\byte_index[23]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(24),
	datad => VCC,
	cin => \byte_index[23]~90\,
	combout => \byte_index[24]~91_combout\,
	cout => \byte_index[24]~92\);

-- Location: FF_X12_Y12_N17
\byte_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[24]~91_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(24));

-- Location: LCCOMB_X12_Y12_N18
\byte_index[25]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[25]~93_combout\ = (byte_index(25) & (!\byte_index[24]~92\)) # (!byte_index(25) & ((\byte_index[24]~92\) # (GND)))
-- \byte_index[25]~94\ = CARRY((!\byte_index[24]~92\) # (!byte_index(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(25),
	datad => VCC,
	cin => \byte_index[24]~92\,
	combout => \byte_index[25]~93_combout\,
	cout => \byte_index[25]~94\);

-- Location: FF_X12_Y12_N19
\byte_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[25]~93_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(25));

-- Location: LCCOMB_X12_Y12_N20
\byte_index[26]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[26]~95_combout\ = (byte_index(26) & (\byte_index[25]~94\ $ (GND))) # (!byte_index(26) & (!\byte_index[25]~94\ & VCC))
-- \byte_index[26]~96\ = CARRY((byte_index(26) & !\byte_index[25]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(26),
	datad => VCC,
	cin => \byte_index[25]~94\,
	combout => \byte_index[26]~95_combout\,
	cout => \byte_index[26]~96\);

-- Location: FF_X12_Y12_N21
\byte_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[26]~95_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(26));

-- Location: LCCOMB_X12_Y12_N22
\byte_index[27]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~97_combout\ = (byte_index(27) & (!\byte_index[26]~96\)) # (!byte_index(27) & ((\byte_index[26]~96\) # (GND)))
-- \byte_index[27]~98\ = CARRY((!\byte_index[26]~96\) # (!byte_index(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datad => VCC,
	cin => \byte_index[26]~96\,
	combout => \byte_index[27]~97_combout\,
	cout => \byte_index[27]~98\);

-- Location: FF_X12_Y12_N23
\byte_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[27]~97_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(27));

-- Location: LCCOMB_X12_Y12_N24
\byte_index[28]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[28]~99_combout\ = (byte_index(28) & (\byte_index[27]~98\ $ (GND))) # (!byte_index(28) & (!\byte_index[27]~98\ & VCC))
-- \byte_index[28]~100\ = CARRY((byte_index(28) & !\byte_index[27]~98\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(28),
	datad => VCC,
	cin => \byte_index[27]~98\,
	combout => \byte_index[28]~99_combout\,
	cout => \byte_index[28]~100\);

-- Location: FF_X12_Y12_N25
\byte_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[28]~99_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(28));

-- Location: FF_X12_Y12_N27
\byte_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[29]~101_combout\,
	sclr => \byte_index[0]~55_combout\,
	ena => \byte_index[0]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(29));

-- Location: LCCOMB_X13_Y8_N10
\Equal14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~15_combout\ = (\Add9~46_combout\ & (byte_index(23) & (\Add9~44_combout\ $ (!byte_index(22))))) # (!\Add9~46_combout\ & (!byte_index(23) & (\Add9~44_combout\ $ (!byte_index(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~46_combout\,
	datab => byte_index(23),
	datac => \Add9~44_combout\,
	datad => byte_index(22),
	combout => \Equal14~15_combout\);

-- Location: LCCOMB_X13_Y8_N16
\Equal14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~14_combout\ = (byte_index(21) & (\Add9~42_combout\ & (\Add9~40_combout\ $ (!byte_index(20))))) # (!byte_index(21) & (!\Add9~42_combout\ & (\Add9~40_combout\ $ (!byte_index(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => \Add9~40_combout\,
	datac => byte_index(20),
	datad => \Add9~42_combout\,
	combout => \Equal14~14_combout\);

-- Location: LCCOMB_X13_Y8_N22
\Equal14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~13_combout\ = (byte_index(19) & (\Add9~38_combout\ & (\Add9~36_combout\ $ (!byte_index(18))))) # (!byte_index(19) & (!\Add9~38_combout\ & (\Add9~36_combout\ $ (!byte_index(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datab => \Add9~36_combout\,
	datac => \Add9~38_combout\,
	datad => byte_index(18),
	combout => \Equal14~13_combout\);

-- Location: LCCOMB_X13_Y8_N28
\Equal14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~12_combout\ = (byte_index(17) & (\Add9~34_combout\ & (byte_index(16) $ (!\Add9~32_combout\)))) # (!byte_index(17) & (!\Add9~34_combout\ & (byte_index(16) $ (!\Add9~32_combout\))))

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
	combout => \Equal14~12_combout\);

-- Location: LCCOMB_X13_Y8_N12
\Equal14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~16_combout\ = (\Equal14~15_combout\ & (\Equal14~14_combout\ & (\Equal14~13_combout\ & \Equal14~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~15_combout\,
	datab => \Equal14~14_combout\,
	datac => \Equal14~13_combout\,
	datad => \Equal14~12_combout\,
	combout => \Equal14~16_combout\);

-- Location: LCCOMB_X14_Y11_N12
\Equal14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~17_combout\ = (\Add9~48_combout\ & (byte_index(24) & (byte_index(25) $ (!\Add9~50_combout\)))) # (!\Add9~48_combout\ & (!byte_index(24) & (byte_index(25) $ (!\Add9~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~48_combout\,
	datab => byte_index(25),
	datac => byte_index(24),
	datad => \Add9~50_combout\,
	combout => \Equal14~17_combout\);

-- Location: LCCOMB_X14_Y11_N10
\Equal14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~18_combout\ = (\Equal14~16_combout\ & (\Equal14~17_combout\ & (byte_index(29) $ (!\Add9~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datab => \Equal14~16_combout\,
	datac => \Add9~58_combout\,
	datad => \Equal14~17_combout\,
	combout => \Equal14~18_combout\);

-- Location: LCCOMB_X14_Y11_N28
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (byte_index(27) & (\Add9~54_combout\ & (byte_index(26) $ (!\Add9~52_combout\)))) # (!byte_index(27) & (!\Add9~54_combout\ & (byte_index(26) $ (!\Add9~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datab => byte_index(26),
	datac => \Add9~54_combout\,
	datad => \Add9~52_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X14_Y11_N4
\Equal14~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~19_combout\ = (byte_index(31) & (\Add9~62_combout\ & (byte_index(30) $ (!\Add9~60_combout\)))) # (!byte_index(31) & (!\Add9~62_combout\ & (byte_index(30) $ (!\Add9~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => byte_index(30),
	datac => \Add9~60_combout\,
	datad => \Add9~62_combout\,
	combout => \Equal14~19_combout\);

-- Location: LCCOMB_X13_Y9_N22
\Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (\Add9~0_combout\ & (byte_index(0) & (\Add9~2_combout\ $ (!byte_index(1))))) # (!\Add9~0_combout\ & (!byte_index(0) & (\Add9~2_combout\ $ (!byte_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => byte_index(0),
	datac => \Add9~2_combout\,
	datad => byte_index(1),
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X13_Y9_N24
\Equal14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~2_combout\ = (byte_index(3) & (\Add9~6_combout\ & (byte_index(2) $ (!\Add9~4_combout\)))) # (!byte_index(3) & (!\Add9~6_combout\ & (byte_index(2) $ (!\Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(2),
	datac => \Add9~4_combout\,
	datad => \Add9~6_combout\,
	combout => \Equal14~2_combout\);

-- Location: LCCOMB_X13_Y9_N26
\Equal14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~3_combout\ = (byte_index(4) & (\Add9~8_combout\ & (byte_index(5) $ (!\Add9~10_combout\)))) # (!byte_index(4) & (!\Add9~8_combout\ & (byte_index(5) $ (!\Add9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(5),
	datac => \Add9~8_combout\,
	datad => \Add9~10_combout\,
	combout => \Equal14~3_combout\);

-- Location: LCCOMB_X13_Y9_N20
\Equal14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~4_combout\ = (byte_index(6) & (\Add9~12_combout\ & (\Add9~14_combout\ $ (!byte_index(7))))) # (!byte_index(6) & (!\Add9~12_combout\ & (\Add9~14_combout\ $ (!byte_index(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => \Add9~14_combout\,
	datac => \Add9~12_combout\,
	datad => byte_index(7),
	combout => \Equal14~4_combout\);

-- Location: LCCOMB_X13_Y9_N2
\Equal14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~5_combout\ = (\Equal14~1_combout\ & (\Equal14~2_combout\ & (\Equal14~3_combout\ & \Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~1_combout\,
	datab => \Equal14~2_combout\,
	datac => \Equal14~3_combout\,
	datad => \Equal14~4_combout\,
	combout => \Equal14~5_combout\);

-- Location: LCCOMB_X13_Y10_N10
\Equal14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~6_combout\ = (byte_index(8) & (\Add9~16_combout\ & (\Add9~18_combout\ $ (!byte_index(9))))) # (!byte_index(8) & (!\Add9~16_combout\ & (\Add9~18_combout\ $ (!byte_index(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(8),
	datab => \Add9~16_combout\,
	datac => \Add9~18_combout\,
	datad => byte_index(9),
	combout => \Equal14~6_combout\);

-- Location: LCCOMB_X13_Y10_N2
\Equal14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~9_combout\ = (byte_index(14) & (\Add9~28_combout\ & (byte_index(15) $ (!\Add9~30_combout\)))) # (!byte_index(14) & (!\Add9~28_combout\ & (byte_index(15) $ (!\Add9~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(14),
	datab => byte_index(15),
	datac => \Add9~28_combout\,
	datad => \Add9~30_combout\,
	combout => \Equal14~9_combout\);

-- Location: LCCOMB_X13_Y9_N12
\Equal14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~8_combout\ = (byte_index(12) & (\Add9~24_combout\ & (byte_index(13) $ (!\Add9~26_combout\)))) # (!byte_index(12) & (!\Add9~24_combout\ & (byte_index(13) $ (!\Add9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datab => byte_index(13),
	datac => \Add9~24_combout\,
	datad => \Add9~26_combout\,
	combout => \Equal14~8_combout\);

-- Location: LCCOMB_X13_Y10_N12
\Equal14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~7_combout\ = (\Add9~20_combout\ & (byte_index(10) & (byte_index(11) $ (!\Add9~22_combout\)))) # (!\Add9~20_combout\ & (!byte_index(10) & (byte_index(11) $ (!\Add9~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~20_combout\,
	datab => byte_index(10),
	datac => byte_index(11),
	datad => \Add9~22_combout\,
	combout => \Equal14~7_combout\);

-- Location: LCCOMB_X13_Y10_N28
\Equal14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~10_combout\ = (\Equal14~6_combout\ & (\Equal14~9_combout\ & (\Equal14~8_combout\ & \Equal14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~6_combout\,
	datab => \Equal14~9_combout\,
	datac => \Equal14~8_combout\,
	datad => \Equal14~7_combout\,
	combout => \Equal14~10_combout\);

-- Location: LCCOMB_X14_Y11_N18
\Equal14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~11_combout\ = (\Equal14~5_combout\ & (\Equal14~10_combout\ & (byte_index(28) $ (!\Add9~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~5_combout\,
	datab => byte_index(28),
	datac => \Add9~56_combout\,
	datad => \Equal14~10_combout\,
	combout => \Equal14~11_combout\);

-- Location: LCCOMB_X14_Y11_N30
\Equal14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~20_combout\ = (\Equal14~18_combout\ & (\Equal14~0_combout\ & (\Equal14~19_combout\ & \Equal14~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~18_combout\,
	datab => \Equal14~0_combout\,
	datac => \Equal14~19_combout\,
	datad => \Equal14~11_combout\,
	combout => \Equal14~20_combout\);

-- Location: LCCOMB_X11_Y11_N4
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector3~2_combout\ & (\s_state.UDP_HEADER~q\ & (\Selector3~4_combout\ & \next_state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \s_state.UDP_HEADER~q\,
	datac => \Selector3~4_combout\,
	datad => \next_state~6_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X14_Y10_N20
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\s_state.DATA~q\ & ((!\out_ready~input_o\) # (!\in_valid~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \s_state.DATA~q\,
	datac => \Selector4~0_combout\,
	datad => \out_ready~input_o\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X14_Y10_N24
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Selector4~1_combout\) # ((\s_state.DATA~q\ & ((\Equal13~20_combout\) # (!\Equal14~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~20_combout\,
	datab => \Selector4~1_combout\,
	datac => \s_state.DATA~q\,
	datad => \Equal13~20_combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X14_Y10_N25
\s_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.DATA~q\);

-- Location: LCCOMB_X8_Y9_N26
\out_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~0_combout\ = (s_out_data(0) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_out_data(0),
	datac => \s_state.DATA~q\,
	combout => \out_data~0_combout\);

-- Location: FF_X10_Y12_N15
\delayed_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(1));

-- Location: LCCOMB_X10_Y12_N4
\s_out_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_data~1_combout\ = (delayed_data(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delayed_data(1),
	datad => \reset~input_o\,
	combout => \s_out_data~1_combout\);

-- Location: FF_X10_Y12_N5
\s_out_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_out_data~1_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(1));

-- Location: LCCOMB_X10_Y12_N14
\out_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~1_combout\ = (s_out_data(1) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_out_data(1),
	datad => \s_state.DATA~q\,
	combout => \out_data~1_combout\);

-- Location: FF_X8_Y9_N23
\delayed_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(2));

-- Location: LCCOMB_X6_Y9_N24
\s_out_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_data~2_combout\ = (!\reset~input_o\ & delayed_data(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => delayed_data(2),
	combout => \s_out_data~2_combout\);

-- Location: FF_X8_Y9_N29
\s_out_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_out_data~2_combout\,
	sload => VCC,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(2));

-- Location: LCCOMB_X8_Y9_N28
\out_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~2_combout\ = (\s_state.DATA~q\ & s_out_data(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_out_data(2),
	combout => \out_data~2_combout\);

-- Location: LCCOMB_X10_Y12_N2
\delayed_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[3]~feeder_combout\ = \s_channel~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_channel~5_combout\,
	combout => \delayed_data[3]~feeder_combout\);

-- Location: FF_X10_Y12_N3
\delayed_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[3]~feeder_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(3));

-- Location: LCCOMB_X10_Y12_N8
\s_out_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_data~3_combout\ = (!\reset~input_o\ & delayed_data(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => delayed_data(3),
	combout => \s_out_data~3_combout\);

-- Location: FF_X10_Y12_N9
\s_out_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_out_data~3_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(3));

-- Location: LCCOMB_X10_Y12_N6
\out_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~3_combout\ = (s_out_data(3) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_out_data(3),
	datad => \s_state.DATA~q\,
	combout => \out_data~3_combout\);

-- Location: LCCOMB_X11_Y10_N22
\s_channel~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~6_combout\ = (!\reset~input_o\ & \in_data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \in_data[4]~input_o\,
	combout => \s_channel~6_combout\);

-- Location: FF_X11_Y10_N29
\delayed_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(4));

-- Location: LCCOMB_X10_Y10_N22
\s_out_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_data~4_combout\ = (!\reset~input_o\ & delayed_data(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => delayed_data(4),
	combout => \s_out_data~4_combout\);

-- Location: FF_X10_Y12_N1
\s_out_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_out_data~4_combout\,
	sload => VCC,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(4));

-- Location: LCCOMB_X21_Y13_N12
\out_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~4_combout\ = (s_out_data(4) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_out_data(4),
	datad => \s_state.DATA~q\,
	combout => \out_data~4_combout\);

-- Location: LCCOMB_X8_Y9_N10
\s_channel~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~7_combout\ = (!\reset~input_o\ & \in_data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \in_data[5]~input_o\,
	combout => \s_channel~7_combout\);

-- Location: FF_X10_Y12_N29
\delayed_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(5));

-- Location: LCCOMB_X10_Y12_N26
\s_out_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_data~5_combout\ = (!\reset~input_o\ & delayed_data(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => delayed_data(5),
	combout => \s_out_data~5_combout\);

-- Location: FF_X10_Y12_N27
\s_out_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_out_data~5_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(5));

-- Location: LCCOMB_X10_Y12_N24
\out_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~5_combout\ = (s_out_data(5) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_out_data(5),
	datad => \s_state.DATA~q\,
	combout => \out_data~5_combout\);

-- Location: LCCOMB_X10_Y12_N18
\s_channel~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~8_combout\ = (\in_data[6]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_data[6]~input_o\,
	datad => \reset~input_o\,
	combout => \s_channel~8_combout\);

-- Location: LCCOMB_X10_Y12_N10
\delayed_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[6]~feeder_combout\ = \s_channel~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_channel~8_combout\,
	combout => \delayed_data[6]~feeder_combout\);

-- Location: FF_X10_Y12_N11
\delayed_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[6]~feeder_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(6));

-- Location: LCCOMB_X10_Y12_N30
\s_out_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_data~6_combout\ = (!\reset~input_o\ & delayed_data(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => delayed_data(6),
	combout => \s_out_data~6_combout\);

-- Location: FF_X10_Y12_N31
\s_out_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_out_data~6_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(6));

-- Location: LCCOMB_X10_Y12_N12
\out_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~6_combout\ = (s_out_data(6) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_out_data(6),
	datad => \s_state.DATA~q\,
	combout => \out_data~6_combout\);

-- Location: LCCOMB_X8_Y9_N20
\s_channel~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~9_combout\ = (\in_data[7]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datac => \reset~input_o\,
	combout => \s_channel~9_combout\);

-- Location: LCCOMB_X10_Y10_N28
\delayed_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[7]~feeder_combout\ = \s_channel~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_channel~9_combout\,
	combout => \delayed_data[7]~feeder_combout\);

-- Location: FF_X10_Y10_N29
\delayed_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[7]~feeder_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(7));

-- Location: LCCOMB_X10_Y10_N4
\s_out_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_data~7_combout\ = (!\reset~input_o\ & delayed_data(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => delayed_data(7),
	combout => \s_out_data~7_combout\);

-- Location: FF_X10_Y10_N5
\s_out_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_out_data~7_combout\,
	ena => \delayed_data[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(7));

-- Location: LCCOMB_X8_Y9_N30
\out_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~7_combout\ = (s_out_data(7) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_out_data(7),
	datac => \s_state.DATA~q\,
	combout => \out_data~7_combout\);

-- Location: LCCOMB_X14_Y10_N10
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\out_ready~input_o\ & (((\Equal14~20_combout\) # (\Equal13~20_combout\)) # (!\in_valid~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \out_ready~input_o\,
	datac => \Equal14~20_combout\,
	datad => \Equal13~20_combout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X14_Y10_N30
\Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\s_state.DATA~q\ & (((\s_out_startofpacket~q\ & \Selector38~0_combout\)))) # (!\s_state.DATA~q\ & ((\Selector4~0_combout\) # ((\s_out_startofpacket~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \s_state.DATA~q\,
	datac => \s_out_startofpacket~q\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~1_combout\);

-- Location: FF_X14_Y10_N31
s_out_startofpacket : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_out_startofpacket~q\);

-- Location: LCCOMB_X13_Y10_N16
\next_out_endofpacket~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_out_endofpacket~3_combout\ = (\out_ready~input_o\ & (\s_state.DATA~q\ & \in_valid~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \s_state.DATA~q\,
	datad => \in_valid~input_o\,
	combout => \next_out_endofpacket~3_combout\);

-- Location: LCCOMB_X14_Y10_N0
\next_out_endofpacket~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_out_endofpacket~2_combout\ = (\next_out_endofpacket~3_combout\ & ((\Equal13~20_combout\) # ((!\Selector5~3_combout\ & \s_out_endofpacket~q\)))) # (!\next_out_endofpacket~3_combout\ & (!\Selector5~3_combout\ & (\s_out_endofpacket~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_out_endofpacket~3_combout\,
	datab => \Selector5~3_combout\,
	datac => \s_out_endofpacket~q\,
	datad => \Equal13~20_combout\,
	combout => \next_out_endofpacket~2_combout\);

-- Location: FF_X14_Y10_N1
s_out_endofpacket : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_out_endofpacket~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_out_endofpacket~q\);

-- Location: LCCOMB_X10_Y11_N12
\s_channel[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[7]~21_combout\ = (\reset~input_o\) # ((\Equal9~3_combout\ & (byte_index(1) & byte_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal9~3_combout\,
	datac => byte_index(1),
	datad => byte_index(0),
	combout => \s_channel[7]~21_combout\);

-- Location: FF_X9_Y20_N9
\s_channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(0));

-- Location: LCCOMB_X9_Y20_N8
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

-- Location: FF_X9_Y20_N15
\s_channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(1));

-- Location: LCCOMB_X9_Y20_N14
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

-- Location: FF_X9_Y20_N1
\s_channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(2));

-- Location: LCCOMB_X9_Y20_N0
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

-- Location: FF_X9_Y20_N7
\s_channel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(3));

-- Location: LCCOMB_X9_Y20_N6
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

-- Location: FF_X9_Y20_N25
\s_channel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(4));

-- Location: LCCOMB_X9_Y20_N24
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

-- Location: FF_X9_Y20_N3
\s_channel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(5));

-- Location: LCCOMB_X9_Y20_N2
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

-- Location: FF_X9_Y20_N5
\s_channel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(6));

-- Location: LCCOMB_X9_Y20_N4
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

-- Location: FF_X9_Y20_N31
\s_channel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(7));

-- Location: LCCOMB_X9_Y20_N30
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

-- Location: LCCOMB_X11_Y11_N16
\s_channel[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[8]~10_combout\ = (\reset~input_o\) # ((!byte_index(0) & (byte_index(1) & \Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datac => \Equal9~3_combout\,
	datad => \reset~input_o\,
	combout => \s_channel[8]~10_combout\);

-- Location: FF_X12_Y4_N25
\s_channel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(8));

-- Location: LCCOMB_X12_Y4_N24
\channel~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~8_combout\ = (s_channel(8) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(8),
	datad => \s_state.DATA~q\,
	combout => \channel~8_combout\);

-- Location: FF_X12_Y4_N15
\s_channel[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(9));

-- Location: LCCOMB_X12_Y4_N14
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

-- Location: FF_X12_Y4_N29
\s_channel[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(10));

-- Location: LCCOMB_X12_Y4_N28
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

-- Location: FF_X12_Y4_N27
\s_channel[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(11));

-- Location: LCCOMB_X12_Y4_N26
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

-- Location: FF_X12_Y4_N13
\s_channel[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(12));

-- Location: LCCOMB_X12_Y4_N12
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

-- Location: FF_X12_Y4_N31
\s_channel[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(13));

-- Location: LCCOMB_X12_Y4_N30
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

-- Location: FF_X12_Y4_N17
\s_channel[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(14));

-- Location: LCCOMB_X12_Y4_N16
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

-- Location: FF_X12_Y4_N19
\s_channel[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(15));

-- Location: LCCOMB_X12_Y4_N18
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

-- Location: LCCOMB_X9_Y8_N20
\s_channel[23]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[23]~11_combout\ = (\reset~input_o\) # ((byte_index(0) & (!byte_index(1) & \Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal9~3_combout\,
	combout => \s_channel[23]~11_combout\);

-- Location: FF_X8_Y4_N25
\s_channel[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[23]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(16));

-- Location: LCCOMB_X8_Y4_N24
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

-- Location: FF_X8_Y4_N27
\s_channel[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[23]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(17));

-- Location: LCCOMB_X8_Y4_N26
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

-- Location: FF_X8_Y4_N1
\s_channel[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[23]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(18));

-- Location: LCCOMB_X8_Y4_N0
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

-- Location: FF_X8_Y4_N23
\s_channel[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[23]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(19));

-- Location: LCCOMB_X8_Y4_N22
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
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[23]~11_combout\,
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

-- Location: FF_X8_Y4_N31
\s_channel[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[23]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(21));

-- Location: LCCOMB_X8_Y4_N30
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

-- Location: FF_X8_Y4_N17
\s_channel[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[23]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(22));

-- Location: LCCOMB_X8_Y4_N16
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

-- Location: FF_X8_Y4_N11
\s_channel[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[23]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(23));

-- Location: LCCOMB_X8_Y4_N10
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

-- Location: LCCOMB_X10_Y11_N22
\s_channel[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[25]~12_combout\ = (\reset~input_o\) # ((!byte_index(1) & (!byte_index(0) & \Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(0),
	datac => \Equal9~3_combout\,
	datad => \reset~input_o\,
	combout => \s_channel[25]~12_combout\);

-- Location: FF_X17_Y8_N5
\s_channel[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(24));

-- Location: LCCOMB_X17_Y8_N4
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

-- Location: FF_X17_Y8_N3
\s_channel[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(25));

-- Location: LCCOMB_X17_Y8_N2
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

-- Location: FF_X17_Y8_N13
\s_channel[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(26));

-- Location: LCCOMB_X17_Y8_N12
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

-- Location: FF_X17_Y8_N27
\s_channel[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(27));

-- Location: LCCOMB_X17_Y8_N26
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

-- Location: FF_X17_Y8_N1
\s_channel[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(28));

-- Location: LCCOMB_X17_Y8_N0
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

-- Location: FF_X17_Y8_N15
\s_channel[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(29));

-- Location: LCCOMB_X17_Y8_N14
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

-- Location: FF_X17_Y8_N25
\s_channel[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(30));

-- Location: LCCOMB_X17_Y8_N24
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

-- Location: FF_X17_Y8_N11
\s_channel[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[25]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(31));

-- Location: LCCOMB_X17_Y8_N10
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

-- Location: LCCOMB_X10_Y11_N16
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (byte_index(4) & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(4),
	datad => \Equal0~9_combout\,
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X10_Y11_N10
\s_channel[38]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[38]~13_combout\ = (\reset~input_o\) # ((byte_index(2) & (\Equal0~8_combout\ & \Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Equal0~8_combout\,
	datac => \reset~input_o\,
	datad => \Equal17~0_combout\,
	combout => \s_channel[38]~13_combout\);

-- Location: FF_X17_Y8_N17
\s_channel[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[38]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(32));

-- Location: LCCOMB_X17_Y8_N16
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

-- Location: FF_X17_Y8_N7
\s_channel[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[38]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(33));

-- Location: LCCOMB_X17_Y8_N6
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

-- Location: FF_X17_Y8_N29
\s_channel[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[38]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(34));

-- Location: LCCOMB_X17_Y8_N28
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

-- Location: FF_X17_Y8_N31
\s_channel[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[38]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(35));

-- Location: LCCOMB_X17_Y8_N30
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

-- Location: FF_X17_Y8_N9
\s_channel[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[38]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(36));

-- Location: LCCOMB_X17_Y8_N8
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

-- Location: FF_X17_Y8_N23
\s_channel[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[38]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(37));

-- Location: LCCOMB_X17_Y8_N22
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

-- Location: FF_X17_Y8_N21
\s_channel[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[38]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(38));

-- Location: LCCOMB_X17_Y8_N20
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

-- Location: FF_X17_Y8_N19
\s_channel[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[38]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(39));

-- Location: LCCOMB_X17_Y8_N18
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

-- Location: LCCOMB_X11_Y10_N24
\Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (byte_index(2) & (byte_index(4) & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datac => byte_index(4),
	datad => \Equal0~9_combout\,
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X10_Y12_N16
\s_channel[41]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[41]~14_combout\ = (\reset~input_o\) # ((byte_index(1) & (!byte_index(0) & \Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => byte_index(1),
	datac => byte_index(0),
	datad => \Equal21~0_combout\,
	combout => \s_channel[41]~14_combout\);

-- Location: FF_X9_Y20_N17
\s_channel[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(40));

-- Location: LCCOMB_X9_Y20_N16
\channel~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~40_combout\ = (s_channel(40) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(40),
	datad => \s_state.DATA~q\,
	combout => \channel~40_combout\);

-- Location: FF_X9_Y20_N19
\s_channel[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(41));

-- Location: LCCOMB_X9_Y20_N18
\channel~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~41_combout\ = (s_channel(41) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(41),
	datad => \s_state.DATA~q\,
	combout => \channel~41_combout\);

-- Location: FF_X9_Y20_N29
\s_channel[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(42));

-- Location: LCCOMB_X9_Y20_N28
\channel~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~42_combout\ = (s_channel(42) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(42),
	datad => \s_state.DATA~q\,
	combout => \channel~42_combout\);

-- Location: FF_X9_Y20_N27
\s_channel[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(43));

-- Location: LCCOMB_X9_Y20_N26
\channel~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~43_combout\ = (s_channel(43) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(43),
	datad => \s_state.DATA~q\,
	combout => \channel~43_combout\);

-- Location: FF_X9_Y20_N21
\s_channel[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(44));

-- Location: LCCOMB_X9_Y20_N20
\channel~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~44_combout\ = (s_channel(44) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(44),
	datad => \s_state.DATA~q\,
	combout => \channel~44_combout\);

-- Location: FF_X9_Y20_N23
\s_channel[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(45));

-- Location: LCCOMB_X9_Y20_N22
\channel~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~45_combout\ = (s_channel(45) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(45),
	datad => \s_state.DATA~q\,
	combout => \channel~45_combout\);

-- Location: FF_X9_Y20_N13
\s_channel[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(46));

-- Location: LCCOMB_X9_Y20_N12
\channel~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~46_combout\ = (s_channel(46) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(46),
	datad => \s_state.DATA~q\,
	combout => \channel~46_combout\);

-- Location: FF_X9_Y20_N11
\s_channel[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[41]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(47));

-- Location: LCCOMB_X9_Y20_N10
\channel~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~47_combout\ = (s_channel(47) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(47),
	datad => \s_state.DATA~q\,
	combout => \channel~47_combout\);

-- Location: LCCOMB_X11_Y7_N12
\s_channel[51]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[51]~15_combout\ = (\reset~input_o\) # ((!byte_index(1) & (\Equal21~0_combout\ & byte_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => byte_index(1),
	datac => \Equal21~0_combout\,
	datad => byte_index(0),
	combout => \s_channel[51]~15_combout\);

-- Location: FF_X12_Y4_N5
\s_channel[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[51]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(48));

-- Location: LCCOMB_X12_Y4_N4
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

-- Location: FF_X12_Y4_N7
\s_channel[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[51]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(49));

-- Location: LCCOMB_X12_Y4_N6
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

-- Location: FF_X12_Y4_N1
\s_channel[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[51]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(50));

-- Location: LCCOMB_X12_Y4_N0
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

-- Location: FF_X12_Y4_N3
\s_channel[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[51]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(51));

-- Location: LCCOMB_X12_Y4_N2
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

-- Location: FF_X12_Y4_N21
\s_channel[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[51]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(52));

-- Location: LCCOMB_X12_Y4_N20
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

-- Location: FF_X12_Y4_N11
\s_channel[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[51]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(53));

-- Location: LCCOMB_X12_Y4_N10
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

-- Location: FF_X12_Y4_N9
\s_channel[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[51]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(54));

-- Location: LCCOMB_X12_Y4_N8
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

-- Location: FF_X12_Y4_N23
\s_channel[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[51]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(55));

-- Location: LCCOMB_X12_Y4_N22
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

-- Location: LCCOMB_X9_Y8_N10
\s_channel[61]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[61]~16_combout\ = (\reset~input_o\) # ((!byte_index(0) & (!byte_index(1) & \Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal21~0_combout\,
	combout => \s_channel[61]~16_combout\);

-- Location: FF_X8_Y4_N13
\s_channel[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[61]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(56));

-- Location: LCCOMB_X8_Y4_N12
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

-- Location: FF_X8_Y4_N19
\s_channel[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[61]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(57));

-- Location: LCCOMB_X8_Y4_N18
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

-- Location: FF_X8_Y4_N29
\s_channel[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[61]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(58));

-- Location: LCCOMB_X8_Y4_N28
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

-- Location: FF_X8_Y4_N3
\s_channel[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[61]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(59));

-- Location: LCCOMB_X8_Y4_N2
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

-- Location: FF_X8_Y4_N5
\s_channel[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[61]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(60));

-- Location: LCCOMB_X8_Y4_N4
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

-- Location: FF_X8_Y4_N15
\s_channel[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[61]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(61));

-- Location: LCCOMB_X8_Y4_N14
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

-- Location: FF_X8_Y4_N9
\s_channel[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[61]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(62));

-- Location: LCCOMB_X8_Y4_N8
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

-- Location: FF_X8_Y4_N7
\s_channel[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[61]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(63));

-- Location: LCCOMB_X8_Y4_N6
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

-- Location: LCCOMB_X10_Y11_N8
\s_channel[69]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[69]~17_combout\ = (\reset~input_o\) # ((!byte_index(2) & (\Equal0~8_combout\ & \Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Equal0~8_combout\,
	datac => \reset~input_o\,
	datad => \Equal17~0_combout\,
	combout => \s_channel[69]~17_combout\);

-- Location: FF_X18_Y7_N25
\s_channel[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[69]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(64));

-- Location: LCCOMB_X18_Y7_N24
\channel~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~64_combout\ = (s_channel(64) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(64),
	datad => \s_state.DATA~q\,
	combout => \channel~64_combout\);

-- Location: FF_X18_Y7_N27
\s_channel[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[69]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(65));

-- Location: LCCOMB_X18_Y7_N26
\channel~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~65_combout\ = (s_channel(65) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(65),
	datad => \s_state.DATA~q\,
	combout => \channel~65_combout\);

-- Location: FF_X18_Y7_N5
\s_channel[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[69]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(66));

-- Location: LCCOMB_X18_Y7_N4
\channel~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~66_combout\ = (s_channel(66) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(66),
	datad => \s_state.DATA~q\,
	combout => \channel~66_combout\);

-- Location: FF_X18_Y7_N3
\s_channel[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[69]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(67));

-- Location: LCCOMB_X18_Y7_N2
\channel~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~67_combout\ = (s_channel(67) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(67),
	datad => \s_state.DATA~q\,
	combout => \channel~67_combout\);

-- Location: FF_X18_Y7_N1
\s_channel[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[69]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(68));

-- Location: LCCOMB_X18_Y7_N0
\channel~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~68_combout\ = (s_channel(68) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(68),
	datad => \s_state.DATA~q\,
	combout => \channel~68_combout\);

-- Location: FF_X18_Y7_N23
\s_channel[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[69]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(69));

-- Location: LCCOMB_X18_Y7_N22
\channel~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~69_combout\ = (s_channel(69) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(69),
	datad => \s_state.DATA~q\,
	combout => \channel~69_combout\);

-- Location: FF_X18_Y7_N9
\s_channel[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[69]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(70));

-- Location: LCCOMB_X18_Y7_N8
\channel~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~70_combout\ = (s_channel(70) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(70),
	datad => \s_state.DATA~q\,
	combout => \channel~70_combout\);

-- Location: FF_X18_Y7_N7
\s_channel[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[69]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(71));

-- Location: LCCOMB_X18_Y7_N6
\channel~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~71_combout\ = (s_channel(71) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_channel(71),
	datad => \s_state.DATA~q\,
	combout => \channel~71_combout\);

-- Location: LCCOMB_X10_Y11_N18
\Equal17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~1_combout\ = (!byte_index(2) & (byte_index(4) & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(4),
	datad => \Equal0~9_combout\,
	combout => \Equal17~1_combout\);

-- Location: LCCOMB_X10_Y7_N20
\s_channel[77]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[77]~18_combout\ = (\reset~input_o\) # ((!byte_index(0) & (\Equal17~1_combout\ & byte_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \reset~input_o\,
	datac => \Equal17~1_combout\,
	datad => byte_index(1),
	combout => \s_channel[77]~18_combout\);

-- Location: FF_X18_Y7_N17
\s_channel[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(72));

-- Location: LCCOMB_X18_Y7_N16
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

-- Location: FF_X18_Y7_N31
\s_channel[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(73));

-- Location: LCCOMB_X18_Y7_N30
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

-- Location: FF_X18_Y7_N13
\s_channel[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(74));

-- Location: LCCOMB_X18_Y7_N12
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

-- Location: FF_X18_Y7_N19
\s_channel[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(75));

-- Location: LCCOMB_X18_Y7_N18
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

-- Location: FF_X18_Y7_N29
\s_channel[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(76));

-- Location: LCCOMB_X18_Y7_N28
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

-- Location: FF_X18_Y7_N11
\s_channel[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(77));

-- Location: LCCOMB_X18_Y7_N10
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

-- Location: FF_X18_Y7_N21
\s_channel[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(78));

-- Location: LCCOMB_X18_Y7_N20
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

-- Location: FF_X18_Y7_N15
\s_channel[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(79));

-- Location: LCCOMB_X18_Y7_N14
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

-- Location: LCCOMB_X10_Y11_N28
\s_channel[86]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[86]~19_combout\ = (\reset~input_o\) # ((byte_index(0) & (!byte_index(1) & \Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal17~1_combout\,
	combout => \s_channel[86]~19_combout\);

-- Location: FF_X17_Y20_N17
\s_channel[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[86]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(80));

-- Location: LCCOMB_X17_Y20_N16
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

-- Location: FF_X17_Y20_N31
\s_channel[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[86]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(81));

-- Location: LCCOMB_X17_Y20_N30
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

-- Location: FF_X17_Y20_N25
\s_channel[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[86]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(82));

-- Location: LCCOMB_X17_Y20_N24
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

-- Location: FF_X17_Y20_N23
\s_channel[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[86]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(83));

-- Location: LCCOMB_X17_Y20_N22
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

-- Location: FF_X17_Y20_N13
\s_channel[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[86]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(84));

-- Location: LCCOMB_X17_Y20_N12
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

-- Location: FF_X17_Y20_N7
\s_channel[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[86]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(85));

-- Location: LCCOMB_X17_Y20_N6
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

-- Location: FF_X17_Y20_N9
\s_channel[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[86]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(86));

-- Location: LCCOMB_X17_Y20_N8
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

-- Location: FF_X17_Y20_N3
\s_channel[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[86]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(87));

-- Location: LCCOMB_X17_Y20_N2
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

-- Location: LCCOMB_X10_Y11_N2
\s_channel[95]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[95]~20_combout\ = (\reset~input_o\) # ((!byte_index(0) & (!byte_index(1) & \Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal17~1_combout\,
	combout => \s_channel[95]~20_combout\);

-- Location: FF_X17_Y20_N5
\s_channel[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~2_combout\,
	sload => VCC,
	ena => \s_channel[95]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(88));

-- Location: LCCOMB_X17_Y20_N4
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

-- Location: FF_X17_Y20_N19
\s_channel[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~3_combout\,
	sload => VCC,
	ena => \s_channel[95]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(89));

-- Location: LCCOMB_X17_Y20_N18
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

-- Location: FF_X17_Y20_N21
\s_channel[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[95]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(90));

-- Location: LCCOMB_X17_Y20_N20
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

-- Location: FF_X17_Y20_N27
\s_channel[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~5_combout\,
	sload => VCC,
	ena => \s_channel[95]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(91));

-- Location: LCCOMB_X17_Y20_N26
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

-- Location: FF_X17_Y20_N29
\s_channel[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~6_combout\,
	sload => VCC,
	ena => \s_channel[95]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(92));

-- Location: LCCOMB_X17_Y20_N28
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

-- Location: FF_X17_Y20_N15
\s_channel[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[95]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(93));

-- Location: LCCOMB_X17_Y20_N14
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

-- Location: FF_X17_Y20_N1
\s_channel[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[95]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(94));

-- Location: LCCOMB_X17_Y20_N0
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

-- Location: FF_X17_Y20_N11
\s_channel[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[95]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(95));

-- Location: LCCOMB_X17_Y20_N10
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

-- Location: IOIBUF_X0_Y11_N15
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



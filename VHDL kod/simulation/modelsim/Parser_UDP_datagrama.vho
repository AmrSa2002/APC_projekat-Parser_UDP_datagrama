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

-- DATE "01/28/2025 16:24:16"

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
-- in_endofpacket	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_ready	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_startofpacket	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endofpacket	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[9]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[10]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[13]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[15]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[16]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[17]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[18]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[19]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[20]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[21]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[22]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[23]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[24]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[25]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[26]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[27]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[28]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[29]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[30]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[31]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[32]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[33]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[34]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[35]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[36]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[37]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[38]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[39]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[40]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[41]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[42]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[43]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[44]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[45]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[46]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[47]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[48]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[49]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[50]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[51]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[52]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[53]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[54]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[55]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[56]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[57]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[58]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[59]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[60]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[61]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[62]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[63]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[64]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[65]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[66]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[67]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[68]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[69]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[70]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[71]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[72]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[73]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[74]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[75]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[76]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[77]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[78]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[79]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[80]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[81]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[82]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[83]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[84]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[85]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[86]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[87]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[88]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[89]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[90]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[91]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[92]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[93]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[94]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[95]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_startofpacket	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \PROCES1~0_combout\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \s_channel~9_combout\ : std_logic;
SIGNAL \ip_header_length[5]~0_combout\ : std_logic;
SIGNAL \byte_index[0]~32_combout\ : std_logic;
SIGNAL \byte_index[27]~48_combout\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \byte_index[0]~33\ : std_logic;
SIGNAL \byte_index[1]~34_combout\ : std_logic;
SIGNAL \in_startofpacket~input_o\ : std_logic;
SIGNAL \byte_index[27]~53_combout\ : std_logic;
SIGNAL \byte_index[27]~54_combout\ : std_logic;
SIGNAL \byte_index[27]~55_combout\ : std_logic;
SIGNAL \Equal9~7_combout\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \s_channel~7_combout\ : std_logic;
SIGNAL \s_channel~4_combout\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \s_channel~8_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \byte_index[1]~35\ : std_logic;
SIGNAL \byte_index[2]~36_combout\ : std_logic;
SIGNAL \byte_index[2]~37\ : std_logic;
SIGNAL \byte_index[3]~38_combout\ : std_logic;
SIGNAL \byte_index[3]~39\ : std_logic;
SIGNAL \byte_index[4]~40_combout\ : std_logic;
SIGNAL \byte_index[4]~41\ : std_logic;
SIGNAL \byte_index[5]~42_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \Equal9~8_combout\ : std_logic;
SIGNAL \byte_index[5]~43\ : std_logic;
SIGNAL \byte_index[6]~44_combout\ : std_logic;
SIGNAL \Add5~3_combout\ : std_logic;
SIGNAL \Equal8~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Equal9~5_combout\ : std_logic;
SIGNAL \Equal9~4_combout\ : std_logic;
SIGNAL \byte_index[6]~45\ : std_logic;
SIGNAL \byte_index[7]~46_combout\ : std_logic;
SIGNAL \byte_index[7]~47\ : std_logic;
SIGNAL \byte_index[8]~56_combout\ : std_logic;
SIGNAL \byte_index[8]~57\ : std_logic;
SIGNAL \byte_index[9]~58_combout\ : std_logic;
SIGNAL \byte_index[9]~59\ : std_logic;
SIGNAL \byte_index[10]~60_combout\ : std_logic;
SIGNAL \byte_index[10]~61\ : std_logic;
SIGNAL \byte_index[11]~62_combout\ : std_logic;
SIGNAL \byte_index[11]~63\ : std_logic;
SIGNAL \byte_index[12]~64_combout\ : std_logic;
SIGNAL \byte_index[12]~65\ : std_logic;
SIGNAL \byte_index[13]~66_combout\ : std_logic;
SIGNAL \byte_index[13]~67\ : std_logic;
SIGNAL \byte_index[14]~68_combout\ : std_logic;
SIGNAL \byte_index[14]~69\ : std_logic;
SIGNAL \byte_index[15]~70_combout\ : std_logic;
SIGNAL \byte_index[15]~71\ : std_logic;
SIGNAL \byte_index[16]~72_combout\ : std_logic;
SIGNAL \byte_index[16]~73\ : std_logic;
SIGNAL \byte_index[17]~74_combout\ : std_logic;
SIGNAL \byte_index[17]~75\ : std_logic;
SIGNAL \byte_index[18]~76_combout\ : std_logic;
SIGNAL \byte_index[18]~77\ : std_logic;
SIGNAL \byte_index[19]~78_combout\ : std_logic;
SIGNAL \byte_index[19]~79\ : std_logic;
SIGNAL \byte_index[20]~80_combout\ : std_logic;
SIGNAL \byte_index[20]~81\ : std_logic;
SIGNAL \byte_index[21]~82_combout\ : std_logic;
SIGNAL \byte_index[21]~83\ : std_logic;
SIGNAL \byte_index[22]~84_combout\ : std_logic;
SIGNAL \byte_index[22]~85\ : std_logic;
SIGNAL \byte_index[23]~86_combout\ : std_logic;
SIGNAL \byte_index[23]~87\ : std_logic;
SIGNAL \byte_index[24]~88_combout\ : std_logic;
SIGNAL \byte_index[24]~89\ : std_logic;
SIGNAL \byte_index[25]~90_combout\ : std_logic;
SIGNAL \byte_index[25]~91\ : std_logic;
SIGNAL \byte_index[26]~92_combout\ : std_logic;
SIGNAL \byte_index[26]~93\ : std_logic;
SIGNAL \byte_index[27]~94_combout\ : std_logic;
SIGNAL \byte_index[27]~95\ : std_logic;
SIGNAL \byte_index[28]~96_combout\ : std_logic;
SIGNAL \byte_index[28]~97\ : std_logic;
SIGNAL \byte_index[29]~98_combout\ : std_logic;
SIGNAL \byte_index[29]~99\ : std_logic;
SIGNAL \byte_index[30]~100_combout\ : std_logic;
SIGNAL \byte_index[30]~101\ : std_logic;
SIGNAL \byte_index[31]~102_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal9~6_combout\ : std_logic;
SIGNAL \udp_length~29_combout\ : std_logic;
SIGNAL \udp_length[25]~1_combout\ : std_logic;
SIGNAL \udp_length[25]~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \udp_length~28_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \udp_length~27_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \udp_length~26_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \udp_length~25_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \udp_length~24_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \udp_length~23_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \udp_length~22_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \udp_length~21_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \udp_length~20_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \udp_length~19_combout\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \udp_length~18_combout\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \udp_length~17_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \udp_length~16_combout\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \Equal13~7_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \udp_length~15_combout\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \udp_length~14_combout\ : std_logic;
SIGNAL \Add8~29\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Equal13~8_combout\ : std_logic;
SIGNAL \Equal13~9_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \udp_length~13_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \udp_length~12_combout\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \udp_length~11_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38_combout\ : std_logic;
SIGNAL \udp_length~10_combout\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \udp_length~9_combout\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \udp_length~8_combout\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44_combout\ : std_logic;
SIGNAL \udp_length~7_combout\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46_combout\ : std_logic;
SIGNAL \udp_length~6_combout\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~41\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add8~46_combout\ : std_logic;
SIGNAL \Add8~44_combout\ : std_logic;
SIGNAL \Equal13~13_combout\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \Equal13~10_combout\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~38_combout\ : std_logic;
SIGNAL \Equal13~11_combout\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \Add8~42_combout\ : std_logic;
SIGNAL \Equal13~12_combout\ : std_logic;
SIGNAL \Equal13~14_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48_combout\ : std_logic;
SIGNAL \udp_length~5_combout\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \udp_length~4_combout\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52_combout\ : std_logic;
SIGNAL \udp_length~3_combout\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~49\ : std_logic;
SIGNAL \Add8~51\ : std_logic;
SIGNAL \Add8~52_combout\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54_combout\ : std_logic;
SIGNAL \udp_length~0_combout\ : std_logic;
SIGNAL \Add8~53\ : std_logic;
SIGNAL \Add8~54_combout\ : std_logic;
SIGNAL \Equal13~16_combout\ : std_logic;
SIGNAL \Add8~48_combout\ : std_logic;
SIGNAL \Add8~50_combout\ : std_logic;
SIGNAL \Equal13~15_combout\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56_combout\ : std_logic;
SIGNAL \udp_length~30_combout\ : std_logic;
SIGNAL \Add8~55\ : std_logic;
SIGNAL \Add8~56_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58_combout\ : std_logic;
SIGNAL \udp_length~32_combout\ : std_logic;
SIGNAL \Add8~57\ : std_logic;
SIGNAL \Add8~58_combout\ : std_logic;
SIGNAL \Equal13~17_combout\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \udp_length~31_combout\ : std_logic;
SIGNAL \Add8~59\ : std_logic;
SIGNAL \Add8~60_combout\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62_combout\ : std_logic;
SIGNAL \udp_length~33_combout\ : std_logic;
SIGNAL \Add8~61\ : std_logic;
SIGNAL \Add8~62_combout\ : std_logic;
SIGNAL \Equal13~18_combout\ : std_logic;
SIGNAL \Equal13~19_combout\ : std_logic;
SIGNAL \Equal13~20_combout\ : std_logic;
SIGNAL \next_out_endofpacket~0_combout\ : std_logic;
SIGNAL \s_state~13_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Add7~1_cout\ : std_logic;
SIGNAL \Add7~3_cout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Equal12~3_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \Equal12~4_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Equal12~5_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Equal12~6_combout\ : std_logic;
SIGNAL \Add7~23\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~25\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Equal12~7_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \Add7~29\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Equal12~8_combout\ : std_logic;
SIGNAL \Equal12~9_combout\ : std_logic;
SIGNAL \Add7~31\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~35\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~41\ : std_logic;
SIGNAL \Add7~43\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~49\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~53\ : std_logic;
SIGNAL \Add7~55\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Equal12~10_combout\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~59\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Equal12~11_combout\ : std_logic;
SIGNAL \Add7~61\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Equal12~17_combout\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Equal12~12_combout\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Equal12~13_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \Equal12~14_combout\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Equal12~15_combout\ : std_logic;
SIGNAL \Equal12~16_combout\ : std_logic;
SIGNAL \Equal12~18_combout\ : std_logic;
SIGNAL \Equal12~19_combout\ : std_logic;
SIGNAL \s_state~14_combout\ : std_logic;
SIGNAL \s_state~62_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Add9~1_cout\ : std_logic;
SIGNAL \Add9~3_cout\ : std_logic;
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
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \s_state~15_combout\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~61\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \s_state~33_combout\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \s_state~16_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \s_state~17_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \s_state~18_combout\ : std_logic;
SIGNAL \s_state~19_combout\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \s_state~22_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \s_state~20_combout\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \s_state~21_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \s_state~23_combout\ : std_logic;
SIGNAL \s_state~24_combout\ : std_logic;
SIGNAL \s_state~25_combout\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \s_state~31_combout\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \s_state~26_combout\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \s_state~27_combout\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \s_state~28_combout\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \s_state~29_combout\ : std_logic;
SIGNAL \s_state~30_combout\ : std_logic;
SIGNAL \s_state~32_combout\ : std_logic;
SIGNAL \s_state~34_combout\ : std_logic;
SIGNAL \s_state~35_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \s_state~9_combout\ : std_logic;
SIGNAL \s_state~39_combout\ : std_logic;
SIGNAL \s_state~63_combout\ : std_logic;
SIGNAL \s_state~64_combout\ : std_logic;
SIGNAL \s_state.CRC~q\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \s_state~37_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \s_state~36_combout\ : std_logic;
SIGNAL \byte_index[27]~50_combout\ : std_logic;
SIGNAL \byte_index[27]~49_combout\ : std_logic;
SIGNAL \byte_index[27]~51_combout\ : std_logic;
SIGNAL \byte_index[27]~52_combout\ : std_logic;
SIGNAL \ip_header_length[5]~1_combout\ : std_logic;
SIGNAL \PROCES1~1_combout\ : std_logic;
SIGNAL \Equal8~4_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \Equal22~1_combout\ : std_logic;
SIGNAL \PROCES1~2_combout\ : std_logic;
SIGNAL \s_state~45_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \s_state~58_combout\ : std_logic;
SIGNAL \s_state~59_combout\ : std_logic;
SIGNAL \s_state~48_combout\ : std_logic;
SIGNAL \s_state~54_combout\ : std_logic;
SIGNAL \s_state~55_combout\ : std_logic;
SIGNAL \s_state~56_combout\ : std_logic;
SIGNAL \s_state~60_combout\ : std_logic;
SIGNAL \s_state~47_combout\ : std_logic;
SIGNAL \Equal8~5_combout\ : std_logic;
SIGNAL \next_state~8_combout\ : std_logic;
SIGNAL \Equal8~6_combout\ : std_logic;
SIGNAL \Equal8~7_combout\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \next_state~12_combout\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \s_state~50_combout\ : std_logic;
SIGNAL \s_state~49_combout\ : std_logic;
SIGNAL \s_state~51_combout\ : std_logic;
SIGNAL \s_state~52_combout\ : std_logic;
SIGNAL \s_state~53_combout\ : std_logic;
SIGNAL \s_state~61_combout\ : std_logic;
SIGNAL \s_state.IDLE~q\ : std_logic;
SIGNAL \s_state~12_combout\ : std_logic;
SIGNAL \s_state~40_combout\ : std_logic;
SIGNAL \s_state~41_combout\ : std_logic;
SIGNAL \s_state~65_combout\ : std_logic;
SIGNAL \s_state.ETHERNET_HEADER~q\ : std_logic;
SIGNAL \s_state~38_combout\ : std_logic;
SIGNAL \s_state~44_combout\ : std_logic;
SIGNAL \s_state~46_combout\ : std_logic;
SIGNAL \s_state~57_combout\ : std_logic;
SIGNAL \s_state.IP_HEADER~q\ : std_logic;
SIGNAL \s_state~10_combout\ : std_logic;
SIGNAL \s_state~11_combout\ : std_logic;
SIGNAL \s_state~43_combout\ : std_logic;
SIGNAL \s_state.UDP_HEADER~q\ : std_logic;
SIGNAL \s_state~8_combout\ : std_logic;
SIGNAL \s_state~42_combout\ : std_logic;
SIGNAL \s_state.DATA~q\ : std_logic;
SIGNAL \delayed_data[0]~feeder_combout\ : std_logic;
SIGNAL \out_data~0_combout\ : std_logic;
SIGNAL \delayed_data[1]~feeder_combout\ : std_logic;
SIGNAL \out_data~1_combout\ : std_logic;
SIGNAL \delayed_data[2]~feeder_combout\ : std_logic;
SIGNAL \out_data~2_combout\ : std_logic;
SIGNAL \delayed_data[3]~feeder_combout\ : std_logic;
SIGNAL \out_data~3_combout\ : std_logic;
SIGNAL \out_data~4_combout\ : std_logic;
SIGNAL \delayed_data[5]~feeder_combout\ : std_logic;
SIGNAL \out_data~5_combout\ : std_logic;
SIGNAL \delayed_data[6]~feeder_combout\ : std_logic;
SIGNAL \out_data~6_combout\ : std_logic;
SIGNAL \delayed_data[7]~feeder_combout\ : std_logic;
SIGNAL \out_data~7_combout\ : std_logic;
SIGNAL \Selector38~3_combout\ : std_logic;
SIGNAL \Selector38~2_combout\ : std_logic;
SIGNAL \s_out_startofpacket~q\ : std_logic;
SIGNAL \next_out_endofpacket~1_combout\ : std_logic;
SIGNAL \s_out_endofpacket~q\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \s_channel~5_combout\ : std_logic;
SIGNAL \s_channel[1]~6_combout\ : std_logic;
SIGNAL \channel~0_combout\ : std_logic;
SIGNAL \channel~1_combout\ : std_logic;
SIGNAL \channel~2_combout\ : std_logic;
SIGNAL \channel~3_combout\ : std_logic;
SIGNAL \s_channel~10_combout\ : std_logic;
SIGNAL \channel~4_combout\ : std_logic;
SIGNAL \s_channel~11_combout\ : std_logic;
SIGNAL \channel~5_combout\ : std_logic;
SIGNAL \s_channel~12_combout\ : std_logic;
SIGNAL \channel~6_combout\ : std_logic;
SIGNAL \s_channel~13_combout\ : std_logic;
SIGNAL \channel~7_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Equal21~1_combout\ : std_logic;
SIGNAL \s_channel~14_combout\ : std_logic;
SIGNAL \s_channel[14]~15_combout\ : std_logic;
SIGNAL \channel~8_combout\ : std_logic;
SIGNAL \channel~9_combout\ : std_logic;
SIGNAL \channel~10_combout\ : std_logic;
SIGNAL \channel~11_combout\ : std_logic;
SIGNAL \channel~12_combout\ : std_logic;
SIGNAL \channel~13_combout\ : std_logic;
SIGNAL \channel~14_combout\ : std_logic;
SIGNAL \channel~15_combout\ : std_logic;
SIGNAL \s_channel~29_combout\ : std_logic;
SIGNAL \s_channel~17_combout\ : std_logic;
SIGNAL \s_channel~18_combout\ : std_logic;
SIGNAL \s_channel~16_combout\ : std_logic;
SIGNAL \s_channel[21]~19_combout\ : std_logic;
SIGNAL \channel~16_combout\ : std_logic;
SIGNAL \channel~17_combout\ : std_logic;
SIGNAL \channel~18_combout\ : std_logic;
SIGNAL \channel~19_combout\ : std_logic;
SIGNAL \channel~20_combout\ : std_logic;
SIGNAL \channel~21_combout\ : std_logic;
SIGNAL \channel~22_combout\ : std_logic;
SIGNAL \channel~23_combout\ : std_logic;
SIGNAL \s_channel[26]~20_combout\ : std_logic;
SIGNAL \channel~24_combout\ : std_logic;
SIGNAL \s_channel[25]~feeder_combout\ : std_logic;
SIGNAL \channel~25_combout\ : std_logic;
SIGNAL \channel~26_combout\ : std_logic;
SIGNAL \channel~27_combout\ : std_logic;
SIGNAL \channel~28_combout\ : std_logic;
SIGNAL \channel~29_combout\ : std_logic;
SIGNAL \channel~30_combout\ : std_logic;
SIGNAL \channel~31_combout\ : std_logic;
SIGNAL \s_channel[37]~21_combout\ : std_logic;
SIGNAL \channel~32_combout\ : std_logic;
SIGNAL \channel~33_combout\ : std_logic;
SIGNAL \channel~34_combout\ : std_logic;
SIGNAL \channel~35_combout\ : std_logic;
SIGNAL \channel~36_combout\ : std_logic;
SIGNAL \channel~37_combout\ : std_logic;
SIGNAL \channel~38_combout\ : std_logic;
SIGNAL \channel~39_combout\ : std_logic;
SIGNAL \s_channel[45]~22_combout\ : std_logic;
SIGNAL \channel~40_combout\ : std_logic;
SIGNAL \channel~41_combout\ : std_logic;
SIGNAL \channel~42_combout\ : std_logic;
SIGNAL \channel~43_combout\ : std_logic;
SIGNAL \channel~44_combout\ : std_logic;
SIGNAL \channel~45_combout\ : std_logic;
SIGNAL \channel~46_combout\ : std_logic;
SIGNAL \channel~47_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \s_channel[53]~23_combout\ : std_logic;
SIGNAL \channel~48_combout\ : std_logic;
SIGNAL \channel~49_combout\ : std_logic;
SIGNAL \channel~50_combout\ : std_logic;
SIGNAL \channel~51_combout\ : std_logic;
SIGNAL \channel~52_combout\ : std_logic;
SIGNAL \channel~53_combout\ : std_logic;
SIGNAL \channel~54_combout\ : std_logic;
SIGNAL \channel~55_combout\ : std_logic;
SIGNAL \s_channel[56]~24_combout\ : std_logic;
SIGNAL \channel~56_combout\ : std_logic;
SIGNAL \channel~57_combout\ : std_logic;
SIGNAL \channel~58_combout\ : std_logic;
SIGNAL \channel~59_combout\ : std_logic;
SIGNAL \channel~60_combout\ : std_logic;
SIGNAL \channel~61_combout\ : std_logic;
SIGNAL \channel~62_combout\ : std_logic;
SIGNAL \channel~63_combout\ : std_logic;
SIGNAL \s_channel[65]~25_combout\ : std_logic;
SIGNAL \channel~64_combout\ : std_logic;
SIGNAL \channel~65_combout\ : std_logic;
SIGNAL \channel~66_combout\ : std_logic;
SIGNAL \channel~67_combout\ : std_logic;
SIGNAL \channel~68_combout\ : std_logic;
SIGNAL \channel~69_combout\ : std_logic;
SIGNAL \channel~70_combout\ : std_logic;
SIGNAL \channel~71_combout\ : std_logic;
SIGNAL \s_channel[78]~26_combout\ : std_logic;
SIGNAL \channel~72_combout\ : std_logic;
SIGNAL \channel~73_combout\ : std_logic;
SIGNAL \channel~74_combout\ : std_logic;
SIGNAL \channel~75_combout\ : std_logic;
SIGNAL \channel~76_combout\ : std_logic;
SIGNAL \channel~77_combout\ : std_logic;
SIGNAL \channel~78_combout\ : std_logic;
SIGNAL \channel~79_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \s_channel[80]~27_combout\ : std_logic;
SIGNAL \channel~80_combout\ : std_logic;
SIGNAL \channel~81_combout\ : std_logic;
SIGNAL \channel~82_combout\ : std_logic;
SIGNAL \channel~83_combout\ : std_logic;
SIGNAL \channel~84_combout\ : std_logic;
SIGNAL \channel~85_combout\ : std_logic;
SIGNAL \channel~86_combout\ : std_logic;
SIGNAL \channel~87_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \s_channel[92]~28_combout\ : std_logic;
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
SIGNAL s_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL s_channel : std_logic_vector(95 DOWNTO 0);
SIGNAL delayed_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ip_header_length : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;

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

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X13_Y24_N16
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X11_Y24_N9
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

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X0_Y6_N23
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

-- Location: IOOBUF_X13_Y24_N2
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

-- Location: IOOBUF_X13_Y24_N9
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

-- Location: IOOBUF_X34_Y9_N23
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

-- Location: IOOBUF_X13_Y0_N23
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

-- Location: IOOBUF_X13_Y0_N16
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

-- Location: IOOBUF_X34_Y8_N16
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

-- Location: IOOBUF_X21_Y24_N2
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

-- Location: IOOBUF_X18_Y24_N16
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

-- Location: IOOBUF_X9_Y24_N16
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

-- Location: IOOBUF_X34_Y5_N23
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

-- Location: IOOBUF_X7_Y24_N9
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

-- Location: IOOBUF_X0_Y5_N23
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X9_Y24_N23
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

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X0_Y21_N23
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X9_Y0_N2
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X0_Y7_N23
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X9_Y24_N9
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

-- Location: IOOBUF_X5_Y24_N23
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X0_Y4_N16
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

-- Location: IOOBUF_X3_Y24_N23
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

-- Location: IOOBUF_X0_Y8_N9
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

-- Location: IOOBUF_X5_Y24_N16
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

-- Location: IOOBUF_X0_Y7_N16
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

-- Location: IOOBUF_X11_Y24_N2
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

-- Location: IOOBUF_X5_Y24_N9
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

-- Location: IOOBUF_X7_Y24_N2
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

-- Location: IOOBUF_X0_Y22_N16
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X0_Y19_N23
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

-- Location: IOOBUF_X0_Y19_N2
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

-- Location: IOOBUF_X0_Y22_N2
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X34_Y5_N16
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

-- Location: IOOBUF_X28_Y0_N23
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X25_Y0_N9
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

-- Location: IOOBUF_X34_Y8_N9
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X28_Y0_N9
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

-- Location: IOOBUF_X0_Y8_N2
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

-- Location: IOOBUF_X1_Y24_N9
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

-- Location: IOOBUF_X0_Y9_N9
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

-- Location: IOOBUF_X0_Y10_N2
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

-- Location: IOOBUF_X0_Y9_N2
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

-- Location: IOOBUF_X7_Y24_N16
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

-- Location: IOOBUF_X5_Y24_N2
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

-- Location: IOOBUF_X0_Y10_N16
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

-- Location: IOOBUF_X11_Y24_N16
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

-- Location: IOOBUF_X0_Y19_N16
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

-- Location: IOOBUF_X3_Y24_N9
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOOBUF_X3_Y24_N2
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

-- Location: IOOBUF_X3_Y24_N16
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

-- Location: IOOBUF_X0_Y21_N9
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X21_Y0_N23
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

-- Location: IOOBUF_X34_Y7_N23
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

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X21_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X25_Y0_N16
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X21_Y0_N9
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

-- Location: IOOBUF_X21_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X34_Y8_N23
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

-- Location: IOOBUF_X34_Y6_N16
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X21_Y24_N9
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

-- Location: IOOBUF_X28_Y0_N16
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOIBUF_X18_Y24_N8
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\in_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: LCCOMB_X11_Y10_N0
\PROCES1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~0_combout\ = (\out_ready~input_o\ & \in_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \in_valid~input_o\,
	combout => \PROCES1~0_combout\);

-- Location: IOIBUF_X34_Y10_N1
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: LCCOMB_X16_Y8_N30
\s_channel~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~9_combout\ = (\reset_n~input_o\ & \in_data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \in_data[3]~input_o\,
	combout => \s_channel~9_combout\);

-- Location: LCCOMB_X10_Y11_N8
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

-- Location: LCCOMB_X8_Y11_N0
\byte_index[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~32_combout\ = byte_index(0) $ (VCC)
-- \byte_index[0]~33\ = CARRY(byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datad => VCC,
	combout => \byte_index[0]~32_combout\,
	cout => \byte_index[0]~33\);

-- Location: LCCOMB_X9_Y10_N26
\byte_index[27]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~48_combout\ = (!\s_state.IDLE~q\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datad => \s_state.IDLE~q\,
	combout => \byte_index[27]~48_combout\);

-- Location: IOIBUF_X18_Y0_N1
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: LCCOMB_X8_Y11_N2
\byte_index[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[1]~34_combout\ = (byte_index(1) & (!\byte_index[0]~33\)) # (!byte_index(1) & ((\byte_index[0]~33\) # (GND)))
-- \byte_index[1]~35\ = CARRY((!\byte_index[0]~33\) # (!byte_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datad => VCC,
	cin => \byte_index[0]~33\,
	combout => \byte_index[1]~34_combout\,
	cout => \byte_index[1]~35\);

-- Location: IOIBUF_X11_Y24_N22
\in_startofpacket~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_startofpacket,
	o => \in_startofpacket~input_o\);

-- Location: LCCOMB_X12_Y11_N0
\byte_index[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~53_combout\ = (\s_state.ETHERNET_HEADER~q\) # ((\s_state.DATA~q\) # ((\s_state.IP_HEADER~q\) # (\s_state.UDP_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \s_state.DATA~q\,
	datac => \s_state.IP_HEADER~q\,
	datad => \s_state.UDP_HEADER~q\,
	combout => \byte_index[27]~53_combout\);

-- Location: LCCOMB_X11_Y11_N12
\byte_index[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~54_combout\ = (\out_ready~input_o\ & (((!\in_valid~input_o\ & \byte_index[27]~53_combout\)))) # (!\out_ready~input_o\ & (\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \in_valid~input_o\,
	datac => \out_ready~input_o\,
	datad => \byte_index[27]~53_combout\,
	combout => \byte_index[27]~54_combout\);

-- Location: LCCOMB_X10_Y10_N26
\byte_index[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~55_combout\ = ((!\byte_index[27]~54_combout\ & ((\in_startofpacket~input_o\) # (\s_state.IDLE~q\)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_startofpacket~input_o\,
	datab => \s_state.IDLE~q\,
	datac => \byte_index[27]~54_combout\,
	datad => \reset_n~input_o\,
	combout => \byte_index[27]~55_combout\);

-- Location: FF_X8_Y11_N3
\byte_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[1]~34_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(1));

-- Location: LCCOMB_X9_Y7_N20
\Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~7_combout\ = (byte_index(0) & !byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datad => byte_index(1),
	combout => \Equal9~7_combout\);

-- Location: IOIBUF_X13_Y0_N1
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: LCCOMB_X12_Y7_N0
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (udp_length(0) & (\in_data[0]~input_o\ $ (VCC))) # (!udp_length(0) & (\in_data[0]~input_o\ & VCC))
-- \Add4~1\ = CARRY((udp_length(0) & \in_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(0),
	datab => \in_data[0]~input_o\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X16_Y8_N2
\s_channel~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~7_combout\ = (\in_data[1]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datad => \reset_n~input_o\,
	combout => \s_channel~7_combout\);

-- Location: FF_X13_Y11_N23
\ip_header_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \ip_header_length[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(3));

-- Location: LCCOMB_X11_Y7_N0
\s_channel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~4_combout\ = (\in_data[0]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[0]~input_o\,
	datad => \reset_n~input_o\,
	combout => \s_channel~4_combout\);

-- Location: FF_X13_Y11_N17
\ip_header_length[2]\ : dffeas
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
	q => ip_header_length(2));

-- Location: IOIBUF_X16_Y24_N15
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: LCCOMB_X16_Y8_N16
\s_channel~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~8_combout\ = (\in_data[2]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datad => \reset_n~input_o\,
	combout => \s_channel~8_combout\);

-- Location: FF_X13_Y11_N5
\ip_header_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \ip_header_length[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(4));

-- Location: LCCOMB_X13_Y11_N28
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = ip_header_length(5) $ (((ip_header_length(4) & ((ip_header_length(3)) # (ip_header_length(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(5),
	combout => \Add5~2_combout\);

-- Location: LCCOMB_X8_Y11_N4
\byte_index[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[2]~36_combout\ = (byte_index(2) & (\byte_index[1]~35\ $ (GND))) # (!byte_index(2) & (!\byte_index[1]~35\ & VCC))
-- \byte_index[2]~37\ = CARRY((byte_index(2) & !\byte_index[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(2),
	datad => VCC,
	cin => \byte_index[1]~35\,
	combout => \byte_index[2]~36_combout\,
	cout => \byte_index[2]~37\);

-- Location: FF_X8_Y11_N5
\byte_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[2]~36_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(2));

-- Location: LCCOMB_X8_Y11_N6
\byte_index[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[3]~38_combout\ = (byte_index(3) & (!\byte_index[2]~37\)) # (!byte_index(3) & ((\byte_index[2]~37\) # (GND)))
-- \byte_index[3]~39\ = CARRY((!\byte_index[2]~37\) # (!byte_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datad => VCC,
	cin => \byte_index[2]~37\,
	combout => \byte_index[3]~38_combout\,
	cout => \byte_index[3]~39\);

-- Location: FF_X8_Y11_N7
\byte_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[3]~38_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(3));

-- Location: LCCOMB_X8_Y11_N8
\byte_index[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[4]~40_combout\ = (byte_index(4) & (\byte_index[3]~39\ $ (GND))) # (!byte_index(4) & (!\byte_index[3]~39\ & VCC))
-- \byte_index[4]~41\ = CARRY((byte_index(4) & !\byte_index[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(4),
	datad => VCC,
	cin => \byte_index[3]~39\,
	combout => \byte_index[4]~40_combout\,
	cout => \byte_index[4]~41\);

-- Location: FF_X8_Y11_N9
\byte_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[4]~40_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(4));

-- Location: LCCOMB_X8_Y11_N10
\byte_index[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[5]~42_combout\ = (byte_index(5) & (!\byte_index[4]~41\)) # (!byte_index(5) & ((\byte_index[4]~41\) # (GND)))
-- \byte_index[5]~43\ = CARRY((!\byte_index[4]~41\) # (!byte_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datad => VCC,
	cin => \byte_index[4]~41\,
	combout => \byte_index[5]~42_combout\,
	cout => \byte_index[5]~43\);

-- Location: FF_X8_Y11_N11
\byte_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[5]~42_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(5));

-- Location: LCCOMB_X13_Y11_N22
\Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = \Add5~2_combout\ $ (byte_index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~2_combout\,
	datad => byte_index(5),
	combout => \Equal8~2_combout\);

-- Location: LCCOMB_X13_Y11_N26
\Equal9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~8_combout\ = \Equal8~2_combout\ $ (((!ip_header_length(2) & (!ip_header_length(3) & ip_header_length(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~2_combout\,
	datab => ip_header_length(2),
	datac => ip_header_length(3),
	datad => ip_header_length(4),
	combout => \Equal9~8_combout\);

-- Location: LCCOMB_X8_Y11_N12
\byte_index[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[6]~44_combout\ = (byte_index(6) & (\byte_index[5]~43\ $ (GND))) # (!byte_index(6) & (!\byte_index[5]~43\ & VCC))
-- \byte_index[6]~45\ = CARRY((byte_index(6) & !\byte_index[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datad => VCC,
	cin => \byte_index[5]~43\,
	combout => \byte_index[6]~44_combout\,
	cout => \byte_index[6]~45\);

-- Location: FF_X8_Y11_N13
\byte_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[6]~44_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(6));

-- Location: LCCOMB_X13_Y11_N24
\Add5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~3_combout\ = (ip_header_length(5) & (ip_header_length(4) & ((ip_header_length(3)) # (ip_header_length(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => ip_header_length(4),
	datac => ip_header_length(3),
	datad => ip_header_length(2),
	combout => \Add5~3_combout\);

-- Location: LCCOMB_X13_Y11_N16
\Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~3_combout\ = byte_index(6) $ (\Add5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(6),
	datad => \Add5~3_combout\,
	combout => \Equal8~3_combout\);

-- Location: LCCOMB_X13_Y11_N6
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (!ip_header_length(3) & (!ip_header_length(2) & (ip_header_length(5) & ip_header_length(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(2),
	datac => ip_header_length(5),
	datad => ip_header_length(4),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X13_Y11_N20
\Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~5_combout\ = (byte_index(4) & (!ip_header_length(4) & (\Equal8~3_combout\ $ (!\Add2~0_combout\)))) # (!byte_index(4) & (ip_header_length(4) & (\Equal8~3_combout\ $ (!\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => \Equal8~3_combout\,
	datac => \Add2~0_combout\,
	datad => ip_header_length(4),
	combout => \Equal9~5_combout\);

-- Location: LCCOMB_X13_Y11_N14
\Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~4_combout\ = (byte_index(3) & (ip_header_length(3) & (ip_header_length(2) $ (!byte_index(2))))) # (!byte_index(3) & (!ip_header_length(3) & (ip_header_length(2) $ (!byte_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => ip_header_length(2),
	datac => byte_index(2),
	datad => ip_header_length(3),
	combout => \Equal9~4_combout\);

-- Location: LCCOMB_X8_Y11_N14
\byte_index[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[7]~46_combout\ = (byte_index(7) & (!\byte_index[6]~45\)) # (!byte_index(7) & ((\byte_index[6]~45\) # (GND)))
-- \byte_index[7]~47\ = CARRY((!\byte_index[6]~45\) # (!byte_index(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(7),
	datad => VCC,
	cin => \byte_index[6]~45\,
	combout => \byte_index[7]~46_combout\,
	cout => \byte_index[7]~47\);

-- Location: FF_X8_Y11_N15
\byte_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[7]~46_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(7));

-- Location: LCCOMB_X8_Y11_N16
\byte_index[8]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[8]~56_combout\ = (byte_index(8) & (\byte_index[7]~47\ $ (GND))) # (!byte_index(8) & (!\byte_index[7]~47\ & VCC))
-- \byte_index[8]~57\ = CARRY((byte_index(8) & !\byte_index[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(8),
	datad => VCC,
	cin => \byte_index[7]~47\,
	combout => \byte_index[8]~56_combout\,
	cout => \byte_index[8]~57\);

-- Location: FF_X8_Y11_N17
\byte_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[8]~56_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(8));

-- Location: LCCOMB_X8_Y11_N18
\byte_index[9]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[9]~58_combout\ = (byte_index(9) & (!\byte_index[8]~57\)) # (!byte_index(9) & ((\byte_index[8]~57\) # (GND)))
-- \byte_index[9]~59\ = CARRY((!\byte_index[8]~57\) # (!byte_index(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(9),
	datad => VCC,
	cin => \byte_index[8]~57\,
	combout => \byte_index[9]~58_combout\,
	cout => \byte_index[9]~59\);

-- Location: FF_X8_Y11_N19
\byte_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[9]~58_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(9));

-- Location: LCCOMB_X8_Y11_N20
\byte_index[10]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[10]~60_combout\ = (byte_index(10) & (\byte_index[9]~59\ $ (GND))) # (!byte_index(10) & (!\byte_index[9]~59\ & VCC))
-- \byte_index[10]~61\ = CARRY((byte_index(10) & !\byte_index[9]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(10),
	datad => VCC,
	cin => \byte_index[9]~59\,
	combout => \byte_index[10]~60_combout\,
	cout => \byte_index[10]~61\);

-- Location: FF_X8_Y11_N21
\byte_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[10]~60_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(10));

-- Location: LCCOMB_X8_Y11_N22
\byte_index[11]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[11]~62_combout\ = (byte_index(11) & (!\byte_index[10]~61\)) # (!byte_index(11) & ((\byte_index[10]~61\) # (GND)))
-- \byte_index[11]~63\ = CARRY((!\byte_index[10]~61\) # (!byte_index(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datad => VCC,
	cin => \byte_index[10]~61\,
	combout => \byte_index[11]~62_combout\,
	cout => \byte_index[11]~63\);

-- Location: FF_X8_Y11_N23
\byte_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[11]~62_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(11));

-- Location: LCCOMB_X8_Y11_N24
\byte_index[12]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[12]~64_combout\ = (byte_index(12) & (\byte_index[11]~63\ $ (GND))) # (!byte_index(12) & (!\byte_index[11]~63\ & VCC))
-- \byte_index[12]~65\ = CARRY((byte_index(12) & !\byte_index[11]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(12),
	datad => VCC,
	cin => \byte_index[11]~63\,
	combout => \byte_index[12]~64_combout\,
	cout => \byte_index[12]~65\);

-- Location: FF_X8_Y11_N25
\byte_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[12]~64_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(12));

-- Location: LCCOMB_X8_Y11_N26
\byte_index[13]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[13]~66_combout\ = (byte_index(13) & (!\byte_index[12]~65\)) # (!byte_index(13) & ((\byte_index[12]~65\) # (GND)))
-- \byte_index[13]~67\ = CARRY((!\byte_index[12]~65\) # (!byte_index(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datad => VCC,
	cin => \byte_index[12]~65\,
	combout => \byte_index[13]~66_combout\,
	cout => \byte_index[13]~67\);

-- Location: FF_X8_Y11_N27
\byte_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[13]~66_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(13));

-- Location: LCCOMB_X8_Y11_N28
\byte_index[14]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[14]~68_combout\ = (byte_index(14) & (\byte_index[13]~67\ $ (GND))) # (!byte_index(14) & (!\byte_index[13]~67\ & VCC))
-- \byte_index[14]~69\ = CARRY((byte_index(14) & !\byte_index[13]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(14),
	datad => VCC,
	cin => \byte_index[13]~67\,
	combout => \byte_index[14]~68_combout\,
	cout => \byte_index[14]~69\);

-- Location: FF_X8_Y11_N29
\byte_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[14]~68_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(14));

-- Location: LCCOMB_X8_Y11_N30
\byte_index[15]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~70_combout\ = (byte_index(15) & (!\byte_index[14]~69\)) # (!byte_index(15) & ((\byte_index[14]~69\) # (GND)))
-- \byte_index[15]~71\ = CARRY((!\byte_index[14]~69\) # (!byte_index(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datad => VCC,
	cin => \byte_index[14]~69\,
	combout => \byte_index[15]~70_combout\,
	cout => \byte_index[15]~71\);

-- Location: FF_X8_Y11_N31
\byte_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[15]~70_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(15));

-- Location: LCCOMB_X8_Y10_N0
\byte_index[16]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[16]~72_combout\ = (byte_index(16) & (\byte_index[15]~71\ $ (GND))) # (!byte_index(16) & (!\byte_index[15]~71\ & VCC))
-- \byte_index[16]~73\ = CARRY((byte_index(16) & !\byte_index[15]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(16),
	datad => VCC,
	cin => \byte_index[15]~71\,
	combout => \byte_index[16]~72_combout\,
	cout => \byte_index[16]~73\);

-- Location: FF_X8_Y10_N1
\byte_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[16]~72_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(16));

-- Location: LCCOMB_X8_Y10_N2
\byte_index[17]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[17]~74_combout\ = (byte_index(17) & (!\byte_index[16]~73\)) # (!byte_index(17) & ((\byte_index[16]~73\) # (GND)))
-- \byte_index[17]~75\ = CARRY((!\byte_index[16]~73\) # (!byte_index(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(17),
	datad => VCC,
	cin => \byte_index[16]~73\,
	combout => \byte_index[17]~74_combout\,
	cout => \byte_index[17]~75\);

-- Location: FF_X8_Y10_N3
\byte_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[17]~74_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(17));

-- Location: LCCOMB_X8_Y10_N4
\byte_index[18]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[18]~76_combout\ = (byte_index(18) & (\byte_index[17]~75\ $ (GND))) # (!byte_index(18) & (!\byte_index[17]~75\ & VCC))
-- \byte_index[18]~77\ = CARRY((byte_index(18) & !\byte_index[17]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(18),
	datad => VCC,
	cin => \byte_index[17]~75\,
	combout => \byte_index[18]~76_combout\,
	cout => \byte_index[18]~77\);

-- Location: FF_X8_Y10_N5
\byte_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[18]~76_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(18));

-- Location: LCCOMB_X8_Y10_N6
\byte_index[19]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[19]~78_combout\ = (byte_index(19) & (!\byte_index[18]~77\)) # (!byte_index(19) & ((\byte_index[18]~77\) # (GND)))
-- \byte_index[19]~79\ = CARRY((!\byte_index[18]~77\) # (!byte_index(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datad => VCC,
	cin => \byte_index[18]~77\,
	combout => \byte_index[19]~78_combout\,
	cout => \byte_index[19]~79\);

-- Location: FF_X8_Y10_N7
\byte_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[19]~78_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(19));

-- Location: LCCOMB_X8_Y10_N8
\byte_index[20]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[20]~80_combout\ = (byte_index(20) & (\byte_index[19]~79\ $ (GND))) # (!byte_index(20) & (!\byte_index[19]~79\ & VCC))
-- \byte_index[20]~81\ = CARRY((byte_index(20) & !\byte_index[19]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(20),
	datad => VCC,
	cin => \byte_index[19]~79\,
	combout => \byte_index[20]~80_combout\,
	cout => \byte_index[20]~81\);

-- Location: FF_X8_Y10_N9
\byte_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[20]~80_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(20));

-- Location: LCCOMB_X8_Y10_N10
\byte_index[21]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[21]~82_combout\ = (byte_index(21) & (!\byte_index[20]~81\)) # (!byte_index(21) & ((\byte_index[20]~81\) # (GND)))
-- \byte_index[21]~83\ = CARRY((!\byte_index[20]~81\) # (!byte_index(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datad => VCC,
	cin => \byte_index[20]~81\,
	combout => \byte_index[21]~82_combout\,
	cout => \byte_index[21]~83\);

-- Location: FF_X8_Y10_N11
\byte_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[21]~82_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(21));

-- Location: LCCOMB_X8_Y10_N12
\byte_index[22]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[22]~84_combout\ = (byte_index(22) & (\byte_index[21]~83\ $ (GND))) # (!byte_index(22) & (!\byte_index[21]~83\ & VCC))
-- \byte_index[22]~85\ = CARRY((byte_index(22) & !\byte_index[21]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datad => VCC,
	cin => \byte_index[21]~83\,
	combout => \byte_index[22]~84_combout\,
	cout => \byte_index[22]~85\);

-- Location: FF_X8_Y10_N13
\byte_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[22]~84_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(22));

-- Location: LCCOMB_X8_Y10_N14
\byte_index[23]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[23]~86_combout\ = (byte_index(23) & (!\byte_index[22]~85\)) # (!byte_index(23) & ((\byte_index[22]~85\) # (GND)))
-- \byte_index[23]~87\ = CARRY((!\byte_index[22]~85\) # (!byte_index(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(23),
	datad => VCC,
	cin => \byte_index[22]~85\,
	combout => \byte_index[23]~86_combout\,
	cout => \byte_index[23]~87\);

-- Location: FF_X8_Y10_N15
\byte_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[23]~86_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(23));

-- Location: LCCOMB_X8_Y10_N16
\byte_index[24]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[24]~88_combout\ = (byte_index(24) & (\byte_index[23]~87\ $ (GND))) # (!byte_index(24) & (!\byte_index[23]~87\ & VCC))
-- \byte_index[24]~89\ = CARRY((byte_index(24) & !\byte_index[23]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(24),
	datad => VCC,
	cin => \byte_index[23]~87\,
	combout => \byte_index[24]~88_combout\,
	cout => \byte_index[24]~89\);

-- Location: FF_X8_Y10_N17
\byte_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[24]~88_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(24));

-- Location: LCCOMB_X8_Y10_N18
\byte_index[25]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[25]~90_combout\ = (byte_index(25) & (!\byte_index[24]~89\)) # (!byte_index(25) & ((\byte_index[24]~89\) # (GND)))
-- \byte_index[25]~91\ = CARRY((!\byte_index[24]~89\) # (!byte_index(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(25),
	datad => VCC,
	cin => \byte_index[24]~89\,
	combout => \byte_index[25]~90_combout\,
	cout => \byte_index[25]~91\);

-- Location: FF_X8_Y10_N19
\byte_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[25]~90_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(25));

-- Location: LCCOMB_X8_Y10_N20
\byte_index[26]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[26]~92_combout\ = (byte_index(26) & (\byte_index[25]~91\ $ (GND))) # (!byte_index(26) & (!\byte_index[25]~91\ & VCC))
-- \byte_index[26]~93\ = CARRY((byte_index(26) & !\byte_index[25]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(26),
	datad => VCC,
	cin => \byte_index[25]~91\,
	combout => \byte_index[26]~92_combout\,
	cout => \byte_index[26]~93\);

-- Location: FF_X8_Y10_N21
\byte_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[26]~92_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(26));

-- Location: LCCOMB_X8_Y10_N22
\byte_index[27]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~94_combout\ = (byte_index(27) & (!\byte_index[26]~93\)) # (!byte_index(27) & ((\byte_index[26]~93\) # (GND)))
-- \byte_index[27]~95\ = CARRY((!\byte_index[26]~93\) # (!byte_index(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datad => VCC,
	cin => \byte_index[26]~93\,
	combout => \byte_index[27]~94_combout\,
	cout => \byte_index[27]~95\);

-- Location: FF_X8_Y10_N23
\byte_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[27]~94_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(27));

-- Location: LCCOMB_X8_Y10_N24
\byte_index[28]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[28]~96_combout\ = (byte_index(28) & (\byte_index[27]~95\ $ (GND))) # (!byte_index(28) & (!\byte_index[27]~95\ & VCC))
-- \byte_index[28]~97\ = CARRY((byte_index(28) & !\byte_index[27]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(28),
	datad => VCC,
	cin => \byte_index[27]~95\,
	combout => \byte_index[28]~96_combout\,
	cout => \byte_index[28]~97\);

-- Location: FF_X8_Y10_N25
\byte_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[28]~96_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(28));

-- Location: LCCOMB_X8_Y10_N26
\byte_index[29]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[29]~98_combout\ = (byte_index(29) & (!\byte_index[28]~97\)) # (!byte_index(29) & ((\byte_index[28]~97\) # (GND)))
-- \byte_index[29]~99\ = CARRY((!\byte_index[28]~97\) # (!byte_index(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datad => VCC,
	cin => \byte_index[28]~97\,
	combout => \byte_index[29]~98_combout\,
	cout => \byte_index[29]~99\);

-- Location: FF_X8_Y10_N27
\byte_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[29]~98_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(29));

-- Location: LCCOMB_X8_Y10_N28
\byte_index[30]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[30]~100_combout\ = (byte_index(30) & (\byte_index[29]~99\ $ (GND))) # (!byte_index(30) & (!\byte_index[29]~99\ & VCC))
-- \byte_index[30]~101\ = CARRY((byte_index(30) & !\byte_index[29]~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(30),
	datad => VCC,
	cin => \byte_index[29]~99\,
	combout => \byte_index[30]~100_combout\,
	cout => \byte_index[30]~101\);

-- Location: FF_X8_Y10_N29
\byte_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[30]~100_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(30));

-- Location: LCCOMB_X8_Y10_N30
\byte_index[31]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~102_combout\ = byte_index(31) $ (\byte_index[30]~101\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	cin => \byte_index[30]~101\,
	combout => \byte_index[31]~102_combout\);

-- Location: FF_X8_Y10_N31
\byte_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[31]~102_combout\,
	sclr => \byte_index[27]~52_combout\,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(31));

-- Location: LCCOMB_X10_Y11_N18
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!byte_index(28) & (!byte_index(30) & (!byte_index(29) & !byte_index(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(28),
	datab => byte_index(30),
	datac => byte_index(29),
	datad => byte_index(27),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X11_Y11_N8
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

-- Location: LCCOMB_X10_Y8_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!byte_index(22) & (!byte_index(19) & (!byte_index(21) & !byte_index(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datab => byte_index(19),
	datac => byte_index(21),
	datad => byte_index(20),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X10_Y8_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!byte_index(15) & (!byte_index(17) & (!byte_index(16) & !byte_index(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datab => byte_index(17),
	datac => byte_index(16),
	datad => byte_index(18),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X9_Y8_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!byte_index(12) & (!byte_index(13) & (!byte_index(14) & !byte_index(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datab => byte_index(13),
	datac => byte_index(14),
	datad => byte_index(11),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X9_Y11_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!byte_index(7) & (!byte_index(10) & (!byte_index(8) & !byte_index(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(7),
	datab => byte_index(10),
	datac => byte_index(8),
	datad => byte_index(9),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X10_Y8_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X11_Y11_N10
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!byte_index(31) & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X13_Y11_N10
\Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~6_combout\ = (!\Equal9~8_combout\ & (\Equal9~5_combout\ & (\Equal9~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~8_combout\,
	datab => \Equal9~5_combout\,
	datac => \Equal9~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal9~6_combout\);

-- Location: LCCOMB_X14_Y9_N24
\udp_length~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~29_combout\ = (\reset_n~input_o\ & (\Add4~0_combout\ & ((!\Equal9~6_combout\) # (!\Equal9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Equal9~7_combout\,
	datac => \Add4~0_combout\,
	datad => \Equal9~6_combout\,
	combout => \udp_length~29_combout\);

-- Location: LCCOMB_X14_Y11_N10
\udp_length[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[25]~1_combout\ = (byte_index(0) $ (!byte_index(1))) # (!\Equal9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datac => byte_index(1),
	datad => \Equal9~6_combout\,
	combout => \udp_length[25]~1_combout\);

-- Location: LCCOMB_X14_Y11_N24
\udp_length[25]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[25]~2_combout\ = ((\PROCES1~0_combout\ & (\s_state.UDP_HEADER~q\ & !\udp_length[25]~1_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~0_combout\,
	datab => \s_state.UDP_HEADER~q\,
	datac => \reset_n~input_o\,
	datad => \udp_length[25]~1_combout\,
	combout => \udp_length[25]~2_combout\);

-- Location: FF_X14_Y9_N25
\udp_length[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length~29_combout\,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(0));

-- Location: LCCOMB_X12_Y7_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\in_data[1]~input_o\ & ((udp_length(1) & (\Add4~1\ & VCC)) # (!udp_length(1) & (!\Add4~1\)))) # (!\in_data[1]~input_o\ & ((udp_length(1) & (!\Add4~1\)) # (!udp_length(1) & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\in_data[1]~input_o\ & (!udp_length(1) & !\Add4~1\)) # (!\in_data[1]~input_o\ & ((!\Add4~1\) # (!udp_length(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => udp_length(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X13_Y7_N10
\udp_length~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~28_combout\ = (\Add4~2_combout\ & (\reset_n~input_o\ & ((!\Equal9~6_combout\) # (!\Equal9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Equal9~7_combout\,
	datac => \Equal9~6_combout\,
	datad => \reset_n~input_o\,
	combout => \udp_length~28_combout\);

-- Location: FF_X12_Y9_N19
\udp_length[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~28_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(1));

-- Location: LCCOMB_X12_Y9_N0
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = udp_length(0) $ (VCC)
-- \Add8~1\ = CARRY(udp_length(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(0),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X12_Y9_N2
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (udp_length(1) & (!\Add8~1\)) # (!udp_length(1) & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!udp_length(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(1),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X9_Y9_N4
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\Add8~2_combout\ & (byte_index(1) & (byte_index(0) $ (!\Add8~0_combout\)))) # (!\Add8~2_combout\ & (!byte_index(1) & (byte_index(0) $ (!\Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => byte_index(0),
	datac => \Add8~0_combout\,
	datad => byte_index(1),
	combout => \Equal13~0_combout\);

-- Location: IOIBUF_X11_Y0_N15
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: LCCOMB_X12_Y7_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((udp_length(2) $ (\in_data[2]~input_o\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((udp_length(2) & ((\in_data[2]~input_o\) # (!\Add4~3\))) # (!udp_length(2) & (\in_data[2]~input_o\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(2),
	datab => \in_data[2]~input_o\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X13_Y7_N4
\udp_length~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~27_combout\ = (\Add4~4_combout\ & (\reset_n~input_o\ & ((!\Equal9~6_combout\) # (!\Equal9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~7_combout\,
	datab => \Add4~4_combout\,
	datac => \Equal9~6_combout\,
	datad => \reset_n~input_o\,
	combout => \udp_length~27_combout\);

-- Location: FF_X12_Y9_N27
\udp_length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~27_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(2));

-- Location: LCCOMB_X12_Y7_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\in_data[3]~input_o\ & ((udp_length(3) & (\Add4~5\ & VCC)) # (!udp_length(3) & (!\Add4~5\)))) # (!\in_data[3]~input_o\ & ((udp_length(3) & (!\Add4~5\)) # (!udp_length(3) & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\in_data[3]~input_o\ & (!udp_length(3) & !\Add4~5\)) # (!\in_data[3]~input_o\ & ((!\Add4~5\) # (!udp_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => udp_length(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X13_Y7_N2
\udp_length~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~26_combout\ = (\Add4~6_combout\ & (\reset_n~input_o\ & ((!\Equal9~6_combout\) # (!\Equal9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~7_combout\,
	datab => \Add4~6_combout\,
	datac => \Equal9~6_combout\,
	datad => \reset_n~input_o\,
	combout => \udp_length~26_combout\);

-- Location: FF_X12_Y9_N21
\udp_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~26_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(3));

-- Location: LCCOMB_X12_Y7_N8
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((udp_length(4) $ (\in_data[4]~input_o\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((udp_length(4) & ((\in_data[4]~input_o\) # (!\Add4~7\))) # (!udp_length(4) & (\in_data[4]~input_o\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(4),
	datab => \in_data[4]~input_o\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X13_Y7_N16
\udp_length~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~25_combout\ = (\Add4~8_combout\ & (\reset_n~input_o\ & ((!\Equal9~6_combout\) # (!\Equal9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datab => \Equal9~7_combout\,
	datac => \Equal9~6_combout\,
	datad => \reset_n~input_o\,
	combout => \udp_length~25_combout\);

-- Location: FF_X12_Y9_N7
\udp_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~25_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(4));

-- Location: LCCOMB_X12_Y7_N10
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\in_data[5]~input_o\ & ((udp_length(5) & (\Add4~9\ & VCC)) # (!udp_length(5) & (!\Add4~9\)))) # (!\in_data[5]~input_o\ & ((udp_length(5) & (!\Add4~9\)) # (!udp_length(5) & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((\in_data[5]~input_o\ & (!udp_length(5) & !\Add4~9\)) # (!\in_data[5]~input_o\ & ((!\Add4~9\) # (!udp_length(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[5]~input_o\,
	datab => udp_length(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X13_Y7_N30
\udp_length~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~24_combout\ = (\Add4~10_combout\ & (\reset_n~input_o\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~24_combout\);

-- Location: FF_X12_Y9_N31
\udp_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~24_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(5));

-- Location: LCCOMB_X13_Y11_N18
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = ip_header_length(4) $ (((ip_header_length(3)) # (ip_header_length(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datac => ip_header_length(4),
	datad => ip_header_length(2),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X13_Y11_N0
\Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = ip_header_length(3) $ (ip_header_length(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ip_header_length(3),
	datad => ip_header_length(2),
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X12_Y9_N4
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((udp_length(2) $ (ip_header_length(2) $ (\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((udp_length(2) & ((!\Add8~3\) # (!ip_header_length(2)))) # (!udp_length(2) & (!ip_header_length(2) & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(2),
	datab => ip_header_length(2),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X12_Y9_N6
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add5~1_combout\ & ((udp_length(3) & (!\Add8~5\)) # (!udp_length(3) & ((\Add8~5\) # (GND))))) # (!\Add5~1_combout\ & ((udp_length(3) & (\Add8~5\ & VCC)) # (!udp_length(3) & (!\Add8~5\))))
-- \Add8~7\ = CARRY((\Add5~1_combout\ & ((!\Add8~5\) # (!udp_length(3)))) # (!\Add5~1_combout\ & (!udp_length(3) & !\Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~1_combout\,
	datab => udp_length(3),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X12_Y9_N8
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = ((udp_length(4) $ (\Add5~0_combout\ $ (!\Add8~7\)))) # (GND)
-- \Add8~9\ = CARRY((udp_length(4) & ((\Add5~0_combout\) # (!\Add8~7\))) # (!udp_length(4) & (\Add5~0_combout\ & !\Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(4),
	datab => \Add5~0_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X12_Y9_N10
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (udp_length(5) & ((\Add5~2_combout\ & (\Add8~9\ & VCC)) # (!\Add5~2_combout\ & (!\Add8~9\)))) # (!udp_length(5) & ((\Add5~2_combout\ & (!\Add8~9\)) # (!\Add5~2_combout\ & ((\Add8~9\) # (GND)))))
-- \Add8~11\ = CARRY((udp_length(5) & (!\Add5~2_combout\ & !\Add8~9\)) # (!udp_length(5) & ((!\Add8~9\) # (!\Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(5),
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X11_Y11_N28
\Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (byte_index(4) & (\Add8~8_combout\ & (byte_index(5) $ (!\Add8~10_combout\)))) # (!byte_index(4) & (!\Add8~8_combout\ & (byte_index(5) $ (!\Add8~10_combout\))))

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
	combout => \Equal13~2_combout\);

-- Location: IOIBUF_X18_Y0_N8
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: LCCOMB_X12_Y7_N12
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((udp_length(6) $ (\in_data[6]~input_o\ $ (!\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((udp_length(6) & ((\in_data[6]~input_o\) # (!\Add4~11\))) # (!udp_length(6) & (\in_data[6]~input_o\ & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(6),
	datab => \in_data[6]~input_o\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X11_Y7_N26
\udp_length~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~23_combout\ = (\Add4~12_combout\ & (\reset_n~input_o\ & ((!\Equal9~6_combout\) # (!\Equal9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~7_combout\,
	datab => \Add4~12_combout\,
	datac => \Equal9~6_combout\,
	datad => \reset_n~input_o\,
	combout => \udp_length~23_combout\);

-- Location: FF_X12_Y9_N11
\udp_length[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~23_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(6));

-- Location: LCCOMB_X12_Y9_N12
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = ((udp_length(6) $ (\Add5~3_combout\ $ (!\Add8~11\)))) # (GND)
-- \Add8~13\ = CARRY((udp_length(6) & ((\Add5~3_combout\) # (!\Add8~11\))) # (!udp_length(6) & (\Add5~3_combout\ & !\Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(6),
	datab => \Add5~3_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: IOIBUF_X34_Y7_N15
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: LCCOMB_X12_Y7_N14
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\in_data[7]~input_o\ & ((udp_length(7) & (\Add4~13\ & VCC)) # (!udp_length(7) & (!\Add4~13\)))) # (!\in_data[7]~input_o\ & ((udp_length(7) & (!\Add4~13\)) # (!udp_length(7) & ((\Add4~13\) # (GND)))))
-- \Add4~15\ = CARRY((\in_data[7]~input_o\ & (!udp_length(7) & !\Add4~13\)) # (!\in_data[7]~input_o\ & ((!\Add4~13\) # (!udp_length(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => udp_length(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X13_Y7_N0
\udp_length~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~22_combout\ = (\Add4~14_combout\ & (\reset_n~input_o\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~22_combout\);

-- Location: FF_X12_Y9_N1
\udp_length[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~22_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(7));

-- Location: LCCOMB_X12_Y9_N14
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (udp_length(7) & (!\Add8~13\)) # (!udp_length(7) & ((\Add8~13\) # (GND)))
-- \Add8~15\ = CARRY((!\Add8~13\) # (!udp_length(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(7),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X14_Y9_N28
\Equal13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = (byte_index(6) & (\Add8~12_combout\ & (byte_index(7) $ (!\Add8~14_combout\)))) # (!byte_index(6) & (!\Add8~12_combout\ & (byte_index(7) $ (!\Add8~14_combout\))))

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
	combout => \Equal13~3_combout\);

-- Location: LCCOMB_X12_Y11_N26
\Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (byte_index(2) & (\Add8~4_combout\ & (\Add8~6_combout\ $ (!byte_index(3))))) # (!byte_index(2) & (!\Add8~4_combout\ & (\Add8~6_combout\ $ (!byte_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Add8~4_combout\,
	datac => \Add8~6_combout\,
	datad => byte_index(3),
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X11_Y11_N22
\Equal13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (\Equal13~0_combout\ & (\Equal13~2_combout\ & (\Equal13~3_combout\ & \Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal13~2_combout\,
	datac => \Equal13~3_combout\,
	datad => \Equal13~1_combout\,
	combout => \Equal13~4_combout\);

-- Location: LCCOMB_X12_Y7_N16
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (udp_length(8) & (\Add4~15\ $ (GND))) # (!udp_length(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((udp_length(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X13_Y7_N6
\udp_length~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~21_combout\ = (\Equal9~6_combout\ & ((\Equal9~7_combout\ & ((\in_data[0]~input_o\))) # (!\Equal9~7_combout\ & (\Add4~16_combout\)))) # (!\Equal9~6_combout\ & (\Add4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => \in_data[0]~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~21_combout\);

-- Location: FF_X13_Y9_N19
\udp_length[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~21_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(8));

-- Location: LCCOMB_X12_Y7_N18
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (udp_length(9) & (!\Add4~17\)) # (!udp_length(9) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!udp_length(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(9),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X13_Y7_N12
\udp_length~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~20_combout\ = (\Equal9~7_combout\ & ((\Equal9~6_combout\ & (\in_data[1]~input_o\)) # (!\Equal9~6_combout\ & ((\Add4~18_combout\))))) # (!\Equal9~7_combout\ & (((\Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~7_combout\,
	datab => \in_data[1]~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Add4~18_combout\,
	combout => \udp_length~20_combout\);

-- Location: FF_X13_Y9_N23
\udp_length[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~20_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(9));

-- Location: LCCOMB_X12_Y7_N20
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (udp_length(10) & (\Add4~19\ $ (GND))) # (!udp_length(10) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((udp_length(10) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(10),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X13_Y7_N22
\udp_length~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~19_combout\ = (\Equal9~6_combout\ & ((\Equal9~7_combout\ & (\in_data[2]~input_o\)) # (!\Equal9~7_combout\ & ((\Add4~20_combout\))))) # (!\Equal9~6_combout\ & (((\Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \Add4~20_combout\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~19_combout\);

-- Location: FF_X13_Y9_N31
\udp_length[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~19_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(10));

-- Location: LCCOMB_X12_Y9_N16
\Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (udp_length(8) & (\Add8~15\ $ (GND))) # (!udp_length(8) & (!\Add8~15\ & VCC))
-- \Add8~17\ = CARRY((udp_length(8) & !\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(8),
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X12_Y9_N18
\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (udp_length(9) & (!\Add8~17\)) # (!udp_length(9) & ((\Add8~17\) # (GND)))
-- \Add8~19\ = CARRY((!\Add8~17\) # (!udp_length(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(9),
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X12_Y9_N20
\Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (udp_length(10) & (\Add8~19\ $ (GND))) # (!udp_length(10) & (!\Add8~19\ & VCC))
-- \Add8~21\ = CARRY((udp_length(10) & !\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(10),
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: LCCOMB_X12_Y7_N22
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (udp_length(11) & (!\Add4~21\)) # (!udp_length(11) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!udp_length(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(11),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X14_Y9_N14
\udp_length~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~18_combout\ = (\Equal9~6_combout\ & ((\Equal9~7_combout\ & (\in_data[3]~input_o\)) # (!\Equal9~7_combout\ & ((\Add4~22_combout\))))) # (!\Equal9~6_combout\ & (((\Add4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~6_combout\,
	datab => \in_data[3]~input_o\,
	datac => \Equal9~7_combout\,
	datad => \Add4~22_combout\,
	combout => \udp_length~18_combout\);

-- Location: FF_X13_Y9_N9
\udp_length[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~18_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(11));

-- Location: LCCOMB_X12_Y9_N22
\Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (udp_length(11) & (!\Add8~21\)) # (!udp_length(11) & ((\Add8~21\) # (GND)))
-- \Add8~23\ = CARRY((!\Add8~21\) # (!udp_length(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(11),
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X10_Y9_N12
\Equal13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = (byte_index(10) & (\Add8~20_combout\ & (byte_index(11) $ (!\Add8~22_combout\)))) # (!byte_index(10) & (!\Add8~20_combout\ & (byte_index(11) $ (!\Add8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(10),
	datab => \Add8~20_combout\,
	datac => byte_index(11),
	datad => \Add8~22_combout\,
	combout => \Equal13~6_combout\);

-- Location: LCCOMB_X10_Y9_N14
\Equal13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = (byte_index(9) & (\Add8~18_combout\ & (byte_index(8) $ (!\Add8~16_combout\)))) # (!byte_index(9) & (!\Add8~18_combout\ & (byte_index(8) $ (!\Add8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(8),
	datac => \Add8~18_combout\,
	datad => \Add8~16_combout\,
	combout => \Equal13~5_combout\);

-- Location: LCCOMB_X12_Y7_N24
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (udp_length(12) & (\Add4~23\ $ (GND))) # (!udp_length(12) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((udp_length(12) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(12),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X13_Y7_N20
\udp_length~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~17_combout\ = (\Equal9~7_combout\ & ((\Equal9~6_combout\ & (\in_data[4]~input_o\)) # (!\Equal9~6_combout\ & ((\Add4~24_combout\))))) # (!\Equal9~7_combout\ & (((\Add4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \Equal9~7_combout\,
	datac => \Equal9~6_combout\,
	datad => \Add4~24_combout\,
	combout => \udp_length~17_combout\);

-- Location: FF_X13_Y9_N27
\udp_length[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~17_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(12));

-- Location: LCCOMB_X12_Y7_N26
\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (udp_length(13) & (!\Add4~25\)) # (!udp_length(13) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!udp_length(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(13),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X13_Y7_N26
\udp_length~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~16_combout\ = (\Equal9~6_combout\ & ((\Equal9~7_combout\ & ((\in_data[5]~input_o\))) # (!\Equal9~7_combout\ & (\Add4~26_combout\)))) # (!\Equal9~6_combout\ & (\Add4~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~26_combout\,
	datab => \in_data[5]~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~16_combout\);

-- Location: FF_X13_Y9_N29
\udp_length[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~16_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(13));

-- Location: LCCOMB_X12_Y9_N24
\Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (udp_length(12) & (\Add8~23\ $ (GND))) # (!udp_length(12) & (!\Add8~23\ & VCC))
-- \Add8~25\ = CARRY((udp_length(12) & !\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(12),
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: LCCOMB_X12_Y9_N26
\Add8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (udp_length(13) & (!\Add8~25\)) # (!udp_length(13) & ((\Add8~25\) # (GND)))
-- \Add8~27\ = CARRY((!\Add8~25\) # (!udp_length(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(13),
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

-- Location: LCCOMB_X10_Y9_N22
\Equal13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~7_combout\ = (byte_index(12) & (\Add8~24_combout\ & (byte_index(13) $ (!\Add8~26_combout\)))) # (!byte_index(12) & (!\Add8~24_combout\ & (byte_index(13) $ (!\Add8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datab => byte_index(13),
	datac => \Add8~26_combout\,
	datad => \Add8~24_combout\,
	combout => \Equal13~7_combout\);

-- Location: LCCOMB_X12_Y7_N28
\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (udp_length(14) & (\Add4~27\ $ (GND))) # (!udp_length(14) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((udp_length(14) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(14),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X13_Y7_N28
\udp_length~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~15_combout\ = (\Equal9~7_combout\ & ((\Equal9~6_combout\ & (\in_data[6]~input_o\)) # (!\Equal9~6_combout\ & ((\Add4~28_combout\))))) # (!\Equal9~7_combout\ & (((\Add4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[6]~input_o\,
	datab => \Equal9~7_combout\,
	datac => \Equal9~6_combout\,
	datad => \Add4~28_combout\,
	combout => \udp_length~15_combout\);

-- Location: FF_X13_Y9_N13
\udp_length[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~15_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(14));

-- Location: LCCOMB_X12_Y9_N28
\Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = (udp_length(14) & (\Add8~27\ $ (GND))) # (!udp_length(14) & (!\Add8~27\ & VCC))
-- \Add8~29\ = CARRY((udp_length(14) & !\Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(14),
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

-- Location: LCCOMB_X12_Y7_N30
\Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (udp_length(15) & (!\Add4~29\)) # (!udp_length(15) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!udp_length(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(15),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X13_Y7_N18
\udp_length~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~14_combout\ = (\Equal9~7_combout\ & ((\Equal9~6_combout\ & (\in_data[7]~input_o\)) # (!\Equal9~6_combout\ & ((\Add4~30_combout\))))) # (!\Equal9~7_combout\ & (((\Add4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => \Equal9~7_combout\,
	datac => \Equal9~6_combout\,
	datad => \Add4~30_combout\,
	combout => \udp_length~14_combout\);

-- Location: FF_X13_Y9_N15
\udp_length[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~14_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(15));

-- Location: LCCOMB_X12_Y9_N30
\Add8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = (udp_length(15) & (!\Add8~29\)) # (!udp_length(15) & ((\Add8~29\) # (GND)))
-- \Add8~31\ = CARRY((!\Add8~29\) # (!udp_length(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(15),
	datad => VCC,
	cin => \Add8~29\,
	combout => \Add8~30_combout\,
	cout => \Add8~31\);

-- Location: LCCOMB_X10_Y9_N16
\Equal13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~8_combout\ = (byte_index(15) & (\Add8~30_combout\ & (\Add8~28_combout\ $ (!byte_index(14))))) # (!byte_index(15) & (!\Add8~30_combout\ & (\Add8~28_combout\ $ (!byte_index(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datab => \Add8~28_combout\,
	datac => byte_index(14),
	datad => \Add8~30_combout\,
	combout => \Equal13~8_combout\);

-- Location: LCCOMB_X10_Y9_N2
\Equal13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~9_combout\ = (\Equal13~6_combout\ & (\Equal13~5_combout\ & (\Equal13~7_combout\ & \Equal13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~6_combout\,
	datab => \Equal13~5_combout\,
	datac => \Equal13~7_combout\,
	datad => \Equal13~8_combout\,
	combout => \Equal13~9_combout\);

-- Location: LCCOMB_X12_Y6_N0
\Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (udp_length(16) & (\Add4~31\ $ (GND))) # (!udp_length(16) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((udp_length(16) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(16),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X13_Y6_N20
\udp_length~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~13_combout\ = (\Add4~32_combout\ & (\reset_n~input_o\ & ((!\Equal9~6_combout\) # (!\Equal9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~32_combout\,
	datab => \Equal9~7_combout\,
	datac => \Equal9~6_combout\,
	datad => \reset_n~input_o\,
	combout => \udp_length~13_combout\);

-- Location: FF_X12_Y8_N5
\udp_length[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~13_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(16));

-- Location: LCCOMB_X12_Y6_N2
\Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = (udp_length(17) & (!\Add4~33\)) # (!udp_length(17) & ((\Add4~33\) # (GND)))
-- \Add4~35\ = CARRY((!\Add4~33\) # (!udp_length(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(17),
	datad => VCC,
	cin => \Add4~33\,
	combout => \Add4~34_combout\,
	cout => \Add4~35\);

-- Location: LCCOMB_X13_Y6_N2
\udp_length~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~12_combout\ = (\Add4~34_combout\ & (\reset_n~input_o\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~34_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~12_combout\);

-- Location: FF_X12_Y8_N19
\udp_length[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~12_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(17));

-- Location: LCCOMB_X12_Y6_N4
\Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~36_combout\ = (udp_length(18) & (\Add4~35\ $ (GND))) # (!udp_length(18) & (!\Add4~35\ & VCC))
-- \Add4~37\ = CARRY((udp_length(18) & !\Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(18),
	datad => VCC,
	cin => \Add4~35\,
	combout => \Add4~36_combout\,
	cout => \Add4~37\);

-- Location: LCCOMB_X13_Y6_N12
\udp_length~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~11_combout\ = (\reset_n~input_o\ & (\Add4~36_combout\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~6_combout\,
	datab => \reset_n~input_o\,
	datac => \Add4~36_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~11_combout\);

-- Location: FF_X12_Y8_N15
\udp_length[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~11_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(18));

-- Location: LCCOMB_X12_Y6_N6
\Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~38_combout\ = (udp_length(19) & (!\Add4~37\)) # (!udp_length(19) & ((\Add4~37\) # (GND)))
-- \Add4~39\ = CARRY((!\Add4~37\) # (!udp_length(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(19),
	datad => VCC,
	cin => \Add4~37\,
	combout => \Add4~38_combout\,
	cout => \Add4~39\);

-- Location: LCCOMB_X13_Y6_N14
\udp_length~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~10_combout\ = (\reset_n~input_o\ & (\Add4~38_combout\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~6_combout\,
	datab => \reset_n~input_o\,
	datac => \Add4~38_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~10_combout\);

-- Location: FF_X12_Y8_N13
\udp_length[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~10_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(19));

-- Location: LCCOMB_X12_Y6_N8
\Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~40_combout\ = (udp_length(20) & (\Add4~39\ $ (GND))) # (!udp_length(20) & (!\Add4~39\ & VCC))
-- \Add4~41\ = CARRY((udp_length(20) & !\Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(20),
	datad => VCC,
	cin => \Add4~39\,
	combout => \Add4~40_combout\,
	cout => \Add4~41\);

-- Location: LCCOMB_X13_Y7_N24
\udp_length~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~9_combout\ = (\Add4~40_combout\ & (\reset_n~input_o\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~40_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~9_combout\);

-- Location: FF_X12_Y8_N29
\udp_length[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~9_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(20));

-- Location: LCCOMB_X12_Y6_N10
\Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~42_combout\ = (udp_length(21) & (!\Add4~41\)) # (!udp_length(21) & ((\Add4~41\) # (GND)))
-- \Add4~43\ = CARRY((!\Add4~41\) # (!udp_length(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(21),
	datad => VCC,
	cin => \Add4~41\,
	combout => \Add4~42_combout\,
	cout => \Add4~43\);

-- Location: LCCOMB_X13_Y6_N8
\udp_length~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~8_combout\ = (\Add4~42_combout\ & (\reset_n~input_o\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~42_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~8_combout\);

-- Location: FF_X12_Y8_N31
\udp_length[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~8_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(21));

-- Location: LCCOMB_X12_Y6_N12
\Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~44_combout\ = (udp_length(22) & (\Add4~43\ $ (GND))) # (!udp_length(22) & (!\Add4~43\ & VCC))
-- \Add4~45\ = CARRY((udp_length(22) & !\Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(22),
	datad => VCC,
	cin => \Add4~43\,
	combout => \Add4~44_combout\,
	cout => \Add4~45\);

-- Location: LCCOMB_X13_Y6_N18
\udp_length~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~7_combout\ = (\Add4~44_combout\ & (\reset_n~input_o\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~44_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~7_combout\);

-- Location: FF_X12_Y8_N17
\udp_length[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~7_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(22));

-- Location: LCCOMB_X12_Y6_N14
\Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~46_combout\ = (udp_length(23) & (!\Add4~45\)) # (!udp_length(23) & ((\Add4~45\) # (GND)))
-- \Add4~47\ = CARRY((!\Add4~45\) # (!udp_length(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(23),
	datad => VCC,
	cin => \Add4~45\,
	combout => \Add4~46_combout\,
	cout => \Add4~47\);

-- Location: LCCOMB_X13_Y6_N28
\udp_length~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~6_combout\ = (\Add4~46_combout\ & (\reset_n~input_o\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~46_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~6_combout\);

-- Location: FF_X12_Y8_N9
\udp_length[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~6_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(23));

-- Location: LCCOMB_X12_Y8_N0
\Add8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = (udp_length(16) & (\Add8~31\ $ (GND))) # (!udp_length(16) & (!\Add8~31\ & VCC))
-- \Add8~33\ = CARRY((udp_length(16) & !\Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(16),
	datad => VCC,
	cin => \Add8~31\,
	combout => \Add8~32_combout\,
	cout => \Add8~33\);

-- Location: LCCOMB_X12_Y8_N2
\Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (udp_length(17) & (!\Add8~33\)) # (!udp_length(17) & ((\Add8~33\) # (GND)))
-- \Add8~35\ = CARRY((!\Add8~33\) # (!udp_length(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(17),
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

-- Location: LCCOMB_X12_Y8_N4
\Add8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = (udp_length(18) & (\Add8~35\ $ (GND))) # (!udp_length(18) & (!\Add8~35\ & VCC))
-- \Add8~37\ = CARRY((udp_length(18) & !\Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(18),
	datad => VCC,
	cin => \Add8~35\,
	combout => \Add8~36_combout\,
	cout => \Add8~37\);

-- Location: LCCOMB_X12_Y8_N6
\Add8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~38_combout\ = (udp_length(19) & (!\Add8~37\)) # (!udp_length(19) & ((\Add8~37\) # (GND)))
-- \Add8~39\ = CARRY((!\Add8~37\) # (!udp_length(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(19),
	datad => VCC,
	cin => \Add8~37\,
	combout => \Add8~38_combout\,
	cout => \Add8~39\);

-- Location: LCCOMB_X12_Y8_N8
\Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~40_combout\ = (udp_length(20) & (\Add8~39\ $ (GND))) # (!udp_length(20) & (!\Add8~39\ & VCC))
-- \Add8~41\ = CARRY((udp_length(20) & !\Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(20),
	datad => VCC,
	cin => \Add8~39\,
	combout => \Add8~40_combout\,
	cout => \Add8~41\);

-- Location: LCCOMB_X12_Y8_N10
\Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~42_combout\ = (udp_length(21) & (!\Add8~41\)) # (!udp_length(21) & ((\Add8~41\) # (GND)))
-- \Add8~43\ = CARRY((!\Add8~41\) # (!udp_length(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(21),
	datad => VCC,
	cin => \Add8~41\,
	combout => \Add8~42_combout\,
	cout => \Add8~43\);

-- Location: LCCOMB_X12_Y8_N12
\Add8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~44_combout\ = (udp_length(22) & (\Add8~43\ $ (GND))) # (!udp_length(22) & (!\Add8~43\ & VCC))
-- \Add8~45\ = CARRY((udp_length(22) & !\Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(22),
	datad => VCC,
	cin => \Add8~43\,
	combout => \Add8~44_combout\,
	cout => \Add8~45\);

-- Location: LCCOMB_X12_Y8_N14
\Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~46_combout\ = (udp_length(23) & (!\Add8~45\)) # (!udp_length(23) & ((\Add8~45\) # (GND)))
-- \Add8~47\ = CARRY((!\Add8~45\) # (!udp_length(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(23),
	datad => VCC,
	cin => \Add8~45\,
	combout => \Add8~46_combout\,
	cout => \Add8~47\);

-- Location: LCCOMB_X10_Y8_N6
\Equal13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~13_combout\ = (\Add8~46_combout\ & (byte_index(23) & (\Add8~44_combout\ $ (!byte_index(22))))) # (!\Add8~46_combout\ & (!byte_index(23) & (\Add8~44_combout\ $ (!byte_index(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~46_combout\,
	datab => byte_index(23),
	datac => \Add8~44_combout\,
	datad => byte_index(22),
	combout => \Equal13~13_combout\);

-- Location: LCCOMB_X10_Y8_N28
\Equal13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~10_combout\ = (byte_index(16) & (\Add8~32_combout\ & (\Add8~34_combout\ $ (!byte_index(17))))) # (!byte_index(16) & (!\Add8~32_combout\ & (\Add8~34_combout\ $ (!byte_index(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(16),
	datab => \Add8~32_combout\,
	datac => \Add8~34_combout\,
	datad => byte_index(17),
	combout => \Equal13~10_combout\);

-- Location: LCCOMB_X10_Y8_N22
\Equal13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~11_combout\ = (\Add8~36_combout\ & (byte_index(18) & (byte_index(19) $ (!\Add8~38_combout\)))) # (!\Add8~36_combout\ & (!byte_index(18) & (byte_index(19) $ (!\Add8~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~36_combout\,
	datab => byte_index(18),
	datac => byte_index(19),
	datad => \Add8~38_combout\,
	combout => \Equal13~11_combout\);

-- Location: LCCOMB_X10_Y8_N12
\Equal13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~12_combout\ = (byte_index(21) & (\Add8~42_combout\ & (byte_index(20) $ (!\Add8~40_combout\)))) # (!byte_index(21) & (!\Add8~42_combout\ & (byte_index(20) $ (!\Add8~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => byte_index(20),
	datac => \Add8~40_combout\,
	datad => \Add8~42_combout\,
	combout => \Equal13~12_combout\);

-- Location: LCCOMB_X10_Y8_N16
\Equal13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~14_combout\ = (\Equal13~13_combout\ & (\Equal13~10_combout\ & (\Equal13~11_combout\ & \Equal13~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~13_combout\,
	datab => \Equal13~10_combout\,
	datac => \Equal13~11_combout\,
	datad => \Equal13~12_combout\,
	combout => \Equal13~14_combout\);

-- Location: LCCOMB_X12_Y6_N16
\Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~48_combout\ = (udp_length(24) & (\Add4~47\ $ (GND))) # (!udp_length(24) & (!\Add4~47\ & VCC))
-- \Add4~49\ = CARRY((udp_length(24) & !\Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(24),
	datad => VCC,
	cin => \Add4~47\,
	combout => \Add4~48_combout\,
	cout => \Add4~49\);

-- Location: LCCOMB_X13_Y6_N22
\udp_length~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~5_combout\ = (\Add4~48_combout\ & (\reset_n~input_o\ & ((!\Equal9~6_combout\) # (!\Equal9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~48_combout\,
	datab => \Equal9~7_combout\,
	datac => \Equal9~6_combout\,
	datad => \reset_n~input_o\,
	combout => \udp_length~5_combout\);

-- Location: FF_X12_Y8_N7
\udp_length[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \udp_length~5_combout\,
	sload => VCC,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(24));

-- Location: LCCOMB_X12_Y6_N18
\Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~50_combout\ = (udp_length(25) & (!\Add4~49\)) # (!udp_length(25) & ((\Add4~49\) # (GND)))
-- \Add4~51\ = CARRY((!\Add4~49\) # (!udp_length(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(25),
	datad => VCC,
	cin => \Add4~49\,
	combout => \Add4~50_combout\,
	cout => \Add4~51\);

-- Location: LCCOMB_X13_Y6_N24
\udp_length~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~4_combout\ = (\reset_n~input_o\ & (\Add4~50_combout\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Add4~50_combout\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~4_combout\);

-- Location: FF_X13_Y6_N25
\udp_length[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length~4_combout\,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(25));

-- Location: LCCOMB_X12_Y6_N20
\Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~52_combout\ = (udp_length(26) & (\Add4~51\ $ (GND))) # (!udp_length(26) & (!\Add4~51\ & VCC))
-- \Add4~53\ = CARRY((udp_length(26) & !\Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(26),
	datad => VCC,
	cin => \Add4~51\,
	combout => \Add4~52_combout\,
	cout => \Add4~53\);

-- Location: LCCOMB_X13_Y6_N10
\udp_length~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~3_combout\ = (\reset_n~input_o\ & (\Add4~52_combout\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Add4~52_combout\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~3_combout\);

-- Location: FF_X13_Y6_N11
\udp_length[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length~3_combout\,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(26));

-- Location: LCCOMB_X12_Y8_N16
\Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~48_combout\ = (udp_length(24) & (\Add8~47\ $ (GND))) # (!udp_length(24) & (!\Add8~47\ & VCC))
-- \Add8~49\ = CARRY((udp_length(24) & !\Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(24),
	datad => VCC,
	cin => \Add8~47\,
	combout => \Add8~48_combout\,
	cout => \Add8~49\);

-- Location: LCCOMB_X12_Y8_N18
\Add8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~50_combout\ = (udp_length(25) & (!\Add8~49\)) # (!udp_length(25) & ((\Add8~49\) # (GND)))
-- \Add8~51\ = CARRY((!\Add8~49\) # (!udp_length(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(25),
	datad => VCC,
	cin => \Add8~49\,
	combout => \Add8~50_combout\,
	cout => \Add8~51\);

-- Location: LCCOMB_X12_Y8_N20
\Add8~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~52_combout\ = (udp_length(26) & (\Add8~51\ $ (GND))) # (!udp_length(26) & (!\Add8~51\ & VCC))
-- \Add8~53\ = CARRY((udp_length(26) & !\Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(26),
	datad => VCC,
	cin => \Add8~51\,
	combout => \Add8~52_combout\,
	cout => \Add8~53\);

-- Location: LCCOMB_X12_Y6_N22
\Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~54_combout\ = (udp_length(27) & (!\Add4~53\)) # (!udp_length(27) & ((\Add4~53\) # (GND)))
-- \Add4~55\ = CARRY((!\Add4~53\) # (!udp_length(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(27),
	datad => VCC,
	cin => \Add4~53\,
	combout => \Add4~54_combout\,
	cout => \Add4~55\);

-- Location: LCCOMB_X13_Y6_N0
\udp_length~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~0_combout\ = (\reset_n~input_o\ & (\Add4~54_combout\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Add4~54_combout\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~0_combout\);

-- Location: FF_X13_Y6_N1
\udp_length[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length~0_combout\,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(27));

-- Location: LCCOMB_X12_Y8_N22
\Add8~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~54_combout\ = (udp_length(27) & (!\Add8~53\)) # (!udp_length(27) & ((\Add8~53\) # (GND)))
-- \Add8~55\ = CARRY((!\Add8~53\) # (!udp_length(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(27),
	datad => VCC,
	cin => \Add8~53\,
	combout => \Add8~54_combout\,
	cout => \Add8~55\);

-- Location: LCCOMB_X11_Y11_N26
\Equal13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~16_combout\ = (byte_index(27) & (\Add8~54_combout\ & (byte_index(26) $ (!\Add8~52_combout\)))) # (!byte_index(27) & (!\Add8~54_combout\ & (byte_index(26) $ (!\Add8~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datab => byte_index(26),
	datac => \Add8~52_combout\,
	datad => \Add8~54_combout\,
	combout => \Equal13~16_combout\);

-- Location: LCCOMB_X11_Y11_N16
\Equal13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~15_combout\ = (byte_index(25) & (\Add8~50_combout\ & (byte_index(24) $ (!\Add8~48_combout\)))) # (!byte_index(25) & (!\Add8~50_combout\ & (byte_index(24) $ (!\Add8~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(25),
	datab => byte_index(24),
	datac => \Add8~48_combout\,
	datad => \Add8~50_combout\,
	combout => \Equal13~15_combout\);

-- Location: LCCOMB_X12_Y6_N24
\Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~56_combout\ = (udp_length(28) & (\Add4~55\ $ (GND))) # (!udp_length(28) & (!\Add4~55\ & VCC))
-- \Add4~57\ = CARRY((udp_length(28) & !\Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(28),
	datad => VCC,
	cin => \Add4~55\,
	combout => \Add4~56_combout\,
	cout => \Add4~57\);

-- Location: LCCOMB_X13_Y6_N30
\udp_length~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~30_combout\ = (\Add4~56_combout\ & (\reset_n~input_o\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~56_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~30_combout\);

-- Location: FF_X13_Y6_N31
\udp_length[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length~30_combout\,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(28));

-- Location: LCCOMB_X12_Y8_N24
\Add8~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~56_combout\ = (udp_length(28) & (\Add8~55\ $ (GND))) # (!udp_length(28) & (!\Add8~55\ & VCC))
-- \Add8~57\ = CARRY((udp_length(28) & !\Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(28),
	datad => VCC,
	cin => \Add8~55\,
	combout => \Add8~56_combout\,
	cout => \Add8~57\);

-- Location: LCCOMB_X12_Y6_N26
\Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~58_combout\ = (udp_length(29) & (!\Add4~57\)) # (!udp_length(29) & ((\Add4~57\) # (GND)))
-- \Add4~59\ = CARRY((!\Add4~57\) # (!udp_length(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(29),
	datad => VCC,
	cin => \Add4~57\,
	combout => \Add4~58_combout\,
	cout => \Add4~59\);

-- Location: LCCOMB_X13_Y6_N26
\udp_length~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~32_combout\ = (\Add4~58_combout\ & (\reset_n~input_o\ & ((!\Equal9~6_combout\) # (!\Equal9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~58_combout\,
	datab => \Equal9~7_combout\,
	datac => \Equal9~6_combout\,
	datad => \reset_n~input_o\,
	combout => \udp_length~32_combout\);

-- Location: FF_X13_Y6_N27
\udp_length[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length~32_combout\,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(29));

-- Location: LCCOMB_X12_Y8_N26
\Add8~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~58_combout\ = (udp_length(29) & (!\Add8~57\)) # (!udp_length(29) & ((\Add8~57\) # (GND)))
-- \Add8~59\ = CARRY((!\Add8~57\) # (!udp_length(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(29),
	datad => VCC,
	cin => \Add8~57\,
	combout => \Add8~58_combout\,
	cout => \Add8~59\);

-- Location: LCCOMB_X11_Y11_N4
\Equal13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~17_combout\ = (byte_index(29) & (\Add8~58_combout\ & (byte_index(28) $ (!\Add8~56_combout\)))) # (!byte_index(29) & (!\Add8~58_combout\ & (byte_index(28) $ (!\Add8~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datab => byte_index(28),
	datac => \Add8~56_combout\,
	datad => \Add8~58_combout\,
	combout => \Equal13~17_combout\);

-- Location: LCCOMB_X12_Y6_N28
\Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~60_combout\ = (udp_length(30) & (\Add4~59\ $ (GND))) # (!udp_length(30) & (!\Add4~59\ & VCC))
-- \Add4~61\ = CARRY((udp_length(30) & !\Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(30),
	datad => VCC,
	cin => \Add4~59\,
	combout => \Add4~60_combout\,
	cout => \Add4~61\);

-- Location: LCCOMB_X13_Y6_N4
\udp_length~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~31_combout\ = (\reset_n~input_o\ & (\Add4~60_combout\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Add4~60_combout\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~31_combout\);

-- Location: FF_X13_Y6_N5
\udp_length[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length~31_combout\,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(30));

-- Location: LCCOMB_X12_Y8_N28
\Add8~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~60_combout\ = (udp_length(30) & (\Add8~59\ $ (GND))) # (!udp_length(30) & (!\Add8~59\ & VCC))
-- \Add8~61\ = CARRY((udp_length(30) & !\Add8~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(30),
	datad => VCC,
	cin => \Add8~59\,
	combout => \Add8~60_combout\,
	cout => \Add8~61\);

-- Location: LCCOMB_X12_Y6_N30
\Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~62_combout\ = \Add4~61\ $ (udp_length(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => udp_length(31),
	cin => \Add4~61\,
	combout => \Add4~62_combout\);

-- Location: LCCOMB_X13_Y6_N16
\udp_length~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length~33_combout\ = (\reset_n~input_o\ & (\Add4~62_combout\ & ((!\Equal9~7_combout\) # (!\Equal9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \Add4~62_combout\,
	datac => \Equal9~6_combout\,
	datad => \Equal9~7_combout\,
	combout => \udp_length~33_combout\);

-- Location: FF_X13_Y6_N17
\udp_length[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length~33_combout\,
	ena => \udp_length[25]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(31));

-- Location: LCCOMB_X12_Y8_N30
\Add8~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~62_combout\ = \Add8~61\ $ (udp_length(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => udp_length(31),
	cin => \Add8~61\,
	combout => \Add8~62_combout\);

-- Location: LCCOMB_X11_Y11_N18
\Equal13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~18_combout\ = (byte_index(31) & (\Add8~62_combout\ & (byte_index(30) $ (!\Add8~60_combout\)))) # (!byte_index(31) & (!\Add8~62_combout\ & (byte_index(30) $ (!\Add8~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => byte_index(30),
	datac => \Add8~60_combout\,
	datad => \Add8~62_combout\,
	combout => \Equal13~18_combout\);

-- Location: LCCOMB_X11_Y11_N20
\Equal13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~19_combout\ = (\Equal13~16_combout\ & (\Equal13~15_combout\ & (\Equal13~17_combout\ & \Equal13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~16_combout\,
	datab => \Equal13~15_combout\,
	datac => \Equal13~17_combout\,
	datad => \Equal13~18_combout\,
	combout => \Equal13~19_combout\);

-- Location: LCCOMB_X11_Y11_N30
\Equal13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~20_combout\ = (\Equal13~4_combout\ & (\Equal13~9_combout\ & (\Equal13~14_combout\ & \Equal13~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~4_combout\,
	datab => \Equal13~9_combout\,
	datac => \Equal13~14_combout\,
	datad => \Equal13~19_combout\,
	combout => \Equal13~20_combout\);

-- Location: LCCOMB_X10_Y10_N12
\next_out_endofpacket~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_out_endofpacket~0_combout\ = (\in_valid~input_o\ & (\s_state.DATA~q\ & \out_ready~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datac => \s_state.DATA~q\,
	datad => \out_ready~input_o\,
	combout => \next_out_endofpacket~0_combout\);

-- Location: LCCOMB_X10_Y10_N8
\s_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~13_combout\ = (\reset_n~input_o\ & (!\s_state~12_combout\ & (!\s_state~11_combout\ & !\s_state~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \s_state~12_combout\,
	datac => \s_state~11_combout\,
	datad => \s_state~8_combout\,
	combout => \s_state~13_combout\);

-- Location: LCCOMB_X14_Y9_N10
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (byte_index(0) & (udp_length(0) & (byte_index(1) $ (!udp_length(1))))) # (!byte_index(0) & (!udp_length(0) & (byte_index(1) $ (!udp_length(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => udp_length(0),
	datac => byte_index(1),
	datad => udp_length(1),
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X13_Y9_N0
\Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~1_cout\ = CARRY(\Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~0_combout\,
	datad => VCC,
	cout => \Add7~1_cout\);

-- Location: LCCOMB_X13_Y9_N2
\Add7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~3_cout\ = CARRY((!\Add8~2_combout\ & !\Add7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datad => VCC,
	cin => \Add7~1_cout\,
	cout => \Add7~3_cout\);

-- Location: LCCOMB_X13_Y9_N4
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\Add8~4_combout\ & ((GND) # (!\Add7~3_cout\))) # (!\Add8~4_combout\ & (\Add7~3_cout\ $ (GND)))
-- \Add7~5\ = CARRY((\Add8~4_combout\) # (!\Add7~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \Add7~3_cout\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X13_Y9_N6
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add8~6_combout\ & (\Add7~5\ & VCC)) # (!\Add8~6_combout\ & (!\Add7~5\))
-- \Add7~7\ = CARRY((!\Add8~6_combout\ & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~6_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X14_Y9_N20
\Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (byte_index(3) & (\Add7~6_combout\ & (\Add7~4_combout\ $ (!byte_index(2))))) # (!byte_index(3) & (!\Add7~6_combout\ & (\Add7~4_combout\ $ (!byte_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => \Add7~4_combout\,
	datac => \Add7~6_combout\,
	datad => byte_index(2),
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X13_Y9_N8
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\Add8~8_combout\ & ((GND) # (!\Add7~7\))) # (!\Add8~8_combout\ & (\Add7~7\ $ (GND)))
-- \Add7~9\ = CARRY((\Add8~8_combout\) # (!\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X13_Y9_N10
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add8~10_combout\ & (\Add7~9\ & VCC)) # (!\Add8~10_combout\ & (!\Add7~9\))
-- \Add7~11\ = CARRY((!\Add8~10_combout\ & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X13_Y9_N12
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\Add8~12_combout\ & ((GND) # (!\Add7~11\))) # (!\Add8~12_combout\ & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((\Add8~12_combout\) # (!\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~12_combout\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X13_Y9_N14
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\Add8~14_combout\ & (\Add7~13\ & VCC)) # (!\Add8~14_combout\ & (!\Add7~13\))
-- \Add7~15\ = CARRY((!\Add8~14_combout\ & !\Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~14_combout\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X14_Y9_N4
\Equal12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~3_combout\ = (\Add7~14_combout\ & (byte_index(7) & (byte_index(6) $ (!\Add7~12_combout\)))) # (!\Add7~14_combout\ & (!byte_index(7) & (byte_index(6) $ (!\Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => byte_index(7),
	datac => byte_index(6),
	datad => \Add7~12_combout\,
	combout => \Equal12~3_combout\);

-- Location: LCCOMB_X14_Y9_N2
\Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (\Add7~8_combout\ & (byte_index(4) & (byte_index(5) $ (!\Add7~10_combout\)))) # (!\Add7~8_combout\ & (!byte_index(4) & (byte_index(5) $ (!\Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => byte_index(4),
	datac => byte_index(5),
	datad => \Add7~10_combout\,
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X14_Y9_N18
\Equal12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~4_combout\ = (\Equal14~0_combout\ & (\Equal12~1_combout\ & (\Equal12~3_combout\ & \Equal12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \Equal12~1_combout\,
	datac => \Equal12~3_combout\,
	datad => \Equal12~2_combout\,
	combout => \Equal12~4_combout\);

-- Location: LCCOMB_X13_Y9_N16
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (\Add8~16_combout\ & ((GND) # (!\Add7~15\))) # (!\Add8~16_combout\ & (\Add7~15\ $ (GND)))
-- \Add7~17\ = CARRY((\Add8~16_combout\) # (!\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~16_combout\,
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X13_Y9_N18
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (\Add8~18_combout\ & (\Add7~17\ & VCC)) # (!\Add8~18_combout\ & (!\Add7~17\))
-- \Add7~19\ = CARRY((!\Add8~18_combout\ & !\Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~18_combout\,
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X12_Y10_N2
\Equal12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~5_combout\ = (byte_index(9) & (\Add7~18_combout\ & (byte_index(8) $ (!\Add7~16_combout\)))) # (!byte_index(9) & (!\Add7~18_combout\ & (byte_index(8) $ (!\Add7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(8),
	datac => \Add7~18_combout\,
	datad => \Add7~16_combout\,
	combout => \Equal12~5_combout\);

-- Location: LCCOMB_X13_Y9_N20
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (\Add8~20_combout\ & ((GND) # (!\Add7~19\))) # (!\Add8~20_combout\ & (\Add7~19\ $ (GND)))
-- \Add7~21\ = CARRY((\Add8~20_combout\) # (!\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~20_combout\,
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X13_Y9_N22
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (\Add8~22_combout\ & (\Add7~21\ & VCC)) # (!\Add8~22_combout\ & (!\Add7~21\))
-- \Add7~23\ = CARRY((!\Add8~22_combout\ & !\Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~22_combout\,
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~22_combout\,
	cout => \Add7~23\);

-- Location: LCCOMB_X10_Y9_N20
\Equal12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~6_combout\ = (byte_index(10) & (\Add7~20_combout\ & (byte_index(11) $ (!\Add7~22_combout\)))) # (!byte_index(10) & (!\Add7~20_combout\ & (byte_index(11) $ (!\Add7~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(10),
	datab => byte_index(11),
	datac => \Add7~22_combout\,
	datad => \Add7~20_combout\,
	combout => \Equal12~6_combout\);

-- Location: LCCOMB_X13_Y9_N24
\Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~24_combout\ = (\Add8~24_combout\ & ((GND) # (!\Add7~23\))) # (!\Add8~24_combout\ & (\Add7~23\ $ (GND)))
-- \Add7~25\ = CARRY((\Add8~24_combout\) # (!\Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~24_combout\,
	datad => VCC,
	cin => \Add7~23\,
	combout => \Add7~24_combout\,
	cout => \Add7~25\);

-- Location: LCCOMB_X13_Y9_N26
\Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (\Add8~26_combout\ & (\Add7~25\ & VCC)) # (!\Add8~26_combout\ & (!\Add7~25\))
-- \Add7~27\ = CARRY((!\Add8~26_combout\ & !\Add7~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~26_combout\,
	datad => VCC,
	cin => \Add7~25\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X12_Y10_N0
\Equal12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~7_combout\ = (byte_index(12) & (\Add7~24_combout\ & (byte_index(13) $ (!\Add7~26_combout\)))) # (!byte_index(12) & (!\Add7~24_combout\ & (byte_index(13) $ (!\Add7~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datab => byte_index(13),
	datac => \Add7~24_combout\,
	datad => \Add7~26_combout\,
	combout => \Equal12~7_combout\);

-- Location: LCCOMB_X13_Y9_N28
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (\Add8~28_combout\ & ((GND) # (!\Add7~27\))) # (!\Add8~28_combout\ & (\Add7~27\ $ (GND)))
-- \Add7~29\ = CARRY((\Add8~28_combout\) # (!\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~28_combout\,
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~28_combout\,
	cout => \Add7~29\);

-- Location: LCCOMB_X13_Y9_N30
\Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~30_combout\ = (\Add8~30_combout\ & (\Add7~29\ & VCC)) # (!\Add8~30_combout\ & (!\Add7~29\))
-- \Add7~31\ = CARRY((!\Add8~30_combout\ & !\Add7~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~30_combout\,
	datad => VCC,
	cin => \Add7~29\,
	combout => \Add7~30_combout\,
	cout => \Add7~31\);

-- Location: LCCOMB_X12_Y10_N6
\Equal12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~8_combout\ = (byte_index(14) & (\Add7~28_combout\ & (byte_index(15) $ (!\Add7~30_combout\)))) # (!byte_index(14) & (!\Add7~28_combout\ & (byte_index(15) $ (!\Add7~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(14),
	datab => byte_index(15),
	datac => \Add7~28_combout\,
	datad => \Add7~30_combout\,
	combout => \Equal12~8_combout\);

-- Location: LCCOMB_X11_Y10_N30
\Equal12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~9_combout\ = (\Equal12~5_combout\ & (\Equal12~6_combout\ & (\Equal12~7_combout\ & \Equal12~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~5_combout\,
	datab => \Equal12~6_combout\,
	datac => \Equal12~7_combout\,
	datad => \Equal12~8_combout\,
	combout => \Equal12~9_combout\);

-- Location: LCCOMB_X13_Y8_N0
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (\Add8~32_combout\ & ((GND) # (!\Add7~31\))) # (!\Add8~32_combout\ & (\Add7~31\ $ (GND)))
-- \Add7~33\ = CARRY((\Add8~32_combout\) # (!\Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~32_combout\,
	datad => VCC,
	cin => \Add7~31\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X13_Y8_N2
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (\Add8~34_combout\ & (\Add7~33\ & VCC)) # (!\Add8~34_combout\ & (!\Add7~33\))
-- \Add7~35\ = CARRY((!\Add8~34_combout\ & !\Add7~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~34_combout\,
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~34_combout\,
	cout => \Add7~35\);

-- Location: LCCOMB_X13_Y8_N4
\Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~36_combout\ = (\Add8~36_combout\ & ((GND) # (!\Add7~35\))) # (!\Add8~36_combout\ & (\Add7~35\ $ (GND)))
-- \Add7~37\ = CARRY((\Add8~36_combout\) # (!\Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~36_combout\,
	datad => VCC,
	cin => \Add7~35\,
	combout => \Add7~36_combout\,
	cout => \Add7~37\);

-- Location: LCCOMB_X13_Y8_N6
\Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (\Add8~38_combout\ & (\Add7~37\ & VCC)) # (!\Add8~38_combout\ & (!\Add7~37\))
-- \Add7~39\ = CARRY((!\Add8~38_combout\ & !\Add7~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~38_combout\,
	datad => VCC,
	cin => \Add7~37\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X13_Y8_N8
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (\Add8~40_combout\ & ((GND) # (!\Add7~39\))) # (!\Add8~40_combout\ & (\Add7~39\ $ (GND)))
-- \Add7~41\ = CARRY((\Add8~40_combout\) # (!\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~40_combout\,
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~40_combout\,
	cout => \Add7~41\);

-- Location: LCCOMB_X13_Y8_N10
\Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~42_combout\ = (\Add8~42_combout\ & (\Add7~41\ & VCC)) # (!\Add8~42_combout\ & (!\Add7~41\))
-- \Add7~43\ = CARRY((!\Add8~42_combout\ & !\Add7~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~42_combout\,
	datad => VCC,
	cin => \Add7~41\,
	combout => \Add7~42_combout\,
	cout => \Add7~43\);

-- Location: LCCOMB_X13_Y8_N12
\Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (\Add8~44_combout\ & ((GND) # (!\Add7~43\))) # (!\Add8~44_combout\ & (\Add7~43\ $ (GND)))
-- \Add7~45\ = CARRY((\Add8~44_combout\) # (!\Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~44_combout\,
	datad => VCC,
	cin => \Add7~43\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X13_Y8_N14
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (\Add8~46_combout\ & (\Add7~45\ & VCC)) # (!\Add8~46_combout\ & (!\Add7~45\))
-- \Add7~47\ = CARRY((!\Add8~46_combout\ & !\Add7~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~46_combout\,
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~46_combout\,
	cout => \Add7~47\);

-- Location: LCCOMB_X13_Y8_N16
\Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~48_combout\ = (\Add8~48_combout\ & ((GND) # (!\Add7~47\))) # (!\Add8~48_combout\ & (\Add7~47\ $ (GND)))
-- \Add7~49\ = CARRY((\Add8~48_combout\) # (!\Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~48_combout\,
	datad => VCC,
	cin => \Add7~47\,
	combout => \Add7~48_combout\,
	cout => \Add7~49\);

-- Location: LCCOMB_X13_Y8_N18
\Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (\Add8~50_combout\ & (\Add7~49\ & VCC)) # (!\Add8~50_combout\ & (!\Add7~49\))
-- \Add7~51\ = CARRY((!\Add8~50_combout\ & !\Add7~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~50_combout\,
	datad => VCC,
	cin => \Add7~49\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X13_Y8_N20
\Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (\Add8~52_combout\ & ((GND) # (!\Add7~51\))) # (!\Add8~52_combout\ & (\Add7~51\ $ (GND)))
-- \Add7~53\ = CARRY((\Add8~52_combout\) # (!\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~52_combout\,
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~52_combout\,
	cout => \Add7~53\);

-- Location: LCCOMB_X13_Y8_N22
\Add7~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~54_combout\ = (\Add8~54_combout\ & (\Add7~53\ & VCC)) # (!\Add8~54_combout\ & (!\Add7~53\))
-- \Add7~55\ = CARRY((!\Add8~54_combout\ & !\Add7~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~54_combout\,
	datad => VCC,
	cin => \Add7~53\,
	combout => \Add7~54_combout\,
	cout => \Add7~55\);

-- Location: LCCOMB_X13_Y8_N24
\Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (\Add8~56_combout\ & ((GND) # (!\Add7~55\))) # (!\Add8~56_combout\ & (\Add7~55\ $ (GND)))
-- \Add7~57\ = CARRY((\Add8~56_combout\) # (!\Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~56_combout\,
	datad => VCC,
	cin => \Add7~55\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X11_Y10_N12
\Equal12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~10_combout\ = (\Equal12~4_combout\ & (\Equal12~9_combout\ & (byte_index(28) $ (!\Add7~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~4_combout\,
	datab => byte_index(28),
	datac => \Equal12~9_combout\,
	datad => \Add7~56_combout\,
	combout => \Equal12~10_combout\);

-- Location: LCCOMB_X12_Y10_N16
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (byte_index(26) & (\Add7~52_combout\ & (byte_index(27) $ (!\Add7~54_combout\)))) # (!byte_index(26) & (!\Add7~52_combout\ & (byte_index(27) $ (!\Add7~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(26),
	datab => byte_index(27),
	datac => \Add7~54_combout\,
	datad => \Add7~52_combout\,
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X13_Y8_N26
\Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (\Add8~58_combout\ & (\Add7~57\ & VCC)) # (!\Add8~58_combout\ & (!\Add7~57\))
-- \Add7~59\ = CARRY((!\Add8~58_combout\ & !\Add7~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~58_combout\,
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~58_combout\,
	cout => \Add7~59\);

-- Location: LCCOMB_X13_Y8_N28
\Add7~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (\Add8~60_combout\ & ((GND) # (!\Add7~59\))) # (!\Add8~60_combout\ & (\Add7~59\ $ (GND)))
-- \Add7~61\ = CARRY((\Add8~60_combout\) # (!\Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~60_combout\,
	datad => VCC,
	cin => \Add7~59\,
	combout => \Add7~60_combout\,
	cout => \Add7~61\);

-- Location: LCCOMB_X12_Y10_N12
\Equal12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~11_combout\ = (byte_index(30) & (\Add7~60_combout\ & (byte_index(29) $ (!\Add7~58_combout\)))) # (!byte_index(30) & (!\Add7~60_combout\ & (byte_index(29) $ (!\Add7~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(29),
	datac => \Add7~60_combout\,
	datad => \Add7~58_combout\,
	combout => \Equal12~11_combout\);

-- Location: LCCOMB_X13_Y8_N30
\Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = \Add7~61\ $ (!\Add8~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add8~62_combout\,
	cin => \Add7~61\,
	combout => \Add7~62_combout\);

-- Location: LCCOMB_X12_Y10_N20
\Equal12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~17_combout\ = (byte_index(25) & (\Add7~50_combout\ & (byte_index(24) $ (!\Add7~48_combout\)))) # (!byte_index(25) & (!\Add7~50_combout\ & (byte_index(24) $ (!\Add7~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(25),
	datab => byte_index(24),
	datac => \Add7~50_combout\,
	datad => \Add7~48_combout\,
	combout => \Equal12~17_combout\);

-- Location: LCCOMB_X12_Y10_N30
\Equal12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~12_combout\ = (byte_index(17) & (\Add7~34_combout\ & (\Add7~32_combout\ $ (!byte_index(16))))) # (!byte_index(17) & (!\Add7~34_combout\ & (\Add7~32_combout\ $ (!byte_index(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => \Add7~32_combout\,
	datac => byte_index(16),
	datad => \Add7~34_combout\,
	combout => \Equal12~12_combout\);

-- Location: LCCOMB_X10_Y8_N10
\Equal12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~13_combout\ = (byte_index(18) & (\Add7~36_combout\ & (byte_index(19) $ (!\Add7~38_combout\)))) # (!byte_index(18) & (!\Add7~36_combout\ & (byte_index(19) $ (!\Add7~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(18),
	datab => byte_index(19),
	datac => \Add7~36_combout\,
	datad => \Add7~38_combout\,
	combout => \Equal12~13_combout\);

-- Location: LCCOMB_X12_Y10_N8
\Equal12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~14_combout\ = (byte_index(20) & (\Add7~40_combout\ & (byte_index(21) $ (!\Add7~42_combout\)))) # (!byte_index(20) & (!\Add7~40_combout\ & (byte_index(21) $ (!\Add7~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(20),
	datab => byte_index(21),
	datac => \Add7~40_combout\,
	datad => \Add7~42_combout\,
	combout => \Equal12~14_combout\);

-- Location: LCCOMB_X12_Y10_N18
\Equal12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~15_combout\ = (byte_index(22) & (\Add7~44_combout\ & (byte_index(23) $ (!\Add7~46_combout\)))) # (!byte_index(22) & (!\Add7~44_combout\ & (byte_index(23) $ (!\Add7~46_combout\))))

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
	combout => \Equal12~15_combout\);

-- Location: LCCOMB_X11_Y10_N10
\Equal12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~16_combout\ = (\Equal12~12_combout\ & (\Equal12~13_combout\ & (\Equal12~14_combout\ & \Equal12~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~12_combout\,
	datab => \Equal12~13_combout\,
	datac => \Equal12~14_combout\,
	datad => \Equal12~15_combout\,
	combout => \Equal12~16_combout\);

-- Location: LCCOMB_X11_Y10_N28
\Equal12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~18_combout\ = (\Equal12~17_combout\ & (\Equal12~16_combout\ & (byte_index(31) $ (!\Add7~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => \Add7~62_combout\,
	datac => \Equal12~17_combout\,
	datad => \Equal12~16_combout\,
	combout => \Equal12~18_combout\);

-- Location: LCCOMB_X11_Y10_N18
\Equal12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~19_combout\ = (\Equal12~10_combout\ & (\Equal12~0_combout\ & (\Equal12~11_combout\ & \Equal12~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~10_combout\,
	datab => \Equal12~0_combout\,
	datac => \Equal12~11_combout\,
	datad => \Equal12~18_combout\,
	combout => \Equal12~19_combout\);

-- Location: LCCOMB_X10_Y10_N10
\s_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~14_combout\ = (\s_state~13_combout\ & (((\Equal12~19_combout\) # (!\next_out_endofpacket~0_combout\)) # (!\Equal13~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~20_combout\,
	datab => \next_out_endofpacket~0_combout\,
	datac => \s_state~13_combout\,
	datad => \Equal12~19_combout\,
	combout => \s_state~14_combout\);

-- Location: LCCOMB_X10_Y10_N2
\s_state~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~62_combout\ = (\reset_n~input_o\ & (\next_out_endofpacket~0_combout\ & (\Equal13~20_combout\ & !\Equal12~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \next_out_endofpacket~0_combout\,
	datac => \Equal13~20_combout\,
	datad => \Equal12~19_combout\,
	combout => \s_state~62_combout\);

-- Location: LCCOMB_X11_Y7_N6
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ((\in_data[3]~input_o\) # (!\in_data[0]~input_o\)) # (!\in_data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[4]~input_o\,
	datac => \in_data[3]~input_o\,
	datad => \in_data[0]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X13_Y7_N8
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\in_data[6]~input_o\ & (!\in_data[5]~input_o\ & (!\in_data[2]~input_o\ & !\in_data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[6]~input_o\,
	datab => \in_data[5]~input_o\,
	datac => \in_data[2]~input_o\,
	datad => \in_data[1]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X11_Y7_N24
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Equal6~0_combout\) # ((\in_data[7]~input_o\) # (!\Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \in_data[7]~input_o\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X11_Y9_N0
\Add9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~1_cout\ = CARRY(\Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~0_combout\,
	datad => VCC,
	cout => \Add9~1_cout\);

-- Location: LCCOMB_X11_Y9_N2
\Add9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~3_cout\ = CARRY((!\Add8~2_combout\ & !\Add9~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datad => VCC,
	cin => \Add9~1_cout\,
	cout => \Add9~3_cout\);

-- Location: LCCOMB_X11_Y9_N4
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\Add8~4_combout\ & (\Add9~3_cout\ $ (GND))) # (!\Add8~4_combout\ & (!\Add9~3_cout\ & VCC))
-- \Add9~5\ = CARRY((\Add8~4_combout\ & !\Add9~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datad => VCC,
	cin => \Add9~3_cout\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X11_Y9_N6
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Add8~6_combout\ & (!\Add9~5\)) # (!\Add8~6_combout\ & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!\Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~6_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X11_Y9_N8
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\Add8~8_combout\ & (\Add9~7\ $ (GND))) # (!\Add8~8_combout\ & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((\Add8~8_combout\ & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X11_Y9_N10
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Add8~10_combout\ & (!\Add9~9\)) # (!\Add8~10_combout\ & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!\Add8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X11_Y9_N12
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\Add8~12_combout\ & (\Add9~11\ $ (GND))) # (!\Add8~12_combout\ & (!\Add9~11\ & VCC))
-- \Add9~13\ = CARRY((\Add8~12_combout\ & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~12_combout\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X11_Y9_N14
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\Add8~14_combout\ & (!\Add9~13\)) # (!\Add8~14_combout\ & ((\Add9~13\) # (GND)))
-- \Add9~15\ = CARRY((!\Add9~13\) # (!\Add8~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~14_combout\,
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X11_Y9_N16
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (\Add8~16_combout\ & (\Add9~15\ $ (GND))) # (!\Add8~16_combout\ & (!\Add9~15\ & VCC))
-- \Add9~17\ = CARRY((\Add8~16_combout\ & !\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~16_combout\,
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X11_Y9_N18
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (\Add8~18_combout\ & (!\Add9~17\)) # (!\Add8~18_combout\ & ((\Add9~17\) # (GND)))
-- \Add9~19\ = CARRY((!\Add9~17\) # (!\Add8~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~18_combout\,
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X11_Y9_N20
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (\Add8~20_combout\ & (\Add9~19\ $ (GND))) # (!\Add8~20_combout\ & (!\Add9~19\ & VCC))
-- \Add9~21\ = CARRY((\Add8~20_combout\ & !\Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~20_combout\,
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X11_Y9_N22
\Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (\Add8~22_combout\ & (!\Add9~21\)) # (!\Add8~22_combout\ & ((\Add9~21\) # (GND)))
-- \Add9~23\ = CARRY((!\Add9~21\) # (!\Add8~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~22_combout\,
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X11_Y9_N24
\Add9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = (\Add8~24_combout\ & (\Add9~23\ $ (GND))) # (!\Add8~24_combout\ & (!\Add9~23\ & VCC))
-- \Add9~25\ = CARRY((\Add8~24_combout\ & !\Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~24_combout\,
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: LCCOMB_X11_Y9_N26
\Add9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (\Add8~26_combout\ & (!\Add9~25\)) # (!\Add8~26_combout\ & ((\Add9~25\) # (GND)))
-- \Add9~27\ = CARRY((!\Add9~25\) # (!\Add8~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~26_combout\,
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X11_Y9_N28
\Add9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = (\Add8~28_combout\ & (\Add9~27\ $ (GND))) # (!\Add8~28_combout\ & (!\Add9~27\ & VCC))
-- \Add9~29\ = CARRY((\Add8~28_combout\ & !\Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~28_combout\,
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X11_Y9_N30
\Add9~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (\Add8~30_combout\ & (!\Add9~29\)) # (!\Add8~30_combout\ & ((\Add9~29\) # (GND)))
-- \Add9~31\ = CARRY((!\Add9~29\) # (!\Add8~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~30_combout\,
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X11_Y8_N0
\Add9~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = (\Add8~32_combout\ & (\Add9~31\ $ (GND))) # (!\Add8~32_combout\ & (!\Add9~31\ & VCC))
-- \Add9~33\ = CARRY((\Add8~32_combout\ & !\Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~32_combout\,
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: LCCOMB_X11_Y8_N2
\Add9~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (\Add8~34_combout\ & (!\Add9~33\)) # (!\Add8~34_combout\ & ((\Add9~33\) # (GND)))
-- \Add9~35\ = CARRY((!\Add9~33\) # (!\Add8~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~34_combout\,
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: LCCOMB_X11_Y8_N4
\Add9~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (\Add8~36_combout\ & (\Add9~35\ $ (GND))) # (!\Add8~36_combout\ & (!\Add9~35\ & VCC))
-- \Add9~37\ = CARRY((\Add8~36_combout\ & !\Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~36_combout\,
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: LCCOMB_X11_Y8_N6
\Add9~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (\Add8~38_combout\ & (!\Add9~37\)) # (!\Add8~38_combout\ & ((\Add9~37\) # (GND)))
-- \Add9~39\ = CARRY((!\Add9~37\) # (!\Add8~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~38_combout\,
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: LCCOMB_X11_Y8_N8
\Add9~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (\Add8~40_combout\ & (\Add9~39\ $ (GND))) # (!\Add8~40_combout\ & (!\Add9~39\ & VCC))
-- \Add9~41\ = CARRY((\Add8~40_combout\ & !\Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~40_combout\,
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: LCCOMB_X11_Y8_N10
\Add9~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (\Add8~42_combout\ & (!\Add9~41\)) # (!\Add8~42_combout\ & ((\Add9~41\) # (GND)))
-- \Add9~43\ = CARRY((!\Add9~41\) # (!\Add8~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~42_combout\,
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: LCCOMB_X11_Y8_N12
\Add9~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (\Add8~44_combout\ & (\Add9~43\ $ (GND))) # (!\Add8~44_combout\ & (!\Add9~43\ & VCC))
-- \Add9~45\ = CARRY((\Add8~44_combout\ & !\Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~44_combout\,
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: LCCOMB_X11_Y8_N14
\Add9~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (\Add8~46_combout\ & (!\Add9~45\)) # (!\Add8~46_combout\ & ((\Add9~45\) # (GND)))
-- \Add9~47\ = CARRY((!\Add9~45\) # (!\Add8~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~46_combout\,
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: LCCOMB_X11_Y8_N16
\Add9~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = (\Add8~48_combout\ & (\Add9~47\ $ (GND))) # (!\Add8~48_combout\ & (!\Add9~47\ & VCC))
-- \Add9~49\ = CARRY((\Add8~48_combout\ & !\Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~48_combout\,
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: LCCOMB_X11_Y8_N18
\Add9~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (\Add8~50_combout\ & (!\Add9~49\)) # (!\Add8~50_combout\ & ((\Add9~49\) # (GND)))
-- \Add9~51\ = CARRY((!\Add9~49\) # (!\Add8~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~50_combout\,
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: LCCOMB_X11_Y8_N20
\Add9~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (\Add8~52_combout\ & (\Add9~51\ $ (GND))) # (!\Add8~52_combout\ & (!\Add9~51\ & VCC))
-- \Add9~53\ = CARRY((\Add8~52_combout\ & !\Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~52_combout\,
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: LCCOMB_X11_Y8_N22
\Add9~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (\Add8~54_combout\ & (!\Add9~53\)) # (!\Add8~54_combout\ & ((\Add9~53\) # (GND)))
-- \Add9~55\ = CARRY((!\Add9~53\) # (!\Add8~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~54_combout\,
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: LCCOMB_X10_Y10_N20
\s_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~15_combout\ = (byte_index(26) & (\Add9~52_combout\ & (byte_index(27) $ (!\Add9~54_combout\)))) # (!byte_index(26) & (!\Add9~52_combout\ & (byte_index(27) $ (!\Add9~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(26),
	datab => byte_index(27),
	datac => \Add9~54_combout\,
	datad => \Add9~52_combout\,
	combout => \s_state~15_combout\);

-- Location: LCCOMB_X11_Y8_N24
\Add9~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = (\Add8~56_combout\ & (\Add9~55\ $ (GND))) # (!\Add8~56_combout\ & (!\Add9~55\ & VCC))
-- \Add9~57\ = CARRY((\Add8~56_combout\ & !\Add9~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~56_combout\,
	datad => VCC,
	cin => \Add9~55\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: LCCOMB_X11_Y8_N26
\Add9~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~58_combout\ = (\Add8~58_combout\ & (!\Add9~57\)) # (!\Add8~58_combout\ & ((\Add9~57\) # (GND)))
-- \Add9~59\ = CARRY((!\Add9~57\) # (!\Add8~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~58_combout\,
	datad => VCC,
	cin => \Add9~57\,
	combout => \Add9~58_combout\,
	cout => \Add9~59\);

-- Location: LCCOMB_X11_Y8_N28
\Add9~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~60_combout\ = (\Add8~60_combout\ & (\Add9~59\ $ (GND))) # (!\Add8~60_combout\ & (!\Add9~59\ & VCC))
-- \Add9~61\ = CARRY((\Add8~60_combout\ & !\Add9~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~60_combout\,
	datad => VCC,
	cin => \Add9~59\,
	combout => \Add9~60_combout\,
	cout => \Add9~61\);

-- Location: LCCOMB_X11_Y8_N30
\Add9~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = \Add9~61\ $ (\Add8~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add8~62_combout\,
	cin => \Add9~61\,
	combout => \Add9~62_combout\);

-- Location: LCCOMB_X9_Y10_N20
\s_state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~33_combout\ = (byte_index(31) & (\Add9~62_combout\ & (byte_index(30) $ (!\Add9~60_combout\)))) # (!byte_index(31) & (!\Add9~62_combout\ & (byte_index(30) $ (!\Add9~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => byte_index(30),
	datac => \Add9~62_combout\,
	datad => \Add9~60_combout\,
	combout => \s_state~33_combout\);

-- Location: LCCOMB_X9_Y9_N6
\s_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~16_combout\ = (byte_index(3) & (\Add9~6_combout\ & (byte_index(2) $ (!\Add9~4_combout\)))) # (!byte_index(3) & (!\Add9~6_combout\ & (byte_index(2) $ (!\Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(2),
	datac => \Add9~6_combout\,
	datad => \Add9~4_combout\,
	combout => \s_state~16_combout\);

-- Location: LCCOMB_X10_Y9_N4
\s_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~17_combout\ = (byte_index(5) & (\Add9~10_combout\ & (\Add9~8_combout\ $ (!byte_index(4))))) # (!byte_index(5) & (!\Add9~10_combout\ & (\Add9~8_combout\ $ (!byte_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => \Add9~8_combout\,
	datac => \Add9~10_combout\,
	datad => byte_index(4),
	combout => \s_state~17_combout\);

-- Location: LCCOMB_X10_Y9_N10
\s_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~18_combout\ = (byte_index(6) & (\Add9~12_combout\ & (byte_index(7) $ (!\Add9~14_combout\)))) # (!byte_index(6) & (!\Add9~12_combout\ & (byte_index(7) $ (!\Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => byte_index(7),
	datac => \Add9~14_combout\,
	datad => \Add9~12_combout\,
	combout => \s_state~18_combout\);

-- Location: LCCOMB_X10_Y9_N0
\s_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~19_combout\ = (\Equal14~0_combout\ & (\s_state~16_combout\ & (\s_state~17_combout\ & \s_state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \s_state~16_combout\,
	datac => \s_state~17_combout\,
	datad => \s_state~18_combout\,
	combout => \s_state~19_combout\);

-- Location: LCCOMB_X10_Y9_N8
\s_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~22_combout\ = (byte_index(12) & (\Add9~24_combout\ & (byte_index(13) $ (!\Add9~26_combout\)))) # (!byte_index(12) & (!\Add9~24_combout\ & (byte_index(13) $ (!\Add9~26_combout\))))

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
	combout => \s_state~22_combout\);

-- Location: LCCOMB_X10_Y9_N26
\s_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~20_combout\ = (byte_index(9) & (\Add9~18_combout\ & (\Add9~16_combout\ $ (!byte_index(8))))) # (!byte_index(9) & (!\Add9~18_combout\ & (\Add9~16_combout\ $ (!byte_index(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => \Add9~16_combout\,
	datac => byte_index(8),
	datad => \Add9~18_combout\,
	combout => \s_state~20_combout\);

-- Location: LCCOMB_X10_Y9_N28
\Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = \Add9~20_combout\ $ (byte_index(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~20_combout\,
	datad => byte_index(10),
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X10_Y9_N6
\s_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~21_combout\ = (\s_state~20_combout\ & (!\Equal14~1_combout\ & (byte_index(11) $ (!\Add9~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => \Add9~22_combout\,
	datac => \s_state~20_combout\,
	datad => \Equal14~1_combout\,
	combout => \s_state~21_combout\);

-- Location: LCCOMB_X10_Y9_N18
\s_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~23_combout\ = (byte_index(15) & (\Add9~30_combout\ & (byte_index(14) $ (!\Add9~28_combout\)))) # (!byte_index(15) & (!\Add9~30_combout\ & (byte_index(14) $ (!\Add9~28_combout\))))

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
	combout => \s_state~23_combout\);

-- Location: LCCOMB_X9_Y10_N18
\s_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~24_combout\ = (\s_state~19_combout\ & (\s_state~22_combout\ & (\s_state~21_combout\ & \s_state~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~19_combout\,
	datab => \s_state~22_combout\,
	datac => \s_state~21_combout\,
	datad => \s_state~23_combout\,
	combout => \s_state~24_combout\);

-- Location: LCCOMB_X9_Y10_N8
\s_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~25_combout\ = (\s_state.CRC~q\ & (\s_state~24_combout\ & (byte_index(28) $ (!\Add9~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => byte_index(28),
	datac => \Add9~56_combout\,
	datad => \s_state~24_combout\,
	combout => \s_state~25_combout\);

-- Location: LCCOMB_X10_Y8_N24
\s_state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~31_combout\ = (byte_index(25) & (\Add9~50_combout\ & (byte_index(24) $ (!\Add9~48_combout\)))) # (!byte_index(25) & (!\Add9~50_combout\ & (byte_index(24) $ (!\Add9~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(25),
	datab => byte_index(24),
	datac => \Add9~48_combout\,
	datad => \Add9~50_combout\,
	combout => \s_state~31_combout\);

-- Location: LCCOMB_X10_Y8_N26
\s_state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~26_combout\ = (byte_index(16) & (\Add9~32_combout\ & (byte_index(17) $ (!\Add9~34_combout\)))) # (!byte_index(16) & (!\Add9~32_combout\ & (byte_index(17) $ (!\Add9~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(16),
	datab => byte_index(17),
	datac => \Add9~32_combout\,
	datad => \Add9~34_combout\,
	combout => \s_state~26_combout\);

-- Location: LCCOMB_X10_Y8_N8
\s_state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~27_combout\ = (\Add9~36_combout\ & (byte_index(18) & (byte_index(19) $ (!\Add9~38_combout\)))) # (!\Add9~36_combout\ & (!byte_index(18) & (byte_index(19) $ (!\Add9~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~36_combout\,
	datab => byte_index(18),
	datac => byte_index(19),
	datad => \Add9~38_combout\,
	combout => \s_state~27_combout\);

-- Location: LCCOMB_X10_Y8_N14
\s_state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~28_combout\ = (byte_index(21) & (\Add9~42_combout\ & (byte_index(20) $ (!\Add9~40_combout\)))) # (!byte_index(21) & (!\Add9~42_combout\ & (byte_index(20) $ (!\Add9~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => byte_index(20),
	datac => \Add9~40_combout\,
	datad => \Add9~42_combout\,
	combout => \s_state~28_combout\);

-- Location: LCCOMB_X10_Y8_N20
\s_state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~29_combout\ = (byte_index(22) & (\Add9~44_combout\ & (byte_index(23) $ (!\Add9~46_combout\)))) # (!byte_index(22) & (!\Add9~44_combout\ & (byte_index(23) $ (!\Add9~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datab => byte_index(23),
	datac => \Add9~46_combout\,
	datad => \Add9~44_combout\,
	combout => \s_state~29_combout\);

-- Location: LCCOMB_X10_Y8_N2
\s_state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~30_combout\ = (\s_state~26_combout\ & (\s_state~27_combout\ & (\s_state~28_combout\ & \s_state~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~26_combout\,
	datab => \s_state~27_combout\,
	datac => \s_state~28_combout\,
	datad => \s_state~29_combout\,
	combout => \s_state~30_combout\);

-- Location: LCCOMB_X9_Y10_N6
\s_state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~32_combout\ = (\s_state~31_combout\ & (\s_state~30_combout\ & (\Add9~58_combout\ $ (!byte_index(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~58_combout\,
	datab => byte_index(29),
	datac => \s_state~31_combout\,
	datad => \s_state~30_combout\,
	combout => \s_state~32_combout\);

-- Location: LCCOMB_X9_Y10_N10
\s_state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~34_combout\ = (\s_state~15_combout\ & (\s_state~33_combout\ & (\s_state~25_combout\ & \s_state~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~15_combout\,
	datab => \s_state~33_combout\,
	datac => \s_state~25_combout\,
	datad => \s_state~32_combout\,
	combout => \s_state~34_combout\);

-- Location: LCCOMB_X9_Y10_N16
\s_state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~35_combout\ = (\s_state.CRC~q\ & (((\out_ready~input_o\ & \s_state~34_combout\)))) # (!\s_state.CRC~q\ & ((\Equal6~1_combout\) # ((\out_ready~input_o\ & \s_state~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \Equal6~1_combout\,
	datac => \out_ready~input_o\,
	datad => \s_state~34_combout\,
	combout => \s_state~35_combout\);

-- Location: LCCOMB_X14_Y11_N18
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (byte_index(1) & !byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(1),
	datad => byte_index(0),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X14_Y11_N4
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ((byte_index(5)) # ((!\Equal10~0_combout\) # (!byte_index(4)))) # (!byte_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(5),
	datac => byte_index(4),
	datad => \Equal10~0_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X12_Y11_N8
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (byte_index(3)) # ((byte_index(6)) # ((\Equal5~0_combout\) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(6),
	datac => \Equal5~0_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X11_Y11_N24
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (byte_index(3) & (!byte_index(5) & (!byte_index(6) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(5),
	datac => byte_index(6),
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X10_Y11_N16
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (byte_index(2) & (!byte_index(1) & (!byte_index(4) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(1),
	datac => byte_index(4),
	datad => \Equal0~8_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X10_Y11_N14
\s_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~9_combout\ = (\Equal5~1_combout\) # (((byte_index(0) & \Equal2~0_combout\)) # (!\PROCES1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => byte_index(0),
	datac => \PROCES1~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \s_state~9_combout\);

-- Location: LCCOMB_X10_Y11_N30
\s_state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~39_combout\ = (!\s_state.ETHERNET_HEADER~q\ & (!\s_state.CRC~q\ & ((\s_state~9_combout\) # (!\s_state.IP_HEADER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \s_state.CRC~q\,
	datac => \s_state~9_combout\,
	datad => \s_state.IP_HEADER~q\,
	combout => \s_state~39_combout\);

-- Location: LCCOMB_X10_Y10_N16
\s_state~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~63_combout\ = (\s_state~39_combout\) # ((!\s_state~38_combout\ & ((\s_state.ETHERNET_HEADER~q\) # (!\s_state~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~38_combout\,
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \s_state~35_combout\,
	datad => \s_state~39_combout\,
	combout => \s_state~63_combout\);

-- Location: LCCOMB_X10_Y10_N22
\s_state~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~64_combout\ = (\s_state~62_combout\) # ((\s_state~14_combout\ & (\s_state.CRC~q\ & \s_state~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~14_combout\,
	datab => \s_state~62_combout\,
	datac => \s_state.CRC~q\,
	datad => \s_state~63_combout\,
	combout => \s_state~64_combout\);

-- Location: FF_X10_Y10_N23
\s_state.CRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_state~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.CRC~q\);

-- Location: LCCOMB_X10_Y11_N28
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!byte_index(2) & (byte_index(0) & (byte_index(1) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X9_Y11_N20
\s_state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~37_combout\ = (!byte_index(0) & (\Equal2~0_combout\ & ((byte_index(4)) # (!\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \Equal0~9_combout\,
	datac => byte_index(4),
	datad => \Equal2~0_combout\,
	combout => \s_state~37_combout\);

-- Location: LCCOMB_X11_Y7_N22
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\in_data[4]~input_o\ & (!\in_data[0]~input_o\ & (\Equal3~0_combout\ & !\in_data[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \in_data[0]~input_o\,
	datac => \Equal3~0_combout\,
	datad => \in_data[7]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X9_Y11_N6
\s_state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~36_combout\ = (!byte_index(4) & (\Equal0~9_combout\ & ((!\Equal3~1_combout\) # (!\in_data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => byte_index(4),
	datac => \Equal3~1_combout\,
	datad => \Equal0~9_combout\,
	combout => \s_state~36_combout\);

-- Location: LCCOMB_X9_Y11_N28
\byte_index[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~50_combout\ = (\s_state~36_combout\) # ((\s_state~37_combout\ & ((\in_data[3]~input_o\) # (!\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \s_state~37_combout\,
	datac => \Equal3~1_combout\,
	datad => \s_state~36_combout\,
	combout => \byte_index[27]~50_combout\);

-- Location: LCCOMB_X12_Y11_N30
\byte_index[27]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~49_combout\ = (\Equal6~1_combout\ & (!\Equal5~1_combout\ & \s_state.IP_HEADER~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datac => \Equal5~1_combout\,
	datad => \s_state.IP_HEADER~q\,
	combout => \byte_index[27]~49_combout\);

-- Location: LCCOMB_X9_Y10_N4
\byte_index[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~51_combout\ = (\byte_index[27]~49_combout\) # ((!\s_state.CRC~q\ & (\s_state.ETHERNET_HEADER~q\ & \byte_index[27]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \byte_index[27]~50_combout\,
	datad => \byte_index[27]~49_combout\,
	combout => \byte_index[27]~51_combout\);

-- Location: LCCOMB_X9_Y10_N2
\byte_index[27]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~52_combout\ = (\byte_index[27]~48_combout\) # ((\s_state~34_combout\) # ((\PROCES1~0_combout\ & \byte_index[27]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_index[27]~48_combout\,
	datab => \PROCES1~0_combout\,
	datac => \byte_index[27]~51_combout\,
	datad => \s_state~34_combout\,
	combout => \byte_index[27]~52_combout\);

-- Location: FF_X9_Y10_N29
\byte_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[0]~32_combout\,
	sclr => \byte_index[27]~52_combout\,
	sload => VCC,
	ena => \byte_index[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(0));

-- Location: LCCOMB_X10_Y11_N22
\ip_header_length[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_header_length[5]~1_combout\ = ((!\ip_header_length[5]~0_combout\ & (byte_index(0) & \Equal2~0_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ip_header_length[5]~0_combout\,
	datab => byte_index(0),
	datac => \reset_n~input_o\,
	datad => \Equal2~0_combout\,
	combout => \ip_header_length[5]~1_combout\);

-- Location: FF_X13_Y11_N7
\ip_header_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \ip_header_length[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(5));

-- Location: LCCOMB_X13_Y11_N4
\PROCES1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~1_combout\ = (!ip_header_length(5) & (ip_header_length(2) & (ip_header_length(4) & !ip_header_length(3))))

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
	combout => \PROCES1~1_combout\);

-- Location: LCCOMB_X14_Y11_N6
\Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~4_combout\ = (!byte_index(1) & !byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(1),
	datad => byte_index(0),
	combout => \Equal8~4_combout\);

-- Location: LCCOMB_X14_Y11_N16
\Equal22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (byte_index(2)) # (((byte_index(4)) # (!\Equal8~4_combout\)) # (!byte_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(5),
	datac => byte_index(4),
	datad => \Equal8~4_combout\,
	combout => \Equal22~0_combout\);

-- Location: LCCOMB_X11_Y11_N14
\Equal22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~1_combout\ = (byte_index(3)) # ((\Equal22~0_combout\) # ((byte_index(6)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => \Equal22~0_combout\,
	datac => byte_index(6),
	datad => \Equal0~7_combout\,
	combout => \Equal22~1_combout\);

-- Location: LCCOMB_X12_Y11_N12
\PROCES1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~2_combout\ = (\PROCES1~1_combout\ & !\Equal22~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~1_combout\,
	datad => \Equal22~1_combout\,
	combout => \PROCES1~2_combout\);

-- Location: LCCOMB_X9_Y11_N24
\s_state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~45_combout\ = (\reset_n~input_o\ & (((!\Equal5~1_combout\) # (!\PROCES1~2_combout\)) # (!\s_state~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~10_combout\,
	datab => \reset_n~input_o\,
	datac => \PROCES1~2_combout\,
	datad => \Equal5~1_combout\,
	combout => \s_state~45_combout\);

-- Location: LCCOMB_X9_Y11_N14
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!byte_index(4) & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(4),
	datad => \Equal0~9_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X9_Y11_N18
\s_state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~58_combout\ = (\s_state~45_combout\ & (!\in_data[3]~input_o\ & ((\Equal3~1_combout\)))) # (!\s_state~45_combout\ & (((\reset_n~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \reset_n~input_o\,
	datac => \Equal3~1_combout\,
	datad => \s_state~45_combout\,
	combout => \s_state~58_combout\);

-- Location: LCCOMB_X9_Y11_N4
\s_state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~59_combout\ = (\s_state~45_combout\ & (((!\Equal0~11_combout\ & \s_state~58_combout\)) # (!\s_state~38_combout\))) # (!\s_state~45_combout\ & (((\s_state~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~38_combout\,
	datab => \s_state~45_combout\,
	datac => \Equal0~11_combout\,
	datad => \s_state~58_combout\,
	combout => \s_state~59_combout\);

-- Location: LCCOMB_X12_Y11_N10
\s_state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~48_combout\ = (\out_ready~input_o\ & (\in_valid~input_o\ & ((!byte_index(0)) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \in_valid~input_o\,
	datac => \Equal2~0_combout\,
	datad => byte_index(0),
	combout => \s_state~48_combout\);

-- Location: LCCOMB_X12_Y11_N2
\s_state~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~54_combout\ = (!\Equal5~1_combout\ & (\s_state~48_combout\ & ((\Equal6~1_combout\) # (\out_ready~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~1_combout\,
	datab => \out_ready~input_o\,
	datac => \Equal5~1_combout\,
	datad => \s_state~48_combout\,
	combout => \s_state~54_combout\);

-- Location: LCCOMB_X12_Y11_N4
\s_state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~55_combout\ = (\s_state.CRC~q\ & (\out_ready~input_o\)) # (!\s_state.CRC~q\ & (((\s_state.IP_HEADER~q\ & \s_state~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \s_state.CRC~q\,
	datac => \s_state.IP_HEADER~q\,
	datad => \s_state~54_combout\,
	combout => \s_state~55_combout\);

-- Location: LCCOMB_X9_Y10_N12
\s_state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~56_combout\ = (\s_state~55_combout\ & ((\s_state~34_combout\) # ((!\s_state.CRC~q\ & \Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \Equal6~1_combout\,
	datac => \s_state~55_combout\,
	datad => \s_state~34_combout\,
	combout => \s_state~56_combout\);

-- Location: LCCOMB_X9_Y10_N30
\s_state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~60_combout\ = ((\s_state.IDLE~q\ & !\s_state~56_combout\)) # (!\s_state~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.IDLE~q\,
	datac => \s_state~45_combout\,
	datad => \s_state~56_combout\,
	combout => \s_state~60_combout\);

-- Location: LCCOMB_X10_Y10_N4
\s_state~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~47_combout\ = (\s_state.CRC~q\) # ((\s_state.ETHERNET_HEADER~q\) # ((!\in_startofpacket~input_o\ & !\s_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_startofpacket~input_o\,
	datab => \s_state.IDLE~q\,
	datac => \s_state.CRC~q\,
	datad => \s_state.ETHERNET_HEADER~q\,
	combout => \s_state~47_combout\);

-- Location: LCCOMB_X13_Y11_N8
\Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~5_combout\ = (byte_index(4) & (\Add5~0_combout\ & (\Add5~1_combout\ $ (byte_index(3))))) # (!byte_index(4) & (!\Add5~0_combout\ & (\Add5~1_combout\ $ (byte_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => \Add5~0_combout\,
	datac => \Add5~1_combout\,
	datad => byte_index(3),
	combout => \Equal8~5_combout\);

-- Location: LCCOMB_X12_Y11_N24
\next_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~8_combout\ = (\Equal0~7_combout\ & (byte_index(2) $ (ip_header_length(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => ip_header_length(2),
	datad => \Equal0~7_combout\,
	combout => \next_state~8_combout\);

-- Location: LCCOMB_X12_Y11_N18
\Equal8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~6_combout\ = (!\Equal8~2_combout\ & (!\Equal8~3_combout\ & (\Equal8~5_combout\ & \next_state~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~2_combout\,
	datab => \Equal8~3_combout\,
	datac => \Equal8~5_combout\,
	datad => \next_state~8_combout\,
	combout => \Equal8~6_combout\);

-- Location: LCCOMB_X12_Y11_N14
\Equal8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~7_combout\ = (!byte_index(0) & (!byte_index(1) & \Equal8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal8~6_combout\,
	combout => \Equal8~7_combout\);

-- Location: LCCOMB_X12_Y11_N22
\next_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = (\out_ready~input_o\ & (byte_index(0) & (!byte_index(1) & \in_valid~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \in_valid~input_o\,
	combout => \next_state~10_combout\);

-- Location: LCCOMB_X13_Y11_N30
\next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~9_combout\ = (\Add5~0_combout\ & ((\Equal8~2_combout\ & (!\Add5~1_combout\ & !byte_index(4))) # (!\Equal8~2_combout\ & (\Add5~1_combout\ & byte_index(4))))) # (!\Add5~0_combout\ & (!\Equal8~2_combout\ & (\Add5~1_combout\ $ (byte_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Equal8~2_combout\,
	datac => \Add5~1_combout\,
	datad => byte_index(4),
	combout => \next_state~9_combout\);

-- Location: LCCOMB_X13_Y11_N2
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = \Equal8~3_combout\ $ (((!\Add5~1_combout\ & (\Add5~2_combout\ & \Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~1_combout\,
	datab => \Add5~2_combout\,
	datac => \Add5~0_combout\,
	datad => \Equal8~3_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X13_Y11_N12
\next_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~12_combout\ = (!\Equal11~0_combout\ & (byte_index(3) $ (ip_header_length(3) $ (!ip_header_length(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => ip_header_length(3),
	datac => ip_header_length(2),
	datad => \Equal11~0_combout\,
	combout => \next_state~12_combout\);

-- Location: LCCOMB_X12_Y11_N28
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

-- Location: LCCOMB_X11_Y10_N26
\s_state~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~50_combout\ = (\s_state~12_combout\) # ((!\s_state.IP_HEADER~q\ & (!\s_state.DATA~q\ & \next_state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~12_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \s_state.DATA~q\,
	datad => \next_state~11_combout\,
	combout => \s_state~50_combout\);

-- Location: LCCOMB_X12_Y11_N20
\s_state~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~49_combout\ = (\Equal5~1_combout\ & (\s_state~48_combout\ & ((\Equal22~1_combout\) # (!\PROCES1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal22~1_combout\,
	datab => \Equal5~1_combout\,
	datac => \PROCES1~1_combout\,
	datad => \s_state~48_combout\,
	combout => \s_state~49_combout\);

-- Location: LCCOMB_X11_Y10_N8
\s_state~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~51_combout\ = (\s_state.IP_HEADER~q\ & (((!\Equal8~7_combout\ & !\s_state~50_combout\)) # (!\s_state~49_combout\))) # (!\s_state.IP_HEADER~q\ & (((!\s_state~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~7_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \s_state~50_combout\,
	datad => \s_state~49_combout\,
	combout => \s_state~51_combout\);

-- Location: LCCOMB_X11_Y10_N14
\s_state~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~52_combout\ = (\s_state.IP_HEADER~q\) # ((!\next_out_endofpacket~0_combout\) # (!\Equal13~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.IP_HEADER~q\,
	datac => \Equal13~20_combout\,
	datad => \next_out_endofpacket~0_combout\,
	combout => \s_state~52_combout\);

-- Location: LCCOMB_X11_Y10_N16
\s_state~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~53_combout\ = (\s_state~47_combout\) # ((\s_state~51_combout\ & ((\s_state~52_combout\) # (\Equal12~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~47_combout\,
	datab => \s_state~51_combout\,
	datac => \s_state~52_combout\,
	datad => \Equal12~19_combout\,
	combout => \s_state~53_combout\);

-- Location: LCCOMB_X9_Y10_N24
\s_state~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~61_combout\ = (\s_state~59_combout\ & ((\s_state~38_combout\) # ((\s_state~60_combout\) # (!\s_state~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~38_combout\,
	datab => \s_state~59_combout\,
	datac => \s_state~60_combout\,
	datad => \s_state~53_combout\,
	combout => \s_state~61_combout\);

-- Location: FF_X9_Y10_N25
\s_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_state~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IDLE~q\);

-- Location: LCCOMB_X10_Y10_N14
\s_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~12_combout\ = (!\s_state.IDLE~q\ & \in_startofpacket~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.IDLE~q\,
	datad => \in_startofpacket~input_o\,
	combout => \s_state~12_combout\);

-- Location: LCCOMB_X10_Y10_N30
\s_state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~40_combout\ = (\s_state~39_combout\) # ((\s_state.ETHERNET_HEADER~q\ & !\s_state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \s_state~39_combout\,
	datad => \s_state~38_combout\,
	combout => \s_state~40_combout\);

-- Location: LCCOMB_X10_Y10_N24
\s_state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~41_combout\ = (\s_state~14_combout\ & ((\s_state~40_combout\) # ((!\s_state~38_combout\ & !\s_state~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~40_combout\,
	datab => \s_state~38_combout\,
	datac => \s_state~35_combout\,
	datad => \s_state~14_combout\,
	combout => \s_state~41_combout\);

-- Location: LCCOMB_X10_Y10_N0
\s_state~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~65_combout\ = (\reset_n~input_o\ & ((\s_state~12_combout\) # ((\s_state.ETHERNET_HEADER~q\ & \s_state~41_combout\)))) # (!\reset_n~input_o\ & (((\s_state.ETHERNET_HEADER~q\ & \s_state~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \s_state~12_combout\,
	datac => \s_state.ETHERNET_HEADER~q\,
	datad => \s_state~41_combout\,
	combout => \s_state~65_combout\);

-- Location: FF_X10_Y10_N1
\s_state.ETHERNET_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_state~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.ETHERNET_HEADER~q\);

-- Location: LCCOMB_X9_Y11_N30
\s_state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~38_combout\ = (\s_state.ETHERNET_HEADER~q\ & (\PROCES1~0_combout\ & ((\s_state~37_combout\) # (\s_state~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \s_state~37_combout\,
	datac => \PROCES1~0_combout\,
	datad => \s_state~36_combout\,
	combout => \s_state~38_combout\);

-- Location: LCCOMB_X9_Y11_N26
\s_state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~44_combout\ = (\s_state~38_combout\ & (!\in_data[3]~input_o\ & ((\Equal3~1_combout\)))) # (!\s_state~38_combout\ & (((\s_state.IP_HEADER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \s_state.IP_HEADER~q\,
	datac => \Equal3~1_combout\,
	datad => \s_state~38_combout\,
	combout => \s_state~44_combout\);

-- Location: LCCOMB_X9_Y11_N0
\s_state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~46_combout\ = (\s_state~44_combout\ & (\s_state~45_combout\ & ((!\Equal0~11_combout\) # (!\s_state~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~38_combout\,
	datab => \Equal0~11_combout\,
	datac => \s_state~44_combout\,
	datad => \s_state~45_combout\,
	combout => \s_state~46_combout\);

-- Location: LCCOMB_X9_Y10_N14
\s_state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~57_combout\ = (\s_state~46_combout\ & ((\s_state~38_combout\) # ((\s_state~53_combout\ & !\s_state~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~38_combout\,
	datab => \s_state~46_combout\,
	datac => \s_state~53_combout\,
	datad => \s_state~56_combout\,
	combout => \s_state~57_combout\);

-- Location: FF_X9_Y10_N15
\s_state.IP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_state~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IP_HEADER~q\);

-- Location: LCCOMB_X9_Y11_N10
\s_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~10_combout\ = (\PROCES1~0_combout\ & (\s_state.IP_HEADER~q\ & ((!\Equal2~0_combout\) # (!byte_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~0_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => byte_index(0),
	datad => \Equal2~0_combout\,
	combout => \s_state~10_combout\);

-- Location: LCCOMB_X9_Y11_N8
\s_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~11_combout\ = (\s_state~10_combout\ & (\s_state~9_combout\ & ((\PROCES1~2_combout\) # (\Equal8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~10_combout\,
	datab => \s_state~9_combout\,
	datac => \PROCES1~2_combout\,
	datad => \Equal8~7_combout\,
	combout => \s_state~11_combout\);

-- Location: LCCOMB_X10_Y10_N18
\s_state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~43_combout\ = (\reset_n~input_o\ & ((\s_state~11_combout\) # ((\s_state.UDP_HEADER~q\ & \s_state~41_combout\)))) # (!\reset_n~input_o\ & (((\s_state.UDP_HEADER~q\ & \s_state~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \s_state~11_combout\,
	datac => \s_state.UDP_HEADER~q\,
	datad => \s_state~41_combout\,
	combout => \s_state~43_combout\);

-- Location: FF_X10_Y10_N19
\s_state.UDP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_state~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.UDP_HEADER~q\);

-- Location: LCCOMB_X11_Y10_N24
\s_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~8_combout\ = (\s_state.UDP_HEADER~q\ & \next_state~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.UDP_HEADER~q\,
	datad => \next_state~11_combout\,
	combout => \s_state~8_combout\);

-- Location: LCCOMB_X10_Y10_N28
\s_state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~42_combout\ = (\reset_n~input_o\ & ((\s_state~8_combout\) # ((\s_state.DATA~q\ & \s_state~41_combout\)))) # (!\reset_n~input_o\ & (((\s_state.DATA~q\ & \s_state~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \s_state~8_combout\,
	datac => \s_state.DATA~q\,
	datad => \s_state~41_combout\,
	combout => \s_state~42_combout\);

-- Location: FF_X10_Y10_N29
\s_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_state~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.DATA~q\);

-- Location: LCCOMB_X11_Y7_N14
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

-- Location: FF_X11_Y7_N15
\delayed_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(0));

-- Location: FF_X11_Y7_N13
\s_out_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(0));

-- Location: LCCOMB_X11_Y7_N12
\out_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~0_combout\ = (\s_state.DATA~q\ & s_out_data(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_out_data(0),
	combout => \out_data~0_combout\);

-- Location: LCCOMB_X16_Y8_N26
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

-- Location: FF_X16_Y8_N27
\delayed_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(1));

-- Location: FF_X16_Y8_N5
\s_out_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(1));

-- Location: LCCOMB_X16_Y8_N4
\out_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~1_combout\ = (\s_state.DATA~q\ & s_out_data(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_out_data(1),
	combout => \out_data~1_combout\);

-- Location: LCCOMB_X16_Y8_N8
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

-- Location: FF_X16_Y8_N9
\delayed_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(2));

-- Location: FF_X16_Y8_N23
\s_out_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(2));

-- Location: LCCOMB_X16_Y8_N22
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

-- Location: LCCOMB_X14_Y8_N30
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

-- Location: FF_X14_Y8_N31
\delayed_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(3));

-- Location: FF_X14_Y8_N25
\s_out_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(3));

-- Location: LCCOMB_X14_Y8_N24
\out_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~3_combout\ = (\s_state.DATA~q\ & s_out_data(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_out_data(3),
	combout => \out_data~3_combout\);

-- Location: FF_X11_Y7_N31
\delayed_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(4));

-- Location: FF_X11_Y7_N29
\s_out_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(4));

-- Location: LCCOMB_X11_Y7_N28
\out_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~4_combout\ = (\s_state.DATA~q\ & s_out_data(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_out_data(4),
	combout => \out_data~4_combout\);

-- Location: LCCOMB_X14_Y8_N14
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

-- Location: FF_X14_Y8_N15
\delayed_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(5));

-- Location: FF_X14_Y8_N3
\s_out_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(5));

-- Location: LCCOMB_X14_Y8_N2
\out_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~5_combout\ = (\s_state.DATA~q\ & s_out_data(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_out_data(5),
	combout => \out_data~5_combout\);

-- Location: LCCOMB_X14_Y8_N8
\delayed_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \delayed_data[6]~feeder_combout\);

-- Location: FF_X14_Y8_N9
\delayed_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(6));

-- Location: FF_X14_Y8_N29
\s_out_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(6));

-- Location: LCCOMB_X14_Y8_N28
\out_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~6_combout\ = (\s_state.DATA~q\ & s_out_data(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_out_data(6),
	combout => \out_data~6_combout\);

-- Location: LCCOMB_X11_Y7_N8
\delayed_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[7]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \delayed_data[7]~feeder_combout\);

-- Location: FF_X11_Y7_N9
\delayed_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(7));

-- Location: FF_X11_Y7_N3
\s_out_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => delayed_data(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(7));

-- Location: LCCOMB_X11_Y7_N2
\out_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~7_combout\ = (\s_state.DATA~q\ & s_out_data(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_out_data(7),
	combout => \out_data~7_combout\);

-- Location: LCCOMB_X11_Y10_N6
\Selector38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~3_combout\ = (\out_ready~input_o\ & (((\Equal13~20_combout\) # (\Equal12~19_combout\)) # (!\in_valid~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \in_valid~input_o\,
	datac => \Equal13~20_combout\,
	datad => \Equal12~19_combout\,
	combout => \Selector38~3_combout\);

-- Location: LCCOMB_X11_Y10_N4
\Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~2_combout\ = (\s_state.DATA~q\ & (((\s_out_startofpacket~q\ & \Selector38~3_combout\)))) # (!\s_state.DATA~q\ & ((\s_state~8_combout\) # ((\s_out_startofpacket~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datab => \s_state~8_combout\,
	datac => \s_out_startofpacket~q\,
	datad => \Selector38~3_combout\,
	combout => \Selector38~2_combout\);

-- Location: FF_X11_Y10_N5
s_out_startofpacket : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~2_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_out_startofpacket~q\);

-- Location: LCCOMB_X11_Y10_N2
\next_out_endofpacket~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_out_endofpacket~1_combout\ = (\next_out_endofpacket~0_combout\ & ((\Equal12~19_combout\) # ((!\Equal13~20_combout\ & \s_out_endofpacket~q\)))) # (!\next_out_endofpacket~0_combout\ & (((\s_out_endofpacket~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~20_combout\,
	datab => \Equal12~19_combout\,
	datac => \s_out_endofpacket~q\,
	datad => \next_out_endofpacket~0_combout\,
	combout => \next_out_endofpacket~1_combout\);

-- Location: FF_X11_Y10_N3
s_out_endofpacket : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_out_endofpacket~1_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_out_endofpacket~q\);

-- Location: LCCOMB_X10_Y11_N12
\Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (!byte_index(1) & (\Equal0~8_combout\ & (byte_index(4) & byte_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => \Equal0~8_combout\,
	datac => byte_index(4),
	datad => byte_index(2),
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X10_Y11_N24
\s_channel~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~5_combout\ = (\Equal22~1_combout\ & ((byte_index(0)) # (!\Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \Equal22~1_combout\,
	datad => \Equal18~0_combout\,
	combout => \s_channel~5_combout\);

-- Location: LCCOMB_X14_Y8_N22
\s_channel[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[1]~6_combout\ = ((\Equal8~4_combout\ & (\Equal9~6_combout\ & \s_channel~5_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~4_combout\,
	datab => \reset_n~input_o\,
	datac => \Equal9~6_combout\,
	datad => \s_channel~5_combout\,
	combout => \s_channel[1]~6_combout\);

-- Location: FF_X14_Y8_N1
\s_channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(0));

-- Location: LCCOMB_X14_Y8_N0
\channel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~0_combout\ = (\s_state.DATA~q\ & s_channel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(0),
	combout => \channel~0_combout\);

-- Location: FF_X14_Y8_N21
\s_channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(1));

-- Location: LCCOMB_X14_Y8_N20
\channel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~1_combout\ = (\s_state.DATA~q\ & s_channel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(1),
	combout => \channel~1_combout\);

-- Location: FF_X14_Y8_N13
\s_channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(2));

-- Location: LCCOMB_X14_Y8_N12
\channel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~2_combout\ = (\s_state.DATA~q\ & s_channel(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(2),
	combout => \channel~2_combout\);

-- Location: FF_X14_Y8_N17
\s_channel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(3));

-- Location: LCCOMB_X14_Y8_N16
\channel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~3_combout\ = (\s_state.DATA~q\ & s_channel(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(3),
	combout => \channel~3_combout\);

-- Location: LCCOMB_X11_Y7_N10
\s_channel~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~10_combout\ = (\in_data[4]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_data[4]~input_o\,
	datad => \reset_n~input_o\,
	combout => \s_channel~10_combout\);

-- Location: FF_X14_Y8_N27
\s_channel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(4));

-- Location: LCCOMB_X14_Y8_N26
\channel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~4_combout\ = (\s_state.DATA~q\ & s_channel(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(4),
	combout => \channel~4_combout\);

-- Location: LCCOMB_X13_Y7_N14
\s_channel~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~11_combout\ = (\in_data[5]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[5]~input_o\,
	datad => \reset_n~input_o\,
	combout => \s_channel~11_combout\);

-- Location: FF_X14_Y8_N7
\s_channel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(5));

-- Location: LCCOMB_X14_Y8_N6
\channel~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~5_combout\ = (\s_state.DATA~q\ & s_channel(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(5),
	combout => \channel~5_combout\);

-- Location: LCCOMB_X17_Y8_N26
\s_channel~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~12_combout\ = (\in_data[6]~input_o\ & \reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[6]~input_o\,
	datad => \reset_n~input_o\,
	combout => \s_channel~12_combout\);

-- Location: FF_X14_Y8_N11
\s_channel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(6));

-- Location: LCCOMB_X14_Y8_N10
\channel~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~6_combout\ = (\s_state.DATA~q\ & s_channel(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(6),
	combout => \channel~6_combout\);

-- Location: LCCOMB_X11_Y7_N4
\s_channel~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~13_combout\ = (\reset_n~input_o\ & \in_data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datad => \in_data[7]~input_o\,
	combout => \s_channel~13_combout\);

-- Location: FF_X14_Y8_N19
\s_channel[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(7));

-- Location: LCCOMB_X14_Y8_N18
\channel~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~7_combout\ = (\s_state.DATA~q\ & s_channel(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(7),
	combout => \channel~7_combout\);

-- Location: LCCOMB_X8_Y8_N6
\Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (byte_index(1) & byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datac => byte_index(0),
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X10_Y11_N10
\Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~1_combout\ = (((!\Equal0~8_combout\) # (!\Equal21~0_combout\)) # (!byte_index(4))) # (!byte_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(4),
	datac => \Equal21~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal21~1_combout\);

-- Location: LCCOMB_X10_Y11_N0
\s_channel~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~14_combout\ = (\Equal21~1_combout\ & ((!\Equal0~9_combout\) # (!byte_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~1_combout\,
	datab => byte_index(4),
	datad => \Equal0~9_combout\,
	combout => \s_channel~14_combout\);

-- Location: LCCOMB_X8_Y8_N16
\s_channel[14]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[14]~15_combout\ = ((\Equal21~0_combout\ & (\s_channel~14_combout\ & \Equal8~6_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~0_combout\,
	datab => \s_channel~14_combout\,
	datac => \reset_n~input_o\,
	datad => \Equal8~6_combout\,
	combout => \s_channel[14]~15_combout\);

-- Location: FF_X8_Y8_N21
\s_channel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(8));

-- Location: LCCOMB_X8_Y8_N20
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

-- Location: FF_X8_Y8_N11
\s_channel[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(9));

-- Location: LCCOMB_X8_Y8_N10
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

-- Location: FF_X8_Y8_N1
\s_channel[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(10));

-- Location: LCCOMB_X8_Y8_N0
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

-- Location: FF_X8_Y8_N15
\s_channel[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(11));

-- Location: LCCOMB_X8_Y8_N14
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

-- Location: FF_X8_Y8_N5
\s_channel[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(12));

-- Location: LCCOMB_X8_Y8_N4
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

-- Location: FF_X8_Y8_N23
\s_channel[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(13));

-- Location: LCCOMB_X8_Y8_N22
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

-- Location: FF_X8_Y8_N13
\s_channel[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(14));

-- Location: LCCOMB_X8_Y8_N12
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

-- Location: FF_X8_Y8_N3
\s_channel[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(15));

-- Location: LCCOMB_X8_Y8_N2
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

-- Location: LCCOMB_X10_Y11_N4
\s_channel~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~29_combout\ = (\Equal0~8_combout\ & ((byte_index(0) & (!byte_index(2) & !byte_index(1))) # (!byte_index(0) & ((byte_index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal0~8_combout\,
	combout => \s_channel~29_combout\);

-- Location: LCCOMB_X10_Y11_N6
\s_channel~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~17_combout\ = (!\Equal18~0_combout\ & (\Equal22~1_combout\ & \s_channel~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datac => \Equal22~1_combout\,
	datad => \s_channel~14_combout\,
	combout => \s_channel~17_combout\);

-- Location: LCCOMB_X10_Y11_N20
\s_channel~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~18_combout\ = (\s_channel~17_combout\ & ((!\s_channel~29_combout\) # (!byte_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(4),
	datac => \s_channel~29_combout\,
	datad => \s_channel~17_combout\,
	combout => \s_channel~18_combout\);

-- Location: LCCOMB_X9_Y7_N28
\s_channel~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel~16_combout\ = ((byte_index(0)) # (!byte_index(1))) # (!\Equal8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~6_combout\,
	datab => byte_index(0),
	datad => byte_index(1),
	combout => \s_channel~16_combout\);

-- Location: LCCOMB_X9_Y7_N10
\s_channel[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[21]~19_combout\ = ((\s_channel~18_combout\ & !\s_channel~16_combout\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel~18_combout\,
	datab => \reset_n~input_o\,
	datad => \s_channel~16_combout\,
	combout => \s_channel[21]~19_combout\);

-- Location: FF_X9_Y7_N29
\s_channel[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(16));

-- Location: LCCOMB_X8_Y7_N12
\channel~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~16_combout\ = (s_channel(16) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_channel(16),
	datad => \s_state.DATA~q\,
	combout => \channel~16_combout\);

-- Location: FF_X9_Y7_N23
\s_channel[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(17));

-- Location: LCCOMB_X9_Y7_N22
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

-- Location: FF_X9_Y7_N1
\s_channel[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(18));

-- Location: LCCOMB_X9_Y7_N0
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

-- Location: FF_X9_Y7_N31
\s_channel[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(19));

-- Location: LCCOMB_X9_Y7_N30
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

-- Location: FF_X9_Y7_N9
\s_channel[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(20));

-- Location: LCCOMB_X9_Y7_N8
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

-- Location: FF_X9_Y7_N15
\s_channel[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(21));

-- Location: LCCOMB_X9_Y7_N14
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

-- Location: FF_X9_Y7_N17
\s_channel[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(22));

-- Location: LCCOMB_X9_Y7_N16
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

-- Location: FF_X9_Y7_N19
\s_channel[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(23));

-- Location: LCCOMB_X9_Y7_N18
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

-- Location: LCCOMB_X9_Y7_N6
\s_channel[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[26]~20_combout\ = ((\Equal8~6_combout\ & (\s_channel~18_combout\ & \Equal9~7_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~6_combout\,
	datab => \reset_n~input_o\,
	datac => \s_channel~18_combout\,
	datad => \Equal9~7_combout\,
	combout => \s_channel[26]~20_combout\);

-- Location: FF_X9_Y7_N21
\s_channel[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(24));

-- Location: LCCOMB_X8_Y8_N24
\channel~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~24_combout\ = (s_channel(24) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_channel(24),
	datad => \s_state.DATA~q\,
	combout => \channel~24_combout\);

-- Location: LCCOMB_X9_Y7_N2
\s_channel[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[25]~feeder_combout\ = \s_channel~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_channel~7_combout\,
	combout => \s_channel[25]~feeder_combout\);

-- Location: FF_X9_Y7_N3
\s_channel[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[25]~feeder_combout\,
	ena => \s_channel[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(25));

-- Location: LCCOMB_X8_Y7_N2
\channel~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~25_combout\ = (s_channel(25) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel(25),
	datad => \s_state.DATA~q\,
	combout => \channel~25_combout\);

-- Location: FF_X9_Y7_N13
\s_channel[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(26));

-- Location: LCCOMB_X9_Y7_N12
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

-- Location: FF_X9_Y7_N11
\s_channel[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(27));

-- Location: LCCOMB_X9_Y7_N24
\channel~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~27_combout\ = (s_channel(27) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_channel(27),
	datad => \s_state.DATA~q\,
	combout => \channel~27_combout\);

-- Location: FF_X9_Y7_N25
\s_channel[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(28));

-- Location: LCCOMB_X8_Y7_N4
\channel~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~28_combout\ = (s_channel(28) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_channel(28),
	datad => \s_state.DATA~q\,
	combout => \channel~28_combout\);

-- Location: FF_X9_Y7_N27
\s_channel[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(29));

-- Location: LCCOMB_X9_Y7_N26
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

-- Location: FF_X8_Y7_N19
\s_channel[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(30));

-- Location: LCCOMB_X8_Y7_N0
\channel~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~30_combout\ = (s_channel(30) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_channel(30),
	datad => \s_state.DATA~q\,
	combout => \channel~30_combout\);

-- Location: FF_X9_Y7_N5
\s_channel[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(31));

-- Location: LCCOMB_X9_Y7_N4
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

-- Location: LCCOMB_X6_Y11_N0
\s_channel[37]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[37]~21_combout\ = (!\Equal22~1_combout\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \Equal22~1_combout\,
	combout => \s_channel[37]~21_combout\);

-- Location: FF_X6_Y11_N9
\s_channel[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(32));

-- Location: LCCOMB_X6_Y11_N8
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

-- Location: FF_X6_Y11_N31
\s_channel[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(33));

-- Location: LCCOMB_X6_Y11_N30
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

-- Location: FF_X6_Y11_N1
\s_channel[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(34));

-- Location: LCCOMB_X7_Y9_N12
\channel~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~34_combout\ = (s_channel(34) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_channel(34),
	datac => \s_state.DATA~q\,
	combout => \channel~34_combout\);

-- Location: FF_X6_Y11_N15
\s_channel[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(35));

-- Location: LCCOMB_X6_Y11_N14
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

-- Location: FF_X6_Y11_N25
\s_channel[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(36));

-- Location: LCCOMB_X6_Y11_N24
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

-- Location: FF_X6_Y11_N7
\s_channel[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(37));

-- Location: LCCOMB_X6_Y11_N6
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

-- Location: FF_X6_Y11_N29
\s_channel[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(38));

-- Location: LCCOMB_X6_Y11_N28
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

-- Location: FF_X6_Y11_N11
\s_channel[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[37]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(39));

-- Location: LCCOMB_X6_Y11_N10
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

-- Location: LCCOMB_X10_Y11_N2
\s_channel[45]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[45]~22_combout\ = (!\Equal21~1_combout\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \Equal21~1_combout\,
	combout => \s_channel[45]~22_combout\);

-- Location: FF_X10_Y11_N25
\s_channel[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[45]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(40));

-- Location: LCCOMB_X14_Y11_N8
\channel~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~40_combout\ = (\s_state.DATA~q\ & s_channel(40))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datad => s_channel(40),
	combout => \channel~40_combout\);

-- Location: FF_X7_Y11_N1
\s_channel[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[45]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(41));

-- Location: LCCOMB_X7_Y11_N0
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

-- Location: FF_X7_Y11_N23
\s_channel[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[45]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(42));

-- Location: LCCOMB_X7_Y11_N22
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

-- Location: FF_X7_Y11_N25
\s_channel[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[45]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(43));

-- Location: LCCOMB_X7_Y11_N24
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

-- Location: FF_X7_Y11_N27
\s_channel[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[45]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(44));

-- Location: LCCOMB_X7_Y11_N26
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

-- Location: FF_X7_Y11_N9
\s_channel[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[45]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(45));

-- Location: LCCOMB_X7_Y11_N8
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

-- Location: FF_X7_Y11_N31
\s_channel[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[45]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(46));

-- Location: LCCOMB_X7_Y11_N30
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

-- Location: FF_X7_Y11_N21
\s_channel[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[45]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(47));

-- Location: LCCOMB_X7_Y11_N20
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

-- Location: LCCOMB_X14_Y11_N14
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (((!\Equal0~8_combout\) # (!byte_index(4))) # (!\Equal10~0_combout\)) # (!byte_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Equal10~0_combout\,
	datac => byte_index(4),
	datad => \Equal0~8_combout\,
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X17_Y8_N4
\s_channel[53]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[53]~23_combout\ = (!\Equal20~0_combout\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \Equal20~0_combout\,
	combout => \s_channel[53]~23_combout\);

-- Location: FF_X17_Y8_N13
\s_channel[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[53]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(48));

-- Location: LCCOMB_X17_Y8_N12
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

-- Location: FF_X17_Y8_N23
\s_channel[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[53]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(49));

-- Location: LCCOMB_X17_Y8_N22
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

-- Location: FF_X17_Y8_N17
\s_channel[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[53]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(50));

-- Location: LCCOMB_X17_Y8_N16
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

-- Location: FF_X17_Y8_N7
\s_channel[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[53]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(51));

-- Location: LCCOMB_X17_Y8_N6
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

-- Location: FF_X17_Y8_N21
\s_channel[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[53]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(52));

-- Location: LCCOMB_X17_Y8_N20
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

-- Location: FF_X17_Y8_N3
\s_channel[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[53]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(53));

-- Location: LCCOMB_X17_Y8_N2
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

-- Location: FF_X17_Y8_N5
\s_channel[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[53]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(54));

-- Location: LCCOMB_X17_Y8_N30
\channel~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~54_combout\ = (\s_state.DATA~q\ & s_channel(54))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datad => s_channel(54),
	combout => \channel~54_combout\);

-- Location: FF_X17_Y8_N29
\s_channel[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[53]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(55));

-- Location: LCCOMB_X17_Y8_N28
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

-- Location: LCCOMB_X9_Y11_N16
\s_channel[56]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[56]~24_combout\ = ((\Equal18~0_combout\ & byte_index(0))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal18~0_combout\,
	datac => \reset_n~input_o\,
	datad => byte_index(0),
	combout => \s_channel[56]~24_combout\);

-- Location: FF_X6_Y11_N5
\s_channel[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[56]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(56));

-- Location: LCCOMB_X6_Y11_N4
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

-- Location: FF_X6_Y11_N3
\s_channel[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[56]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(57));

-- Location: LCCOMB_X6_Y11_N2
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

-- Location: FF_X6_Y11_N21
\s_channel[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[56]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(58));

-- Location: LCCOMB_X6_Y11_N20
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

-- Location: FF_X6_Y11_N19
\s_channel[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[56]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(59));

-- Location: LCCOMB_X6_Y11_N18
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

-- Location: FF_X6_Y11_N17
\s_channel[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[56]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(60));

-- Location: LCCOMB_X6_Y11_N16
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

-- Location: FF_X6_Y11_N23
\s_channel[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[56]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(61));

-- Location: LCCOMB_X6_Y11_N22
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

-- Location: FF_X6_Y11_N13
\s_channel[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[56]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(62));

-- Location: LCCOMB_X6_Y11_N12
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

-- Location: FF_X6_Y11_N27
\s_channel[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[56]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(63));

-- Location: LCCOMB_X6_Y11_N26
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

-- Location: LCCOMB_X9_Y11_N22
\s_channel[65]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[65]~25_combout\ = ((\Equal18~0_combout\ & !byte_index(0))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal18~0_combout\,
	datac => \reset_n~input_o\,
	datad => byte_index(0),
	combout => \s_channel[65]~25_combout\);

-- Location: FF_X7_Y11_N19
\s_channel[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[65]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(64));

-- Location: LCCOMB_X7_Y11_N18
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

-- Location: FF_X7_Y11_N17
\s_channel[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[65]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(65));

-- Location: LCCOMB_X7_Y11_N16
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

-- Location: FF_X7_Y11_N7
\s_channel[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[65]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(66));

-- Location: LCCOMB_X7_Y11_N6
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

-- Location: FF_X7_Y11_N29
\s_channel[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[65]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(67));

-- Location: LCCOMB_X7_Y11_N28
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

-- Location: FF_X7_Y11_N15
\s_channel[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[65]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(68));

-- Location: LCCOMB_X7_Y11_N14
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

-- Location: FF_X7_Y11_N13
\s_channel[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[65]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(69));

-- Location: LCCOMB_X7_Y11_N12
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

-- Location: FF_X7_Y11_N3
\s_channel[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[65]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(70));

-- Location: LCCOMB_X7_Y11_N2
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

-- Location: FF_X7_Y11_N5
\s_channel[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[65]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(71));

-- Location: LCCOMB_X7_Y11_N4
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

-- Location: LCCOMB_X14_Y11_N0
\s_channel[78]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[78]~26_combout\ = ((byte_index(4) & \Equal0~9_combout\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(4),
	datac => \reset_n~input_o\,
	datad => \Equal0~9_combout\,
	combout => \s_channel[78]~26_combout\);

-- Location: FF_X17_Y7_N17
\s_channel[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[78]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(72));

-- Location: LCCOMB_X17_Y7_N16
\channel~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~72_combout\ = (\s_state.DATA~q\ & s_channel(72))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(72),
	combout => \channel~72_combout\);

-- Location: FF_X17_Y7_N23
\s_channel[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[78]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(73));

-- Location: LCCOMB_X17_Y7_N22
\channel~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~73_combout\ = (\s_state.DATA~q\ & s_channel(73))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(73),
	combout => \channel~73_combout\);

-- Location: FF_X17_Y7_N21
\s_channel[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[78]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(74));

-- Location: LCCOMB_X17_Y7_N20
\channel~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~74_combout\ = (\s_state.DATA~q\ & s_channel(74))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(74),
	combout => \channel~74_combout\);

-- Location: FF_X17_Y7_N15
\s_channel[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[78]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(75));

-- Location: LCCOMB_X17_Y7_N14
\channel~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~75_combout\ = (\s_state.DATA~q\ & s_channel(75))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(75),
	combout => \channel~75_combout\);

-- Location: FF_X17_Y7_N13
\s_channel[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[78]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(76));

-- Location: LCCOMB_X17_Y7_N12
\channel~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~76_combout\ = (\s_state.DATA~q\ & s_channel(76))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(76),
	combout => \channel~76_combout\);

-- Location: FF_X17_Y7_N3
\s_channel[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[78]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(77));

-- Location: LCCOMB_X17_Y7_N2
\channel~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~77_combout\ = (\s_state.DATA~q\ & s_channel(77))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(77),
	combout => \channel~77_combout\);

-- Location: FF_X17_Y7_N9
\s_channel[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[78]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(78));

-- Location: LCCOMB_X17_Y7_N8
\channel~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~78_combout\ = (\s_state.DATA~q\ & s_channel(78))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(78),
	combout => \channel~78_combout\);

-- Location: FF_X17_Y7_N7
\s_channel[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[78]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(79));

-- Location: LCCOMB_X17_Y7_N6
\channel~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~79_combout\ = (\s_state.DATA~q\ & s_channel(79))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(79),
	combout => \channel~79_combout\);

-- Location: LCCOMB_X14_Y11_N22
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (byte_index(1) & (byte_index(4) & !byte_index(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datac => byte_index(4),
	datad => byte_index(0),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X14_Y11_N12
\s_channel[80]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[80]~27_combout\ = ((!byte_index(2) & (\Equal5~2_combout\ & \Equal0~8_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \reset_n~input_o\,
	datac => \Equal5~2_combout\,
	datad => \Equal0~8_combout\,
	combout => \s_channel[80]~27_combout\);

-- Location: FF_X17_Y7_N29
\s_channel[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[80]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(80));

-- Location: LCCOMB_X17_Y7_N28
\channel~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~80_combout\ = (\s_state.DATA~q\ & s_channel(80))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(80),
	combout => \channel~80_combout\);

-- Location: FF_X17_Y7_N31
\s_channel[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[80]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(81));

-- Location: LCCOMB_X17_Y7_N30
\channel~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~81_combout\ = (\s_state.DATA~q\ & s_channel(81))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(81),
	combout => \channel~81_combout\);

-- Location: FF_X17_Y7_N1
\s_channel[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[80]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(82));

-- Location: LCCOMB_X17_Y7_N0
\channel~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~82_combout\ = (\s_state.DATA~q\ & s_channel(82))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(82),
	combout => \channel~82_combout\);

-- Location: FF_X17_Y7_N11
\s_channel[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[80]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(83));

-- Location: LCCOMB_X17_Y7_N10
\channel~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~83_combout\ = (\s_state.DATA~q\ & s_channel(83))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(83),
	combout => \channel~83_combout\);

-- Location: FF_X17_Y7_N5
\s_channel[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[80]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(84));

-- Location: LCCOMB_X17_Y7_N4
\channel~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~84_combout\ = (\s_state.DATA~q\ & s_channel(84))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(84),
	combout => \channel~84_combout\);

-- Location: FF_X17_Y7_N27
\s_channel[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[80]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(85));

-- Location: LCCOMB_X17_Y7_N26
\channel~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~85_combout\ = (\s_state.DATA~q\ & s_channel(85))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(85),
	combout => \channel~85_combout\);

-- Location: FF_X17_Y7_N25
\s_channel[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[80]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(86));

-- Location: LCCOMB_X17_Y7_N24
\channel~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~86_combout\ = (\s_state.DATA~q\ & s_channel(86))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(86),
	combout => \channel~86_combout\);

-- Location: FF_X17_Y7_N19
\s_channel[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[80]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(87));

-- Location: LCCOMB_X17_Y7_N18
\channel~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~87_combout\ = (\s_state.DATA~q\ & s_channel(87))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(87),
	combout => \channel~87_combout\);

-- Location: LCCOMB_X12_Y11_N6
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!byte_index(2) & (byte_index(0) & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(0),
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X12_Y11_N16
\s_channel[92]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[92]~28_combout\ = ((!byte_index(1) & (byte_index(4) & \Equal0~10_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => byte_index(1),
	datac => byte_index(4),
	datad => \Equal0~10_combout\,
	combout => \s_channel[92]~28_combout\);

-- Location: FF_X11_Y7_N17
\s_channel[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~4_combout\,
	sload => VCC,
	ena => \s_channel[92]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(88));

-- Location: LCCOMB_X11_Y7_N16
\channel~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~88_combout\ = (\s_state.DATA~q\ & s_channel(88))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(88),
	combout => \channel~88_combout\);

-- Location: FF_X16_Y8_N25
\s_channel[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~7_combout\,
	sload => VCC,
	ena => \s_channel[92]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(89));

-- Location: LCCOMB_X16_Y8_N24
\channel~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~89_combout\ = (\s_state.DATA~q\ & s_channel(89))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(89),
	combout => \channel~89_combout\);

-- Location: FF_X16_Y8_N7
\s_channel[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~8_combout\,
	sload => VCC,
	ena => \s_channel[92]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(90));

-- Location: LCCOMB_X16_Y8_N6
\channel~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~90_combout\ = (\s_state.DATA~q\ & s_channel(90))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(90),
	combout => \channel~90_combout\);

-- Location: FF_X16_Y8_N21
\s_channel[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~9_combout\,
	sload => VCC,
	ena => \s_channel[92]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(91));

-- Location: LCCOMB_X16_Y8_N20
\channel~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~91_combout\ = (\s_state.DATA~q\ & s_channel(91))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(91),
	combout => \channel~91_combout\);

-- Location: FF_X11_Y7_N19
\s_channel[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~10_combout\,
	sload => VCC,
	ena => \s_channel[92]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(92));

-- Location: LCCOMB_X11_Y7_N18
\channel~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~92_combout\ = (\s_state.DATA~q\ & s_channel(92))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(92),
	combout => \channel~92_combout\);

-- Location: FF_X16_Y8_N11
\s_channel[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~11_combout\,
	sload => VCC,
	ena => \s_channel[92]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(93));

-- Location: LCCOMB_X16_Y8_N10
\channel~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~93_combout\ = (\s_state.DATA~q\ & s_channel(93))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(93),
	combout => \channel~93_combout\);

-- Location: FF_X16_Y8_N1
\s_channel[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~12_combout\,
	sload => VCC,
	ena => \s_channel[92]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(94));

-- Location: LCCOMB_X16_Y8_N0
\channel~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~94_combout\ = (\s_state.DATA~q\ & s_channel(94))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(94),
	combout => \channel~94_combout\);

-- Location: FF_X11_Y7_N21
\s_channel[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_channel~13_combout\,
	sload => VCC,
	ena => \s_channel[92]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(95));

-- Location: LCCOMB_X11_Y7_N20
\channel~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~95_combout\ = (\s_state.DATA~q\ & s_channel(95))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(95),
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



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

-- DATE "12/15/2024 16:55:19"

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
-- in_ready	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_startofpacket	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endofpacket	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[1]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[8]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[9]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[10]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[11]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[13]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[14]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[15]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[16]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[17]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[18]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[19]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[20]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[21]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[22]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[23]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[24]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[25]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[26]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[27]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[28]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[29]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[30]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[31]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[32]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[33]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[34]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[35]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[36]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[37]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[38]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[39]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[40]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[41]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[42]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[43]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[44]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[45]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[46]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[47]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[48]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[49]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[50]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[51]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[52]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[53]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[54]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[55]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[56]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[57]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[58]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[59]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[60]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[61]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[62]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[63]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[64]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[65]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[66]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[67]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[68]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[69]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[70]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[71]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[72]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[73]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[74]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[75]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[76]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[77]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[78]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[79]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[80]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[81]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[82]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[83]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[84]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[85]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[86]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[87]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[88]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[89]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[90]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[91]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[92]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[93]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[94]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[95]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_startofpacket	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \s_state.IDLE~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in_endofpacket~input_o\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \out_ready~input_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \byte_index[0]~34_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \byte_index[5]~45\ : std_logic;
SIGNAL \byte_index[6]~46_combout\ : std_logic;
SIGNAL \in_startofpacket~input_o\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \byte_index[6]~47\ : std_logic;
SIGNAL \byte_index[7]~48_combout\ : std_logic;
SIGNAL \byte_index[7]~49\ : std_logic;
SIGNAL \byte_index[8]~53_combout\ : std_logic;
SIGNAL \byte_index[8]~54\ : std_logic;
SIGNAL \byte_index[9]~55_combout\ : std_logic;
SIGNAL \byte_index[9]~56\ : std_logic;
SIGNAL \byte_index[10]~57_combout\ : std_logic;
SIGNAL \byte_index[10]~58\ : std_logic;
SIGNAL \byte_index[11]~59_combout\ : std_logic;
SIGNAL \byte_index[11]~60\ : std_logic;
SIGNAL \byte_index[12]~61_combout\ : std_logic;
SIGNAL \byte_index[12]~62\ : std_logic;
SIGNAL \byte_index[13]~63_combout\ : std_logic;
SIGNAL \byte_index[13]~64\ : std_logic;
SIGNAL \byte_index[14]~65_combout\ : std_logic;
SIGNAL \byte_index[14]~66\ : std_logic;
SIGNAL \byte_index[15]~67_combout\ : std_logic;
SIGNAL \byte_index[15]~68\ : std_logic;
SIGNAL \byte_index[16]~69_combout\ : std_logic;
SIGNAL \byte_index[16]~70\ : std_logic;
SIGNAL \byte_index[17]~71_combout\ : std_logic;
SIGNAL \byte_index[17]~72\ : std_logic;
SIGNAL \byte_index[18]~73_combout\ : std_logic;
SIGNAL \byte_index[18]~74\ : std_logic;
SIGNAL \byte_index[19]~75_combout\ : std_logic;
SIGNAL \byte_index[19]~76\ : std_logic;
SIGNAL \byte_index[20]~77_combout\ : std_logic;
SIGNAL \byte_index[20]~78\ : std_logic;
SIGNAL \byte_index[21]~79_combout\ : std_logic;
SIGNAL \byte_index[21]~80\ : std_logic;
SIGNAL \byte_index[22]~81_combout\ : std_logic;
SIGNAL \byte_index[22]~82\ : std_logic;
SIGNAL \byte_index[23]~83_combout\ : std_logic;
SIGNAL \byte_index[23]~84\ : std_logic;
SIGNAL \byte_index[24]~85_combout\ : std_logic;
SIGNAL \byte_index[24]~86\ : std_logic;
SIGNAL \byte_index[25]~87_combout\ : std_logic;
SIGNAL \byte_index[25]~88\ : std_logic;
SIGNAL \byte_index[26]~89_combout\ : std_logic;
SIGNAL \byte_index[26]~90\ : std_logic;
SIGNAL \byte_index[27]~91_combout\ : std_logic;
SIGNAL \udp_length[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ip_header_length[2]~2_combout\ : std_logic;
SIGNAL \Add8~5_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Equal20~2_combout\ : std_logic;
SIGNAL \Equal16~2_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \Equal20~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \byte_index[27]~92\ : std_logic;
SIGNAL \byte_index[28]~93_combout\ : std_logic;
SIGNAL \byte_index[28]~94\ : std_logic;
SIGNAL \byte_index[29]~95_combout\ : std_logic;
SIGNAL \byte_index[29]~96\ : std_logic;
SIGNAL \byte_index[30]~97_combout\ : std_logic;
SIGNAL \byte_index[30]~98\ : std_logic;
SIGNAL \byte_index[31]~99_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal20~3_combout\ : std_logic;
SIGNAL \Equal21~2_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Equal17~1_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Add8~3_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \Equal17~2_combout\ : std_logic;
SIGNAL \s_channel[0]~6_combout\ : std_logic;
SIGNAL \udp_length[31]~88_combout\ : std_logic;
SIGNAL \udp_length[0]~33\ : std_logic;
SIGNAL \udp_length[1]~34_combout\ : std_logic;
SIGNAL \udp_length[1]~35\ : std_logic;
SIGNAL \udp_length[2]~36_combout\ : std_logic;
SIGNAL \udp_length[2]~37\ : std_logic;
SIGNAL \udp_length[3]~38_combout\ : std_logic;
SIGNAL \udp_length[3]~39\ : std_logic;
SIGNAL \udp_length[4]~40_combout\ : std_logic;
SIGNAL \udp_length[4]~41\ : std_logic;
SIGNAL \udp_length[5]~42_combout\ : std_logic;
SIGNAL \udp_length[5]~43\ : std_logic;
SIGNAL \udp_length[6]~44_combout\ : std_logic;
SIGNAL \udp_length[6]~45\ : std_logic;
SIGNAL \udp_length[7]~46_combout\ : std_logic;
SIGNAL \udp_length[7]~47\ : std_logic;
SIGNAL \udp_length[8]~48_combout\ : std_logic;
SIGNAL \udp_length[8]~49\ : std_logic;
SIGNAL \udp_length[9]~50_combout\ : std_logic;
SIGNAL \udp_length[9]~51\ : std_logic;
SIGNAL \udp_length[10]~52_combout\ : std_logic;
SIGNAL \udp_length[10]~53\ : std_logic;
SIGNAL \udp_length[11]~54_combout\ : std_logic;
SIGNAL \udp_length[11]~55\ : std_logic;
SIGNAL \udp_length[12]~56_combout\ : std_logic;
SIGNAL \udp_length[12]~57\ : std_logic;
SIGNAL \udp_length[13]~58_combout\ : std_logic;
SIGNAL \udp_length[13]~59\ : std_logic;
SIGNAL \udp_length[14]~60_combout\ : std_logic;
SIGNAL \udp_length[14]~61\ : std_logic;
SIGNAL \udp_length[15]~62_combout\ : std_logic;
SIGNAL \udp_length[15]~63\ : std_logic;
SIGNAL \udp_length[16]~64_combout\ : std_logic;
SIGNAL \udp_length[16]~65\ : std_logic;
SIGNAL \udp_length[17]~66_combout\ : std_logic;
SIGNAL \udp_length[17]~67\ : std_logic;
SIGNAL \udp_length[18]~68_combout\ : std_logic;
SIGNAL \udp_length[18]~69\ : std_logic;
SIGNAL \udp_length[19]~70_combout\ : std_logic;
SIGNAL \udp_length[19]~71\ : std_logic;
SIGNAL \udp_length[20]~72_combout\ : std_logic;
SIGNAL \udp_length[20]~73\ : std_logic;
SIGNAL \udp_length[21]~74_combout\ : std_logic;
SIGNAL \udp_length[21]~75\ : std_logic;
SIGNAL \udp_length[22]~76_combout\ : std_logic;
SIGNAL \udp_length[22]~77\ : std_logic;
SIGNAL \udp_length[23]~78_combout\ : std_logic;
SIGNAL \udp_length[23]~79\ : std_logic;
SIGNAL \udp_length[24]~80_combout\ : std_logic;
SIGNAL \udp_length[24]~81\ : std_logic;
SIGNAL \udp_length[25]~82_combout\ : std_logic;
SIGNAL \udp_length[25]~83\ : std_logic;
SIGNAL \udp_length[26]~84_combout\ : std_logic;
SIGNAL \udp_length[26]~85\ : std_logic;
SIGNAL \udp_length[27]~86_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~17\ : std_logic;
SIGNAL \Add12~19\ : std_logic;
SIGNAL \Add12~21\ : std_logic;
SIGNAL \Add12~23\ : std_logic;
SIGNAL \Add12~25\ : std_logic;
SIGNAL \Add12~27\ : std_logic;
SIGNAL \Add12~29\ : std_logic;
SIGNAL \Add12~31\ : std_logic;
SIGNAL \Add12~33\ : std_logic;
SIGNAL \Add12~35\ : std_logic;
SIGNAL \Add12~37\ : std_logic;
SIGNAL \Add12~39\ : std_logic;
SIGNAL \Add12~41\ : std_logic;
SIGNAL \Add12~43\ : std_logic;
SIGNAL \Add12~45\ : std_logic;
SIGNAL \Add12~47\ : std_logic;
SIGNAL \Add12~49\ : std_logic;
SIGNAL \Add12~51\ : std_logic;
SIGNAL \Add12~53\ : std_logic;
SIGNAL \Add12~54_combout\ : std_logic;
SIGNAL \Add12~52_combout\ : std_logic;
SIGNAL \Add12~50_combout\ : std_logic;
SIGNAL \Add12~48_combout\ : std_logic;
SIGNAL \Add12~46_combout\ : std_logic;
SIGNAL \Add12~44_combout\ : std_logic;
SIGNAL \Add12~42_combout\ : std_logic;
SIGNAL \Add12~40_combout\ : std_logic;
SIGNAL \Add12~38_combout\ : std_logic;
SIGNAL \Add12~36_combout\ : std_logic;
SIGNAL \Add12~34_combout\ : std_logic;
SIGNAL \Add12~32_combout\ : std_logic;
SIGNAL \Add12~30_combout\ : std_logic;
SIGNAL \Add12~28_combout\ : std_logic;
SIGNAL \Add12~26_combout\ : std_logic;
SIGNAL \Add12~24_combout\ : std_logic;
SIGNAL \Add12~22_combout\ : std_logic;
SIGNAL \Add12~20_combout\ : std_logic;
SIGNAL \Add12~18_combout\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add13~1_cout\ : std_logic;
SIGNAL \Add13~3_cout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~19\ : std_logic;
SIGNAL \Add13~21\ : std_logic;
SIGNAL \Add13~23\ : std_logic;
SIGNAL \Add13~25\ : std_logic;
SIGNAL \Add13~27\ : std_logic;
SIGNAL \Add13~29\ : std_logic;
SIGNAL \Add13~31\ : std_logic;
SIGNAL \Add13~33\ : std_logic;
SIGNAL \Add13~35\ : std_logic;
SIGNAL \Add13~37\ : std_logic;
SIGNAL \Add13~39\ : std_logic;
SIGNAL \Add13~41\ : std_logic;
SIGNAL \Add13~43\ : std_logic;
SIGNAL \Add13~45\ : std_logic;
SIGNAL \Add13~47\ : std_logic;
SIGNAL \Add13~49\ : std_logic;
SIGNAL \Add13~51\ : std_logic;
SIGNAL \Add13~53\ : std_logic;
SIGNAL \Add13~54_combout\ : std_logic;
SIGNAL \Add13~52_combout\ : std_logic;
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \udp_length[27]~87\ : std_logic;
SIGNAL \udp_length[28]~89_combout\ : std_logic;
SIGNAL \Add12~55\ : std_logic;
SIGNAL \Add12~56_combout\ : std_logic;
SIGNAL \Add13~55\ : std_logic;
SIGNAL \Add13~56_combout\ : std_logic;
SIGNAL \udp_length[28]~90\ : std_logic;
SIGNAL \udp_length[29]~91_combout\ : std_logic;
SIGNAL \Add12~57\ : std_logic;
SIGNAL \Add12~58_combout\ : std_logic;
SIGNAL \Add13~57\ : std_logic;
SIGNAL \Add13~58_combout\ : std_logic;
SIGNAL \Equal27~1_combout\ : std_logic;
SIGNAL \udp_length[29]~92\ : std_logic;
SIGNAL \udp_length[30]~93_combout\ : std_logic;
SIGNAL \udp_length[30]~94\ : std_logic;
SIGNAL \udp_length[31]~95_combout\ : std_logic;
SIGNAL \Add12~59\ : std_logic;
SIGNAL \Add12~61\ : std_logic;
SIGNAL \Add12~62_combout\ : std_logic;
SIGNAL \Add12~60_combout\ : std_logic;
SIGNAL \Add13~59\ : std_logic;
SIGNAL \Add13~61\ : std_logic;
SIGNAL \Add13~62_combout\ : std_logic;
SIGNAL \Add13~60_combout\ : std_logic;
SIGNAL \Equal27~2_combout\ : std_logic;
SIGNAL \Add13~48_combout\ : std_logic;
SIGNAL \Add13~50_combout\ : std_logic;
SIGNAL \Equal27~19_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Equal24~2_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Equal24~1_combout\ : std_logic;
SIGNAL \Equal24~3_combout\ : std_logic;
SIGNAL \s_out_endofpacket~0_combout\ : std_logic;
SIGNAL \Selector79~16_combout\ : std_logic;
SIGNAL \Selector79~15_combout\ : std_logic;
SIGNAL \Selector79~17_combout\ : std_logic;
SIGNAL \Selector79~14_combout\ : std_logic;
SIGNAL \Selector79~18_combout\ : std_logic;
SIGNAL \Selector79~9_combout\ : std_logic;
SIGNAL \Selector79~12_combout\ : std_logic;
SIGNAL \Selector79~10_combout\ : std_logic;
SIGNAL \Selector79~11_combout\ : std_logic;
SIGNAL \Selector79~13_combout\ : std_logic;
SIGNAL \Selector79~22_combout\ : std_logic;
SIGNAL \Selector79~20_combout\ : std_logic;
SIGNAL \Selector79~19_combout\ : std_logic;
SIGNAL \Selector79~21_combout\ : std_logic;
SIGNAL \Selector79~23_combout\ : std_logic;
SIGNAL \Selector79~5_combout\ : std_logic;
SIGNAL \Selector79~7_combout\ : std_logic;
SIGNAL \Selector79~6_combout\ : std_logic;
SIGNAL \Selector79~4_combout\ : std_logic;
SIGNAL \Selector79~8_combout\ : std_logic;
SIGNAL \Selector79~24_combout\ : std_logic;
SIGNAL \Add13~36_combout\ : std_logic;
SIGNAL \Add13~38_combout\ : std_logic;
SIGNAL \Equal27~15_combout\ : std_logic;
SIGNAL \Add13~34_combout\ : std_logic;
SIGNAL \Add13~32_combout\ : std_logic;
SIGNAL \Equal27~14_combout\ : std_logic;
SIGNAL \Add13~40_combout\ : std_logic;
SIGNAL \Add13~42_combout\ : std_logic;
SIGNAL \Equal27~16_combout\ : std_logic;
SIGNAL \Add13~44_combout\ : std_logic;
SIGNAL \Add13~46_combout\ : std_logic;
SIGNAL \Equal27~17_combout\ : std_logic;
SIGNAL \Equal27~18_combout\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Equal27~4_combout\ : std_logic;
SIGNAL \Equal27~3_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Equal27~5_combout\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Equal27~6_combout\ : std_logic;
SIGNAL \Equal27~7_combout\ : std_logic;
SIGNAL \Add13~26_combout\ : std_logic;
SIGNAL \Add13~24_combout\ : std_logic;
SIGNAL \Equal27~11_combout\ : std_logic;
SIGNAL \Add13~30_combout\ : std_logic;
SIGNAL \Add13~28_combout\ : std_logic;
SIGNAL \Equal27~12_combout\ : std_logic;
SIGNAL \Add13~22_combout\ : std_logic;
SIGNAL \Add13~20_combout\ : std_logic;
SIGNAL \Equal27~9_combout\ : std_logic;
SIGNAL \Add13~18_combout\ : std_logic;
SIGNAL \Add13~16_combout\ : std_logic;
SIGNAL \Equal27~8_combout\ : std_logic;
SIGNAL \Equal27~10_combout\ : std_logic;
SIGNAL \Equal27~13_combout\ : std_logic;
SIGNAL \Equal27~20_combout\ : std_logic;
SIGNAL \Selector79~26_combout\ : std_logic;
SIGNAL \Add11~1_cout\ : std_logic;
SIGNAL \Add11~3_cout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Equal25~0_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Equal25~1_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Equal25~2_combout\ : std_logic;
SIGNAL \Equal25~3_combout\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~21\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~25\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~29\ : std_logic;
SIGNAL \Add11~31\ : std_logic;
SIGNAL \Add11~33\ : std_logic;
SIGNAL \Add11~35\ : std_logic;
SIGNAL \Add11~37\ : std_logic;
SIGNAL \Add11~39\ : std_logic;
SIGNAL \Add11~40_combout\ : std_logic;
SIGNAL \Add11~41\ : std_logic;
SIGNAL \Add11~42_combout\ : std_logic;
SIGNAL \Equal25~11_combout\ : std_logic;
SIGNAL \Add11~36_combout\ : std_logic;
SIGNAL \Add11~38_combout\ : std_logic;
SIGNAL \Equal25~10_combout\ : std_logic;
SIGNAL \Add11~32_combout\ : std_logic;
SIGNAL \Add11~34_combout\ : std_logic;
SIGNAL \Equal25~9_combout\ : std_logic;
SIGNAL \Add11~43\ : std_logic;
SIGNAL \Add11~44_combout\ : std_logic;
SIGNAL \Add11~45\ : std_logic;
SIGNAL \Add11~46_combout\ : std_logic;
SIGNAL \Equal25~12_combout\ : std_logic;
SIGNAL \Equal25~13_combout\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \Equal25~4_combout\ : std_logic;
SIGNAL \Add11~22_combout\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \Equal25~5_combout\ : std_logic;
SIGNAL \Add11~30_combout\ : std_logic;
SIGNAL \Add11~28_combout\ : std_logic;
SIGNAL \Equal25~7_combout\ : std_logic;
SIGNAL \Add11~26_combout\ : std_logic;
SIGNAL \Add11~24_combout\ : std_logic;
SIGNAL \Equal25~6_combout\ : std_logic;
SIGNAL \Equal25~8_combout\ : std_logic;
SIGNAL \Add11~47\ : std_logic;
SIGNAL \Add11~49\ : std_logic;
SIGNAL \Add11~50_combout\ : std_logic;
SIGNAL \Add11~48_combout\ : std_logic;
SIGNAL \Equal25~14_combout\ : std_logic;
SIGNAL \Add11~51\ : std_logic;
SIGNAL \Add11~53\ : std_logic;
SIGNAL \Add11~54_combout\ : std_logic;
SIGNAL \Add11~52_combout\ : std_logic;
SIGNAL \Equal25~15_combout\ : std_logic;
SIGNAL \Add11~55\ : std_logic;
SIGNAL \Add11~56_combout\ : std_logic;
SIGNAL \Add11~57\ : std_logic;
SIGNAL \Add11~58_combout\ : std_logic;
SIGNAL \Equal25~16_combout\ : std_logic;
SIGNAL \Add11~59\ : std_logic;
SIGNAL \Add11~60_combout\ : std_logic;
SIGNAL \Add11~61\ : std_logic;
SIGNAL \Add11~62_combout\ : std_logic;
SIGNAL \Equal25~17_combout\ : std_logic;
SIGNAL \Equal25~18_combout\ : std_logic;
SIGNAL \Equal25~19_combout\ : std_logic;
SIGNAL \Selector79~27_combout\ : std_logic;
SIGNAL \s_state.CRC~q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \s_state~18_combout\ : std_logic;
SIGNAL \s_state~23_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \s_state~21_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \s_state~22_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \s_state~19_combout\ : std_logic;
SIGNAL \s_state~26_combout\ : std_logic;
SIGNAL \s_state~27_combout\ : std_logic;
SIGNAL \s_state~20_combout\ : std_logic;
SIGNAL \s_state~24_combout\ : std_logic;
SIGNAL \Selector79~2_combout\ : std_logic;
SIGNAL \Selector79~3_combout\ : std_logic;
SIGNAL \Selector79~25_combout\ : std_logic;
SIGNAL \Selector75~1_combout\ : std_logic;
SIGNAL \s_state.ETHERNET_HEADER~q\ : std_logic;
SIGNAL \s_state~16_combout\ : std_logic;
SIGNAL \s_state~17_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector74~2_combout\ : std_logic;
SIGNAL \s_state~25_combout\ : std_logic;
SIGNAL \Selector74~3_combout\ : std_logic;
SIGNAL \s_state.IDLE~q\ : std_logic;
SIGNAL \byte_index[15]~52_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector76~1_combout\ : std_logic;
SIGNAL \Selector76~2_combout\ : std_logic;
SIGNAL \s_state.IP_HEADER~q\ : std_logic;
SIGNAL \byte_index[15]~101_combout\ : std_logic;
SIGNAL \byte_index[15]~50_combout\ : std_logic;
SIGNAL \byte_index[15]~51_combout\ : std_logic;
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
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \out_startofpacket~1_combout\ : std_logic;
SIGNAL \out_startofpacket~0_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \out_startofpacket~2_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector77~1_combout\ : std_logic;
SIGNAL \s_state.UDP_HEADER~q\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Selector78~1_combout\ : std_logic;
SIGNAL \s_state.DATA~q\ : std_logic;
SIGNAL \out_data~0_combout\ : std_logic;
SIGNAL \out_data~1_combout\ : std_logic;
SIGNAL \out_data~2_combout\ : std_logic;
SIGNAL \out_data~3_combout\ : std_logic;
SIGNAL \out_data~4_combout\ : std_logic;
SIGNAL \out_data~5_combout\ : std_logic;
SIGNAL \out_data~6_combout\ : std_logic;
SIGNAL \out_data~7_combout\ : std_logic;
SIGNAL \out_startofpacket~3_combout\ : std_logic;
SIGNAL \out_startofpacket~4_combout\ : std_logic;
SIGNAL \out_startofpacket~reg0_q\ : std_logic;
SIGNAL \s_out_endofpacket~1_combout\ : std_logic;
SIGNAL \s_out_endofpacket~q\ : std_logic;
SIGNAL \s_channel[0]~16_combout\ : std_logic;
SIGNAL \Selector135~0_combout\ : std_logic;
SIGNAL \s_state.IDLE~clkctrl_outclk\ : std_logic;
SIGNAL \channel[0]$latch~combout\ : std_logic;
SIGNAL \Selector134~0_combout\ : std_logic;
SIGNAL \channel[1]$latch~combout\ : std_logic;
SIGNAL \Selector133~0_combout\ : std_logic;
SIGNAL \channel[2]$latch~combout\ : std_logic;
SIGNAL \Selector132~0_combout\ : std_logic;
SIGNAL \channel[3]$latch~combout\ : std_logic;
SIGNAL \Selector131~0_combout\ : std_logic;
SIGNAL \channel[4]$latch~combout\ : std_logic;
SIGNAL \Selector130~0_combout\ : std_logic;
SIGNAL \channel[5]$latch~combout\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \channel[6]$latch~combout\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \channel[7]$latch~combout\ : std_logic;
SIGNAL \s_channel[8]~7_combout\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \channel[8]$latch~combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \channel[9]$latch~combout\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \channel[10]$latch~combout\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \channel[11]$latch~combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \channel[12]$latch~combout\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \channel[13]$latch~combout\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \channel[14]$latch~combout\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \channel[15]$latch~combout\ : std_logic;
SIGNAL \s_channel[16]~8_combout\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \channel[16]$latch~combout\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \channel[17]$latch~combout\ : std_logic;
SIGNAL \Selector116~0_combout\ : std_logic;
SIGNAL \channel[18]$latch~combout\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \channel[19]$latch~combout\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \channel[20]$latch~combout\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \channel[21]$latch~combout\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \channel[22]$latch~combout\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \channel[23]$latch~combout\ : std_logic;
SIGNAL \s_channel[24]~17_combout\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \channel[24]$latch~combout\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \channel[25]$latch~combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \channel[26]$latch~combout\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \channel[27]$latch~combout\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \channel[28]$latch~combout\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \channel[29]$latch~combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \channel[30]$latch~combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \channel[31]$latch~combout\ : std_logic;
SIGNAL \s_channel[32]~9_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \channel[32]$latch~combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \channel[33]$latch~combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \channel[34]$latch~combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \channel[35]$latch~combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \channel[36]$latch~combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \channel[37]$latch~combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \channel[38]$latch~combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \channel[39]$latch~combout\ : std_logic;
SIGNAL \s_channel[40]~18_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \channel[40]$latch~combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \channel[41]$latch~combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \channel[42]$latch~combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \channel[43]$latch~combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \channel[44]$latch~combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \channel[45]$latch~combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \channel[46]$latch~combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \channel[47]$latch~combout\ : std_logic;
SIGNAL \s_channel[48]~10_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \channel[48]$latch~combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \channel[49]$latch~combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \channel[50]$latch~combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \channel[51]$latch~combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \channel[52]$latch~combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \channel[53]$latch~combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \channel[54]$latch~combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \channel[55]$latch~combout\ : std_logic;
SIGNAL \s_channel[56]~11_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \channel[56]$latch~combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \channel[57]$latch~combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \channel[58]$latch~combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \channel[59]$latch~combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \channel[60]$latch~combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \channel[61]$latch~combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \channel[62]$latch~combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \channel[63]$latch~combout\ : std_logic;
SIGNAL \s_channel[64]~12_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \channel[64]$latch~combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \channel[65]$latch~combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \channel[66]$latch~combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \channel[67]$latch~combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \channel[68]$latch~combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \channel[69]$latch~combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \channel[70]$latch~combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \channel[71]$latch~combout\ : std_logic;
SIGNAL \s_channel[72]~13_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \channel[72]$latch~combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \channel[73]$latch~combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \channel[74]$latch~combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \channel[75]$latch~combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \channel[76]$latch~combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \channel[77]$latch~combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \channel[78]$latch~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \channel[79]$latch~combout\ : std_logic;
SIGNAL \s_channel[80]~14_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \channel[80]$latch~combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \channel[81]$latch~combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \channel[82]$latch~combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \channel[83]$latch~combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \channel[84]$latch~combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \channel[85]$latch~combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \channel[86]$latch~combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \channel[87]$latch~combout\ : std_logic;
SIGNAL \s_channel[88]~15_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \channel[88]$latch~combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \channel[89]$latch~combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \channel[90]$latch~combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \channel[91]$latch~combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \channel[92]$latch~combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \channel[93]$latch~combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \channel[94]$latch~combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \channel[95]$latch~combout\ : std_logic;
SIGNAL byte_index : std_logic_vector(31 DOWNTO 0);
SIGNAL udp_length : std_logic_vector(31 DOWNTO 0);
SIGNAL ip_header_length : std_logic_vector(31 DOWNTO 0);
SIGNAL s_channel : std_logic_vector(95 DOWNTO 0);

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

\s_state.IDLE~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_state.IDLE~q\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y24_N23
\in_ready~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \in_ready~output_o\);

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X25_Y0_N9
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

-- Location: IOOBUF_X34_Y4_N16
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

-- Location: IOOBUF_X32_Y0_N2
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

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOOBUF_X11_Y24_N16
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

-- Location: IOOBUF_X11_Y24_N2
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

-- Location: IOOBUF_X11_Y0_N23
\out_startofpacket~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_startofpacket~reg0_q\,
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

-- Location: IOOBUF_X9_Y0_N9
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
	i => \channel[0]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\channel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[1]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\channel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[2]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\channel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[3]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[3]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\channel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[4]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[4]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\channel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[5]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[5]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\channel[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[6]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[6]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\channel[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[7]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\channel[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[8]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\channel[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[9]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[9]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\channel[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[10]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[10]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\channel[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[11]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[11]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\channel[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[12]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[12]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\channel[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[13]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[13]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\channel[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[14]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[14]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\channel[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[15]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[15]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\channel[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[16]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[16]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\channel[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[17]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[17]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\channel[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[18]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[18]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\channel[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[19]$latch~combout\,
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
	i => \channel[20]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[20]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\channel[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[21]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[21]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\channel[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[22]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[22]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\channel[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[23]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[23]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\channel[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[24]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[24]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\channel[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[25]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[25]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\channel[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[26]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[26]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\channel[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[27]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[27]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\channel[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[28]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[28]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\channel[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[29]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[29]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\channel[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[30]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[30]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\channel[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[31]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[31]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\channel[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[32]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[32]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\channel[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[33]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[33]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\channel[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[34]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[34]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\channel[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[35]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[35]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\channel[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[36]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[36]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\channel[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[37]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[37]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\channel[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[38]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[38]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\channel[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[39]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[39]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\channel[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[40]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[40]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\channel[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[41]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[41]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\channel[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[42]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[42]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\channel[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[43]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[43]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\channel[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[44]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[44]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\channel[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[45]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[45]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\channel[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[46]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[46]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\channel[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[47]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[47]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\channel[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[48]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[48]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\channel[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[49]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[49]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\channel[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[50]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[50]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\channel[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[51]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[51]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\channel[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[52]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[52]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\channel[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[53]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[53]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\channel[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[54]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[54]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\channel[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[55]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[55]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\channel[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[56]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[56]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\channel[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[57]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[57]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\channel[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[58]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[58]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\channel[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[59]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[59]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\channel[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[60]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[60]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\channel[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[61]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[61]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\channel[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[62]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[62]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\channel[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[63]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[63]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\channel[64]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[64]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[64]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\channel[65]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[65]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[65]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\channel[66]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[66]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[66]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\channel[67]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[67]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[67]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\channel[68]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[68]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[68]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\channel[69]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[69]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[69]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\channel[70]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[70]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[70]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\channel[71]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[71]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[71]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\channel[72]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[72]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[72]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\channel[73]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[73]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[73]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\channel[74]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[74]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[74]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\channel[75]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[75]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[75]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\channel[76]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[76]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[76]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\channel[77]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[77]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[77]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\channel[78]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[78]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[78]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\channel[79]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[79]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[79]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\channel[80]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[80]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[80]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\channel[81]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[81]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[81]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\channel[82]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[82]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[82]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\channel[83]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[83]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[83]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\channel[84]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[84]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[84]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\channel[85]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[85]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[85]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\channel[86]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[86]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[86]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\channel[87]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[87]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[87]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\channel[88]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[88]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[88]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\channel[89]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[89]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[89]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\channel[90]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[90]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[90]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\channel[91]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[91]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[91]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\channel[92]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[92]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[92]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\channel[93]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[93]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[93]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\channel[94]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[94]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[94]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\channel[95]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \channel[95]$latch~combout\,
	devoe => ww_devoe,
	o => \channel[95]~output_o\);

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

-- Location: LCCOMB_X18_Y10_N0
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

-- Location: IOIBUF_X9_Y0_N15
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: LCCOMB_X22_Y5_N14
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\in_data[5]~input_o\ & (!\in_data[2]~input_o\ & (!\in_data[6]~input_o\ & !\in_data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[5]~input_o\,
	datab => \in_data[2]~input_o\,
	datac => \in_data[6]~input_o\,
	datad => \in_data[1]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X13_Y0_N15
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: LCCOMB_X22_Y7_N26
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\in_data[7]~input_o\ & (\Equal3~0_combout\ & (!\in_data[4]~input_o\ & !\in_data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => \Equal3~0_combout\,
	datac => \in_data[4]~input_o\,
	datad => \in_data[0]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: IOIBUF_X34_Y3_N22
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: LCCOMB_X18_Y7_N16
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!byte_index(4) & byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(4),
	datad => byte_index(0),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X18_Y10_N10
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

-- Location: LCCOMB_X18_Y10_N12
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

-- Location: IOIBUF_X18_Y24_N15
\in_startofpacket~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_startofpacket,
	o => \in_startofpacket~input_o\);

-- Location: LCCOMB_X19_Y8_N8
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\in_startofpacket~input_o\ & !\s_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_startofpacket~input_o\,
	datad => \s_state.IDLE~q\,
	combout => \Selector75~0_combout\);

-- Location: LCCOMB_X19_Y8_N0
\Selector79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\Selector76~0_combout\) # ((\Selector78~0_combout\) # ((\in_startofpacket~input_o\ & !\s_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_startofpacket~input_o\,
	datab => \Selector76~0_combout\,
	datac => \s_state.IDLE~q\,
	datad => \Selector78~0_combout\,
	combout => \Selector79~1_combout\);

-- Location: LCCOMB_X18_Y10_N14
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

-- Location: FF_X18_Y10_N15
\byte_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[7]~48_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(7));

-- Location: LCCOMB_X18_Y10_N16
\byte_index[8]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[8]~53_combout\ = (byte_index(8) & (\byte_index[7]~49\ $ (GND))) # (!byte_index(8) & (!\byte_index[7]~49\ & VCC))
-- \byte_index[8]~54\ = CARRY((byte_index(8) & !\byte_index[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(8),
	datad => VCC,
	cin => \byte_index[7]~49\,
	combout => \byte_index[8]~53_combout\,
	cout => \byte_index[8]~54\);

-- Location: FF_X18_Y10_N17
\byte_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[8]~53_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(8));

-- Location: LCCOMB_X18_Y10_N18
\byte_index[9]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[9]~55_combout\ = (byte_index(9) & (!\byte_index[8]~54\)) # (!byte_index(9) & ((\byte_index[8]~54\) # (GND)))
-- \byte_index[9]~56\ = CARRY((!\byte_index[8]~54\) # (!byte_index(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(9),
	datad => VCC,
	cin => \byte_index[8]~54\,
	combout => \byte_index[9]~55_combout\,
	cout => \byte_index[9]~56\);

-- Location: FF_X18_Y10_N19
\byte_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[9]~55_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(9));

-- Location: LCCOMB_X18_Y10_N20
\byte_index[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[10]~57_combout\ = (byte_index(10) & (\byte_index[9]~56\ $ (GND))) # (!byte_index(10) & (!\byte_index[9]~56\ & VCC))
-- \byte_index[10]~58\ = CARRY((byte_index(10) & !\byte_index[9]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(10),
	datad => VCC,
	cin => \byte_index[9]~56\,
	combout => \byte_index[10]~57_combout\,
	cout => \byte_index[10]~58\);

-- Location: FF_X18_Y10_N21
\byte_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[10]~57_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(10));

-- Location: LCCOMB_X18_Y10_N22
\byte_index[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[11]~59_combout\ = (byte_index(11) & (!\byte_index[10]~58\)) # (!byte_index(11) & ((\byte_index[10]~58\) # (GND)))
-- \byte_index[11]~60\ = CARRY((!\byte_index[10]~58\) # (!byte_index(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datad => VCC,
	cin => \byte_index[10]~58\,
	combout => \byte_index[11]~59_combout\,
	cout => \byte_index[11]~60\);

-- Location: FF_X18_Y10_N23
\byte_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[11]~59_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(11));

-- Location: LCCOMB_X18_Y10_N24
\byte_index[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[12]~61_combout\ = (byte_index(12) & (\byte_index[11]~60\ $ (GND))) # (!byte_index(12) & (!\byte_index[11]~60\ & VCC))
-- \byte_index[12]~62\ = CARRY((byte_index(12) & !\byte_index[11]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(12),
	datad => VCC,
	cin => \byte_index[11]~60\,
	combout => \byte_index[12]~61_combout\,
	cout => \byte_index[12]~62\);

-- Location: FF_X18_Y10_N25
\byte_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[12]~61_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(12));

-- Location: LCCOMB_X18_Y10_N26
\byte_index[13]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[13]~63_combout\ = (byte_index(13) & (!\byte_index[12]~62\)) # (!byte_index(13) & ((\byte_index[12]~62\) # (GND)))
-- \byte_index[13]~64\ = CARRY((!\byte_index[12]~62\) # (!byte_index(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datad => VCC,
	cin => \byte_index[12]~62\,
	combout => \byte_index[13]~63_combout\,
	cout => \byte_index[13]~64\);

-- Location: FF_X18_Y10_N27
\byte_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[13]~63_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(13));

-- Location: LCCOMB_X18_Y10_N28
\byte_index[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[14]~65_combout\ = (byte_index(14) & (\byte_index[13]~64\ $ (GND))) # (!byte_index(14) & (!\byte_index[13]~64\ & VCC))
-- \byte_index[14]~66\ = CARRY((byte_index(14) & !\byte_index[13]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(14),
	datad => VCC,
	cin => \byte_index[13]~64\,
	combout => \byte_index[14]~65_combout\,
	cout => \byte_index[14]~66\);

-- Location: FF_X18_Y10_N29
\byte_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[14]~65_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(14));

-- Location: LCCOMB_X18_Y10_N30
\byte_index[15]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~67_combout\ = (byte_index(15) & (!\byte_index[14]~66\)) # (!byte_index(15) & ((\byte_index[14]~66\) # (GND)))
-- \byte_index[15]~68\ = CARRY((!\byte_index[14]~66\) # (!byte_index(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datad => VCC,
	cin => \byte_index[14]~66\,
	combout => \byte_index[15]~67_combout\,
	cout => \byte_index[15]~68\);

-- Location: FF_X18_Y10_N31
\byte_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[15]~67_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(15));

-- Location: LCCOMB_X18_Y9_N0
\byte_index[16]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[16]~69_combout\ = (byte_index(16) & (\byte_index[15]~68\ $ (GND))) # (!byte_index(16) & (!\byte_index[15]~68\ & VCC))
-- \byte_index[16]~70\ = CARRY((byte_index(16) & !\byte_index[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(16),
	datad => VCC,
	cin => \byte_index[15]~68\,
	combout => \byte_index[16]~69_combout\,
	cout => \byte_index[16]~70\);

-- Location: FF_X18_Y9_N1
\byte_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[16]~69_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(16));

-- Location: LCCOMB_X18_Y9_N2
\byte_index[17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[17]~71_combout\ = (byte_index(17) & (!\byte_index[16]~70\)) # (!byte_index(17) & ((\byte_index[16]~70\) # (GND)))
-- \byte_index[17]~72\ = CARRY((!\byte_index[16]~70\) # (!byte_index(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(17),
	datad => VCC,
	cin => \byte_index[16]~70\,
	combout => \byte_index[17]~71_combout\,
	cout => \byte_index[17]~72\);

-- Location: FF_X18_Y9_N3
\byte_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[17]~71_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(17));

-- Location: LCCOMB_X18_Y9_N4
\byte_index[18]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[18]~73_combout\ = (byte_index(18) & (\byte_index[17]~72\ $ (GND))) # (!byte_index(18) & (!\byte_index[17]~72\ & VCC))
-- \byte_index[18]~74\ = CARRY((byte_index(18) & !\byte_index[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(18),
	datad => VCC,
	cin => \byte_index[17]~72\,
	combout => \byte_index[18]~73_combout\,
	cout => \byte_index[18]~74\);

-- Location: FF_X18_Y9_N5
\byte_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[18]~73_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(18));

-- Location: LCCOMB_X18_Y9_N6
\byte_index[19]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[19]~75_combout\ = (byte_index(19) & (!\byte_index[18]~74\)) # (!byte_index(19) & ((\byte_index[18]~74\) # (GND)))
-- \byte_index[19]~76\ = CARRY((!\byte_index[18]~74\) # (!byte_index(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datad => VCC,
	cin => \byte_index[18]~74\,
	combout => \byte_index[19]~75_combout\,
	cout => \byte_index[19]~76\);

-- Location: FF_X18_Y9_N7
\byte_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[19]~75_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(19));

-- Location: LCCOMB_X18_Y9_N8
\byte_index[20]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[20]~77_combout\ = (byte_index(20) & (\byte_index[19]~76\ $ (GND))) # (!byte_index(20) & (!\byte_index[19]~76\ & VCC))
-- \byte_index[20]~78\ = CARRY((byte_index(20) & !\byte_index[19]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(20),
	datad => VCC,
	cin => \byte_index[19]~76\,
	combout => \byte_index[20]~77_combout\,
	cout => \byte_index[20]~78\);

-- Location: FF_X18_Y9_N9
\byte_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[20]~77_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(20));

-- Location: LCCOMB_X18_Y9_N10
\byte_index[21]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[21]~79_combout\ = (byte_index(21) & (!\byte_index[20]~78\)) # (!byte_index(21) & ((\byte_index[20]~78\) # (GND)))
-- \byte_index[21]~80\ = CARRY((!\byte_index[20]~78\) # (!byte_index(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datad => VCC,
	cin => \byte_index[20]~78\,
	combout => \byte_index[21]~79_combout\,
	cout => \byte_index[21]~80\);

-- Location: FF_X18_Y9_N11
\byte_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[21]~79_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(21));

-- Location: LCCOMB_X18_Y9_N12
\byte_index[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[22]~81_combout\ = (byte_index(22) & (\byte_index[21]~80\ $ (GND))) # (!byte_index(22) & (!\byte_index[21]~80\ & VCC))
-- \byte_index[22]~82\ = CARRY((byte_index(22) & !\byte_index[21]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datad => VCC,
	cin => \byte_index[21]~80\,
	combout => \byte_index[22]~81_combout\,
	cout => \byte_index[22]~82\);

-- Location: FF_X18_Y9_N13
\byte_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[22]~81_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(22));

-- Location: LCCOMB_X18_Y9_N14
\byte_index[23]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[23]~83_combout\ = (byte_index(23) & (!\byte_index[22]~82\)) # (!byte_index(23) & ((\byte_index[22]~82\) # (GND)))
-- \byte_index[23]~84\ = CARRY((!\byte_index[22]~82\) # (!byte_index(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(23),
	datad => VCC,
	cin => \byte_index[22]~82\,
	combout => \byte_index[23]~83_combout\,
	cout => \byte_index[23]~84\);

-- Location: FF_X18_Y9_N15
\byte_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[23]~83_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(23));

-- Location: LCCOMB_X18_Y9_N16
\byte_index[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[24]~85_combout\ = (byte_index(24) & (\byte_index[23]~84\ $ (GND))) # (!byte_index(24) & (!\byte_index[23]~84\ & VCC))
-- \byte_index[24]~86\ = CARRY((byte_index(24) & !\byte_index[23]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(24),
	datad => VCC,
	cin => \byte_index[23]~84\,
	combout => \byte_index[24]~85_combout\,
	cout => \byte_index[24]~86\);

-- Location: FF_X18_Y9_N17
\byte_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[24]~85_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(24));

-- Location: LCCOMB_X18_Y9_N18
\byte_index[25]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[25]~87_combout\ = (byte_index(25) & (!\byte_index[24]~86\)) # (!byte_index(25) & ((\byte_index[24]~86\) # (GND)))
-- \byte_index[25]~88\ = CARRY((!\byte_index[24]~86\) # (!byte_index(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(25),
	datad => VCC,
	cin => \byte_index[24]~86\,
	combout => \byte_index[25]~87_combout\,
	cout => \byte_index[25]~88\);

-- Location: FF_X18_Y9_N19
\byte_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[25]~87_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(25));

-- Location: LCCOMB_X18_Y9_N20
\byte_index[26]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[26]~89_combout\ = (byte_index(26) & (\byte_index[25]~88\ $ (GND))) # (!byte_index(26) & (!\byte_index[25]~88\ & VCC))
-- \byte_index[26]~90\ = CARRY((byte_index(26) & !\byte_index[25]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(26),
	datad => VCC,
	cin => \byte_index[25]~88\,
	combout => \byte_index[26]~89_combout\,
	cout => \byte_index[26]~90\);

-- Location: FF_X18_Y9_N21
\byte_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[26]~89_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(26));

-- Location: LCCOMB_X18_Y9_N22
\byte_index[27]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~91_combout\ = (byte_index(27) & (!\byte_index[26]~90\)) # (!byte_index(27) & ((\byte_index[26]~90\) # (GND)))
-- \byte_index[27]~92\ = CARRY((!\byte_index[26]~90\) # (!byte_index(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datad => VCC,
	cin => \byte_index[26]~90\,
	combout => \byte_index[27]~91_combout\,
	cout => \byte_index[27]~92\);

-- Location: FF_X18_Y9_N23
\byte_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[27]~91_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(27));

-- Location: LCCOMB_X12_Y9_N0
\udp_length[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[0]~32_combout\ = (udp_length(0) & (\in_data[0]~input_o\ $ (VCC))) # (!udp_length(0) & (\in_data[0]~input_o\ & VCC))
-- \udp_length[0]~33\ = CARRY((udp_length(0) & \in_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(0),
	datab => \in_data[0]~input_o\,
	datad => VCC,
	combout => \udp_length[0]~32_combout\,
	cout => \udp_length[0]~33\);

-- Location: LCCOMB_X12_Y10_N28
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

-- Location: LCCOMB_X18_Y7_N18
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

-- Location: LCCOMB_X18_Y7_N6
\ip_header_length[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_header_length[2]~2_combout\ = (\s_state.IP_HEADER~q\ & (!byte_index(4) & (byte_index(0) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => byte_index(4),
	datac => byte_index(0),
	datad => \Equal2~0_combout\,
	combout => \ip_header_length[2]~2_combout\);

-- Location: FF_X14_Y7_N19
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
	ena => \ip_header_length[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(5));

-- Location: FF_X14_Y7_N27
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
	ena => \ip_header_length[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(3));

-- Location: FF_X14_Y7_N5
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
	ena => \ip_header_length[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(4));

-- Location: FF_X14_Y7_N29
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
	ena => \ip_header_length[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(2));

-- Location: LCCOMB_X14_Y7_N18
\Add8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~5_combout\ = (ip_header_length(4) & ((ip_header_length(3)) # (ip_header_length(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(4),
	datad => ip_header_length(2),
	combout => \Add8~5_combout\);

-- Location: LCCOMB_X14_Y7_N24
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (!ip_header_length(2) & (ip_header_length(4) & !ip_header_length(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(3),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X14_Y7_N22
\Equal20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~2_combout\ = byte_index(6) $ (((ip_header_length(5) & ((\Add8~5_combout\) # (\Add4~0_combout\))) # (!ip_header_length(5) & (\Add8~5_combout\ & \Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => \Add8~5_combout\,
	datac => \Add4~0_combout\,
	datad => byte_index(6),
	combout => \Equal20~2_combout\);

-- Location: LCCOMB_X17_Y7_N28
\Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~2_combout\ = ip_header_length(2) $ (byte_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datac => byte_index(2),
	combout => \Equal16~2_combout\);

-- Location: LCCOMB_X14_Y7_N0
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = ip_header_length(5) $ (((ip_header_length(4) & ((ip_header_length(3)) # (ip_header_length(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(5),
	datac => ip_header_length(4),
	datad => ip_header_length(2),
	combout => \Add8~2_combout\);

-- Location: LCCOMB_X16_Y7_N28
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (ip_header_length(4) & (!byte_index(4) & (byte_index(3) $ (!ip_header_length(3))))) # (!ip_header_length(4) & (byte_index(4) & (byte_index(3) $ (!ip_header_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(4),
	datab => byte_index(3),
	datac => byte_index(4),
	datad => ip_header_length(3),
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X16_Y7_N22
\Equal20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~1_combout\ = (\Equal20~0_combout\ & (\Add8~2_combout\ $ (\Add4~0_combout\ $ (!byte_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Equal20~0_combout\,
	datac => \Add4~0_combout\,
	datad => byte_index(5),
	combout => \Equal20~1_combout\);

-- Location: LCCOMB_X17_Y7_N30
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!byte_index(26) & (!byte_index(23) & (!byte_index(25) & !byte_index(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(26),
	datab => byte_index(23),
	datac => byte_index(25),
	datad => byte_index(24),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X18_Y9_N24
\byte_index[28]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[28]~93_combout\ = (byte_index(28) & (\byte_index[27]~92\ $ (GND))) # (!byte_index(28) & (!\byte_index[27]~92\ & VCC))
-- \byte_index[28]~94\ = CARRY((byte_index(28) & !\byte_index[27]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(28),
	datad => VCC,
	cin => \byte_index[27]~92\,
	combout => \byte_index[28]~93_combout\,
	cout => \byte_index[28]~94\);

-- Location: FF_X18_Y9_N25
\byte_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[28]~93_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(28));

-- Location: LCCOMB_X18_Y9_N26
\byte_index[29]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[29]~95_combout\ = (byte_index(29) & (!\byte_index[28]~94\)) # (!byte_index(29) & ((\byte_index[28]~94\) # (GND)))
-- \byte_index[29]~96\ = CARRY((!\byte_index[28]~94\) # (!byte_index(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datad => VCC,
	cin => \byte_index[28]~94\,
	combout => \byte_index[29]~95_combout\,
	cout => \byte_index[29]~96\);

-- Location: FF_X18_Y9_N27
\byte_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[29]~95_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(29));

-- Location: LCCOMB_X18_Y9_N28
\byte_index[30]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[30]~97_combout\ = (byte_index(30) & (\byte_index[29]~96\ $ (GND))) # (!byte_index(30) & (!\byte_index[29]~96\ & VCC))
-- \byte_index[30]~98\ = CARRY((byte_index(30) & !\byte_index[29]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(30),
	datad => VCC,
	cin => \byte_index[29]~96\,
	combout => \byte_index[30]~97_combout\,
	cout => \byte_index[30]~98\);

-- Location: FF_X18_Y9_N29
\byte_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[30]~97_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(30));

-- Location: LCCOMB_X18_Y9_N30
\byte_index[31]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~99_combout\ = byte_index(31) $ (\byte_index[30]~98\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	cin => \byte_index[30]~98\,
	combout => \byte_index[31]~99_combout\);

-- Location: FF_X18_Y9_N31
\byte_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[31]~99_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(31));

-- Location: LCCOMB_X17_Y7_N26
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!byte_index(16) & (!byte_index(17) & (!byte_index(18) & !byte_index(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(16),
	datab => byte_index(17),
	datac => byte_index(18),
	datad => byte_index(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X17_Y10_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!byte_index(11) & (!byte_index(12) & (!byte_index(13) & !byte_index(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => byte_index(12),
	datac => byte_index(13),
	datad => byte_index(14),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X17_Y9_N28
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!byte_index(19) & (!byte_index(22) & (!byte_index(21) & !byte_index(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datab => byte_index(22),
	datac => byte_index(21),
	datad => byte_index(20),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y7_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!byte_index(9) & (!byte_index(10) & (!byte_index(7) & !byte_index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(10),
	datac => byte_index(7),
	datad => byte_index(8),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y7_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X18_Y8_N4
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!byte_index(30) & (!byte_index(28) & (!byte_index(27) & !byte_index(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(28),
	datac => byte_index(27),
	datad => byte_index(29),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X17_Y7_N24
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (!byte_index(31) & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => byte_index(31),
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X16_Y7_N20
\Equal20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~3_combout\ = (!\Equal20~2_combout\ & (!\Equal16~2_combout\ & (\Equal20~1_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal20~2_combout\,
	datab => \Equal16~2_combout\,
	datac => \Equal20~1_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal20~3_combout\);

-- Location: LCCOMB_X16_Y7_N12
\Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~2_combout\ = (byte_index(0) & (!byte_index(1) & \Equal20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal20~3_combout\,
	combout => \Equal21~2_combout\);

-- Location: LCCOMB_X14_Y7_N20
\Add8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~1_combout\ = ip_header_length(3) $ (ip_header_length(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ip_header_length(3),
	datad => ip_header_length(2),
	combout => \Add8~1_combout\);

-- Location: LCCOMB_X14_Y7_N30
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = ip_header_length(4) $ (((ip_header_length(3)) # (ip_header_length(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ip_header_length(4),
	datac => ip_header_length(3),
	datad => ip_header_length(2),
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X16_Y7_N6
\Equal17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~1_combout\ = (byte_index(4) & (\Add8~0_combout\ & (\Add8~1_combout\ $ (byte_index(3))))) # (!byte_index(4) & (!\Add8~0_combout\ & (\Add8~1_combout\ $ (byte_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => \Add8~1_combout\,
	datac => byte_index(3),
	datad => \Add8~0_combout\,
	combout => \Equal17~1_combout\);

-- Location: LCCOMB_X16_Y7_N16
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = \Add8~2_combout\ $ (byte_index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datad => byte_index(5),
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X14_Y7_N2
\Add8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~3_combout\ = (ip_header_length(4) & (ip_header_length(5) & ((ip_header_length(3)) # (ip_header_length(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(5),
	combout => \Add8~3_combout\);

-- Location: LCCOMB_X14_Y7_N16
\Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = \Add8~3_combout\ $ (byte_index(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~3_combout\,
	datad => byte_index(6),
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X17_Y7_N18
\Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = (\Equal0~7_combout\ & (ip_header_length(2) $ (byte_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datac => byte_index(2),
	datad => \Equal0~7_combout\,
	combout => \Equal24~0_combout\);

-- Location: LCCOMB_X16_Y7_N8
\Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~2_combout\ = (\Equal17~1_combout\ & (!\Equal16~0_combout\ & (!\Equal16~1_combout\ & \Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal17~1_combout\,
	datab => \Equal16~0_combout\,
	datac => \Equal16~1_combout\,
	datad => \Equal24~0_combout\,
	combout => \Equal17~2_combout\);

-- Location: LCCOMB_X16_Y7_N26
\s_channel[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~6_combout\ = (\s_state.UDP_HEADER~q\ & (((!byte_index(1) & !byte_index(0))) # (!\Equal17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.UDP_HEADER~q\,
	datab => byte_index(1),
	datac => byte_index(0),
	datad => \Equal17~2_combout\,
	combout => \s_channel[0]~6_combout\);

-- Location: LCCOMB_X16_Y7_N24
\udp_length[31]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[31]~88_combout\ = (\s_channel[0]~6_combout\ & (\Equal20~3_combout\ & (byte_index(0) $ (byte_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel[0]~6_combout\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal20~3_combout\,
	combout => \udp_length[31]~88_combout\);

-- Location: FF_X12_Y9_N1
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
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(0));

-- Location: LCCOMB_X12_Y9_N2
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

-- Location: FF_X12_Y9_N3
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
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(1));

-- Location: LCCOMB_X12_Y9_N4
\udp_length[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[2]~36_combout\ = ((\in_data[2]~input_o\ $ (udp_length(2) $ (!\udp_length[1]~35\)))) # (GND)
-- \udp_length[2]~37\ = CARRY((\in_data[2]~input_o\ & ((udp_length(2)) # (!\udp_length[1]~35\))) # (!\in_data[2]~input_o\ & (udp_length(2) & !\udp_length[1]~35\)))

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
	combout => \udp_length[2]~36_combout\,
	cout => \udp_length[2]~37\);

-- Location: FF_X12_Y9_N5
\udp_length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[2]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(2));

-- Location: LCCOMB_X12_Y9_N6
\udp_length[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[3]~38_combout\ = (\in_data[3]~input_o\ & ((udp_length(3) & (\udp_length[2]~37\ & VCC)) # (!udp_length(3) & (!\udp_length[2]~37\)))) # (!\in_data[3]~input_o\ & ((udp_length(3) & (!\udp_length[2]~37\)) # (!udp_length(3) & ((\udp_length[2]~37\) # 
-- (GND)))))
-- \udp_length[3]~39\ = CARRY((\in_data[3]~input_o\ & (!udp_length(3) & !\udp_length[2]~37\)) # (!\in_data[3]~input_o\ & ((!\udp_length[2]~37\) # (!udp_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => udp_length(3),
	datad => VCC,
	cin => \udp_length[2]~37\,
	combout => \udp_length[3]~38_combout\,
	cout => \udp_length[3]~39\);

-- Location: FF_X12_Y9_N7
\udp_length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[3]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(3));

-- Location: LCCOMB_X12_Y9_N8
\udp_length[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[4]~40_combout\ = ((udp_length(4) $ (\in_data[4]~input_o\ $ (!\udp_length[3]~39\)))) # (GND)
-- \udp_length[4]~41\ = CARRY((udp_length(4) & ((\in_data[4]~input_o\) # (!\udp_length[3]~39\))) # (!udp_length(4) & (\in_data[4]~input_o\ & !\udp_length[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(4),
	datab => \in_data[4]~input_o\,
	datad => VCC,
	cin => \udp_length[3]~39\,
	combout => \udp_length[4]~40_combout\,
	cout => \udp_length[4]~41\);

-- Location: FF_X12_Y9_N9
\udp_length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[4]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(4));

-- Location: LCCOMB_X12_Y9_N10
\udp_length[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[5]~42_combout\ = (udp_length(5) & ((\in_data[5]~input_o\ & (\udp_length[4]~41\ & VCC)) # (!\in_data[5]~input_o\ & (!\udp_length[4]~41\)))) # (!udp_length(5) & ((\in_data[5]~input_o\ & (!\udp_length[4]~41\)) # (!\in_data[5]~input_o\ & 
-- ((\udp_length[4]~41\) # (GND)))))
-- \udp_length[5]~43\ = CARRY((udp_length(5) & (!\in_data[5]~input_o\ & !\udp_length[4]~41\)) # (!udp_length(5) & ((!\udp_length[4]~41\) # (!\in_data[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(5),
	datab => \in_data[5]~input_o\,
	datad => VCC,
	cin => \udp_length[4]~41\,
	combout => \udp_length[5]~42_combout\,
	cout => \udp_length[5]~43\);

-- Location: FF_X12_Y9_N11
\udp_length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[5]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(5));

-- Location: LCCOMB_X12_Y9_N12
\udp_length[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[6]~44_combout\ = ((\in_data[6]~input_o\ $ (udp_length(6) $ (!\udp_length[5]~43\)))) # (GND)
-- \udp_length[6]~45\ = CARRY((\in_data[6]~input_o\ & ((udp_length(6)) # (!\udp_length[5]~43\))) # (!\in_data[6]~input_o\ & (udp_length(6) & !\udp_length[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[6]~input_o\,
	datab => udp_length(6),
	datad => VCC,
	cin => \udp_length[5]~43\,
	combout => \udp_length[6]~44_combout\,
	cout => \udp_length[6]~45\);

-- Location: FF_X12_Y9_N13
\udp_length[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[6]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(6));

-- Location: LCCOMB_X12_Y9_N14
\udp_length[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[7]~46_combout\ = (\in_data[7]~input_o\ & ((udp_length(7) & (\udp_length[6]~45\ & VCC)) # (!udp_length(7) & (!\udp_length[6]~45\)))) # (!\in_data[7]~input_o\ & ((udp_length(7) & (!\udp_length[6]~45\)) # (!udp_length(7) & ((\udp_length[6]~45\) # 
-- (GND)))))
-- \udp_length[7]~47\ = CARRY((\in_data[7]~input_o\ & (!udp_length(7) & !\udp_length[6]~45\)) # (!\in_data[7]~input_o\ & ((!\udp_length[6]~45\) # (!udp_length(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => udp_length(7),
	datad => VCC,
	cin => \udp_length[6]~45\,
	combout => \udp_length[7]~46_combout\,
	cout => \udp_length[7]~47\);

-- Location: FF_X12_Y9_N15
\udp_length[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[7]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(7));

-- Location: LCCOMB_X12_Y9_N16
\udp_length[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[8]~48_combout\ = (udp_length(8) & (\udp_length[7]~47\ $ (GND))) # (!udp_length(8) & (!\udp_length[7]~47\ & VCC))
-- \udp_length[8]~49\ = CARRY((udp_length(8) & !\udp_length[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(8),
	datad => VCC,
	cin => \udp_length[7]~47\,
	combout => \udp_length[8]~48_combout\,
	cout => \udp_length[8]~49\);

-- Location: FF_X12_Y9_N17
\udp_length[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[8]~48_combout\,
	asdata => \in_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(8));

-- Location: LCCOMB_X12_Y9_N18
\udp_length[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[9]~50_combout\ = (udp_length(9) & (!\udp_length[8]~49\)) # (!udp_length(9) & ((\udp_length[8]~49\) # (GND)))
-- \udp_length[9]~51\ = CARRY((!\udp_length[8]~49\) # (!udp_length(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(9),
	datad => VCC,
	cin => \udp_length[8]~49\,
	combout => \udp_length[9]~50_combout\,
	cout => \udp_length[9]~51\);

-- Location: FF_X12_Y9_N19
\udp_length[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[9]~50_combout\,
	asdata => \in_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(9));

-- Location: LCCOMB_X12_Y9_N20
\udp_length[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[10]~52_combout\ = (udp_length(10) & (\udp_length[9]~51\ $ (GND))) # (!udp_length(10) & (!\udp_length[9]~51\ & VCC))
-- \udp_length[10]~53\ = CARRY((udp_length(10) & !\udp_length[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(10),
	datad => VCC,
	cin => \udp_length[9]~51\,
	combout => \udp_length[10]~52_combout\,
	cout => \udp_length[10]~53\);

-- Location: FF_X12_Y9_N21
\udp_length[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[10]~52_combout\,
	asdata => \in_data[2]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(10));

-- Location: LCCOMB_X12_Y9_N22
\udp_length[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[11]~54_combout\ = (udp_length(11) & (!\udp_length[10]~53\)) # (!udp_length(11) & ((\udp_length[10]~53\) # (GND)))
-- \udp_length[11]~55\ = CARRY((!\udp_length[10]~53\) # (!udp_length(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(11),
	datad => VCC,
	cin => \udp_length[10]~53\,
	combout => \udp_length[11]~54_combout\,
	cout => \udp_length[11]~55\);

-- Location: FF_X12_Y9_N23
\udp_length[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[11]~54_combout\,
	asdata => \in_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(11));

-- Location: LCCOMB_X12_Y9_N24
\udp_length[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[12]~56_combout\ = (udp_length(12) & (\udp_length[11]~55\ $ (GND))) # (!udp_length(12) & (!\udp_length[11]~55\ & VCC))
-- \udp_length[12]~57\ = CARRY((udp_length(12) & !\udp_length[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(12),
	datad => VCC,
	cin => \udp_length[11]~55\,
	combout => \udp_length[12]~56_combout\,
	cout => \udp_length[12]~57\);

-- Location: FF_X12_Y9_N25
\udp_length[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[12]~56_combout\,
	asdata => \in_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(12));

-- Location: LCCOMB_X12_Y9_N26
\udp_length[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[13]~58_combout\ = (udp_length(13) & (!\udp_length[12]~57\)) # (!udp_length(13) & ((\udp_length[12]~57\) # (GND)))
-- \udp_length[13]~59\ = CARRY((!\udp_length[12]~57\) # (!udp_length(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(13),
	datad => VCC,
	cin => \udp_length[12]~57\,
	combout => \udp_length[13]~58_combout\,
	cout => \udp_length[13]~59\);

-- Location: FF_X12_Y9_N27
\udp_length[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[13]~58_combout\,
	asdata => \in_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(13));

-- Location: LCCOMB_X12_Y9_N28
\udp_length[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[14]~60_combout\ = (udp_length(14) & (\udp_length[13]~59\ $ (GND))) # (!udp_length(14) & (!\udp_length[13]~59\ & VCC))
-- \udp_length[14]~61\ = CARRY((udp_length(14) & !\udp_length[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(14),
	datad => VCC,
	cin => \udp_length[13]~59\,
	combout => \udp_length[14]~60_combout\,
	cout => \udp_length[14]~61\);

-- Location: FF_X12_Y9_N29
\udp_length[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[14]~60_combout\,
	asdata => \in_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(14));

-- Location: LCCOMB_X12_Y9_N30
\udp_length[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[15]~62_combout\ = (udp_length(15) & (!\udp_length[14]~61\)) # (!udp_length(15) & ((\udp_length[14]~61\) # (GND)))
-- \udp_length[15]~63\ = CARRY((!\udp_length[14]~61\) # (!udp_length(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(15),
	datad => VCC,
	cin => \udp_length[14]~61\,
	combout => \udp_length[15]~62_combout\,
	cout => \udp_length[15]~63\);

-- Location: FF_X12_Y9_N31
\udp_length[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[15]~62_combout\,
	asdata => \in_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(15));

-- Location: LCCOMB_X12_Y8_N0
\udp_length[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[16]~64_combout\ = (udp_length(16) & (\udp_length[15]~63\ $ (GND))) # (!udp_length(16) & (!\udp_length[15]~63\ & VCC))
-- \udp_length[16]~65\ = CARRY((udp_length(16) & !\udp_length[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(16),
	datad => VCC,
	cin => \udp_length[15]~63\,
	combout => \udp_length[16]~64_combout\,
	cout => \udp_length[16]~65\);

-- Location: FF_X12_Y8_N1
\udp_length[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[16]~64_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(16));

-- Location: LCCOMB_X12_Y8_N2
\udp_length[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[17]~66_combout\ = (udp_length(17) & (!\udp_length[16]~65\)) # (!udp_length(17) & ((\udp_length[16]~65\) # (GND)))
-- \udp_length[17]~67\ = CARRY((!\udp_length[16]~65\) # (!udp_length(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(17),
	datad => VCC,
	cin => \udp_length[16]~65\,
	combout => \udp_length[17]~66_combout\,
	cout => \udp_length[17]~67\);

-- Location: FF_X12_Y8_N3
\udp_length[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[17]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(17));

-- Location: LCCOMB_X12_Y8_N4
\udp_length[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[18]~68_combout\ = (udp_length(18) & (\udp_length[17]~67\ $ (GND))) # (!udp_length(18) & (!\udp_length[17]~67\ & VCC))
-- \udp_length[18]~69\ = CARRY((udp_length(18) & !\udp_length[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(18),
	datad => VCC,
	cin => \udp_length[17]~67\,
	combout => \udp_length[18]~68_combout\,
	cout => \udp_length[18]~69\);

-- Location: FF_X12_Y8_N5
\udp_length[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[18]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(18));

-- Location: LCCOMB_X12_Y8_N6
\udp_length[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[19]~70_combout\ = (udp_length(19) & (!\udp_length[18]~69\)) # (!udp_length(19) & ((\udp_length[18]~69\) # (GND)))
-- \udp_length[19]~71\ = CARRY((!\udp_length[18]~69\) # (!udp_length(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(19),
	datad => VCC,
	cin => \udp_length[18]~69\,
	combout => \udp_length[19]~70_combout\,
	cout => \udp_length[19]~71\);

-- Location: FF_X12_Y8_N7
\udp_length[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[19]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(19));

-- Location: LCCOMB_X12_Y8_N8
\udp_length[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[20]~72_combout\ = (udp_length(20) & (\udp_length[19]~71\ $ (GND))) # (!udp_length(20) & (!\udp_length[19]~71\ & VCC))
-- \udp_length[20]~73\ = CARRY((udp_length(20) & !\udp_length[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(20),
	datad => VCC,
	cin => \udp_length[19]~71\,
	combout => \udp_length[20]~72_combout\,
	cout => \udp_length[20]~73\);

-- Location: FF_X12_Y8_N9
\udp_length[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[20]~72_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(20));

-- Location: LCCOMB_X12_Y8_N10
\udp_length[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[21]~74_combout\ = (udp_length(21) & (!\udp_length[20]~73\)) # (!udp_length(21) & ((\udp_length[20]~73\) # (GND)))
-- \udp_length[21]~75\ = CARRY((!\udp_length[20]~73\) # (!udp_length(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(21),
	datad => VCC,
	cin => \udp_length[20]~73\,
	combout => \udp_length[21]~74_combout\,
	cout => \udp_length[21]~75\);

-- Location: FF_X12_Y8_N11
\udp_length[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[21]~74_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(21));

-- Location: LCCOMB_X12_Y8_N12
\udp_length[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[22]~76_combout\ = (udp_length(22) & (\udp_length[21]~75\ $ (GND))) # (!udp_length(22) & (!\udp_length[21]~75\ & VCC))
-- \udp_length[22]~77\ = CARRY((udp_length(22) & !\udp_length[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(22),
	datad => VCC,
	cin => \udp_length[21]~75\,
	combout => \udp_length[22]~76_combout\,
	cout => \udp_length[22]~77\);

-- Location: FF_X12_Y8_N13
\udp_length[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[22]~76_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(22));

-- Location: LCCOMB_X12_Y8_N14
\udp_length[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[23]~78_combout\ = (udp_length(23) & (!\udp_length[22]~77\)) # (!udp_length(23) & ((\udp_length[22]~77\) # (GND)))
-- \udp_length[23]~79\ = CARRY((!\udp_length[22]~77\) # (!udp_length(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(23),
	datad => VCC,
	cin => \udp_length[22]~77\,
	combout => \udp_length[23]~78_combout\,
	cout => \udp_length[23]~79\);

-- Location: FF_X12_Y8_N15
\udp_length[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[23]~78_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(23));

-- Location: LCCOMB_X12_Y8_N16
\udp_length[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[24]~80_combout\ = (udp_length(24) & (\udp_length[23]~79\ $ (GND))) # (!udp_length(24) & (!\udp_length[23]~79\ & VCC))
-- \udp_length[24]~81\ = CARRY((udp_length(24) & !\udp_length[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(24),
	datad => VCC,
	cin => \udp_length[23]~79\,
	combout => \udp_length[24]~80_combout\,
	cout => \udp_length[24]~81\);

-- Location: FF_X12_Y8_N17
\udp_length[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[24]~80_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(24));

-- Location: LCCOMB_X12_Y8_N18
\udp_length[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[25]~82_combout\ = (udp_length(25) & (!\udp_length[24]~81\)) # (!udp_length(25) & ((\udp_length[24]~81\) # (GND)))
-- \udp_length[25]~83\ = CARRY((!\udp_length[24]~81\) # (!udp_length(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(25),
	datad => VCC,
	cin => \udp_length[24]~81\,
	combout => \udp_length[25]~82_combout\,
	cout => \udp_length[25]~83\);

-- Location: FF_X12_Y8_N19
\udp_length[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[25]~82_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(25));

-- Location: LCCOMB_X12_Y8_N20
\udp_length[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[26]~84_combout\ = (udp_length(26) & (\udp_length[25]~83\ $ (GND))) # (!udp_length(26) & (!\udp_length[25]~83\ & VCC))
-- \udp_length[26]~85\ = CARRY((udp_length(26) & !\udp_length[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(26),
	datad => VCC,
	cin => \udp_length[25]~83\,
	combout => \udp_length[26]~84_combout\,
	cout => \udp_length[26]~85\);

-- Location: FF_X12_Y8_N21
\udp_length[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[26]~84_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(26));

-- Location: LCCOMB_X12_Y8_N22
\udp_length[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[27]~86_combout\ = (udp_length(27) & (!\udp_length[26]~85\)) # (!udp_length(27) & ((\udp_length[26]~85\) # (GND)))
-- \udp_length[27]~87\ = CARRY((!\udp_length[26]~85\) # (!udp_length(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(27),
	datad => VCC,
	cin => \udp_length[26]~85\,
	combout => \udp_length[27]~86_combout\,
	cout => \udp_length[27]~87\);

-- Location: FF_X12_Y8_N23
\udp_length[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[27]~86_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(27));

-- Location: LCCOMB_X13_Y9_N0
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = udp_length(0) $ (VCC)
-- \Add12~1\ = CARRY(udp_length(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X13_Y9_N2
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (udp_length(1) & (!\Add12~1\)) # (!udp_length(1) & ((\Add12~1\) # (GND)))
-- \Add12~3\ = CARRY((!\Add12~1\) # (!udp_length(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X13_Y9_N4
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = ((ip_header_length(2) $ (udp_length(2) $ (\Add12~3\)))) # (GND)
-- \Add12~5\ = CARRY((ip_header_length(2) & (udp_length(2) & !\Add12~3\)) # (!ip_header_length(2) & ((udp_length(2)) # (!\Add12~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datab => udp_length(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X13_Y9_N6
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (udp_length(3) & ((\Add8~1_combout\ & (!\Add12~5\)) # (!\Add8~1_combout\ & (\Add12~5\ & VCC)))) # (!udp_length(3) & ((\Add8~1_combout\ & ((\Add12~5\) # (GND))) # (!\Add8~1_combout\ & (!\Add12~5\))))
-- \Add12~7\ = CARRY((udp_length(3) & (\Add8~1_combout\ & !\Add12~5\)) # (!udp_length(3) & ((\Add8~1_combout\) # (!\Add12~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(3),
	datab => \Add8~1_combout\,
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X13_Y9_N8
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = ((\Add8~0_combout\ $ (udp_length(4) $ (!\Add12~7\)))) # (GND)
-- \Add12~9\ = CARRY((\Add8~0_combout\ & ((udp_length(4)) # (!\Add12~7\))) # (!\Add8~0_combout\ & (udp_length(4) & !\Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => udp_length(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X13_Y9_N10
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (udp_length(5) & ((\Add8~2_combout\ & (\Add12~9\ & VCC)) # (!\Add8~2_combout\ & (!\Add12~9\)))) # (!udp_length(5) & ((\Add8~2_combout\ & (!\Add12~9\)) # (!\Add8~2_combout\ & ((\Add12~9\) # (GND)))))
-- \Add12~11\ = CARRY((udp_length(5) & (!\Add8~2_combout\ & !\Add12~9\)) # (!udp_length(5) & ((!\Add12~9\) # (!\Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(5),
	datab => \Add8~2_combout\,
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X13_Y9_N12
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = ((udp_length(6) $ (\Add8~3_combout\ $ (!\Add12~11\)))) # (GND)
-- \Add12~13\ = CARRY((udp_length(6) & ((\Add8~3_combout\) # (!\Add12~11\))) # (!udp_length(6) & (\Add8~3_combout\ & !\Add12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(6),
	datab => \Add8~3_combout\,
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X13_Y9_N14
\Add12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (udp_length(7) & (!\Add12~13\)) # (!udp_length(7) & ((\Add12~13\) # (GND)))
-- \Add12~15\ = CARRY((!\Add12~13\) # (!udp_length(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(7),
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X13_Y9_N16
\Add12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = (udp_length(8) & (\Add12~15\ $ (GND))) # (!udp_length(8) & (!\Add12~15\ & VCC))
-- \Add12~17\ = CARRY((udp_length(8) & !\Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(8),
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: LCCOMB_X13_Y9_N18
\Add12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = (udp_length(9) & (!\Add12~17\)) # (!udp_length(9) & ((\Add12~17\) # (GND)))
-- \Add12~19\ = CARRY((!\Add12~17\) # (!udp_length(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(9),
	datad => VCC,
	cin => \Add12~17\,
	combout => \Add12~18_combout\,
	cout => \Add12~19\);

-- Location: LCCOMB_X13_Y9_N20
\Add12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~20_combout\ = (udp_length(10) & (\Add12~19\ $ (GND))) # (!udp_length(10) & (!\Add12~19\ & VCC))
-- \Add12~21\ = CARRY((udp_length(10) & !\Add12~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(10),
	datad => VCC,
	cin => \Add12~19\,
	combout => \Add12~20_combout\,
	cout => \Add12~21\);

-- Location: LCCOMB_X13_Y9_N22
\Add12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~22_combout\ = (udp_length(11) & (!\Add12~21\)) # (!udp_length(11) & ((\Add12~21\) # (GND)))
-- \Add12~23\ = CARRY((!\Add12~21\) # (!udp_length(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(11),
	datad => VCC,
	cin => \Add12~21\,
	combout => \Add12~22_combout\,
	cout => \Add12~23\);

-- Location: LCCOMB_X13_Y9_N24
\Add12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~24_combout\ = (udp_length(12) & (\Add12~23\ $ (GND))) # (!udp_length(12) & (!\Add12~23\ & VCC))
-- \Add12~25\ = CARRY((udp_length(12) & !\Add12~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(12),
	datad => VCC,
	cin => \Add12~23\,
	combout => \Add12~24_combout\,
	cout => \Add12~25\);

-- Location: LCCOMB_X13_Y9_N26
\Add12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~26_combout\ = (udp_length(13) & (!\Add12~25\)) # (!udp_length(13) & ((\Add12~25\) # (GND)))
-- \Add12~27\ = CARRY((!\Add12~25\) # (!udp_length(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(13),
	datad => VCC,
	cin => \Add12~25\,
	combout => \Add12~26_combout\,
	cout => \Add12~27\);

-- Location: LCCOMB_X13_Y9_N28
\Add12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~28_combout\ = (udp_length(14) & (\Add12~27\ $ (GND))) # (!udp_length(14) & (!\Add12~27\ & VCC))
-- \Add12~29\ = CARRY((udp_length(14) & !\Add12~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(14),
	datad => VCC,
	cin => \Add12~27\,
	combout => \Add12~28_combout\,
	cout => \Add12~29\);

-- Location: LCCOMB_X13_Y9_N30
\Add12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~30_combout\ = (udp_length(15) & (!\Add12~29\)) # (!udp_length(15) & ((\Add12~29\) # (GND)))
-- \Add12~31\ = CARRY((!\Add12~29\) # (!udp_length(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(15),
	datad => VCC,
	cin => \Add12~29\,
	combout => \Add12~30_combout\,
	cout => \Add12~31\);

-- Location: LCCOMB_X13_Y8_N0
\Add12~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~32_combout\ = (udp_length(16) & (\Add12~31\ $ (GND))) # (!udp_length(16) & (!\Add12~31\ & VCC))
-- \Add12~33\ = CARRY((udp_length(16) & !\Add12~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(16),
	datad => VCC,
	cin => \Add12~31\,
	combout => \Add12~32_combout\,
	cout => \Add12~33\);

-- Location: LCCOMB_X13_Y8_N2
\Add12~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~34_combout\ = (udp_length(17) & (!\Add12~33\)) # (!udp_length(17) & ((\Add12~33\) # (GND)))
-- \Add12~35\ = CARRY((!\Add12~33\) # (!udp_length(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(17),
	datad => VCC,
	cin => \Add12~33\,
	combout => \Add12~34_combout\,
	cout => \Add12~35\);

-- Location: LCCOMB_X13_Y8_N4
\Add12~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~36_combout\ = (udp_length(18) & (\Add12~35\ $ (GND))) # (!udp_length(18) & (!\Add12~35\ & VCC))
-- \Add12~37\ = CARRY((udp_length(18) & !\Add12~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(18),
	datad => VCC,
	cin => \Add12~35\,
	combout => \Add12~36_combout\,
	cout => \Add12~37\);

-- Location: LCCOMB_X13_Y8_N6
\Add12~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~38_combout\ = (udp_length(19) & (!\Add12~37\)) # (!udp_length(19) & ((\Add12~37\) # (GND)))
-- \Add12~39\ = CARRY((!\Add12~37\) # (!udp_length(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(19),
	datad => VCC,
	cin => \Add12~37\,
	combout => \Add12~38_combout\,
	cout => \Add12~39\);

-- Location: LCCOMB_X13_Y8_N8
\Add12~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~40_combout\ = (udp_length(20) & (\Add12~39\ $ (GND))) # (!udp_length(20) & (!\Add12~39\ & VCC))
-- \Add12~41\ = CARRY((udp_length(20) & !\Add12~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(20),
	datad => VCC,
	cin => \Add12~39\,
	combout => \Add12~40_combout\,
	cout => \Add12~41\);

-- Location: LCCOMB_X13_Y8_N10
\Add12~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~42_combout\ = (udp_length(21) & (!\Add12~41\)) # (!udp_length(21) & ((\Add12~41\) # (GND)))
-- \Add12~43\ = CARRY((!\Add12~41\) # (!udp_length(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(21),
	datad => VCC,
	cin => \Add12~41\,
	combout => \Add12~42_combout\,
	cout => \Add12~43\);

-- Location: LCCOMB_X13_Y8_N12
\Add12~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~44_combout\ = (udp_length(22) & (\Add12~43\ $ (GND))) # (!udp_length(22) & (!\Add12~43\ & VCC))
-- \Add12~45\ = CARRY((udp_length(22) & !\Add12~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(22),
	datad => VCC,
	cin => \Add12~43\,
	combout => \Add12~44_combout\,
	cout => \Add12~45\);

-- Location: LCCOMB_X13_Y8_N14
\Add12~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~46_combout\ = (udp_length(23) & (!\Add12~45\)) # (!udp_length(23) & ((\Add12~45\) # (GND)))
-- \Add12~47\ = CARRY((!\Add12~45\) # (!udp_length(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(23),
	datad => VCC,
	cin => \Add12~45\,
	combout => \Add12~46_combout\,
	cout => \Add12~47\);

-- Location: LCCOMB_X13_Y8_N16
\Add12~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~48_combout\ = (udp_length(24) & (\Add12~47\ $ (GND))) # (!udp_length(24) & (!\Add12~47\ & VCC))
-- \Add12~49\ = CARRY((udp_length(24) & !\Add12~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(24),
	datad => VCC,
	cin => \Add12~47\,
	combout => \Add12~48_combout\,
	cout => \Add12~49\);

-- Location: LCCOMB_X13_Y8_N18
\Add12~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~50_combout\ = (udp_length(25) & (!\Add12~49\)) # (!udp_length(25) & ((\Add12~49\) # (GND)))
-- \Add12~51\ = CARRY((!\Add12~49\) # (!udp_length(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(25),
	datad => VCC,
	cin => \Add12~49\,
	combout => \Add12~50_combout\,
	cout => \Add12~51\);

-- Location: LCCOMB_X13_Y8_N20
\Add12~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~52_combout\ = (udp_length(26) & (\Add12~51\ $ (GND))) # (!udp_length(26) & (!\Add12~51\ & VCC))
-- \Add12~53\ = CARRY((udp_length(26) & !\Add12~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(26),
	datad => VCC,
	cin => \Add12~51\,
	combout => \Add12~52_combout\,
	cout => \Add12~53\);

-- Location: LCCOMB_X13_Y8_N22
\Add12~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~54_combout\ = (udp_length(27) & (!\Add12~53\)) # (!udp_length(27) & ((\Add12~53\) # (GND)))
-- \Add12~55\ = CARRY((!\Add12~53\) # (!udp_length(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(27),
	datad => VCC,
	cin => \Add12~53\,
	combout => \Add12~54_combout\,
	cout => \Add12~55\);

-- Location: LCCOMB_X14_Y9_N0
\Add13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~1_cout\ = CARRY(\Add12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datad => VCC,
	cout => \Add13~1_cout\);

-- Location: LCCOMB_X14_Y9_N2
\Add13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~3_cout\ = CARRY((!\Add12~2_combout\ & !\Add13~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datad => VCC,
	cin => \Add13~1_cout\,
	cout => \Add13~3_cout\);

-- Location: LCCOMB_X14_Y9_N4
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (\Add12~4_combout\ & (\Add13~3_cout\ $ (GND))) # (!\Add12~4_combout\ & (!\Add13~3_cout\ & VCC))
-- \Add13~5\ = CARRY((\Add12~4_combout\ & !\Add13~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~4_combout\,
	datad => VCC,
	cin => \Add13~3_cout\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X14_Y9_N6
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (\Add12~6_combout\ & (!\Add13~5\)) # (!\Add12~6_combout\ & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!\Add12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~6_combout\,
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X14_Y9_N8
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (\Add12~8_combout\ & (\Add13~7\ $ (GND))) # (!\Add12~8_combout\ & (!\Add13~7\ & VCC))
-- \Add13~9\ = CARRY((\Add12~8_combout\ & !\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X14_Y9_N10
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\Add12~10_combout\ & (!\Add13~9\)) # (!\Add12~10_combout\ & ((\Add13~9\) # (GND)))
-- \Add13~11\ = CARRY((!\Add13~9\) # (!\Add12~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~10_combout\,
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X14_Y9_N12
\Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = (\Add12~12_combout\ & (\Add13~11\ $ (GND))) # (!\Add12~12_combout\ & (!\Add13~11\ & VCC))
-- \Add13~13\ = CARRY((\Add12~12_combout\ & !\Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datad => VCC,
	cin => \Add13~11\,
	combout => \Add13~12_combout\,
	cout => \Add13~13\);

-- Location: LCCOMB_X14_Y9_N14
\Add13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~14_combout\ = (\Add12~14_combout\ & (!\Add13~13\)) # (!\Add12~14_combout\ & ((\Add13~13\) # (GND)))
-- \Add13~15\ = CARRY((!\Add13~13\) # (!\Add12~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~14_combout\,
	datad => VCC,
	cin => \Add13~13\,
	combout => \Add13~14_combout\,
	cout => \Add13~15\);

-- Location: LCCOMB_X14_Y9_N16
\Add13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~16_combout\ = (\Add12~16_combout\ & (\Add13~15\ $ (GND))) # (!\Add12~16_combout\ & (!\Add13~15\ & VCC))
-- \Add13~17\ = CARRY((\Add12~16_combout\ & !\Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~16_combout\,
	datad => VCC,
	cin => \Add13~15\,
	combout => \Add13~16_combout\,
	cout => \Add13~17\);

-- Location: LCCOMB_X14_Y9_N18
\Add13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~18_combout\ = (\Add12~18_combout\ & (!\Add13~17\)) # (!\Add12~18_combout\ & ((\Add13~17\) # (GND)))
-- \Add13~19\ = CARRY((!\Add13~17\) # (!\Add12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~18_combout\,
	datad => VCC,
	cin => \Add13~17\,
	combout => \Add13~18_combout\,
	cout => \Add13~19\);

-- Location: LCCOMB_X14_Y9_N20
\Add13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~20_combout\ = (\Add12~20_combout\ & (\Add13~19\ $ (GND))) # (!\Add12~20_combout\ & (!\Add13~19\ & VCC))
-- \Add13~21\ = CARRY((\Add12~20_combout\ & !\Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~20_combout\,
	datad => VCC,
	cin => \Add13~19\,
	combout => \Add13~20_combout\,
	cout => \Add13~21\);

-- Location: LCCOMB_X14_Y9_N22
\Add13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~22_combout\ = (\Add12~22_combout\ & (!\Add13~21\)) # (!\Add12~22_combout\ & ((\Add13~21\) # (GND)))
-- \Add13~23\ = CARRY((!\Add13~21\) # (!\Add12~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~22_combout\,
	datad => VCC,
	cin => \Add13~21\,
	combout => \Add13~22_combout\,
	cout => \Add13~23\);

-- Location: LCCOMB_X14_Y9_N24
\Add13~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~24_combout\ = (\Add12~24_combout\ & (\Add13~23\ $ (GND))) # (!\Add12~24_combout\ & (!\Add13~23\ & VCC))
-- \Add13~25\ = CARRY((\Add12~24_combout\ & !\Add13~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~24_combout\,
	datad => VCC,
	cin => \Add13~23\,
	combout => \Add13~24_combout\,
	cout => \Add13~25\);

-- Location: LCCOMB_X14_Y9_N26
\Add13~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~26_combout\ = (\Add12~26_combout\ & (!\Add13~25\)) # (!\Add12~26_combout\ & ((\Add13~25\) # (GND)))
-- \Add13~27\ = CARRY((!\Add13~25\) # (!\Add12~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~26_combout\,
	datad => VCC,
	cin => \Add13~25\,
	combout => \Add13~26_combout\,
	cout => \Add13~27\);

-- Location: LCCOMB_X14_Y9_N28
\Add13~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~28_combout\ = (\Add12~28_combout\ & (\Add13~27\ $ (GND))) # (!\Add12~28_combout\ & (!\Add13~27\ & VCC))
-- \Add13~29\ = CARRY((\Add12~28_combout\ & !\Add13~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~28_combout\,
	datad => VCC,
	cin => \Add13~27\,
	combout => \Add13~28_combout\,
	cout => \Add13~29\);

-- Location: LCCOMB_X14_Y9_N30
\Add13~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~30_combout\ = (\Add12~30_combout\ & (!\Add13~29\)) # (!\Add12~30_combout\ & ((\Add13~29\) # (GND)))
-- \Add13~31\ = CARRY((!\Add13~29\) # (!\Add12~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~30_combout\,
	datad => VCC,
	cin => \Add13~29\,
	combout => \Add13~30_combout\,
	cout => \Add13~31\);

-- Location: LCCOMB_X14_Y8_N0
\Add13~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~32_combout\ = (\Add12~32_combout\ & (\Add13~31\ $ (GND))) # (!\Add12~32_combout\ & (!\Add13~31\ & VCC))
-- \Add13~33\ = CARRY((\Add12~32_combout\ & !\Add13~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~32_combout\,
	datad => VCC,
	cin => \Add13~31\,
	combout => \Add13~32_combout\,
	cout => \Add13~33\);

-- Location: LCCOMB_X14_Y8_N2
\Add13~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~34_combout\ = (\Add12~34_combout\ & (!\Add13~33\)) # (!\Add12~34_combout\ & ((\Add13~33\) # (GND)))
-- \Add13~35\ = CARRY((!\Add13~33\) # (!\Add12~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~34_combout\,
	datad => VCC,
	cin => \Add13~33\,
	combout => \Add13~34_combout\,
	cout => \Add13~35\);

-- Location: LCCOMB_X14_Y8_N4
\Add13~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~36_combout\ = (\Add12~36_combout\ & (\Add13~35\ $ (GND))) # (!\Add12~36_combout\ & (!\Add13~35\ & VCC))
-- \Add13~37\ = CARRY((\Add12~36_combout\ & !\Add13~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~36_combout\,
	datad => VCC,
	cin => \Add13~35\,
	combout => \Add13~36_combout\,
	cout => \Add13~37\);

-- Location: LCCOMB_X14_Y8_N6
\Add13~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~38_combout\ = (\Add12~38_combout\ & (!\Add13~37\)) # (!\Add12~38_combout\ & ((\Add13~37\) # (GND)))
-- \Add13~39\ = CARRY((!\Add13~37\) # (!\Add12~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~38_combout\,
	datad => VCC,
	cin => \Add13~37\,
	combout => \Add13~38_combout\,
	cout => \Add13~39\);

-- Location: LCCOMB_X14_Y8_N8
\Add13~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~40_combout\ = (\Add12~40_combout\ & (\Add13~39\ $ (GND))) # (!\Add12~40_combout\ & (!\Add13~39\ & VCC))
-- \Add13~41\ = CARRY((\Add12~40_combout\ & !\Add13~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~40_combout\,
	datad => VCC,
	cin => \Add13~39\,
	combout => \Add13~40_combout\,
	cout => \Add13~41\);

-- Location: LCCOMB_X14_Y8_N10
\Add13~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~42_combout\ = (\Add12~42_combout\ & (!\Add13~41\)) # (!\Add12~42_combout\ & ((\Add13~41\) # (GND)))
-- \Add13~43\ = CARRY((!\Add13~41\) # (!\Add12~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~42_combout\,
	datad => VCC,
	cin => \Add13~41\,
	combout => \Add13~42_combout\,
	cout => \Add13~43\);

-- Location: LCCOMB_X14_Y8_N12
\Add13~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~44_combout\ = (\Add12~44_combout\ & (\Add13~43\ $ (GND))) # (!\Add12~44_combout\ & (!\Add13~43\ & VCC))
-- \Add13~45\ = CARRY((\Add12~44_combout\ & !\Add13~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~44_combout\,
	datad => VCC,
	cin => \Add13~43\,
	combout => \Add13~44_combout\,
	cout => \Add13~45\);

-- Location: LCCOMB_X14_Y8_N14
\Add13~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~46_combout\ = (\Add12~46_combout\ & (!\Add13~45\)) # (!\Add12~46_combout\ & ((\Add13~45\) # (GND)))
-- \Add13~47\ = CARRY((!\Add13~45\) # (!\Add12~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~46_combout\,
	datad => VCC,
	cin => \Add13~45\,
	combout => \Add13~46_combout\,
	cout => \Add13~47\);

-- Location: LCCOMB_X14_Y8_N16
\Add13~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~48_combout\ = (\Add12~48_combout\ & (\Add13~47\ $ (GND))) # (!\Add12~48_combout\ & (!\Add13~47\ & VCC))
-- \Add13~49\ = CARRY((\Add12~48_combout\ & !\Add13~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~48_combout\,
	datad => VCC,
	cin => \Add13~47\,
	combout => \Add13~48_combout\,
	cout => \Add13~49\);

-- Location: LCCOMB_X14_Y8_N18
\Add13~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~50_combout\ = (\Add12~50_combout\ & (!\Add13~49\)) # (!\Add12~50_combout\ & ((\Add13~49\) # (GND)))
-- \Add13~51\ = CARRY((!\Add13~49\) # (!\Add12~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~50_combout\,
	datad => VCC,
	cin => \Add13~49\,
	combout => \Add13~50_combout\,
	cout => \Add13~51\);

-- Location: LCCOMB_X14_Y8_N20
\Add13~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~52_combout\ = (\Add12~52_combout\ & (\Add13~51\ $ (GND))) # (!\Add12~52_combout\ & (!\Add13~51\ & VCC))
-- \Add13~53\ = CARRY((\Add12~52_combout\ & !\Add13~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~52_combout\,
	datad => VCC,
	cin => \Add13~51\,
	combout => \Add13~52_combout\,
	cout => \Add13~53\);

-- Location: LCCOMB_X14_Y8_N22
\Add13~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~54_combout\ = (\Add12~54_combout\ & (!\Add13~53\)) # (!\Add12~54_combout\ & ((\Add13~53\) # (GND)))
-- \Add13~55\ = CARRY((!\Add13~53\) # (!\Add12~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~54_combout\,
	datad => VCC,
	cin => \Add13~53\,
	combout => \Add13~54_combout\,
	cout => \Add13~55\);

-- Location: LCCOMB_X18_Y8_N26
\Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~0_combout\ = (byte_index(26) & (\Add13~52_combout\ & (byte_index(27) $ (!\Add13~54_combout\)))) # (!byte_index(26) & (!\Add13~52_combout\ & (byte_index(27) $ (!\Add13~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(26),
	datab => byte_index(27),
	datac => \Add13~54_combout\,
	datad => \Add13~52_combout\,
	combout => \Equal27~0_combout\);

-- Location: LCCOMB_X12_Y8_N24
\udp_length[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[28]~89_combout\ = (udp_length(28) & (\udp_length[27]~87\ $ (GND))) # (!udp_length(28) & (!\udp_length[27]~87\ & VCC))
-- \udp_length[28]~90\ = CARRY((udp_length(28) & !\udp_length[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(28),
	datad => VCC,
	cin => \udp_length[27]~87\,
	combout => \udp_length[28]~89_combout\,
	cout => \udp_length[28]~90\);

-- Location: FF_X12_Y8_N25
\udp_length[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[28]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(28));

-- Location: LCCOMB_X13_Y8_N24
\Add12~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~56_combout\ = (udp_length(28) & (\Add12~55\ $ (GND))) # (!udp_length(28) & (!\Add12~55\ & VCC))
-- \Add12~57\ = CARRY((udp_length(28) & !\Add12~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(28),
	datad => VCC,
	cin => \Add12~55\,
	combout => \Add12~56_combout\,
	cout => \Add12~57\);

-- Location: LCCOMB_X14_Y8_N24
\Add13~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~56_combout\ = (\Add12~56_combout\ & (\Add13~55\ $ (GND))) # (!\Add12~56_combout\ & (!\Add13~55\ & VCC))
-- \Add13~57\ = CARRY((\Add12~56_combout\ & !\Add13~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~56_combout\,
	datad => VCC,
	cin => \Add13~55\,
	combout => \Add13~56_combout\,
	cout => \Add13~57\);

-- Location: LCCOMB_X12_Y8_N26
\udp_length[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[29]~91_combout\ = (udp_length(29) & (!\udp_length[28]~90\)) # (!udp_length(29) & ((\udp_length[28]~90\) # (GND)))
-- \udp_length[29]~92\ = CARRY((!\udp_length[28]~90\) # (!udp_length(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(29),
	datad => VCC,
	cin => \udp_length[28]~90\,
	combout => \udp_length[29]~91_combout\,
	cout => \udp_length[29]~92\);

-- Location: FF_X12_Y8_N27
\udp_length[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[29]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(29));

-- Location: LCCOMB_X13_Y8_N26
\Add12~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~58_combout\ = (udp_length(29) & (!\Add12~57\)) # (!udp_length(29) & ((\Add12~57\) # (GND)))
-- \Add12~59\ = CARRY((!\Add12~57\) # (!udp_length(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(29),
	datad => VCC,
	cin => \Add12~57\,
	combout => \Add12~58_combout\,
	cout => \Add12~59\);

-- Location: LCCOMB_X14_Y8_N26
\Add13~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~58_combout\ = (\Add12~58_combout\ & (!\Add13~57\)) # (!\Add12~58_combout\ & ((\Add13~57\) # (GND)))
-- \Add13~59\ = CARRY((!\Add13~57\) # (!\Add12~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~58_combout\,
	datad => VCC,
	cin => \Add13~57\,
	combout => \Add13~58_combout\,
	cout => \Add13~59\);

-- Location: LCCOMB_X18_Y8_N20
\Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~1_combout\ = (byte_index(29) & (\Add13~58_combout\ & (byte_index(28) $ (!\Add13~56_combout\)))) # (!byte_index(29) & (!\Add13~58_combout\ & (byte_index(28) $ (!\Add13~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datab => byte_index(28),
	datac => \Add13~56_combout\,
	datad => \Add13~58_combout\,
	combout => \Equal27~1_combout\);

-- Location: LCCOMB_X12_Y8_N28
\udp_length[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[30]~93_combout\ = (udp_length(30) & (\udp_length[29]~92\ $ (GND))) # (!udp_length(30) & (!\udp_length[29]~92\ & VCC))
-- \udp_length[30]~94\ = CARRY((udp_length(30) & !\udp_length[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(30),
	datad => VCC,
	cin => \udp_length[29]~92\,
	combout => \udp_length[30]~93_combout\,
	cout => \udp_length[30]~94\);

-- Location: FF_X12_Y8_N29
\udp_length[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[30]~93_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(30));

-- Location: LCCOMB_X12_Y8_N30
\udp_length[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[31]~95_combout\ = udp_length(31) $ (\udp_length[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(31),
	cin => \udp_length[30]~94\,
	combout => \udp_length[31]~95_combout\);

-- Location: FF_X12_Y8_N31
\udp_length[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \udp_length[31]~95_combout\,
	asdata => \~GND~combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \Equal21~2_combout\,
	ena => \udp_length[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(31));

-- Location: LCCOMB_X13_Y8_N28
\Add12~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~60_combout\ = (udp_length(30) & (\Add12~59\ $ (GND))) # (!udp_length(30) & (!\Add12~59\ & VCC))
-- \Add12~61\ = CARRY((udp_length(30) & !\Add12~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(30),
	datad => VCC,
	cin => \Add12~59\,
	combout => \Add12~60_combout\,
	cout => \Add12~61\);

-- Location: LCCOMB_X13_Y8_N30
\Add12~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~62_combout\ = \Add12~61\ $ (udp_length(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => udp_length(31),
	cin => \Add12~61\,
	combout => \Add12~62_combout\);

-- Location: LCCOMB_X14_Y8_N28
\Add13~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~60_combout\ = (\Add12~60_combout\ & (\Add13~59\ $ (GND))) # (!\Add12~60_combout\ & (!\Add13~59\ & VCC))
-- \Add13~61\ = CARRY((\Add12~60_combout\ & !\Add13~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~60_combout\,
	datad => VCC,
	cin => \Add13~59\,
	combout => \Add13~60_combout\,
	cout => \Add13~61\);

-- Location: LCCOMB_X14_Y8_N30
\Add13~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~62_combout\ = \Add13~61\ $ (\Add12~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add12~62_combout\,
	cin => \Add13~61\,
	combout => \Add13~62_combout\);

-- Location: LCCOMB_X18_Y8_N22
\Equal27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~2_combout\ = (byte_index(31) & (\Add13~62_combout\ & (byte_index(30) $ (!\Add13~60_combout\)))) # (!byte_index(31) & (!\Add13~62_combout\ & (byte_index(30) $ (!\Add13~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => byte_index(30),
	datac => \Add13~62_combout\,
	datad => \Add13~60_combout\,
	combout => \Equal27~2_combout\);

-- Location: LCCOMB_X18_Y8_N6
\Equal27~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~19_combout\ = (byte_index(25) & (\Add13~50_combout\ & (byte_index(24) $ (!\Add13~48_combout\)))) # (!byte_index(25) & (!\Add13~50_combout\ & (byte_index(24) $ (!\Add13~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(25),
	datab => byte_index(24),
	datac => \Add13~48_combout\,
	datad => \Add13~50_combout\,
	combout => \Equal27~19_combout\);

-- Location: LCCOMB_X19_Y7_N12
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!byte_index(0) & byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(0),
	datad => byte_index(1),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X14_Y7_N4
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (ip_header_length(3)) # (ip_header_length(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ip_header_length(3),
	datad => ip_header_length(2),
	combout => \Add8~4_combout\);

-- Location: LCCOMB_X14_Y7_N6
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = ip_header_length(2) $ (ip_header_length(3) $ (GND))
-- \Add10~1\ = CARRY(ip_header_length(2) $ (!ip_header_length(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datab => ip_header_length(3),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X14_Y7_N8
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\Add10~1\ & (\Add8~4_combout\ $ ((!ip_header_length(4))))) # (!\Add10~1\ & ((\Add8~4_combout\ $ (ip_header_length(4))) # (GND)))
-- \Add10~3\ = CARRY((\Add8~4_combout\ $ (!ip_header_length(4))) # (!\Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => ip_header_length(4),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X14_Y7_N10
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\Add10~3\ & ((ip_header_length(5) $ (\Add8~5_combout\)))) # (!\Add10~3\ & (ip_header_length(5) $ (\Add8~5_combout\ $ (VCC))))
-- \Add10~5\ = CARRY((!\Add10~3\ & (ip_header_length(5) $ (\Add8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => \Add8~5_combout\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X14_Y7_N12
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = \Add10~5\ $ (((ip_header_length(5) & \Add8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => \Add8~5_combout\,
	cin => \Add10~5\,
	combout => \Add10~6_combout\);

-- Location: LCCOMB_X14_Y7_N14
\Equal24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~2_combout\ = (\Add10~4_combout\ & (byte_index(5) & (byte_index(6) $ (!\Add10~6_combout\)))) # (!\Add10~4_combout\ & (!byte_index(5) & (byte_index(6) $ (!\Add10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => byte_index(6),
	datac => byte_index(5),
	datad => \Add10~6_combout\,
	combout => \Equal24~2_combout\);

-- Location: LCCOMB_X16_Y7_N14
\Equal24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~1_combout\ = (\Add10~2_combout\ & (byte_index(4) & (byte_index(3) $ (!\Add10~0_combout\)))) # (!\Add10~2_combout\ & (!byte_index(4) & (byte_index(3) $ (!\Add10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => byte_index(3),
	datac => byte_index(4),
	datad => \Add10~0_combout\,
	combout => \Equal24~1_combout\);

-- Location: LCCOMB_X17_Y7_N14
\Equal24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~3_combout\ = (\Equal8~0_combout\ & (\Equal24~0_combout\ & (\Equal24~2_combout\ & \Equal24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal24~0_combout\,
	datac => \Equal24~2_combout\,
	datad => \Equal24~1_combout\,
	combout => \Equal24~3_combout\);

-- Location: LCCOMB_X21_Y8_N2
\s_out_endofpacket~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_endofpacket~0_combout\ = (\s_state.DATA~q\ & !\Equal24~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_state.DATA~q\,
	datad => \Equal24~3_combout\,
	combout => \s_out_endofpacket~0_combout\);

-- Location: LCCOMB_X17_Y8_N26
\Selector79~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~16_combout\ = (byte_index(21) & (\Add12~42_combout\ & (byte_index(20) $ (!\Add12~40_combout\)))) # (!byte_index(21) & (!\Add12~42_combout\ & (byte_index(20) $ (!\Add12~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => byte_index(20),
	datac => \Add12~42_combout\,
	datad => \Add12~40_combout\,
	combout => \Selector79~16_combout\);

-- Location: LCCOMB_X17_Y8_N28
\Selector79~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~15_combout\ = (byte_index(18) & (\Add12~36_combout\ & (byte_index(19) $ (!\Add12~38_combout\)))) # (!byte_index(18) & (!\Add12~36_combout\ & (byte_index(19) $ (!\Add12~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(18),
	datab => byte_index(19),
	datac => \Add12~36_combout\,
	datad => \Add12~38_combout\,
	combout => \Selector79~15_combout\);

-- Location: LCCOMB_X17_Y8_N8
\Selector79~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~17_combout\ = (byte_index(23) & (\Add12~46_combout\ & (\Add12~44_combout\ $ (!byte_index(22))))) # (!byte_index(23) & (!\Add12~46_combout\ & (\Add12~44_combout\ $ (!byte_index(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(23),
	datab => \Add12~44_combout\,
	datac => byte_index(22),
	datad => \Add12~46_combout\,
	combout => \Selector79~17_combout\);

-- Location: LCCOMB_X17_Y8_N18
\Selector79~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~14_combout\ = (byte_index(17) & (\Add12~34_combout\ & (byte_index(16) $ (!\Add12~32_combout\)))) # (!byte_index(17) & (!\Add12~34_combout\ & (byte_index(16) $ (!\Add12~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => \Add12~34_combout\,
	datad => \Add12~32_combout\,
	combout => \Selector79~14_combout\);

-- Location: LCCOMB_X17_Y8_N14
\Selector79~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~18_combout\ = (\Selector79~16_combout\ & (\Selector79~15_combout\ & (\Selector79~17_combout\ & \Selector79~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~16_combout\,
	datab => \Selector79~15_combout\,
	datac => \Selector79~17_combout\,
	datad => \Selector79~14_combout\,
	combout => \Selector79~18_combout\);

-- Location: LCCOMB_X17_Y9_N12
\Selector79~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~9_combout\ = (byte_index(9) & (\Add12~18_combout\ & (byte_index(8) $ (!\Add12~16_combout\)))) # (!byte_index(9) & (!\Add12~18_combout\ & (byte_index(8) $ (!\Add12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(8),
	datac => \Add12~16_combout\,
	datad => \Add12~18_combout\,
	combout => \Selector79~9_combout\);

-- Location: LCCOMB_X17_Y9_N14
\Selector79~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~12_combout\ = (byte_index(15) & (\Add12~30_combout\ & (byte_index(14) $ (!\Add12~28_combout\)))) # (!byte_index(15) & (!\Add12~30_combout\ & (byte_index(14) $ (!\Add12~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datab => byte_index(14),
	datac => \Add12~28_combout\,
	datad => \Add12~30_combout\,
	combout => \Selector79~12_combout\);

-- Location: LCCOMB_X17_Y9_N26
\Selector79~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~10_combout\ = (byte_index(10) & (\Add12~20_combout\ & (\Add12~22_combout\ $ (!byte_index(11))))) # (!byte_index(10) & (!\Add12~20_combout\ & (\Add12~22_combout\ $ (!byte_index(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(10),
	datab => \Add12~22_combout\,
	datac => \Add12~20_combout\,
	datad => byte_index(11),
	combout => \Selector79~10_combout\);

-- Location: LCCOMB_X17_Y9_N0
\Selector79~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~11_combout\ = (byte_index(12) & (\Add12~24_combout\ & (byte_index(13) $ (!\Add12~26_combout\)))) # (!byte_index(12) & (!\Add12~24_combout\ & (byte_index(13) $ (!\Add12~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datab => byte_index(13),
	datac => \Add12~26_combout\,
	datad => \Add12~24_combout\,
	combout => \Selector79~11_combout\);

-- Location: LCCOMB_X17_Y9_N24
\Selector79~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~13_combout\ = (\Selector79~9_combout\ & (\Selector79~12_combout\ & (\Selector79~10_combout\ & \Selector79~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~9_combout\,
	datab => \Selector79~12_combout\,
	datac => \Selector79~10_combout\,
	datad => \Selector79~11_combout\,
	combout => \Selector79~13_combout\);

-- Location: LCCOMB_X21_Y8_N26
\Selector79~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~22_combout\ = (byte_index(30) & (\Add12~60_combout\ & (byte_index(31) $ (!\Add12~62_combout\)))) # (!byte_index(30) & (!\Add12~60_combout\ & (byte_index(31) $ (!\Add12~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(31),
	datac => \Add12~62_combout\,
	datad => \Add12~60_combout\,
	combout => \Selector79~22_combout\);

-- Location: LCCOMB_X17_Y8_N20
\Selector79~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~20_combout\ = (byte_index(27) & (\Add12~54_combout\ & (\Add12~52_combout\ $ (!byte_index(26))))) # (!byte_index(27) & (!\Add12~54_combout\ & (\Add12~52_combout\ $ (!byte_index(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datab => \Add12~52_combout\,
	datac => byte_index(26),
	datad => \Add12~54_combout\,
	combout => \Selector79~20_combout\);

-- Location: LCCOMB_X19_Y8_N18
\Selector79~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~19_combout\ = (byte_index(25) & (\Add12~50_combout\ & (byte_index(24) $ (!\Add12~48_combout\)))) # (!byte_index(25) & (!\Add12~50_combout\ & (byte_index(24) $ (!\Add12~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(25),
	datab => byte_index(24),
	datac => \Add12~50_combout\,
	datad => \Add12~48_combout\,
	combout => \Selector79~19_combout\);

-- Location: LCCOMB_X21_Y8_N24
\Selector79~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~21_combout\ = (\Add12~58_combout\ & (byte_index(29) & (byte_index(28) $ (!\Add12~56_combout\)))) # (!\Add12~58_combout\ & (!byte_index(29) & (byte_index(28) $ (!\Add12~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~58_combout\,
	datab => byte_index(29),
	datac => byte_index(28),
	datad => \Add12~56_combout\,
	combout => \Selector79~21_combout\);

-- Location: LCCOMB_X21_Y8_N8
\Selector79~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~23_combout\ = (\Selector79~22_combout\ & (\Selector79~20_combout\ & (\Selector79~19_combout\ & \Selector79~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~22_combout\,
	datab => \Selector79~20_combout\,
	datac => \Selector79~19_combout\,
	datad => \Selector79~21_combout\,
	combout => \Selector79~23_combout\);

-- Location: LCCOMB_X19_Y9_N12
\Selector79~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~5_combout\ = (byte_index(2) & (\Add12~4_combout\ & (byte_index(3) $ (!\Add12~6_combout\)))) # (!byte_index(2) & (!\Add12~4_combout\ & (byte_index(3) $ (!\Add12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Add12~4_combout\,
	datac => byte_index(3),
	datad => \Add12~6_combout\,
	combout => \Selector79~5_combout\);

-- Location: LCCOMB_X19_Y9_N16
\Selector79~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~7_combout\ = (byte_index(7) & (\Add12~14_combout\ & (byte_index(6) $ (!\Add12~12_combout\)))) # (!byte_index(7) & (!\Add12~14_combout\ & (byte_index(6) $ (!\Add12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(7),
	datab => byte_index(6),
	datac => \Add12~14_combout\,
	datad => \Add12~12_combout\,
	combout => \Selector79~7_combout\);

-- Location: LCCOMB_X19_Y9_N26
\Selector79~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~6_combout\ = (\Add12~8_combout\ & (byte_index(4) & (byte_index(5) $ (!\Add12~10_combout\)))) # (!\Add12~8_combout\ & (!byte_index(4) & (byte_index(5) $ (!\Add12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datab => byte_index(5),
	datac => byte_index(4),
	datad => \Add12~10_combout\,
	combout => \Selector79~6_combout\);

-- Location: LCCOMB_X19_Y9_N18
\Selector79~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~4_combout\ = (\Add12~2_combout\ & (byte_index(1) & (byte_index(0) $ (!\Add12~0_combout\)))) # (!\Add12~2_combout\ & (!byte_index(1) & (byte_index(0) $ (!\Add12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => byte_index(0),
	datac => \Add12~0_combout\,
	datad => byte_index(1),
	combout => \Selector79~4_combout\);

-- Location: LCCOMB_X19_Y9_N2
\Selector79~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~8_combout\ = (\Selector79~5_combout\ & (\Selector79~7_combout\ & (\Selector79~6_combout\ & \Selector79~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~5_combout\,
	datab => \Selector79~7_combout\,
	datac => \Selector79~6_combout\,
	datad => \Selector79~4_combout\,
	combout => \Selector79~8_combout\);

-- Location: LCCOMB_X21_Y8_N22
\Selector79~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~24_combout\ = (\Selector79~18_combout\ & (\Selector79~13_combout\ & (\Selector79~23_combout\ & \Selector79~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~18_combout\,
	datab => \Selector79~13_combout\,
	datac => \Selector79~23_combout\,
	datad => \Selector79~8_combout\,
	combout => \Selector79~24_combout\);

-- Location: LCCOMB_X17_Y8_N30
\Equal27~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~15_combout\ = (byte_index(18) & (\Add13~36_combout\ & (byte_index(19) $ (!\Add13~38_combout\)))) # (!byte_index(18) & (!\Add13~36_combout\ & (byte_index(19) $ (!\Add13~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(18),
	datab => byte_index(19),
	datac => \Add13~36_combout\,
	datad => \Add13~38_combout\,
	combout => \Equal27~15_combout\);

-- Location: LCCOMB_X17_Y8_N16
\Equal27~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~14_combout\ = (byte_index(17) & (\Add13~34_combout\ & (byte_index(16) $ (!\Add13~32_combout\)))) # (!byte_index(17) & (!\Add13~34_combout\ & (byte_index(16) $ (!\Add13~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => \Add13~34_combout\,
	datad => \Add13~32_combout\,
	combout => \Equal27~14_combout\);

-- Location: LCCOMB_X17_Y8_N4
\Equal27~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~16_combout\ = (byte_index(21) & (\Add13~42_combout\ & (byte_index(20) $ (!\Add13~40_combout\)))) # (!byte_index(21) & (!\Add13~42_combout\ & (byte_index(20) $ (!\Add13~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => byte_index(20),
	datac => \Add13~40_combout\,
	datad => \Add13~42_combout\,
	combout => \Equal27~16_combout\);

-- Location: LCCOMB_X17_Y8_N10
\Equal27~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~17_combout\ = (byte_index(23) & (\Add13~46_combout\ & (byte_index(22) $ (!\Add13~44_combout\)))) # (!byte_index(23) & (!\Add13~46_combout\ & (byte_index(22) $ (!\Add13~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(23),
	datab => byte_index(22),
	datac => \Add13~44_combout\,
	datad => \Add13~46_combout\,
	combout => \Equal27~17_combout\);

-- Location: LCCOMB_X17_Y8_N12
\Equal27~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~18_combout\ = (\Equal27~15_combout\ & (\Equal27~14_combout\ & (\Equal27~16_combout\ & \Equal27~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~15_combout\,
	datab => \Equal27~14_combout\,
	datac => \Equal27~16_combout\,
	datad => \Equal27~17_combout\,
	combout => \Equal27~18_combout\);

-- Location: LCCOMB_X19_Y9_N6
\Equal27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~4_combout\ = (byte_index(3) & (\Add13~6_combout\ & (byte_index(2) $ (!\Add13~4_combout\)))) # (!byte_index(3) & (!\Add13~6_combout\ & (byte_index(2) $ (!\Add13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(2),
	datac => \Add13~6_combout\,
	datad => \Add13~4_combout\,
	combout => \Equal27~4_combout\);

-- Location: LCCOMB_X19_Y9_N28
\Equal27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~3_combout\ = (udp_length(1) & (byte_index(1) & (byte_index(0) $ (!udp_length(0))))) # (!udp_length(1) & (!byte_index(1) & (byte_index(0) $ (!udp_length(0)))))

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
	combout => \Equal27~3_combout\);

-- Location: LCCOMB_X19_Y9_N4
\Equal27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~5_combout\ = (byte_index(4) & (\Add13~8_combout\ & (byte_index(5) $ (!\Add13~10_combout\)))) # (!byte_index(4) & (!\Add13~8_combout\ & (byte_index(5) $ (!\Add13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(5),
	datac => \Add13~8_combout\,
	datad => \Add13~10_combout\,
	combout => \Equal27~5_combout\);

-- Location: LCCOMB_X19_Y9_N10
\Equal27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~6_combout\ = (byte_index(7) & (\Add13~14_combout\ & (byte_index(6) $ (!\Add13~12_combout\)))) # (!byte_index(7) & (!\Add13~14_combout\ & (byte_index(6) $ (!\Add13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(7),
	datab => byte_index(6),
	datac => \Add13~14_combout\,
	datad => \Add13~12_combout\,
	combout => \Equal27~6_combout\);

-- Location: LCCOMB_X19_Y9_N20
\Equal27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~7_combout\ = (\Equal27~4_combout\ & (\Equal27~3_combout\ & (\Equal27~5_combout\ & \Equal27~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~4_combout\,
	datab => \Equal27~3_combout\,
	datac => \Equal27~5_combout\,
	datad => \Equal27~6_combout\,
	combout => \Equal27~7_combout\);

-- Location: LCCOMB_X18_Y8_N2
\Equal27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~11_combout\ = (byte_index(13) & (\Add13~26_combout\ & (byte_index(12) $ (!\Add13~24_combout\)))) # (!byte_index(13) & (!\Add13~26_combout\ & (byte_index(12) $ (!\Add13~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datab => byte_index(12),
	datac => \Add13~26_combout\,
	datad => \Add13~24_combout\,
	combout => \Equal27~11_combout\);

-- Location: LCCOMB_X17_Y9_N30
\Equal27~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~12_combout\ = (byte_index(15) & (\Add13~30_combout\ & (byte_index(14) $ (!\Add13~28_combout\)))) # (!byte_index(15) & (!\Add13~30_combout\ & (byte_index(14) $ (!\Add13~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datab => byte_index(14),
	datac => \Add13~30_combout\,
	datad => \Add13~28_combout\,
	combout => \Equal27~12_combout\);

-- Location: LCCOMB_X17_Y9_N20
\Equal27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~9_combout\ = byte_index(10) $ (\Add13~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(10),
	datad => \Add13~20_combout\,
	combout => \Equal27~9_combout\);

-- Location: LCCOMB_X17_Y9_N18
\Equal27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~8_combout\ = (byte_index(9) & (\Add13~18_combout\ & (byte_index(8) $ (!\Add13~16_combout\)))) # (!byte_index(9) & (!\Add13~18_combout\ & (byte_index(8) $ (!\Add13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(8),
	datac => \Add13~18_combout\,
	datad => \Add13~16_combout\,
	combout => \Equal27~8_combout\);

-- Location: LCCOMB_X18_Y8_N28
\Equal27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~10_combout\ = (!\Equal27~9_combout\ & (\Equal27~8_combout\ & (\Add13~22_combout\ $ (!byte_index(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~22_combout\,
	datab => byte_index(11),
	datac => \Equal27~9_combout\,
	datad => \Equal27~8_combout\,
	combout => \Equal27~10_combout\);

-- Location: LCCOMB_X18_Y8_N8
\Equal27~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~13_combout\ = (\Equal27~7_combout\ & (\Equal27~11_combout\ & (\Equal27~12_combout\ & \Equal27~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~7_combout\,
	datab => \Equal27~11_combout\,
	datac => \Equal27~12_combout\,
	datad => \Equal27~10_combout\,
	combout => \Equal27~13_combout\);

-- Location: LCCOMB_X22_Y8_N16
\Equal27~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~20_combout\ = (\Equal27~19_combout\ & (\Equal27~2_combout\ & (\Equal27~1_combout\ & \Equal27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~19_combout\,
	datab => \Equal27~2_combout\,
	datac => \Equal27~1_combout\,
	datad => \Equal27~0_combout\,
	combout => \Equal27~20_combout\);

-- Location: LCCOMB_X22_Y8_N30
\Selector79~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~26_combout\ = (\s_state.CRC~q\ & (((!\Equal27~20_combout\) # (!\Equal27~13_combout\)) # (!\Equal27~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~18_combout\,
	datab => \s_state.CRC~q\,
	datac => \Equal27~13_combout\,
	datad => \Equal27~20_combout\,
	combout => \Selector79~26_combout\);

-- Location: LCCOMB_X16_Y9_N0
\Add11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~1_cout\ = CARRY(\Add12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datad => VCC,
	cout => \Add11~1_cout\);

-- Location: LCCOMB_X16_Y9_N2
\Add11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~3_cout\ = CARRY((!\Add12~2_combout\ & !\Add11~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~2_combout\,
	datad => VCC,
	cin => \Add11~1_cout\,
	cout => \Add11~3_cout\);

-- Location: LCCOMB_X16_Y9_N4
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (\Add12~4_combout\ & ((GND) # (!\Add11~3_cout\))) # (!\Add12~4_combout\ & (\Add11~3_cout\ $ (GND)))
-- \Add11~5\ = CARRY((\Add12~4_combout\) # (!\Add11~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~4_combout\,
	datad => VCC,
	cin => \Add11~3_cout\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X16_Y9_N6
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\Add12~6_combout\ & (\Add11~5\ & VCC)) # (!\Add12~6_combout\ & (!\Add11~5\))
-- \Add11~7\ = CARRY((!\Add12~6_combout\ & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~6_combout\,
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X19_Y9_N8
\Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~0_combout\ = (byte_index(2) & (\Add11~4_combout\ & (\Add11~6_combout\ $ (!byte_index(3))))) # (!byte_index(2) & (!\Add11~4_combout\ & (\Add11~6_combout\ $ (!byte_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Add11~6_combout\,
	datac => byte_index(3),
	datad => \Add11~4_combout\,
	combout => \Equal25~0_combout\);

-- Location: LCCOMB_X16_Y9_N8
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (\Add12~8_combout\ & ((GND) # (!\Add11~7\))) # (!\Add12~8_combout\ & (\Add11~7\ $ (GND)))
-- \Add11~9\ = CARRY((\Add12~8_combout\) # (!\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X16_Y9_N10
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\Add12~10_combout\ & (\Add11~9\ & VCC)) # (!\Add12~10_combout\ & (!\Add11~9\))
-- \Add11~11\ = CARRY((!\Add12~10_combout\ & !\Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~10_combout\,
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X19_Y9_N14
\Equal25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~1_combout\ = (byte_index(4) & (\Add11~8_combout\ & (byte_index(5) $ (!\Add11~10_combout\)))) # (!byte_index(4) & (!\Add11~8_combout\ & (byte_index(5) $ (!\Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(5),
	datac => \Add11~10_combout\,
	datad => \Add11~8_combout\,
	combout => \Equal25~1_combout\);

-- Location: LCCOMB_X16_Y9_N12
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (\Add12~12_combout\ & ((GND) # (!\Add11~11\))) # (!\Add12~12_combout\ & (\Add11~11\ $ (GND)))
-- \Add11~13\ = CARRY((\Add12~12_combout\) # (!\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~12_combout\,
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X16_Y9_N14
\Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (\Add12~14_combout\ & (\Add11~13\ & VCC)) # (!\Add12~14_combout\ & (!\Add11~13\))
-- \Add11~15\ = CARRY((!\Add12~14_combout\ & !\Add11~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~14_combout\,
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X19_Y9_N24
\Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~2_combout\ = (byte_index(7) & (\Add11~14_combout\ & (byte_index(6) $ (!\Add11~12_combout\)))) # (!byte_index(7) & (!\Add11~14_combout\ & (byte_index(6) $ (!\Add11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(7),
	datab => byte_index(6),
	datac => \Add11~12_combout\,
	datad => \Add11~14_combout\,
	combout => \Equal25~2_combout\);

-- Location: LCCOMB_X19_Y9_N22
\Equal25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~3_combout\ = (\Equal27~3_combout\ & (\Equal25~0_combout\ & (\Equal25~1_combout\ & \Equal25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~3_combout\,
	datab => \Equal25~0_combout\,
	datac => \Equal25~1_combout\,
	datad => \Equal25~2_combout\,
	combout => \Equal25~3_combout\);

-- Location: LCCOMB_X16_Y9_N16
\Add11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (\Add12~16_combout\ & ((GND) # (!\Add11~15\))) # (!\Add12~16_combout\ & (\Add11~15\ $ (GND)))
-- \Add11~17\ = CARRY((\Add12~16_combout\) # (!\Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~16_combout\,
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X16_Y9_N18
\Add11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (\Add12~18_combout\ & (\Add11~17\ & VCC)) # (!\Add12~18_combout\ & (!\Add11~17\))
-- \Add11~19\ = CARRY((!\Add12~18_combout\ & !\Add11~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~18_combout\,
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~18_combout\,
	cout => \Add11~19\);

-- Location: LCCOMB_X16_Y9_N20
\Add11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = (\Add12~20_combout\ & ((GND) # (!\Add11~19\))) # (!\Add12~20_combout\ & (\Add11~19\ $ (GND)))
-- \Add11~21\ = CARRY((\Add12~20_combout\) # (!\Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~20_combout\,
	datad => VCC,
	cin => \Add11~19\,
	combout => \Add11~20_combout\,
	cout => \Add11~21\);

-- Location: LCCOMB_X16_Y9_N22
\Add11~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~22_combout\ = (\Add12~22_combout\ & (\Add11~21\ & VCC)) # (!\Add12~22_combout\ & (!\Add11~21\))
-- \Add11~23\ = CARRY((!\Add12~22_combout\ & !\Add11~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~22_combout\,
	datad => VCC,
	cin => \Add11~21\,
	combout => \Add11~22_combout\,
	cout => \Add11~23\);

-- Location: LCCOMB_X16_Y9_N24
\Add11~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~24_combout\ = (\Add12~24_combout\ & ((GND) # (!\Add11~23\))) # (!\Add12~24_combout\ & (\Add11~23\ $ (GND)))
-- \Add11~25\ = CARRY((\Add12~24_combout\) # (!\Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~24_combout\,
	datad => VCC,
	cin => \Add11~23\,
	combout => \Add11~24_combout\,
	cout => \Add11~25\);

-- Location: LCCOMB_X16_Y9_N26
\Add11~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~26_combout\ = (\Add12~26_combout\ & (\Add11~25\ & VCC)) # (!\Add12~26_combout\ & (!\Add11~25\))
-- \Add11~27\ = CARRY((!\Add12~26_combout\ & !\Add11~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~26_combout\,
	datad => VCC,
	cin => \Add11~25\,
	combout => \Add11~26_combout\,
	cout => \Add11~27\);

-- Location: LCCOMB_X16_Y9_N28
\Add11~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~28_combout\ = (\Add12~28_combout\ & ((GND) # (!\Add11~27\))) # (!\Add12~28_combout\ & (\Add11~27\ $ (GND)))
-- \Add11~29\ = CARRY((\Add12~28_combout\) # (!\Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~28_combout\,
	datad => VCC,
	cin => \Add11~27\,
	combout => \Add11~28_combout\,
	cout => \Add11~29\);

-- Location: LCCOMB_X16_Y9_N30
\Add11~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~30_combout\ = (\Add12~30_combout\ & (\Add11~29\ & VCC)) # (!\Add12~30_combout\ & (!\Add11~29\))
-- \Add11~31\ = CARRY((!\Add12~30_combout\ & !\Add11~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~30_combout\,
	datad => VCC,
	cin => \Add11~29\,
	combout => \Add11~30_combout\,
	cout => \Add11~31\);

-- Location: LCCOMB_X16_Y8_N0
\Add11~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~32_combout\ = (\Add12~32_combout\ & ((GND) # (!\Add11~31\))) # (!\Add12~32_combout\ & (\Add11~31\ $ (GND)))
-- \Add11~33\ = CARRY((\Add12~32_combout\) # (!\Add11~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~32_combout\,
	datad => VCC,
	cin => \Add11~31\,
	combout => \Add11~32_combout\,
	cout => \Add11~33\);

-- Location: LCCOMB_X16_Y8_N2
\Add11~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~34_combout\ = (\Add12~34_combout\ & (\Add11~33\ & VCC)) # (!\Add12~34_combout\ & (!\Add11~33\))
-- \Add11~35\ = CARRY((!\Add12~34_combout\ & !\Add11~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~34_combout\,
	datad => VCC,
	cin => \Add11~33\,
	combout => \Add11~34_combout\,
	cout => \Add11~35\);

-- Location: LCCOMB_X16_Y8_N4
\Add11~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~36_combout\ = (\Add12~36_combout\ & ((GND) # (!\Add11~35\))) # (!\Add12~36_combout\ & (\Add11~35\ $ (GND)))
-- \Add11~37\ = CARRY((\Add12~36_combout\) # (!\Add11~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~36_combout\,
	datad => VCC,
	cin => \Add11~35\,
	combout => \Add11~36_combout\,
	cout => \Add11~37\);

-- Location: LCCOMB_X16_Y8_N6
\Add11~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~38_combout\ = (\Add12~38_combout\ & (\Add11~37\ & VCC)) # (!\Add12~38_combout\ & (!\Add11~37\))
-- \Add11~39\ = CARRY((!\Add12~38_combout\ & !\Add11~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~38_combout\,
	datad => VCC,
	cin => \Add11~37\,
	combout => \Add11~38_combout\,
	cout => \Add11~39\);

-- Location: LCCOMB_X16_Y8_N8
\Add11~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~40_combout\ = (\Add12~40_combout\ & ((GND) # (!\Add11~39\))) # (!\Add12~40_combout\ & (\Add11~39\ $ (GND)))
-- \Add11~41\ = CARRY((\Add12~40_combout\) # (!\Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~40_combout\,
	datad => VCC,
	cin => \Add11~39\,
	combout => \Add11~40_combout\,
	cout => \Add11~41\);

-- Location: LCCOMB_X16_Y8_N10
\Add11~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~42_combout\ = (\Add12~42_combout\ & (\Add11~41\ & VCC)) # (!\Add12~42_combout\ & (!\Add11~41\))
-- \Add11~43\ = CARRY((!\Add12~42_combout\ & !\Add11~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~42_combout\,
	datad => VCC,
	cin => \Add11~41\,
	combout => \Add11~42_combout\,
	cout => \Add11~43\);

-- Location: LCCOMB_X17_Y8_N6
\Equal25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~11_combout\ = (\Add11~40_combout\ & (byte_index(20) & (byte_index(21) $ (!\Add11~42_combout\)))) # (!\Add11~40_combout\ & (!byte_index(20) & (byte_index(21) $ (!\Add11~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~40_combout\,
	datab => byte_index(20),
	datac => byte_index(21),
	datad => \Add11~42_combout\,
	combout => \Equal25~11_combout\);

-- Location: LCCOMB_X17_Y8_N24
\Equal25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~10_combout\ = (byte_index(18) & (\Add11~36_combout\ & (\Add11~38_combout\ $ (!byte_index(19))))) # (!byte_index(18) & (!\Add11~36_combout\ & (\Add11~38_combout\ $ (!byte_index(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(18),
	datab => \Add11~36_combout\,
	datac => \Add11~38_combout\,
	datad => byte_index(19),
	combout => \Equal25~10_combout\);

-- Location: LCCOMB_X17_Y8_N22
\Equal25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~9_combout\ = (byte_index(17) & (\Add11~34_combout\ & (byte_index(16) $ (!\Add11~32_combout\)))) # (!byte_index(17) & (!\Add11~34_combout\ & (byte_index(16) $ (!\Add11~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => \Add11~32_combout\,
	datad => \Add11~34_combout\,
	combout => \Equal25~9_combout\);

-- Location: LCCOMB_X16_Y8_N12
\Add11~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~44_combout\ = (\Add12~44_combout\ & ((GND) # (!\Add11~43\))) # (!\Add12~44_combout\ & (\Add11~43\ $ (GND)))
-- \Add11~45\ = CARRY((\Add12~44_combout\) # (!\Add11~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~44_combout\,
	datad => VCC,
	cin => \Add11~43\,
	combout => \Add11~44_combout\,
	cout => \Add11~45\);

-- Location: LCCOMB_X16_Y8_N14
\Add11~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~46_combout\ = (\Add12~46_combout\ & (\Add11~45\ & VCC)) # (!\Add12~46_combout\ & (!\Add11~45\))
-- \Add11~47\ = CARRY((!\Add12~46_combout\ & !\Add11~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~46_combout\,
	datad => VCC,
	cin => \Add11~45\,
	combout => \Add11~46_combout\,
	cout => \Add11~47\);

-- Location: LCCOMB_X17_Y8_N0
\Equal25~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~12_combout\ = (byte_index(23) & (\Add11~46_combout\ & (byte_index(22) $ (!\Add11~44_combout\)))) # (!byte_index(23) & (!\Add11~46_combout\ & (byte_index(22) $ (!\Add11~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(23),
	datab => byte_index(22),
	datac => \Add11~44_combout\,
	datad => \Add11~46_combout\,
	combout => \Equal25~12_combout\);

-- Location: LCCOMB_X17_Y8_N2
\Equal25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~13_combout\ = (\Equal25~11_combout\ & (\Equal25~10_combout\ & (\Equal25~9_combout\ & \Equal25~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~11_combout\,
	datab => \Equal25~10_combout\,
	datac => \Equal25~9_combout\,
	datad => \Equal25~12_combout\,
	combout => \Equal25~13_combout\);

-- Location: LCCOMB_X17_Y9_N22
\Equal25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~4_combout\ = (byte_index(9) & (\Add11~18_combout\ & (byte_index(8) $ (!\Add11~16_combout\)))) # (!byte_index(9) & (!\Add11~18_combout\ & (byte_index(8) $ (!\Add11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(8),
	datac => \Add11~16_combout\,
	datad => \Add11~18_combout\,
	combout => \Equal25~4_combout\);

-- Location: LCCOMB_X17_Y9_N8
\Equal25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~5_combout\ = (byte_index(10) & (\Add11~20_combout\ & (\Add11~22_combout\ $ (!byte_index(11))))) # (!byte_index(10) & (!\Add11~20_combout\ & (\Add11~22_combout\ $ (!byte_index(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(10),
	datab => \Add11~22_combout\,
	datac => byte_index(11),
	datad => \Add11~20_combout\,
	combout => \Equal25~5_combout\);

-- Location: LCCOMB_X17_Y9_N4
\Equal25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~7_combout\ = (byte_index(15) & (\Add11~30_combout\ & (byte_index(14) $ (!\Add11~28_combout\)))) # (!byte_index(15) & (!\Add11~30_combout\ & (byte_index(14) $ (!\Add11~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datab => \Add11~30_combout\,
	datac => byte_index(14),
	datad => \Add11~28_combout\,
	combout => \Equal25~7_combout\);

-- Location: LCCOMB_X17_Y9_N2
\Equal25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~6_combout\ = (byte_index(12) & (\Add11~24_combout\ & (byte_index(13) $ (!\Add11~26_combout\)))) # (!byte_index(12) & (!\Add11~24_combout\ & (byte_index(13) $ (!\Add11~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datab => byte_index(13),
	datac => \Add11~26_combout\,
	datad => \Add11~24_combout\,
	combout => \Equal25~6_combout\);

-- Location: LCCOMB_X17_Y9_N10
\Equal25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~8_combout\ = (\Equal25~4_combout\ & (\Equal25~5_combout\ & (\Equal25~7_combout\ & \Equal25~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~4_combout\,
	datab => \Equal25~5_combout\,
	datac => \Equal25~7_combout\,
	datad => \Equal25~6_combout\,
	combout => \Equal25~8_combout\);

-- Location: LCCOMB_X16_Y8_N16
\Add11~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~48_combout\ = (\Add12~48_combout\ & ((GND) # (!\Add11~47\))) # (!\Add12~48_combout\ & (\Add11~47\ $ (GND)))
-- \Add11~49\ = CARRY((\Add12~48_combout\) # (!\Add11~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~48_combout\,
	datad => VCC,
	cin => \Add11~47\,
	combout => \Add11~48_combout\,
	cout => \Add11~49\);

-- Location: LCCOMB_X16_Y8_N18
\Add11~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~50_combout\ = (\Add12~50_combout\ & (\Add11~49\ & VCC)) # (!\Add12~50_combout\ & (!\Add11~49\))
-- \Add11~51\ = CARRY((!\Add12~50_combout\ & !\Add11~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~50_combout\,
	datad => VCC,
	cin => \Add11~49\,
	combout => \Add11~50_combout\,
	cout => \Add11~51\);

-- Location: LCCOMB_X21_Y8_N12
\Equal25~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~14_combout\ = (byte_index(25) & (\Add11~50_combout\ & (byte_index(24) $ (!\Add11~48_combout\)))) # (!byte_index(25) & (!\Add11~50_combout\ & (byte_index(24) $ (!\Add11~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(25),
	datab => byte_index(24),
	datac => \Add11~50_combout\,
	datad => \Add11~48_combout\,
	combout => \Equal25~14_combout\);

-- Location: LCCOMB_X16_Y8_N20
\Add11~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~52_combout\ = (\Add12~52_combout\ & ((GND) # (!\Add11~51\))) # (!\Add12~52_combout\ & (\Add11~51\ $ (GND)))
-- \Add11~53\ = CARRY((\Add12~52_combout\) # (!\Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~52_combout\,
	datad => VCC,
	cin => \Add11~51\,
	combout => \Add11~52_combout\,
	cout => \Add11~53\);

-- Location: LCCOMB_X16_Y8_N22
\Add11~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~54_combout\ = (\Add12~54_combout\ & (\Add11~53\ & VCC)) # (!\Add12~54_combout\ & (!\Add11~53\))
-- \Add11~55\ = CARRY((!\Add12~54_combout\ & !\Add11~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~54_combout\,
	datad => VCC,
	cin => \Add11~53\,
	combout => \Add11~54_combout\,
	cout => \Add11~55\);

-- Location: LCCOMB_X21_Y8_N14
\Equal25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~15_combout\ = (byte_index(26) & (\Add11~52_combout\ & (\Add11~54_combout\ $ (!byte_index(27))))) # (!byte_index(26) & (!\Add11~52_combout\ & (\Add11~54_combout\ $ (!byte_index(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(26),
	datab => \Add11~54_combout\,
	datac => byte_index(27),
	datad => \Add11~52_combout\,
	combout => \Equal25~15_combout\);

-- Location: LCCOMB_X16_Y8_N24
\Add11~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~56_combout\ = (\Add12~56_combout\ & ((GND) # (!\Add11~55\))) # (!\Add12~56_combout\ & (\Add11~55\ $ (GND)))
-- \Add11~57\ = CARRY((\Add12~56_combout\) # (!\Add11~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~56_combout\,
	datad => VCC,
	cin => \Add11~55\,
	combout => \Add11~56_combout\,
	cout => \Add11~57\);

-- Location: LCCOMB_X16_Y8_N26
\Add11~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~58_combout\ = (\Add12~58_combout\ & (\Add11~57\ & VCC)) # (!\Add12~58_combout\ & (!\Add11~57\))
-- \Add11~59\ = CARRY((!\Add12~58_combout\ & !\Add11~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~58_combout\,
	datad => VCC,
	cin => \Add11~57\,
	combout => \Add11~58_combout\,
	cout => \Add11~59\);

-- Location: LCCOMB_X21_Y8_N4
\Equal25~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~16_combout\ = (\Add11~56_combout\ & (byte_index(28) & (byte_index(29) $ (!\Add11~58_combout\)))) # (!\Add11~56_combout\ & (!byte_index(28) & (byte_index(29) $ (!\Add11~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~56_combout\,
	datab => byte_index(29),
	datac => byte_index(28),
	datad => \Add11~58_combout\,
	combout => \Equal25~16_combout\);

-- Location: LCCOMB_X16_Y8_N28
\Add11~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~60_combout\ = (\Add12~60_combout\ & ((GND) # (!\Add11~59\))) # (!\Add12~60_combout\ & (\Add11~59\ $ (GND)))
-- \Add11~61\ = CARRY((\Add12~60_combout\) # (!\Add11~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~60_combout\,
	datad => VCC,
	cin => \Add11~59\,
	combout => \Add11~60_combout\,
	cout => \Add11~61\);

-- Location: LCCOMB_X16_Y8_N30
\Add11~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~62_combout\ = \Add12~62_combout\ $ (!\Add11~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~62_combout\,
	cin => \Add11~61\,
	combout => \Add11~62_combout\);

-- Location: LCCOMB_X21_Y8_N6
\Equal25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~17_combout\ = (byte_index(30) & (\Add11~60_combout\ & (byte_index(31) $ (!\Add11~62_combout\)))) # (!byte_index(30) & (!\Add11~60_combout\ & (byte_index(31) $ (!\Add11~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(31),
	datac => \Add11~60_combout\,
	datad => \Add11~62_combout\,
	combout => \Equal25~17_combout\);

-- Location: LCCOMB_X21_Y8_N28
\Equal25~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~18_combout\ = (\Equal25~14_combout\ & (\Equal25~15_combout\ & (\Equal25~16_combout\ & \Equal25~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~14_combout\,
	datab => \Equal25~15_combout\,
	datac => \Equal25~16_combout\,
	datad => \Equal25~17_combout\,
	combout => \Equal25~18_combout\);

-- Location: LCCOMB_X21_Y8_N18
\Equal25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~19_combout\ = (\Equal25~3_combout\ & (\Equal25~13_combout\ & (\Equal25~8_combout\ & \Equal25~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~3_combout\,
	datab => \Equal25~13_combout\,
	datac => \Equal25~8_combout\,
	datad => \Equal25~18_combout\,
	combout => \Equal25~19_combout\);

-- Location: LCCOMB_X22_Y8_N20
\Selector79~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~27_combout\ = (\Selector79~26_combout\) # ((\s_out_endofpacket~0_combout\ & (\Selector79~24_combout\ & !\Equal25~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_out_endofpacket~0_combout\,
	datab => \Selector79~24_combout\,
	datac => \Selector79~26_combout\,
	datad => \Equal25~19_combout\,
	combout => \Selector79~27_combout\);

-- Location: FF_X22_Y8_N21
\s_state.CRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector79~27_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.CRC~q\);

-- Location: LCCOMB_X18_Y8_N24
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\Equal27~19_combout\ & (\s_state.CRC~q\ & (\Equal27~13_combout\ & \Equal27~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~19_combout\,
	datab => \s_state.CRC~q\,
	datac => \Equal27~13_combout\,
	datad => \Equal27~18_combout\,
	combout => \Selector74~0_combout\);

-- Location: LCCOMB_X18_Y8_N14
\Selector74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = (\Equal27~0_combout\ & (\Equal27~1_combout\ & (\Equal27~2_combout\ & \Selector74~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~0_combout\,
	datab => \Equal27~1_combout\,
	datac => \Equal27~2_combout\,
	datad => \Selector74~0_combout\,
	combout => \Selector74~1_combout\);

-- Location: LCCOMB_X18_Y7_N4
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (byte_index(2) & (\Equal0~8_combout\ & (!byte_index(1) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => \Equal0~8_combout\,
	datac => byte_index(1),
	datad => \Equal0~9_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X22_Y7_N28
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ((\in_data[3]~input_o\) # (!\in_data[0]~input_o\)) # (!\in_data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \in_data[3]~input_o\,
	datad => \in_data[0]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X18_Y7_N22
\s_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~18_combout\ = (!\Equal5~0_combout\ & (((\Equal6~0_combout\) # (\in_data[7]~input_o\)) # (!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \in_data[7]~input_o\,
	datad => \Equal5~0_combout\,
	combout => \s_state~18_combout\);

-- Location: LCCOMB_X18_Y7_N20
\s_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~23_combout\ = (\Equal5~0_combout\ & (((!\Equal2~0_combout\) # (!byte_index(4))) # (!byte_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \Equal5~0_combout\,
	datac => byte_index(4),
	datad => \Equal2~0_combout\,
	combout => \s_state~23_combout\);

-- Location: LCCOMB_X19_Y7_N24
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (byte_index(2) & byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(2),
	datad => byte_index(1),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X19_Y7_N8
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (byte_index(4) & (!byte_index(0) & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(4),
	datac => byte_index(0),
	datad => \Equal2~0_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X19_Y7_N16
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (byte_index(4) & \Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(4),
	datad => \Equal0~9_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X19_Y7_N30
\s_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~21_combout\ = (((byte_index(2) & byte_index(0))) # (!\Equal7~1_combout\)) # (!byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(2),
	datac => byte_index(0),
	datad => \Equal7~1_combout\,
	combout => \s_state~21_combout\);

-- Location: LCCOMB_X19_Y7_N18
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (byte_index(4) & (byte_index(0) & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(4),
	datac => byte_index(0),
	datad => \Equal0~9_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X19_Y7_N14
\s_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~22_combout\ = (!\Equal10~0_combout\ & (\s_state~21_combout\ & ((!\Equal7~0_combout\) # (!\Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \s_state~21_combout\,
	datad => \Equal7~0_combout\,
	combout => \s_state~22_combout\);

-- Location: LCCOMB_X17_Y7_N8
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!byte_index(3) & (!byte_index(0) & (!byte_index(6) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(0),
	datac => byte_index(6),
	datad => \Equal0~7_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X18_Y7_N28
\Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (!byte_index(2) & (!byte_index(4) & (!byte_index(1) & byte_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(4),
	datac => byte_index(1),
	datad => byte_index(5),
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X14_Y7_N26
\s_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~19_combout\ = (ip_header_length(2) & (ip_header_length(4) & (!ip_header_length(3) & !ip_header_length(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datab => ip_header_length(4),
	datac => ip_header_length(3),
	datad => ip_header_length(5),
	combout => \s_state~19_combout\);

-- Location: LCCOMB_X18_Y7_N24
\s_state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~26_combout\ = (!byte_index(0) & (!byte_index(1) & \Equal17~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal17~2_combout\,
	combout => \s_state~26_combout\);

-- Location: LCCOMB_X18_Y7_N26
\s_state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~27_combout\ = (\Equal14~0_combout\ & ((\Equal14~1_combout\ & (\s_state~19_combout\)) # (!\Equal14~1_combout\ & ((\s_state~26_combout\))))) # (!\Equal14~0_combout\ & (((\s_state~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \Equal14~1_combout\,
	datac => \s_state~19_combout\,
	datad => \s_state~26_combout\,
	combout => \s_state~27_combout\);

-- Location: LCCOMB_X18_Y7_N2
\s_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~20_combout\ = (\s_state~27_combout\ & ((byte_index(2)) # ((byte_index(1)) # (!\Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(1),
	datac => \s_state~27_combout\,
	datad => \Equal7~0_combout\,
	combout => \s_state~20_combout\);

-- Location: LCCOMB_X18_Y7_N10
\s_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~24_combout\ = (\s_state~18_combout\) # ((\s_state~23_combout\ & (\s_state~22_combout\ & \s_state~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~18_combout\,
	datab => \s_state~23_combout\,
	datac => \s_state~22_combout\,
	datad => \s_state~20_combout\,
	combout => \s_state~24_combout\);

-- Location: LCCOMB_X18_Y7_N14
\Selector79~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~2_combout\ = (\s_state.IP_HEADER~q\ & (!\Equal4~0_combout\ & (!\s_state.CRC~q\ & \s_state~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => \Equal4~0_combout\,
	datac => \s_state.CRC~q\,
	datad => \s_state~24_combout\,
	combout => \Selector79~2_combout\);

-- Location: LCCOMB_X21_Y8_N10
\Selector79~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~3_combout\ = (\Selector79~1_combout\) # ((!\s_state.ETHERNET_HEADER~q\ & ((\Selector74~1_combout\) # (\Selector79~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \Selector79~1_combout\,
	datac => \Selector74~1_combout\,
	datad => \Selector79~2_combout\,
	combout => \Selector79~3_combout\);

-- Location: LCCOMB_X21_Y8_N16
\Selector79~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~25_combout\ = (\s_state.DATA~q\ & (!\Equal24~3_combout\ & (\Selector79~24_combout\ & !\Equal25~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datab => \Equal24~3_combout\,
	datac => \Selector79~24_combout\,
	datad => \Equal25~19_combout\,
	combout => \Selector79~25_combout\);

-- Location: LCCOMB_X21_Y8_N0
\Selector75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~1_combout\ = (!\Selector79~25_combout\ & ((\Selector79~3_combout\ & (\Selector75~0_combout\)) # (!\Selector79~3_combout\ & ((\s_state.ETHERNET_HEADER~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector75~0_combout\,
	datab => \Selector79~3_combout\,
	datac => \s_state.ETHERNET_HEADER~q\,
	datad => \Selector79~25_combout\,
	combout => \Selector75~1_combout\);

-- Location: FF_X21_Y8_N1
\s_state.ETHERNET_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector75~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.ETHERNET_HEADER~q\);

-- Location: LCCOMB_X18_Y8_N18
\s_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~16_combout\ = (\Equal0~10_combout\ & ((!\in_data[3]~input_o\) # (!\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~1_combout\,
	datac => \in_data[3]~input_o\,
	datad => \Equal0~10_combout\,
	combout => \s_state~16_combout\);

-- Location: LCCOMB_X18_Y8_N12
\s_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~17_combout\ = (!byte_index(4) & (!byte_index(0) & (\Equal2~0_combout\ & !\Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(0),
	datac => \Equal2~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \s_state~17_combout\);

-- Location: LCCOMB_X19_Y8_N14
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\s_state.ETHERNET_HEADER~q\ & ((\s_state~16_combout\) # (\s_state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \s_state~16_combout\,
	datad => \s_state~17_combout\,
	combout => \Selector76~0_combout\);

-- Location: LCCOMB_X19_Y8_N10
\Selector74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~2_combout\ = ((\Selector74~1_combout\) # ((\Selector76~0_combout\ & !\Selector76~1_combout\))) # (!\byte_index[15]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_index[15]~52_combout\,
	datab => \Selector76~0_combout\,
	datac => \Selector76~1_combout\,
	datad => \Selector74~1_combout\,
	combout => \Selector74~2_combout\);

-- Location: LCCOMB_X18_Y7_N8
\s_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state~25_combout\ = (!\Equal4~0_combout\ & \s_state~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~0_combout\,
	datad => \s_state~24_combout\,
	combout => \s_state~25_combout\);

-- Location: LCCOMB_X19_Y8_N28
\Selector74~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~3_combout\ = (!\Selector74~2_combout\ & ((\Equal5~0_combout\) # ((!\s_state~25_combout\) # (!\s_state.IP_HEADER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \Selector74~2_combout\,
	datad => \s_state~25_combout\,
	combout => \Selector74~3_combout\);

-- Location: FF_X19_Y8_N29
\s_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector74~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IDLE~q\);

-- Location: LCCOMB_X19_Y8_N24
\byte_index[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~52_combout\ = (\in_startofpacket~input_o\) # (\s_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_startofpacket~input_o\,
	datab => \s_state.IDLE~q\,
	combout => \byte_index[15]~52_combout\);

-- Location: FF_X18_Y10_N13
\byte_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[6]~46_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(6));

-- Location: LCCOMB_X17_Y7_N20
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (byte_index(3) & (!byte_index(5) & (!byte_index(6) & \Equal0~7_combout\)))

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
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X17_Y7_N22
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (!byte_index(2) & (byte_index(1) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => byte_index(2),
	datac => byte_index(1),
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X18_Y8_N16
\Selector76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~1_combout\ = (\Equal3~1_combout\ & (!\in_data[3]~input_o\ & !\Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~1_combout\,
	datac => \in_data[3]~input_o\,
	datad => \Equal0~10_combout\,
	combout => \Selector76~1_combout\);

-- Location: LCCOMB_X19_Y8_N16
\Selector76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~2_combout\ = (\Selector76~1_combout\ & ((\Selector76~0_combout\) # ((\s_state.IP_HEADER~q\ & !\s_state~25_combout\)))) # (!\Selector76~1_combout\ & (((\s_state.IP_HEADER~q\ & !\s_state~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector76~1_combout\,
	datab => \Selector76~0_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \s_state~25_combout\,
	combout => \Selector76~2_combout\);

-- Location: FF_X19_Y8_N17
\s_state.IP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector76~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IP_HEADER~q\);

-- Location: LCCOMB_X18_Y8_N10
\byte_index[15]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~101_combout\ = (\Equal3~1_combout\ & ((\in_data[3]~input_o\ & ((\s_state~17_combout\))) # (!\in_data[3]~input_o\ & (\Equal0~10_combout\)))) # (!\Equal3~1_combout\ & ((\Equal0~10_combout\) # ((\s_state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal3~1_combout\,
	datac => \in_data[3]~input_o\,
	datad => \s_state~17_combout\,
	combout => \byte_index[15]~101_combout\);

-- Location: LCCOMB_X19_Y8_N4
\byte_index[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~50_combout\ = (\s_state.IDLE~q\ & (((\s_state.CRC~q\) # (!\byte_index[15]~101_combout\)) # (!\s_state.ETHERNET_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \s_state.IDLE~q\,
	datac => \s_state.CRC~q\,
	datad => \byte_index[15]~101_combout\,
	combout => \byte_index[15]~50_combout\);

-- Location: LCCOMB_X19_Y8_N12
\byte_index[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~51_combout\ = ((\Selector74~1_combout\) # ((\s_state.IP_HEADER~q\ & \s_state~18_combout\))) # (!\byte_index[15]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => \byte_index[15]~50_combout\,
	datac => \s_state~18_combout\,
	datad => \Selector74~1_combout\,
	combout => \byte_index[15]~51_combout\);

-- Location: FF_X19_Y8_N23
\byte_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[0]~34_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	sload => VCC,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(0));

-- Location: LCCOMB_X18_Y10_N2
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

-- Location: FF_X18_Y10_N3
\byte_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[1]~36_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(1));

-- Location: LCCOMB_X18_Y10_N4
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

-- Location: FF_X18_Y10_N5
\byte_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[2]~38_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(2));

-- Location: LCCOMB_X18_Y10_N6
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

-- Location: FF_X18_Y10_N7
\byte_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[3]~40_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(3));

-- Location: LCCOMB_X18_Y10_N8
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

-- Location: FF_X18_Y10_N9
\byte_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[4]~42_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(4));

-- Location: FF_X18_Y10_N11
\byte_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[5]~44_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[15]~51_combout\,
	ena => \byte_index[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(5));

-- Location: LCCOMB_X18_Y7_N0
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (byte_index(5)) # (((!\Equal14~0_combout\) # (!byte_index(4))) # (!\Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => \Equal13~0_combout\,
	datac => byte_index(4),
	datad => \Equal14~0_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X14_Y7_N28
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (ip_header_length(5) & ((ip_header_length(3) & (!ip_header_length(4) & ip_header_length(2))) # (!ip_header_length(3) & (ip_header_length(4) & !ip_header_length(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(4),
	datac => ip_header_length(2),
	datad => ip_header_length(5),
	combout => \Add9~0_combout\);

-- Location: LCCOMB_X16_Y7_N10
\out_startofpacket~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_startofpacket~1_combout\ = (\Equal16~1_combout\ & (\Add9~0_combout\ & (byte_index(3) $ (!\Add8~1_combout\)))) # (!\Equal16~1_combout\ & (!\Add9~0_combout\ & (byte_index(3) $ (!\Add8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal16~1_combout\,
	datab => byte_index(3),
	datac => \Add9~0_combout\,
	datad => \Add8~1_combout\,
	combout => \out_startofpacket~1_combout\);

-- Location: LCCOMB_X16_Y7_N18
\out_startofpacket~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_startofpacket~0_combout\ = (\Add8~0_combout\ & ((byte_index(4) & (!\Equal16~0_combout\ & \Add8~1_combout\)) # (!byte_index(4) & (\Equal16~0_combout\ & !\Add8~1_combout\)))) # (!\Add8~0_combout\ & (!\Equal16~0_combout\ & (byte_index(4) $ 
-- (\Add8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => byte_index(4),
	datac => \Equal16~0_combout\,
	datad => \Add8~1_combout\,
	combout => \out_startofpacket~0_combout\);

-- Location: LCCOMB_X16_Y7_N4
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (byte_index(0) & !byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datac => byte_index(1),
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X16_Y7_N0
\out_startofpacket~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_startofpacket~2_combout\ = (\out_startofpacket~1_combout\ & (\out_startofpacket~0_combout\ & (\Equal17~0_combout\ & \Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_startofpacket~1_combout\,
	datab => \out_startofpacket~0_combout\,
	datac => \Equal17~0_combout\,
	datad => \Equal24~0_combout\,
	combout => \out_startofpacket~2_combout\);

-- Location: LCCOMB_X19_Y8_N22
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\s_state.UDP_HEADER~q\ & !\out_startofpacket~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.UDP_HEADER~q\,
	datad => \out_startofpacket~2_combout\,
	combout => \Selector77~0_combout\);

-- Location: LCCOMB_X19_Y8_N20
\Selector77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~1_combout\ = (\Selector77~0_combout\) # ((\Equal5~0_combout\ & (\s_state.IP_HEADER~q\ & \s_state~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \Selector77~0_combout\,
	datad => \s_state~25_combout\,
	combout => \Selector77~1_combout\);

-- Location: FF_X19_Y8_N21
\s_state.UDP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector77~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.UDP_HEADER~q\);

-- Location: LCCOMB_X19_Y8_N2
\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\s_state.UDP_HEADER~q\ & \out_startofpacket~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.UDP_HEADER~q\,
	datad => \out_startofpacket~2_combout\,
	combout => \Selector78~0_combout\);

-- Location: LCCOMB_X21_Y8_N20
\Selector78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~1_combout\ = (!\Selector79~25_combout\ & ((\Selector79~3_combout\ & (\Selector78~0_combout\)) # (!\Selector79~3_combout\ & ((\s_state.DATA~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector78~0_combout\,
	datab => \Selector79~3_combout\,
	datac => \s_state.DATA~q\,
	datad => \Selector79~25_combout\,
	combout => \Selector78~1_combout\);

-- Location: FF_X21_Y8_N21
\s_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector78~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.DATA~q\);

-- Location: LCCOMB_X10_Y2_N4
\out_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~0_combout\ = (\s_state.DATA~q\ & \in_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_state.DATA~q\,
	datad => \in_data[0]~input_o\,
	combout => \out_data~0_combout\);

-- Location: LCCOMB_X25_Y3_N8
\out_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~1_combout\ = (\s_state.DATA~q\ & \in_data[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datad => \in_data[1]~input_o\,
	combout => \out_data~1_combout\);

-- Location: LCCOMB_X22_Y5_N0
\out_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~2_combout\ = (\s_state.DATA~q\ & \in_data[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => \in_data[2]~input_o\,
	combout => \out_data~2_combout\);

-- Location: LCCOMB_X26_Y4_N16
\out_data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~3_combout\ = (\s_state.DATA~q\ & \in_data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_state.DATA~q\,
	datad => \in_data[3]~input_o\,
	combout => \out_data~3_combout\);

-- Location: LCCOMB_X25_Y3_N6
\out_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~4_combout\ = (\in_data[4]~input_o\ & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datad => \s_state.DATA~q\,
	combout => \out_data~4_combout\);

-- Location: LCCOMB_X22_Y5_N6
\out_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~5_combout\ = (\s_state.DATA~q\ & \in_data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => \in_data[5]~input_o\,
	combout => \out_data~5_combout\);

-- Location: LCCOMB_X22_Y5_N28
\out_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~6_combout\ = (\in_data[6]~input_o\ & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_data[6]~input_o\,
	datac => \s_state.DATA~q\,
	combout => \out_data~6_combout\);

-- Location: LCCOMB_X22_Y7_N0
\out_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data~7_combout\ = (\in_data[7]~input_o\ & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_data[7]~input_o\,
	datad => \s_state.DATA~q\,
	combout => \out_data~7_combout\);

-- Location: LCCOMB_X19_Y8_N26
\out_startofpacket~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_startofpacket~3_combout\ = (\out_startofpacket~reg0_q\ & (((!\reset_n~input_o\) # (!\Equal24~3_combout\)) # (!\s_state.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_startofpacket~reg0_q\,
	datab => \s_state.DATA~q\,
	datac => \Equal24~3_combout\,
	datad => \reset_n~input_o\,
	combout => \out_startofpacket~3_combout\);

-- Location: LCCOMB_X19_Y8_N30
\out_startofpacket~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_startofpacket~4_combout\ = (\out_startofpacket~3_combout\) # ((!\s_state.DATA~q\ & (\reset_n~input_o\ & \Selector78~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datab => \reset_n~input_o\,
	datac => \out_startofpacket~3_combout\,
	datad => \Selector78~0_combout\,
	combout => \out_startofpacket~4_combout\);

-- Location: FF_X19_Y8_N31
\out_startofpacket~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out_startofpacket~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_startofpacket~reg0_q\);

-- Location: LCCOMB_X21_Y8_N30
\s_out_endofpacket~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_endofpacket~1_combout\ = (\s_out_endofpacket~0_combout\ & ((\Equal25~19_combout\) # ((!\Selector79~24_combout\ & \s_out_endofpacket~q\)))) # (!\s_out_endofpacket~0_combout\ & (((\s_out_endofpacket~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector79~24_combout\,
	datab => \s_out_endofpacket~0_combout\,
	datac => \s_out_endofpacket~q\,
	datad => \Equal25~19_combout\,
	combout => \s_out_endofpacket~1_combout\);

-- Location: FF_X21_Y8_N31
s_out_endofpacket : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_out_endofpacket~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_out_endofpacket~q\);

-- Location: LCCOMB_X16_Y7_N30
\s_channel[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~16_combout\ = (\s_channel[0]~6_combout\ & (!byte_index(0) & (!byte_index(1) & \Equal20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel[0]~6_combout\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal20~3_combout\,
	combout => \s_channel[0]~16_combout\);

-- Location: FF_X22_Y7_N23
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
	ena => \s_channel[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(0));

-- Location: LCCOMB_X22_Y7_N22
\Selector135~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector135~0_combout\ = (\s_state.DATA~q\ & (s_channel(0) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(0),
	datad => \s_state.CRC~q\,
	combout => \Selector135~0_combout\);

-- Location: CLKCTRL_G5
\s_state.IDLE~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_state.IDLE~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_state.IDLE~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y7_N8
\channel[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[0]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector135~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[0]$latch~combout\,
	datac => \Selector135~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[0]$latch~combout\);

-- Location: FF_X22_Y4_N21
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
	ena => \s_channel[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(1));

-- Location: LCCOMB_X22_Y4_N20
\Selector134~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector134~0_combout\ = (\s_state.DATA~q\ & (s_channel(1) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(1),
	datad => \s_state.CRC~q\,
	combout => \Selector134~0_combout\);

-- Location: LCCOMB_X22_Y4_N0
\channel[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[1]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector134~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[1]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector134~0_combout\,
	combout => \channel[1]$latch~combout\);

-- Location: FF_X22_Y5_N5
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
	ena => \s_channel[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(2));

-- Location: LCCOMB_X22_Y5_N4
\Selector133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector133~0_combout\ = (\s_state.DATA~q\ & (s_channel(2) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(2),
	datad => \s_state.CRC~q\,
	combout => \Selector133~0_combout\);

-- Location: LCCOMB_X22_Y5_N12
\channel[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[2]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector133~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[2]$latch~combout\,
	datac => \Selector133~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[2]$latch~combout\);

-- Location: FF_X22_Y5_N27
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
	ena => \s_channel[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(3));

-- Location: LCCOMB_X22_Y5_N26
\Selector132~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector132~0_combout\ = (\s_state.DATA~q\ & (s_channel(3) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(3),
	datad => \s_state.CRC~q\,
	combout => \Selector132~0_combout\);

-- Location: LCCOMB_X22_Y5_N10
\channel[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[3]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector132~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[3]$latch~combout\,
	datac => \Selector132~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[3]$latch~combout\);

-- Location: FF_X22_Y5_N25
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
	ena => \s_channel[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(4));

-- Location: LCCOMB_X22_Y5_N24
\Selector131~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector131~0_combout\ = (\s_state.DATA~q\ & (s_channel(4) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(4),
	datad => \s_state.CRC~q\,
	combout => \Selector131~0_combout\);

-- Location: LCCOMB_X22_Y5_N16
\channel[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[4]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector131~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[4]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector131~0_combout\,
	combout => \channel[4]$latch~combout\);

-- Location: FF_X22_Y5_N23
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
	ena => \s_channel[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(5));

-- Location: LCCOMB_X22_Y5_N22
\Selector130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector130~0_combout\ = (\s_state.DATA~q\ & (s_channel(5) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(5),
	datad => \s_state.CRC~q\,
	combout => \Selector130~0_combout\);

-- Location: LCCOMB_X22_Y5_N2
\channel[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[5]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector130~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[5]$latch~combout\,
	datac => \Selector130~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[5]$latch~combout\);

-- Location: FF_X22_Y5_N9
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
	ena => \s_channel[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(6));

-- Location: LCCOMB_X22_Y5_N8
\Selector129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\s_state.DATA~q\ & (s_channel(6) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(6),
	datad => \s_state.CRC~q\,
	combout => \Selector129~0_combout\);

-- Location: LCCOMB_X22_Y5_N20
\channel[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[6]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector129~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[6]$latch~combout\,
	datac => \Selector129~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[6]$latch~combout\);

-- Location: FF_X22_Y7_N5
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
	ena => \s_channel[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(7));

-- Location: LCCOMB_X22_Y7_N4
\Selector128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (\s_state.DATA~q\ & (s_channel(7) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(7),
	datad => \s_state.CRC~q\,
	combout => \Selector128~0_combout\);

-- Location: LCCOMB_X22_Y7_N14
\channel[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[7]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector128~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[7]$latch~combout\,
	datac => \Selector128~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[7]$latch~combout\);

-- Location: LCCOMB_X18_Y7_N30
\s_channel[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[8]~7_combout\ = (\s_state.UDP_HEADER~q\ & (byte_index(0) & (byte_index(1) & \Equal17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.UDP_HEADER~q\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal17~2_combout\,
	combout => \s_channel[8]~7_combout\);

-- Location: FF_X22_Y6_N17
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

-- Location: LCCOMB_X22_Y6_N16
\Selector127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (\s_state.DATA~q\ & (s_channel(8) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(8),
	datad => \s_state.CRC~q\,
	combout => \Selector127~0_combout\);

-- Location: LCCOMB_X22_Y6_N0
\channel[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[8]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector127~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[8]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector127~0_combout\,
	combout => \channel[8]$latch~combout\);

-- Location: FF_X22_Y6_N27
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

-- Location: LCCOMB_X22_Y6_N26
\Selector126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (\s_state.DATA~q\ & (s_channel(9) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(9),
	datad => \s_state.CRC~q\,
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X22_Y6_N18
\channel[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[9]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector126~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[9]$latch~combout\,
	datac => \Selector126~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[9]$latch~combout\);

-- Location: FF_X25_Y8_N5
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

-- Location: LCCOMB_X25_Y8_N4
\Selector125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (!\s_state.CRC~q\ & (s_channel(10) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(10),
	datad => \s_state.DATA~q\,
	combout => \Selector125~0_combout\);

-- Location: LCCOMB_X25_Y8_N20
\channel[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[10]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector125~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[10]$latch~combout\,
	datac => \Selector125~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[10]$latch~combout\);

-- Location: FF_X25_Y8_N31
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

-- Location: LCCOMB_X25_Y8_N30
\Selector124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (!\s_state.CRC~q\ & (s_channel(11) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(11),
	datad => \s_state.DATA~q\,
	combout => \Selector124~0_combout\);

-- Location: LCCOMB_X25_Y8_N26
\channel[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[11]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector124~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[11]$latch~combout\,
	datac => \Selector124~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[11]$latch~combout\);

-- Location: FF_X25_Y8_N13
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

-- Location: LCCOMB_X25_Y8_N12
\Selector123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (!\s_state.CRC~q\ & (s_channel(12) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(12),
	datad => \s_state.DATA~q\,
	combout => \Selector123~0_combout\);

-- Location: LCCOMB_X25_Y8_N28
\channel[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[12]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector123~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[12]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector123~0_combout\,
	combout => \channel[12]$latch~combout\);

-- Location: FF_X25_Y8_N23
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

-- Location: LCCOMB_X25_Y8_N22
\Selector122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (!\s_state.CRC~q\ & (s_channel(13) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(13),
	datad => \s_state.DATA~q\,
	combout => \Selector122~0_combout\);

-- Location: LCCOMB_X25_Y8_N6
\channel[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[13]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector122~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[13]$latch~combout\,
	datac => \Selector122~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[13]$latch~combout\);

-- Location: FF_X25_Y8_N9
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

-- Location: LCCOMB_X25_Y8_N8
\Selector121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (!\s_state.CRC~q\ & (s_channel(14) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(14),
	datad => \s_state.DATA~q\,
	combout => \Selector121~0_combout\);

-- Location: LCCOMB_X25_Y8_N16
\channel[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[14]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector121~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[14]$latch~combout\,
	datac => \Selector121~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[14]$latch~combout\);

-- Location: FF_X25_Y8_N3
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

-- Location: LCCOMB_X25_Y8_N2
\Selector120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (!\s_state.CRC~q\ & (s_channel(15) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(15),
	datad => \s_state.DATA~q\,
	combout => \Selector120~0_combout\);

-- Location: LCCOMB_X25_Y8_N10
\channel[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[15]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector120~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[15]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector120~0_combout\,
	combout => \channel[15]$latch~combout\);

-- Location: LCCOMB_X16_Y7_N2
\s_channel[16]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[16]~8_combout\ = (\s_state.UDP_HEADER~q\ & (!\Equal17~0_combout\ & (\Equal8~0_combout\ & \Equal17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.UDP_HEADER~q\,
	datab => \Equal17~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \Equal17~2_combout\,
	combout => \s_channel[16]~8_combout\);

-- Location: FF_X24_Y8_N13
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
	ena => \s_channel[16]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(16));

-- Location: LCCOMB_X24_Y8_N12
\Selector119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (\s_state.DATA~q\ & (s_channel(16) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(16),
	datad => \s_state.CRC~q\,
	combout => \Selector119~0_combout\);

-- Location: LCCOMB_X24_Y8_N16
\channel[16]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[16]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector119~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[16]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[16]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector119~0_combout\,
	combout => \channel[16]$latch~combout\);

-- Location: FF_X24_Y8_N15
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
	ena => \s_channel[16]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(17));

-- Location: LCCOMB_X24_Y8_N14
\Selector118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\s_state.DATA~q\ & (s_channel(17) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(17),
	datad => \s_state.CRC~q\,
	combout => \Selector118~0_combout\);

-- Location: LCCOMB_X24_Y8_N18
\channel[17]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[17]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector118~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[17]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[17]$latch~combout\,
	datac => \Selector118~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[17]$latch~combout\);

-- Location: FF_X21_Y5_N9
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
	ena => \s_channel[16]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(18));

-- Location: LCCOMB_X21_Y5_N8
\Selector116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector116~0_combout\ = (!\s_state.CRC~q\ & (s_channel(18) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(18),
	datad => \s_state.DATA~q\,
	combout => \Selector116~0_combout\);

-- Location: LCCOMB_X21_Y5_N24
\channel[18]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[18]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector116~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[18]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[18]$latch~combout\,
	datac => \Selector116~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[18]$latch~combout\);

-- Location: FF_X21_Y5_N15
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
	ena => \s_channel[16]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(19));

-- Location: LCCOMB_X21_Y5_N14
\Selector115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (!\s_state.CRC~q\ & (s_channel(19) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(19),
	datad => \s_state.DATA~q\,
	combout => \Selector115~0_combout\);

-- Location: LCCOMB_X21_Y5_N6
\channel[19]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[19]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector115~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[19]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[19]$latch~combout\,
	datac => \Selector115~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[19]$latch~combout\);

-- Location: FF_X21_Y5_N5
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
	ena => \s_channel[16]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(20));

-- Location: LCCOMB_X21_Y5_N4
\Selector114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (!\s_state.CRC~q\ & (s_channel(20) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(20),
	datad => \s_state.DATA~q\,
	combout => \Selector114~0_combout\);

-- Location: LCCOMB_X21_Y5_N0
\channel[20]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[20]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector114~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[20]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[20]$latch~combout\,
	datac => \Selector114~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[20]$latch~combout\);

-- Location: FF_X21_Y5_N31
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
	ena => \s_channel[16]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(21));

-- Location: LCCOMB_X21_Y5_N30
\Selector113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (!\s_state.CRC~q\ & (s_channel(21) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(21),
	datad => \s_state.DATA~q\,
	combout => \Selector113~0_combout\);

-- Location: LCCOMB_X21_Y5_N2
\channel[21]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[21]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector113~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[21]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[21]$latch~combout\,
	datac => \Selector113~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[21]$latch~combout\);

-- Location: FF_X21_Y5_N17
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
	ena => \s_channel[16]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(22));

-- Location: LCCOMB_X21_Y5_N16
\Selector112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\s_state.DATA~q\ & (s_channel(22) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(22),
	datad => \s_state.CRC~q\,
	combout => \Selector112~0_combout\);

-- Location: LCCOMB_X21_Y5_N28
\channel[22]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[22]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector112~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[22]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[22]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector112~0_combout\,
	combout => \channel[22]$latch~combout\);

-- Location: FF_X21_Y5_N23
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
	ena => \s_channel[16]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(23));

-- Location: LCCOMB_X21_Y5_N22
\Selector111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (!\s_state.CRC~q\ & (s_channel(23) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(23),
	datad => \s_state.DATA~q\,
	combout => \Selector111~0_combout\);

-- Location: LCCOMB_X21_Y5_N18
\channel[23]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[23]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector111~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[23]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[23]$latch~combout\,
	datac => \Selector111~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[23]$latch~combout\);

-- Location: LCCOMB_X19_Y8_N6
\s_channel[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[24]~17_combout\ = (!byte_index(1) & (byte_index(0) & (\Equal17~2_combout\ & \s_state.UDP_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(0),
	datac => \Equal17~2_combout\,
	datad => \s_state.UDP_HEADER~q\,
	combout => \s_channel[24]~17_combout\);

-- Location: FF_X23_Y8_N17
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
	ena => \s_channel[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(24));

-- Location: LCCOMB_X23_Y8_N16
\Selector110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (!\s_state.CRC~q\ & (s_channel(24) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(24),
	datad => \s_state.DATA~q\,
	combout => \Selector110~0_combout\);

-- Location: LCCOMB_X23_Y8_N0
\channel[24]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[24]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\Selector110~0_combout\)) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\channel[24]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector110~0_combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \channel[24]$latch~combout\,
	combout => \channel[24]$latch~combout\);

-- Location: FF_X23_Y8_N23
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
	ena => \s_channel[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(25));

-- Location: LCCOMB_X23_Y8_N22
\Selector109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (!\s_state.CRC~q\ & (s_channel(25) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(25),
	datad => \s_state.DATA~q\,
	combout => \Selector109~0_combout\);

-- Location: LCCOMB_X23_Y8_N18
\channel[25]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[25]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector109~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[25]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[25]$latch~combout\,
	datac => \Selector109~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[25]$latch~combout\);

-- Location: FF_X23_Y8_N29
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
	ena => \s_channel[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(26));

-- Location: LCCOMB_X23_Y8_N28
\Selector108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (!\s_state.CRC~q\ & (s_channel(26) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(26),
	datad => \s_state.DATA~q\,
	combout => \Selector108~0_combout\);

-- Location: LCCOMB_X23_Y8_N24
\channel[26]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[26]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\Selector108~0_combout\)) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\channel[26]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector108~0_combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \channel[26]$latch~combout\,
	combout => \channel[26]$latch~combout\);

-- Location: FF_X23_Y8_N27
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
	ena => \s_channel[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(27));

-- Location: LCCOMB_X23_Y8_N26
\Selector107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (!\s_state.CRC~q\ & (s_channel(27) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(27),
	datad => \s_state.DATA~q\,
	combout => \Selector107~0_combout\);

-- Location: LCCOMB_X23_Y8_N6
\channel[27]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[27]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector107~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[27]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[27]$latch~combout\,
	datac => \Selector107~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[27]$latch~combout\);

-- Location: FF_X23_Y8_N5
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
	ena => \s_channel[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(28));

-- Location: LCCOMB_X23_Y8_N4
\Selector106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (!\s_state.CRC~q\ & (s_channel(28) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(28),
	datad => \s_state.DATA~q\,
	combout => \Selector106~0_combout\);

-- Location: LCCOMB_X23_Y8_N20
\channel[28]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[28]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector106~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[28]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[28]$latch~combout\,
	datac => \Selector106~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[28]$latch~combout\);

-- Location: FF_X23_Y8_N31
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
	ena => \s_channel[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(29));

-- Location: LCCOMB_X23_Y8_N30
\Selector105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (!\s_state.CRC~q\ & (s_channel(29) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(29),
	datad => \s_state.DATA~q\,
	combout => \Selector105~0_combout\);

-- Location: LCCOMB_X23_Y8_N10
\channel[29]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[29]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector105~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[29]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[29]$latch~combout\,
	datac => \Selector105~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[29]$latch~combout\);

-- Location: FF_X23_Y8_N9
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
	ena => \s_channel[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(30));

-- Location: LCCOMB_X23_Y8_N8
\Selector104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (!\s_state.CRC~q\ & (s_channel(30) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(30),
	datad => \s_state.DATA~q\,
	combout => \Selector104~0_combout\);

-- Location: LCCOMB_X23_Y8_N12
\channel[30]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[30]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector104~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[30]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[30]$latch~combout\,
	datac => \Selector104~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[30]$latch~combout\);

-- Location: FF_X23_Y8_N15
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
	ena => \s_channel[24]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(31));

-- Location: LCCOMB_X23_Y8_N14
\Selector103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (!\s_state.CRC~q\ & (s_channel(31) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(31),
	datad => \s_state.DATA~q\,
	combout => \Selector103~0_combout\);

-- Location: LCCOMB_X23_Y8_N2
\channel[31]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[31]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector103~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[31]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[31]$latch~combout\,
	datac => \Selector103~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[31]$latch~combout\);

-- Location: LCCOMB_X18_Y7_N12
\s_channel[32]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[32]~9_combout\ = (\s_state.IP_HEADER~q\ & (\Equal14~1_combout\ & \Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => \Equal14~1_combout\,
	datad => \Equal14~0_combout\,
	combout => \s_channel[32]~9_combout\);

-- Location: FF_X21_Y6_N29
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
	ena => \s_channel[32]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(32));

-- Location: LCCOMB_X21_Y6_N28
\Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (!\s_state.CRC~q\ & (s_channel(32) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(32),
	datad => \s_state.DATA~q\,
	combout => \Selector102~0_combout\);

-- Location: LCCOMB_X21_Y6_N0
\channel[32]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[32]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector102~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[32]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[32]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector102~0_combout\,
	combout => \channel[32]$latch~combout\);

-- Location: FF_X21_Y6_N15
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
	ena => \s_channel[32]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(33));

-- Location: LCCOMB_X21_Y6_N14
\Selector101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\s_state.DATA~q\ & (s_channel(33) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(33),
	datad => \s_state.CRC~q\,
	combout => \Selector101~0_combout\);

-- Location: LCCOMB_X21_Y6_N10
\channel[33]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[33]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector101~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[33]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[33]$latch~combout\,
	datac => \Selector101~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[33]$latch~combout\);

-- Location: FF_X21_Y6_N13
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
	ena => \s_channel[32]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(34));

-- Location: LCCOMB_X21_Y6_N12
\Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (!\s_state.CRC~q\ & (s_channel(34) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(34),
	datad => \s_state.DATA~q\,
	combout => \Selector100~0_combout\);

-- Location: LCCOMB_X21_Y6_N24
\channel[34]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[34]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector100~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[34]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[34]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector100~0_combout\,
	combout => \channel[34]$latch~combout\);

-- Location: FF_X21_Y6_N3
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
	ena => \s_channel[32]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(35));

-- Location: LCCOMB_X21_Y6_N2
\Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (!\s_state.CRC~q\ & (s_channel(35) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(35),
	datad => \s_state.DATA~q\,
	combout => \Selector99~0_combout\);

-- Location: LCCOMB_X21_Y6_N18
\channel[35]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[35]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector99~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[35]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[35]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector99~0_combout\,
	combout => \channel[35]$latch~combout\);

-- Location: FF_X21_Y6_N9
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
	ena => \s_channel[32]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(36));

-- Location: LCCOMB_X21_Y6_N8
\Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\s_state.DATA~q\ & (s_channel(36) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(36),
	datad => \s_state.CRC~q\,
	combout => \Selector98~0_combout\);

-- Location: LCCOMB_X21_Y6_N20
\channel[36]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[36]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector98~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[36]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[36]$latch~combout\,
	datac => \Selector98~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[36]$latch~combout\);

-- Location: FF_X21_Y6_N23
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
	ena => \s_channel[32]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(37));

-- Location: LCCOMB_X21_Y6_N22
\Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\s_state.DATA~q\ & (s_channel(37) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(37),
	datad => \s_state.CRC~q\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X21_Y6_N26
\channel[37]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[37]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector97~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[37]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[37]$latch~combout\,
	datac => \Selector97~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[37]$latch~combout\);

-- Location: FF_X21_Y6_N5
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
	ena => \s_channel[32]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(38));

-- Location: LCCOMB_X21_Y6_N4
\Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\s_state.DATA~q\ & (s_channel(38) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(38),
	datad => \s_state.CRC~q\,
	combout => \Selector96~0_combout\);

-- Location: LCCOMB_X21_Y6_N16
\channel[38]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[38]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector96~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[38]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[38]$latch~combout\,
	datac => \Selector96~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[38]$latch~combout\);

-- Location: FF_X21_Y6_N7
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
	ena => \s_channel[32]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(39));

-- Location: LCCOMB_X21_Y6_N6
\Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (!\s_state.CRC~q\ & (s_channel(39) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(39),
	datad => \s_state.DATA~q\,
	combout => \Selector95~0_combout\);

-- Location: LCCOMB_X21_Y6_N30
\channel[39]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[39]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector95~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[39]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[39]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector95~0_combout\,
	combout => \channel[39]$latch~combout\);

-- Location: LCCOMB_X19_Y7_N26
\s_channel[40]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[40]~18_combout\ = (byte_index(1) & (byte_index(2) & (\s_state.IP_HEADER~q\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(2),
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal7~0_combout\,
	combout => \s_channel[40]~18_combout\);

-- Location: FF_X21_Y7_N29
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
	ena => \s_channel[40]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(40));

-- Location: LCCOMB_X21_Y7_N28
\Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\s_state.DATA~q\ & (s_channel(40) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(40),
	datad => \s_state.CRC~q\,
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X21_Y7_N16
\channel[40]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[40]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector94~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[40]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[40]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector94~0_combout\,
	combout => \channel[40]$latch~combout\);

-- Location: FF_X21_Y7_N15
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
	ena => \s_channel[40]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(41));

-- Location: LCCOMB_X21_Y7_N14
\Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (!\s_state.CRC~q\ & (s_channel(41) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(41),
	datad => \s_state.DATA~q\,
	combout => \Selector93~0_combout\);

-- Location: LCCOMB_X21_Y7_N2
\channel[41]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[41]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector93~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[41]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[41]$latch~combout\,
	datac => \Selector93~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[41]$latch~combout\);

-- Location: FF_X21_Y7_N5
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
	ena => \s_channel[40]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(42));

-- Location: LCCOMB_X21_Y7_N4
\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (!\s_state.CRC~q\ & (s_channel(42) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(42),
	datad => \s_state.DATA~q\,
	combout => \Selector92~0_combout\);

-- Location: LCCOMB_X21_Y7_N0
\channel[42]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[42]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector92~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[42]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[42]$latch~combout\,
	datac => \Selector92~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[42]$latch~combout\);

-- Location: FF_X21_Y7_N31
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
	ena => \s_channel[40]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(43));

-- Location: LCCOMB_X21_Y7_N30
\Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (!\s_state.CRC~q\ & (s_channel(43) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(43),
	datad => \s_state.DATA~q\,
	combout => \Selector91~0_combout\);

-- Location: LCCOMB_X21_Y7_N18
\channel[43]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[43]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector91~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[43]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[43]$latch~combout\,
	datac => \Selector91~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[43]$latch~combout\);

-- Location: FF_X21_Y7_N9
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
	ena => \s_channel[40]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(44));

-- Location: LCCOMB_X21_Y7_N8
\Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (!\s_state.CRC~q\ & (s_channel(44) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(44),
	datad => \s_state.DATA~q\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X21_Y7_N20
\channel[44]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[44]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector90~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[44]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[44]$latch~combout\,
	datac => \Selector90~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[44]$latch~combout\);

-- Location: FF_X21_Y7_N27
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
	ena => \s_channel[40]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(45));

-- Location: LCCOMB_X21_Y7_N26
\Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (!\s_state.CRC~q\ & (s_channel(45) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(45),
	datad => \s_state.DATA~q\,
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X21_Y7_N6
\channel[45]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[45]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector89~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[45]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[45]$latch~combout\,
	datac => \Selector89~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[45]$latch~combout\);

-- Location: FF_X21_Y7_N25
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
	ena => \s_channel[40]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(46));

-- Location: LCCOMB_X21_Y7_N24
\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\s_state.DATA~q\ & (s_channel(46) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(46),
	datad => \s_state.CRC~q\,
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X21_Y7_N12
\channel[46]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[46]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector88~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[46]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[46]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector88~0_combout\,
	combout => \channel[46]$latch~combout\);

-- Location: FF_X21_Y7_N23
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
	ena => \s_channel[40]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(47));

-- Location: LCCOMB_X21_Y7_N22
\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (!\s_state.CRC~q\ & (s_channel(47) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(47),
	datad => \s_state.DATA~q\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X21_Y7_N10
\channel[47]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[47]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector87~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[47]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[47]$latch~combout\,
	datac => \Selector87~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[47]$latch~combout\);

-- Location: LCCOMB_X19_Y7_N10
\s_channel[48]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[48]~10_combout\ = (\Equal8~0_combout\ & (byte_index(2) & (\s_state.IP_HEADER~q\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => byte_index(2),
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal7~1_combout\,
	combout => \s_channel[48]~10_combout\);

-- Location: FF_X23_Y7_N25
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
	ena => \s_channel[48]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(48));

-- Location: LCCOMB_X23_Y7_N24
\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (!\s_state.CRC~q\ & (s_channel(48) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(48),
	datad => \s_state.DATA~q\,
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X23_Y7_N16
\channel[48]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[48]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector86~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[48]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[48]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector86~0_combout\,
	combout => \channel[48]$latch~combout\);

-- Location: FF_X23_Y7_N19
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
	ena => \s_channel[48]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(49));

-- Location: LCCOMB_X23_Y7_N18
\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (!\s_state.CRC~q\ & (s_channel(49) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(49),
	datad => \s_state.DATA~q\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X23_Y7_N30
\channel[49]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[49]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector85~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[49]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[49]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector85~0_combout\,
	combout => \channel[49]$latch~combout\);

-- Location: FF_X23_Y7_N1
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
	ena => \s_channel[48]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(50));

-- Location: LCCOMB_X23_Y7_N0
\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (!\s_state.CRC~q\ & (s_channel(50) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(50),
	datad => \s_state.DATA~q\,
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X23_Y7_N4
\channel[50]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[50]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector84~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[50]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[50]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector84~0_combout\,
	combout => \channel[50]$latch~combout\);

-- Location: FF_X23_Y7_N3
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
	ena => \s_channel[48]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(51));

-- Location: LCCOMB_X23_Y7_N2
\Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (!\s_state.CRC~q\ & (s_channel(51) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(51),
	datad => \s_state.DATA~q\,
	combout => \Selector83~0_combout\);

-- Location: LCCOMB_X23_Y7_N22
\channel[51]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[51]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector83~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[51]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[51]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector83~0_combout\,
	combout => \channel[51]$latch~combout\);

-- Location: FF_X23_Y7_N21
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
	ena => \s_channel[48]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(52));

-- Location: LCCOMB_X23_Y7_N20
\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (!\s_state.CRC~q\ & (s_channel(52) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(52),
	datad => \s_state.DATA~q\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X23_Y7_N8
\channel[52]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[52]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector82~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[52]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[52]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector82~0_combout\,
	combout => \channel[52]$latch~combout\);

-- Location: FF_X23_Y7_N7
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
	ena => \s_channel[48]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(53));

-- Location: LCCOMB_X23_Y7_N6
\Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (!\s_state.CRC~q\ & (s_channel(53) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(53),
	datad => \s_state.DATA~q\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X23_Y7_N26
\channel[53]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[53]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector81~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[53]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[53]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector81~0_combout\,
	combout => \channel[53]$latch~combout\);

-- Location: FF_X23_Y7_N13
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
	ena => \s_channel[48]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(54));

-- Location: LCCOMB_X23_Y7_N12
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (!\s_state.CRC~q\ & (s_channel(54) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(54),
	datad => \s_state.DATA~q\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X23_Y7_N28
\channel[54]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[54]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector80~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[54]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[54]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector80~0_combout\,
	combout => \channel[54]$latch~combout\);

-- Location: FF_X23_Y7_N11
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
	ena => \s_channel[48]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(55));

-- Location: LCCOMB_X23_Y7_N10
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (!\s_state.CRC~q\ & (s_channel(55) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(55),
	datad => \s_state.DATA~q\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X23_Y7_N14
\channel[55]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[55]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector41~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[55]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[55]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector41~0_combout\,
	combout => \channel[55]$latch~combout\);

-- Location: LCCOMB_X19_Y7_N4
\s_channel[56]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[56]~11_combout\ = (byte_index(0) & (byte_index(4) & (\s_state.IP_HEADER~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(4),
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal2~0_combout\,
	combout => \s_channel[56]~11_combout\);

-- Location: FF_X21_Y4_N29
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
	ena => \s_channel[56]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(56));

-- Location: LCCOMB_X21_Y4_N28
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (!\s_state.CRC~q\ & (s_channel(56) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(56),
	datad => \s_state.DATA~q\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X21_Y4_N20
\channel[56]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[56]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector40~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[56]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[56]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector40~0_combout\,
	combout => \channel[56]$latch~combout\);

-- Location: FF_X21_Y4_N27
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
	ena => \s_channel[56]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(57));

-- Location: LCCOMB_X21_Y4_N26
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\s_state.DATA~q\ & (s_channel(57) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(57),
	datad => \s_state.CRC~q\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X21_Y4_N10
\channel[57]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[57]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector39~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[57]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[57]$latch~combout\,
	datac => \Selector39~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[57]$latch~combout\);

-- Location: FF_X21_Y4_N13
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
	ena => \s_channel[56]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(58));

-- Location: LCCOMB_X21_Y4_N12
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (!\s_state.CRC~q\ & (s_channel(58) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(58),
	datad => \s_state.DATA~q\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X21_Y4_N8
\channel[58]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[58]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector38~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[58]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[58]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector38~0_combout\,
	combout => \channel[58]$latch~combout\);

-- Location: FF_X21_Y4_N19
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
	ena => \s_channel[56]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(59));

-- Location: LCCOMB_X21_Y4_N18
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (!\s_state.CRC~q\ & (s_channel(59) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(59),
	datad => \s_state.DATA~q\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X21_Y4_N14
\channel[59]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[59]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector37~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[59]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[59]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector37~0_combout\,
	combout => \channel[59]$latch~combout\);

-- Location: FF_X21_Y4_N1
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
	ena => \s_channel[56]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(60));

-- Location: LCCOMB_X21_Y4_N0
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (!\s_state.CRC~q\ & (s_channel(60) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(60),
	datad => \s_state.DATA~q\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X21_Y4_N24
\channel[60]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[60]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector36~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[60]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[60]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector36~0_combout\,
	combout => \channel[60]$latch~combout\);

-- Location: FF_X21_Y4_N7
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
	ena => \s_channel[56]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(61));

-- Location: LCCOMB_X21_Y4_N6
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (!\s_state.CRC~q\ & (s_channel(61) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(61),
	datad => \s_state.DATA~q\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X21_Y4_N22
\channel[61]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[61]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector35~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[61]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[61]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector35~0_combout\,
	combout => \channel[61]$latch~combout\);

-- Location: FF_X21_Y4_N17
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
	ena => \s_channel[56]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(62));

-- Location: LCCOMB_X21_Y4_N16
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (!\s_state.CRC~q\ & (s_channel(62) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(62),
	datad => \s_state.DATA~q\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X21_Y4_N4
\channel[62]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[62]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector34~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[62]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[62]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector34~0_combout\,
	combout => \channel[62]$latch~combout\);

-- Location: FF_X21_Y4_N3
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
	ena => \s_channel[56]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(63));

-- Location: LCCOMB_X21_Y4_N2
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!\s_state.CRC~q\ & (s_channel(63) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(63),
	datad => \s_state.DATA~q\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X21_Y4_N30
\channel[63]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[63]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector33~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[63]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[63]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector33~0_combout\,
	combout => \channel[63]$latch~combout\);

-- Location: LCCOMB_X19_Y7_N6
\s_channel[64]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[64]~12_combout\ = (!byte_index(0) & (byte_index(4) & (\s_state.IP_HEADER~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(4),
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal2~0_combout\,
	combout => \s_channel[64]~12_combout\);

-- Location: FF_X22_Y8_N23
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
	ena => \s_channel[64]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(64));

-- Location: LCCOMB_X22_Y8_N22
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (!\s_state.CRC~q\ & (s_channel(64) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(64),
	datad => \s_state.DATA~q\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X22_Y8_N24
\channel[64]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[64]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector32~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[64]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[64]$latch~combout\,
	datac => \Selector32~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[64]$latch~combout\);

-- Location: FF_X22_Y8_N13
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
	ena => \s_channel[64]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(65));

-- Location: LCCOMB_X22_Y8_N12
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (!\s_state.CRC~q\ & (s_channel(65) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(65),
	datad => \s_state.DATA~q\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X22_Y8_N2
\channel[65]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[65]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\Selector31~0_combout\)) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\channel[65]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datab => \channel[65]$latch~combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[65]$latch~combout\);

-- Location: FF_X22_Y8_N27
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
	ena => \s_channel[64]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(66));

-- Location: LCCOMB_X22_Y8_N26
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (!\s_state.CRC~q\ & (s_channel(66) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(66),
	datad => \s_state.DATA~q\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X22_Y8_N8
\channel[66]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[66]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector30~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[66]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[66]$latch~combout\,
	datac => \Selector30~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[66]$latch~combout\);

-- Location: FF_X22_Y8_N1
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
	ena => \s_channel[64]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(67));

-- Location: LCCOMB_X22_Y8_N0
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\s_state.CRC~q\ & (s_channel(67) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(67),
	datad => \s_state.DATA~q\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X22_Y8_N6
\channel[67]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[67]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector29~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[67]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[67]$latch~combout\,
	datac => \Selector29~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[67]$latch~combout\);

-- Location: FF_X22_Y8_N19
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
	ena => \s_channel[64]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(68));

-- Location: LCCOMB_X22_Y8_N18
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\s_state.CRC~q\ & (s_channel(68) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(68),
	datad => \s_state.DATA~q\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X22_Y8_N4
\channel[68]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[68]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\Selector28~0_combout\)) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\channel[68]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector28~0_combout\,
	datac => \channel[68]$latch~combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[68]$latch~combout\);

-- Location: FF_X22_Y8_N29
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
	ena => \s_channel[64]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(69));

-- Location: LCCOMB_X22_Y8_N28
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\s_state.CRC~q\ & (s_channel(69) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(69),
	datad => \s_state.DATA~q\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X22_Y8_N10
\channel[69]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[69]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector27~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[69]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[69]$latch~combout\,
	datab => \Selector27~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[69]$latch~combout\);

-- Location: FF_X22_Y8_N15
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
	ena => \s_channel[64]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(70));

-- Location: LCCOMB_X22_Y8_N14
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\s_state.CRC~q\ & (s_channel(70) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(70),
	datad => \s_state.DATA~q\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X23_Y4_N8
\channel[70]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[70]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector26~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[70]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[70]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector26~0_combout\,
	combout => \channel[70]$latch~combout\);

-- Location: FF_X22_Y7_N31
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
	ena => \s_channel[64]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(71));

-- Location: LCCOMB_X22_Y7_N30
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\s_state.DATA~q\ & (s_channel(71) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(71),
	datad => \s_state.CRC~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X22_Y7_N20
\channel[71]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[71]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector25~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[71]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[71]$latch~combout\,
	datac => \Selector25~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[71]$latch~combout\);

-- Location: LCCOMB_X19_Y7_N28
\s_channel[72]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[72]~13_combout\ = (byte_index(1) & (!byte_index(2) & (\s_state.IP_HEADER~q\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(2),
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal7~0_combout\,
	combout => \s_channel[72]~13_combout\);

-- Location: FF_X22_Y4_N11
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
	ena => \s_channel[72]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(72));

-- Location: LCCOMB_X22_Y4_N10
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\s_state.DATA~q\ & (s_channel(72) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(72),
	datad => \s_state.CRC~q\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X22_Y4_N2
\channel[72]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[72]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector24~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[72]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[72]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector24~0_combout\,
	combout => \channel[72]$latch~combout\);

-- Location: FF_X22_Y4_N17
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
	ena => \s_channel[72]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(73));

-- Location: LCCOMB_X22_Y4_N16
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\s_state.DATA~q\ & (s_channel(73) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(73),
	datad => \s_state.CRC~q\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X22_Y4_N24
\channel[73]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[73]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector23~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[73]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[73]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector23~0_combout\,
	combout => \channel[73]$latch~combout\);

-- Location: FF_X22_Y4_N31
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
	ena => \s_channel[72]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(74));

-- Location: LCCOMB_X22_Y4_N30
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\s_state.CRC~q\ & (s_channel(74) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(74),
	datad => \s_state.DATA~q\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X22_Y4_N22
\channel[74]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[74]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector22~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[74]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[74]$latch~combout\,
	datac => \Selector22~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[74]$latch~combout\);

-- Location: FF_X22_Y4_N13
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
	ena => \s_channel[72]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(75));

-- Location: LCCOMB_X22_Y4_N12
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\s_state.DATA~q\ & (s_channel(75) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(75),
	datad => \s_state.CRC~q\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X22_Y4_N4
\channel[75]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[75]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector21~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[75]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[75]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector21~0_combout\,
	combout => \channel[75]$latch~combout\);

-- Location: FF_X22_Y4_N15
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
	ena => \s_channel[72]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(76));

-- Location: LCCOMB_X22_Y4_N14
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\s_state.CRC~q\ & (s_channel(76) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datac => s_channel(76),
	datad => \s_state.DATA~q\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\channel[76]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[76]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector20~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[76]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[76]$latch~combout\,
	datac => \Selector20~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[76]$latch~combout\);

-- Location: FF_X22_Y4_N29
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
	ena => \s_channel[72]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(77));

-- Location: LCCOMB_X22_Y4_N28
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\s_state.DATA~q\ & (s_channel(77) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(77),
	datad => \s_state.CRC~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X22_Y4_N8
\channel[77]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[77]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector19~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[77]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[77]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector19~0_combout\,
	combout => \channel[77]$latch~combout\);

-- Location: FF_X22_Y4_N19
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
	ena => \s_channel[72]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(78));

-- Location: LCCOMB_X22_Y4_N18
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\s_state.DATA~q\ & (s_channel(78) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(78),
	datad => \s_state.CRC~q\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X22_Y4_N26
\channel[78]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[78]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector18~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[78]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[78]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector18~0_combout\,
	combout => \channel[78]$latch~combout\);

-- Location: FF_X22_Y5_N31
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
	ena => \s_channel[72]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(79));

-- Location: LCCOMB_X22_Y5_N30
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\s_state.DATA~q\ & (s_channel(79) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(79),
	datad => \s_state.CRC~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X22_Y5_N18
\channel[79]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[79]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector17~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[79]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[79]$latch~combout\,
	datac => \Selector17~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[79]$latch~combout\);

-- Location: LCCOMB_X19_Y7_N2
\s_channel[80]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[80]~14_combout\ = (\Equal8~0_combout\ & (!byte_index(2) & (\s_state.IP_HEADER~q\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => byte_index(2),
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal7~1_combout\,
	combout => \s_channel[80]~14_combout\);

-- Location: FF_X22_Y6_N13
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
	ena => \s_channel[80]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(80));

-- Location: LCCOMB_X22_Y6_N12
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\s_state.DATA~q\ & (s_channel(80) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(80),
	datad => \s_state.CRC~q\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X22_Y6_N28
\channel[80]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[80]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector16~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[80]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[80]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector16~0_combout\,
	combout => \channel[80]$latch~combout\);

-- Location: FF_X22_Y6_N15
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
	ena => \s_channel[80]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(81));

-- Location: LCCOMB_X22_Y6_N14
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\s_state.DATA~q\ & (s_channel(81) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(81),
	datad => \s_state.CRC~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X22_Y6_N10
\channel[81]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[81]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector15~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[81]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[81]$latch~combout\,
	datac => \Selector15~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[81]$latch~combout\);

-- Location: FF_X22_Y6_N5
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
	ena => \s_channel[80]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(82));

-- Location: LCCOMB_X22_Y6_N4
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\s_state.DATA~q\ & (s_channel(82) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(82),
	datad => \s_state.CRC~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X22_Y6_N20
\channel[82]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[82]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector14~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[82]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[82]$latch~combout\,
	datac => \Selector14~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[82]$latch~combout\);

-- Location: FF_X22_Y6_N31
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
	ena => \s_channel[80]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(83));

-- Location: LCCOMB_X22_Y6_N30
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\s_state.DATA~q\ & (s_channel(83) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(83),
	datad => \s_state.CRC~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X22_Y6_N6
\channel[83]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[83]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector13~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[83]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[83]$latch~combout\,
	datac => \Selector13~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[83]$latch~combout\);

-- Location: FF_X22_Y6_N9
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
	ena => \s_channel[80]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(84));

-- Location: LCCOMB_X22_Y6_N8
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\s_state.DATA~q\ & (s_channel(84) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(84),
	datad => \s_state.CRC~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X22_Y6_N24
\channel[84]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[84]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector12~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[84]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[84]$latch~combout\,
	datac => \Selector12~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[84]$latch~combout\);

-- Location: FF_X22_Y6_N23
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
	ena => \s_channel[80]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(85));

-- Location: LCCOMB_X22_Y6_N22
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\s_state.DATA~q\ & (s_channel(85) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(85),
	datad => \s_state.CRC~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X22_Y6_N2
\channel[85]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[85]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector11~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[85]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[85]$latch~combout\,
	datac => \Selector11~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[85]$latch~combout\);

-- Location: FF_X25_Y8_N1
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
	ena => \s_channel[80]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(86));

-- Location: LCCOMB_X25_Y8_N0
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\s_state.CRC~q\ & (s_channel(86) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(86),
	datad => \s_state.DATA~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X25_Y8_N24
\channel[86]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[86]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector10~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[86]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[86]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector10~0_combout\,
	combout => \channel[86]$latch~combout\);

-- Location: FF_X25_Y8_N15
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
	ena => \s_channel[80]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(87));

-- Location: LCCOMB_X25_Y8_N14
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\s_state.CRC~q\ & (s_channel(87) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(87),
	datad => \s_state.DATA~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X25_Y8_N18
\channel[87]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[87]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector9~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[87]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[87]$latch~combout\,
	datac => \Selector9~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[87]$latch~combout\);

-- Location: LCCOMB_X19_Y7_N0
\s_channel[88]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[88]~15_combout\ = (!byte_index(1) & (!byte_index(2) & (\s_state.IP_HEADER~q\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(2),
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal7~0_combout\,
	combout => \s_channel[88]~15_combout\);

-- Location: FF_X24_Y8_N9
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
	ena => \s_channel[88]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(88));

-- Location: LCCOMB_X24_Y8_N8
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\s_state.DATA~q\ & (s_channel(88) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(88),
	datad => \s_state.CRC~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X24_Y8_N20
\channel[88]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[88]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector8~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[88]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[88]$latch~combout\,
	datac => \Selector8~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[88]$latch~combout\);

-- Location: FF_X24_Y8_N23
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
	ena => \s_channel[88]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(89));

-- Location: LCCOMB_X24_Y8_N22
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\s_state.DATA~q\ & (s_channel(89) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(89),
	datad => \s_state.CRC~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X24_Y8_N10
\channel[89]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[89]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector7~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[89]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[89]$latch~combout\,
	datac => \Selector7~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[89]$latch~combout\);

-- Location: FF_X24_Y8_N5
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
	ena => \s_channel[88]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(90));

-- Location: LCCOMB_X24_Y8_N4
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\s_state.DATA~q\ & (s_channel(90) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(90),
	datad => \s_state.CRC~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X24_Y8_N24
\channel[90]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[90]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector6~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[90]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[90]$latch~combout\,
	datac => \Selector6~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[90]$latch~combout\);

-- Location: FF_X24_Y8_N31
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
	ena => \s_channel[88]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(91));

-- Location: LCCOMB_X24_Y8_N30
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\s_state.DATA~q\ & (s_channel(91) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(91),
	datad => \s_state.CRC~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X24_Y8_N6
\channel[91]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[91]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector5~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[91]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[91]$latch~combout\,
	datac => \Selector5~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[91]$latch~combout\);

-- Location: FF_X24_Y8_N29
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
	ena => \s_channel[88]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(92));

-- Location: LCCOMB_X24_Y8_N28
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\s_state.DATA~q\ & (s_channel(92) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(92),
	datad => \s_state.CRC~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X24_Y8_N0
\channel[92]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[92]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector4~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[92]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[92]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector4~0_combout\,
	combout => \channel[92]$latch~combout\);

-- Location: FF_X24_Y8_N27
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
	ena => \s_channel[88]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(93));

-- Location: LCCOMB_X24_Y8_N26
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\s_state.DATA~q\ & (s_channel(93) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(93),
	datad => \s_state.CRC~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X24_Y8_N2
\channel[93]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[93]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector3~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[93]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[93]$latch~combout\,
	datac => \Selector3~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[93]$latch~combout\);

-- Location: FF_X21_Y5_N13
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
	ena => \s_channel[88]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(94));

-- Location: LCCOMB_X21_Y5_N12
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\s_state.DATA~q\ & (s_channel(94) & !\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(94),
	datad => \s_state.CRC~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X21_Y5_N20
\channel[94]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[94]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector2~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[94]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \channel[94]$latch~combout\,
	datac => \s_state.IDLE~clkctrl_outclk\,
	datad => \Selector2~0_combout\,
	combout => \channel[94]$latch~combout\);

-- Location: FF_X21_Y5_N27
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
	ena => \s_channel[88]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(95));

-- Location: LCCOMB_X21_Y5_N26
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\s_state.CRC~q\ & (s_channel(95) & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => s_channel(95),
	datad => \s_state.DATA~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X21_Y5_N10
\channel[95]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel[95]$latch~combout\ = (GLOBAL(\s_state.IDLE~clkctrl_outclk\) & ((\Selector1~0_combout\))) # (!GLOBAL(\s_state.IDLE~clkctrl_outclk\) & (\channel[95]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \channel[95]$latch~combout\,
	datac => \Selector1~0_combout\,
	datad => \s_state.IDLE~clkctrl_outclk\,
	combout => \channel[95]$latch~combout\);

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

-- Location: IOIBUF_X1_Y0_N22
\in_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\out_ready~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_ready,
	o => \out_ready~input_o\);

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



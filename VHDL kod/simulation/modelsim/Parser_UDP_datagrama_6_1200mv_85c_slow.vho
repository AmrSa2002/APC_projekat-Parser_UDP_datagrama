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

-- DATE "01/23/2025 19:47:47"

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
-- in_ready	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_startofpacket	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endofpacket	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[0]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[2]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[5]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[10]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[12]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[13]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[14]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[15]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[16]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[17]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[18]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[19]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[20]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[21]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[22]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[23]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[24]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[25]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[26]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[27]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[28]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[29]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[30]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[31]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[32]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[33]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[34]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[35]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[36]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[37]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[38]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[39]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[40]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[41]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[42]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[43]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[44]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[45]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[46]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[47]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[48]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[49]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[50]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[51]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[52]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[53]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[54]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[55]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[56]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[57]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[58]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[59]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[60]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[61]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[62]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[63]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[64]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[65]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[66]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[67]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[68]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[69]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[70]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[71]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[72]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[73]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[74]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[75]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[76]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[77]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[78]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[79]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[80]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[81]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[82]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[83]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[84]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[85]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[86]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[87]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[88]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[89]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[90]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[91]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[92]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[93]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[94]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[95]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_startofpacket	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Equal15~7_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Equal15~5_combout\ : std_logic;
SIGNAL \Equal15~6_combout\ : std_logic;
SIGNAL \Equal15~8_combout\ : std_logic;
SIGNAL \Equal15~9_combout\ : std_logic;
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
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \Equal15~3_combout\ : std_logic;
SIGNAL \Equal15~2_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \next_counter[31]~64_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal15~4_combout\ : std_logic;
SIGNAL \PROCES2~0_combout\ : std_logic;
SIGNAL \byte_index[0]~34_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \in_startofpacket~input_o\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \byte_index[0]~35\ : std_logic;
SIGNAL \byte_index[1]~36_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \byte_index[28]~97\ : std_logic;
SIGNAL \byte_index[29]~98_combout\ : std_logic;
SIGNAL \byte_index[29]~99\ : std_logic;
SIGNAL \byte_index[30]~100_combout\ : std_logic;
SIGNAL \byte_index[30]~101\ : std_logic;
SIGNAL \byte_index[31]~102_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Selector2~34_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \PROCES1~0_combout\ : std_logic;
SIGNAL \ip_header_length[2]~0_combout\ : std_logic;
SIGNAL \PROCES1~1_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal23~1_combout\ : std_logic;
SIGNAL \Selector2~25_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Add6~3_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \next_state~6_combout\ : std_logic;
SIGNAL \Equal8~3_combout\ : std_logic;
SIGNAL \Equal8~4_combout\ : std_logic;
SIGNAL \Selector2~28_combout\ : std_logic;
SIGNAL \Selector2~31_combout\ : std_logic;
SIGNAL \Selector2~29_combout\ : std_logic;
SIGNAL \next_state~8_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \next_state~7_combout\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \Selector2~30_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~26_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \udp_length[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Equal9~10_combout\ : std_logic;
SIGNAL \Equal9~6_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Equal9~7_combout\ : std_logic;
SIGNAL \Equal9~8_combout\ : std_logic;
SIGNAL \Equal9~9_combout\ : std_logic;
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
SIGNAL \Add10~49\ : std_logic;
SIGNAL \Add10~51\ : std_logic;
SIGNAL \Add10~52_combout\ : std_logic;
SIGNAL \udp_length[26]~87\ : std_logic;
SIGNAL \udp_length[27]~88_combout\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Add10~53\ : std_logic;
SIGNAL \Add10~54_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \udp_length[27]~89\ : std_logic;
SIGNAL \udp_length[28]~90_combout\ : std_logic;
SIGNAL \udp_length[28]~91\ : std_logic;
SIGNAL \udp_length[29]~92_combout\ : std_logic;
SIGNAL \udp_length[29]~93\ : std_logic;
SIGNAL \udp_length[30]~94_combout\ : std_logic;
SIGNAL \udp_length[30]~95\ : std_logic;
SIGNAL \udp_length[31]~96_combout\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~61\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Add10~55\ : std_logic;
SIGNAL \Add10~57\ : std_logic;
SIGNAL \Add10~59\ : std_logic;
SIGNAL \Add10~61\ : std_logic;
SIGNAL \Add10~62_combout\ : std_logic;
SIGNAL \Add10~60_combout\ : std_logic;
SIGNAL \Selector2~23_combout\ : std_logic;
SIGNAL \Add10~58_combout\ : std_logic;
SIGNAL \Add10~50_combout\ : std_logic;
SIGNAL \Add10~48_combout\ : std_logic;
SIGNAL \Selector2~21_combout\ : std_logic;
SIGNAL \Add10~34_combout\ : std_logic;
SIGNAL \Add10~32_combout\ : std_logic;
SIGNAL \Selector2~16_combout\ : std_logic;
SIGNAL \Add10~40_combout\ : std_logic;
SIGNAL \Add10~42_combout\ : std_logic;
SIGNAL \Selector2~18_combout\ : std_logic;
SIGNAL \Add10~36_combout\ : std_logic;
SIGNAL \Add10~38_combout\ : std_logic;
SIGNAL \Selector2~17_combout\ : std_logic;
SIGNAL \Add10~44_combout\ : std_logic;
SIGNAL \Add10~46_combout\ : std_logic;
SIGNAL \Selector2~19_combout\ : std_logic;
SIGNAL \Selector2~20_combout\ : std_logic;
SIGNAL \Selector2~22_combout\ : std_logic;
SIGNAL \Add10~56_combout\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Selector2~8_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Selector2~7_combout\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \Selector2~10_combout\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Selector2~9_combout\ : std_logic;
SIGNAL \Add10~24_combout\ : std_logic;
SIGNAL \Add10~26_combout\ : std_logic;
SIGNAL \Selector2~11_combout\ : std_logic;
SIGNAL \Add10~28_combout\ : std_logic;
SIGNAL \Add10~30_combout\ : std_logic;
SIGNAL \Selector2~12_combout\ : std_logic;
SIGNAL \Selector2~13_combout\ : std_logic;
SIGNAL \Selector2~14_combout\ : std_logic;
SIGNAL \Selector2~15_combout\ : std_logic;
SIGNAL \Selector2~24_combout\ : std_logic;
SIGNAL \Selector2~27_combout\ : std_logic;
SIGNAL \Selector2~32_combout\ : std_logic;
SIGNAL \Selector2~33_combout\ : std_logic;
SIGNAL \Selector2~35_combout\ : std_logic;
SIGNAL \s_state.IP_HEADER~q\ : std_logic;
SIGNAL \Selector1~9_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \Selector1~10_combout\ : std_logic;
SIGNAL \Selector1~11_combout\ : std_logic;
SIGNAL \s_state.CRC~0_combout\ : std_logic;
SIGNAL \s_state.CRC~q\ : std_logic;
SIGNAL \byte_index[31]~54_combout\ : std_logic;
SIGNAL \byte_index[31]~104_combout\ : std_logic;
SIGNAL \byte_index[31]~55_combout\ : std_logic;
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
SIGNAL \Equal13~18_combout\ : std_logic;
SIGNAL \Equal13~17_combout\ : std_logic;
SIGNAL \Equal13~14_combout\ : std_logic;
SIGNAL \Equal13~12_combout\ : std_logic;
SIGNAL \Equal13~13_combout\ : std_logic;
SIGNAL \Equal13~11_combout\ : std_logic;
SIGNAL \Equal13~15_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Equal13~19_combout\ : std_logic;
SIGNAL \Equal13~16_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Equal13~3_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \Equal13~4_combout\ : std_logic;
SIGNAL \Equal13~6_combout\ : std_logic;
SIGNAL \Equal13~5_combout\ : std_logic;
SIGNAL \Equal13~7_combout\ : std_logic;
SIGNAL \Equal13~8_combout\ : std_logic;
SIGNAL \Equal13~9_combout\ : std_logic;
SIGNAL \Equal13~10_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
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
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \Equal12~11_combout\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~41\ : std_logic;
SIGNAL \Add8~42_combout\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \Equal12~13_combout\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~38_combout\ : std_logic;
SIGNAL \Equal12~12_combout\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~44_combout\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add8~46_combout\ : std_logic;
SIGNAL \Equal12~14_combout\ : std_logic;
SIGNAL \Equal12~15_combout\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~49\ : std_logic;
SIGNAL \Add8~51\ : std_logic;
SIGNAL \Add8~53\ : std_logic;
SIGNAL \Add8~55\ : std_logic;
SIGNAL \Add8~57\ : std_logic;
SIGNAL \Add8~59\ : std_logic;
SIGNAL \Add8~61\ : std_logic;
SIGNAL \Add8~62_combout\ : std_logic;
SIGNAL \Add8~60_combout\ : std_logic;
SIGNAL \Equal12~19_combout\ : std_logic;
SIGNAL \Add8~52_combout\ : std_logic;
SIGNAL \Add8~54_combout\ : std_logic;
SIGNAL \Equal12~17_combout\ : std_logic;
SIGNAL \Add8~48_combout\ : std_logic;
SIGNAL \Add8~50_combout\ : std_logic;
SIGNAL \Equal12~16_combout\ : std_logic;
SIGNAL \Add8~58_combout\ : std_logic;
SIGNAL \Add8~56_combout\ : std_logic;
SIGNAL \Equal12~18_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Equal12~3_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Equal12~4_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Equal12~5_combout\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Equal12~6_combout\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \Equal12~7_combout\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Equal12~8_combout\ : std_logic;
SIGNAL \Equal12~9_combout\ : std_logic;
SIGNAL \Equal12~10_combout\ : std_logic;
SIGNAL \Selector1~12_combout\ : std_logic;
SIGNAL \Selector1~13_combout\ : std_logic;
SIGNAL \Selector1~14_combout\ : std_logic;
SIGNAL \s_state.ETHERNET_HEADER~q\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \s_state.IDLE~q\ : std_logic;
SIGNAL \byte_index[4]~50_combout\ : std_logic;
SIGNAL \byte_index[4]~51_combout\ : std_logic;
SIGNAL \byte_index[4]~52_combout\ : std_logic;
SIGNAL \byte_index[4]~53_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~7_combout\ : std_logic;
SIGNAL \Selector1~8_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \s_state.UDP_HEADER~q\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \s_state.DATA~q\ : std_logic;
SIGNAL \s_state.DATA~clkctrl_outclk\ : std_logic;
SIGNAL \out_data[0]$latch~combout\ : std_logic;
SIGNAL \out_data[1]$latch~combout\ : std_logic;
SIGNAL \delayed_data[2]~feeder_combout\ : std_logic;
SIGNAL \out_data[2]$latch~combout\ : std_logic;
SIGNAL \delayed_data[3]~feeder_combout\ : std_logic;
SIGNAL \out_data[3]$latch~combout\ : std_logic;
SIGNAL \delayed_data[4]~feeder_combout\ : std_logic;
SIGNAL \out_data[4]$latch~combout\ : std_logic;
SIGNAL \delayed_data[5]~feeder_combout\ : std_logic;
SIGNAL \out_data[5]$latch~combout\ : std_logic;
SIGNAL \out_data[6]$latch~combout\ : std_logic;
SIGNAL \delayed_data[7]~feeder_combout\ : std_logic;
SIGNAL \out_data[7]$latch~combout\ : std_logic;
SIGNAL \Equal12~20_combout\ : std_logic;
SIGNAL \Equal12~21_combout\ : std_logic;
SIGNAL \Equal13~20_combout\ : std_logic;
SIGNAL \s_out_startofpacket~2_combout\ : std_logic;
SIGNAL \s_out_startofpacket~4_combout\ : std_logic;
SIGNAL \s_out_startofpacket~3_combout\ : std_logic;
SIGNAL \s_out_startofpacket~q\ : std_logic;
SIGNAL \s_out_endofpacket~0_combout\ : std_logic;
SIGNAL \s_out_endofpacket~1_combout\ : std_logic;
SIGNAL \s_out_endofpacket~q\ : std_logic;
SIGNAL \s_channel[0]~feeder_combout\ : std_logic;
SIGNAL \s_channel[0]~0_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \s_channel[0]~1_combout\ : std_logic;
SIGNAL \s_channel[1]~feeder_combout\ : std_logic;
SIGNAL \s_channel[2]~feeder_combout\ : std_logic;
SIGNAL \s_channel[3]~feeder_combout\ : std_logic;
SIGNAL \s_channel[4]~feeder_combout\ : std_logic;
SIGNAL \s_channel[5]~feeder_combout\ : std_logic;
SIGNAL \s_channel[6]~feeder_combout\ : std_logic;
SIGNAL \s_channel[8]~feeder_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \s_channel[8]~2_combout\ : std_logic;
SIGNAL \s_channel[11]~feeder_combout\ : std_logic;
SIGNAL \s_channel[13]~feeder_combout\ : std_logic;
SIGNAL \s_channel[15]~feeder_combout\ : std_logic;
SIGNAL \s_channel[16]~4_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \s_channel[24]~3_combout\ : std_logic;
SIGNAL \s_channel[16]~5_combout\ : std_logic;
SIGNAL \s_channel[19]~feeder_combout\ : std_logic;
SIGNAL \s_channel[21]~feeder_combout\ : std_logic;
SIGNAL \s_channel[24]~feeder_combout\ : std_logic;
SIGNAL \s_channel[24]~6_combout\ : std_logic;
SIGNAL \s_channel[26]~feeder_combout\ : std_logic;
SIGNAL \s_channel[28]~feeder_combout\ : std_logic;
SIGNAL \s_channel[32]~feeder_combout\ : std_logic;
SIGNAL \s_channel[33]~feeder_combout\ : std_logic;
SIGNAL \s_channel[34]~feeder_combout\ : std_logic;
SIGNAL \s_channel[35]~feeder_combout\ : std_logic;
SIGNAL \s_channel[36]~feeder_combout\ : std_logic;
SIGNAL \s_channel[37]~feeder_combout\ : std_logic;
SIGNAL \s_channel[38]~feeder_combout\ : std_logic;
SIGNAL \s_channel[40]~feeder_combout\ : std_logic;
SIGNAL \s_channel[42]~feeder_combout\ : std_logic;
SIGNAL \s_channel[43]~feeder_combout\ : std_logic;
SIGNAL \s_channel[44]~feeder_combout\ : std_logic;
SIGNAL \s_channel[45]~feeder_combout\ : std_logic;
SIGNAL \s_channel[46]~feeder_combout\ : std_logic;
SIGNAL \s_channel[47]~feeder_combout\ : std_logic;
SIGNAL \s_channel[48]~feeder_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \s_channel[49]~feeder_combout\ : std_logic;
SIGNAL \s_channel[52]~feeder_combout\ : std_logic;
SIGNAL \s_channel[53]~feeder_combout\ : std_logic;
SIGNAL \s_channel[54]~feeder_combout\ : std_logic;
SIGNAL \Equal20~1_combout\ : std_logic;
SIGNAL \s_channel[58]~feeder_combout\ : std_logic;
SIGNAL \s_channel[59]~feeder_combout\ : std_logic;
SIGNAL \s_channel[60]~feeder_combout\ : std_logic;
SIGNAL \s_channel[61]~feeder_combout\ : std_logic;
SIGNAL \s_channel[63]~feeder_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \s_channel[66]~feeder_combout\ : std_logic;
SIGNAL \s_channel[67]~feeder_combout\ : std_logic;
SIGNAL \s_channel[68]~feeder_combout\ : std_logic;
SIGNAL \s_channel[69]~feeder_combout\ : std_logic;
SIGNAL \s_channel[71]~feeder_combout\ : std_logic;
SIGNAL \s_channel[72]~feeder_combout\ : std_logic;
SIGNAL \s_channel[74]~feeder_combout\ : std_logic;
SIGNAL \s_channel[75]~feeder_combout\ : std_logic;
SIGNAL \s_channel[76]~feeder_combout\ : std_logic;
SIGNAL \s_channel[79]~feeder_combout\ : std_logic;
SIGNAL \s_channel[80]~feeder_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \s_channel[81]~feeder_combout\ : std_logic;
SIGNAL \s_channel[84]~feeder_combout\ : std_logic;
SIGNAL \s_channel[85]~feeder_combout\ : std_logic;
SIGNAL \s_channel[86]~feeder_combout\ : std_logic;
SIGNAL \s_channel[88]~feeder_combout\ : std_logic;
SIGNAL \s_channel[90]~feeder_combout\ : std_logic;
SIGNAL \s_channel[91]~feeder_combout\ : std_logic;
SIGNAL \s_channel[92]~feeder_combout\ : std_logic;
SIGNAL \s_channel[95]~feeder_combout\ : std_logic;
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X21_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N2
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X21_Y0_N16
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

-- Location: IOOBUF_X21_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X5_Y24_N2
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

-- Location: IOOBUF_X34_Y11_N2
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

-- Location: IOOBUF_X28_Y0_N2
\channel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(0),
	devoe => ww_devoe,
	o => \channel[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\channel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(1),
	devoe => ww_devoe,
	o => \channel[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\channel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(2),
	devoe => ww_devoe,
	o => \channel[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\channel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(3),
	devoe => ww_devoe,
	o => \channel[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\channel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(4),
	devoe => ww_devoe,
	o => \channel[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\channel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(5),
	devoe => ww_devoe,
	o => \channel[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\channel[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(6),
	devoe => ww_devoe,
	o => \channel[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\channel[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(7),
	devoe => ww_devoe,
	o => \channel[7]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\channel[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(8),
	devoe => ww_devoe,
	o => \channel[8]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\channel[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(9),
	devoe => ww_devoe,
	o => \channel[9]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\channel[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(10),
	devoe => ww_devoe,
	o => \channel[10]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\channel[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(11),
	devoe => ww_devoe,
	o => \channel[11]~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\channel[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(12),
	devoe => ww_devoe,
	o => \channel[12]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\channel[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(13),
	devoe => ww_devoe,
	o => \channel[13]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\channel[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(14),
	devoe => ww_devoe,
	o => \channel[14]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\channel[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(15),
	devoe => ww_devoe,
	o => \channel[15]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\channel[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(16),
	devoe => ww_devoe,
	o => \channel[16]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\channel[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(17),
	devoe => ww_devoe,
	o => \channel[17]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\channel[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(18),
	devoe => ww_devoe,
	o => \channel[18]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\channel[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(19),
	devoe => ww_devoe,
	o => \channel[19]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\channel[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(20),
	devoe => ww_devoe,
	o => \channel[20]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\channel[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(21),
	devoe => ww_devoe,
	o => \channel[21]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\channel[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(22),
	devoe => ww_devoe,
	o => \channel[22]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\channel[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(23),
	devoe => ww_devoe,
	o => \channel[23]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\channel[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(24),
	devoe => ww_devoe,
	o => \channel[24]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\channel[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(25),
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
	i => s_channel(26),
	devoe => ww_devoe,
	o => \channel[26]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\channel[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(27),
	devoe => ww_devoe,
	o => \channel[27]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\channel[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(28),
	devoe => ww_devoe,
	o => \channel[28]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\channel[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(29),
	devoe => ww_devoe,
	o => \channel[29]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\channel[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(30),
	devoe => ww_devoe,
	o => \channel[30]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\channel[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(31),
	devoe => ww_devoe,
	o => \channel[31]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\channel[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(32),
	devoe => ww_devoe,
	o => \channel[32]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\channel[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(33),
	devoe => ww_devoe,
	o => \channel[33]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\channel[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(34),
	devoe => ww_devoe,
	o => \channel[34]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\channel[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(35),
	devoe => ww_devoe,
	o => \channel[35]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\channel[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(36),
	devoe => ww_devoe,
	o => \channel[36]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\channel[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(37),
	devoe => ww_devoe,
	o => \channel[37]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\channel[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(38),
	devoe => ww_devoe,
	o => \channel[38]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\channel[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(39),
	devoe => ww_devoe,
	o => \channel[39]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\channel[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(40),
	devoe => ww_devoe,
	o => \channel[40]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\channel[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(41),
	devoe => ww_devoe,
	o => \channel[41]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\channel[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(42),
	devoe => ww_devoe,
	o => \channel[42]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\channel[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(43),
	devoe => ww_devoe,
	o => \channel[43]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\channel[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(44),
	devoe => ww_devoe,
	o => \channel[44]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\channel[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(45),
	devoe => ww_devoe,
	o => \channel[45]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\channel[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(46),
	devoe => ww_devoe,
	o => \channel[46]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\channel[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(47),
	devoe => ww_devoe,
	o => \channel[47]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\channel[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(48),
	devoe => ww_devoe,
	o => \channel[48]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\channel[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(49),
	devoe => ww_devoe,
	o => \channel[49]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\channel[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(50),
	devoe => ww_devoe,
	o => \channel[50]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\channel[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(51),
	devoe => ww_devoe,
	o => \channel[51]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\channel[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(52),
	devoe => ww_devoe,
	o => \channel[52]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\channel[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(53),
	devoe => ww_devoe,
	o => \channel[53]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\channel[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(54),
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
	i => s_channel(55),
	devoe => ww_devoe,
	o => \channel[55]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\channel[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(56),
	devoe => ww_devoe,
	o => \channel[56]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\channel[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(57),
	devoe => ww_devoe,
	o => \channel[57]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\channel[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(58),
	devoe => ww_devoe,
	o => \channel[58]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\channel[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(59),
	devoe => ww_devoe,
	o => \channel[59]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\channel[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(60),
	devoe => ww_devoe,
	o => \channel[60]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\channel[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(61),
	devoe => ww_devoe,
	o => \channel[61]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\channel[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(62),
	devoe => ww_devoe,
	o => \channel[62]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\channel[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(63),
	devoe => ww_devoe,
	o => \channel[63]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\channel[64]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(64),
	devoe => ww_devoe,
	o => \channel[64]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\channel[65]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(65),
	devoe => ww_devoe,
	o => \channel[65]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\channel[66]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(66),
	devoe => ww_devoe,
	o => \channel[66]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\channel[67]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(67),
	devoe => ww_devoe,
	o => \channel[67]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\channel[68]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(68),
	devoe => ww_devoe,
	o => \channel[68]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\channel[69]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(69),
	devoe => ww_devoe,
	o => \channel[69]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\channel[70]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(70),
	devoe => ww_devoe,
	o => \channel[70]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\channel[71]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(71),
	devoe => ww_devoe,
	o => \channel[71]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\channel[72]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(72),
	devoe => ww_devoe,
	o => \channel[72]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\channel[73]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(73),
	devoe => ww_devoe,
	o => \channel[73]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\channel[74]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(74),
	devoe => ww_devoe,
	o => \channel[74]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\channel[75]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(75),
	devoe => ww_devoe,
	o => \channel[75]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\channel[76]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(76),
	devoe => ww_devoe,
	o => \channel[76]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\channel[77]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(77),
	devoe => ww_devoe,
	o => \channel[77]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\channel[78]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(78),
	devoe => ww_devoe,
	o => \channel[78]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\channel[79]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(79),
	devoe => ww_devoe,
	o => \channel[79]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\channel[80]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(80),
	devoe => ww_devoe,
	o => \channel[80]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\channel[81]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(81),
	devoe => ww_devoe,
	o => \channel[81]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\channel[82]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(82),
	devoe => ww_devoe,
	o => \channel[82]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\channel[83]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(83),
	devoe => ww_devoe,
	o => \channel[83]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\channel[84]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(84),
	devoe => ww_devoe,
	o => \channel[84]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\channel[85]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(85),
	devoe => ww_devoe,
	o => \channel[85]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\channel[86]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(86),
	devoe => ww_devoe,
	o => \channel[86]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\channel[87]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(87),
	devoe => ww_devoe,
	o => \channel[87]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\channel[88]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(88),
	devoe => ww_devoe,
	o => \channel[88]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\channel[89]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(89),
	devoe => ww_devoe,
	o => \channel[89]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\channel[90]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(90),
	devoe => ww_devoe,
	o => \channel[90]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\channel[91]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(91),
	devoe => ww_devoe,
	o => \channel[91]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\channel[92]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(92),
	devoe => ww_devoe,
	o => \channel[92]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\channel[93]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(93),
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
	i => s_channel(94),
	devoe => ww_devoe,
	o => \channel[94]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\channel[95]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_channel(95),
	devoe => ww_devoe,
	o => \channel[95]~output_o\);

-- Location: IOIBUF_X11_Y0_N15
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

-- Location: IOIBUF_X34_Y5_N22
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: LCCOMB_X22_Y4_N14
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

-- Location: LCCOMB_X18_Y7_N10
\next_counter[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_counter[0]~62_combout\ = (!\out_ready~input_o\ & !\next_counter[0]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \next_counter[0]~62_combout\,
	combout => \next_counter[0]~62_combout\);

-- Location: LCCOMB_X17_Y8_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\next_counter[0]~62_combout\ & (\next_counter[1]~63_combout\ $ (VCC))) # (!\next_counter[0]~62_combout\ & (\next_counter[1]~63_combout\ & VCC))
-- \Add0~2\ = CARRY((\next_counter[0]~62_combout\ & \next_counter[1]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_counter[0]~62_combout\,
	datab => \next_counter[1]~63_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X18_Y7_N0
\next_counter[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_counter[1]~63_combout\ = (!\out_ready~input_o\ & \Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \Add0~1_combout\,
	combout => \next_counter[1]~63_combout\);

-- Location: LCCOMB_X17_Y8_N4
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

-- Location: LCCOMB_X17_Y8_N6
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

-- Location: LCCOMB_X17_Y8_N8
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

-- Location: LCCOMB_X17_Y8_N10
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

-- Location: LCCOMB_X17_Y8_N12
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

-- Location: LCCOMB_X17_Y8_N14
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

-- Location: LCCOMB_X17_Y8_N16
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

-- Location: LCCOMB_X17_Y8_N18
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

-- Location: LCCOMB_X17_Y8_N20
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

-- Location: LCCOMB_X18_Y7_N12
\Equal15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~7_combout\ = (!\Add0~17_combout\ & (!\Add0~19_combout\ & (!\Add0~15_combout\ & !\Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \Add0~19_combout\,
	datac => \Add0~15_combout\,
	datad => \Add0~13_combout\,
	combout => \Equal15~7_combout\);

-- Location: LCCOMB_X17_Y8_N22
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

-- Location: LCCOMB_X17_Y8_N24
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

-- Location: LCCOMB_X17_Y8_N26
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

-- Location: LCCOMB_X17_Y8_N28
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

-- Location: LCCOMB_X17_Y8_N30
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

-- Location: LCCOMB_X17_Y7_N0
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~30\ & (((\out_ready~input_o\)) # (!\Add0~31_combout\))) # (!\Add0~30\ & (((\Add0~31_combout\ & !\out_ready~input_o\)) # (GND)))
-- \Add0~32\ = CARRY(((\out_ready~input_o\) # (!\Add0~30\)) # (!\Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \out_ready~input_o\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X17_Y7_N2
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

-- Location: LCCOMB_X17_Y7_N4
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

-- Location: LCCOMB_X18_Y7_N18
\Equal15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~5_combout\ = (!\Add0~31_combout\ & (!\Add0~35_combout\ & (!\Add0~29_combout\ & !\Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \Add0~35_combout\,
	datac => \Add0~29_combout\,
	datad => \Add0~33_combout\,
	combout => \Equal15~5_combout\);

-- Location: LCCOMB_X17_Y8_N0
\Equal15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~6_combout\ = (!\Add0~25_combout\ & (!\Add0~27_combout\ & (!\Add0~21_combout\ & !\Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \Add0~27_combout\,
	datac => \Add0~21_combout\,
	datad => \Add0~23_combout\,
	combout => \Equal15~6_combout\);

-- Location: LCCOMB_X18_Y8_N8
\Equal15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~8_combout\ = (!\Add0~11_combout\ & (!\Add0~7_combout\ & (!\Add0~5_combout\ & !\Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \Add0~7_combout\,
	datac => \Add0~5_combout\,
	datad => \Add0~9_combout\,
	combout => \Equal15~8_combout\);

-- Location: LCCOMB_X18_Y7_N22
\Equal15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~9_combout\ = (\Equal15~7_combout\ & (\Equal15~5_combout\ & (\Equal15~6_combout\ & \Equal15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~7_combout\,
	datab => \Equal15~5_combout\,
	datac => \Equal15~6_combout\,
	datad => \Equal15~8_combout\,
	combout => \Equal15~9_combout\);

-- Location: LCCOMB_X17_Y7_N6
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

-- Location: LCCOMB_X17_Y7_N8
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

-- Location: LCCOMB_X17_Y7_N10
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

-- Location: LCCOMB_X17_Y7_N12
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

-- Location: LCCOMB_X17_Y7_N14
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

-- Location: LCCOMB_X17_Y7_N16
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

-- Location: LCCOMB_X17_Y7_N18
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

-- Location: LCCOMB_X17_Y7_N20
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

-- Location: LCCOMB_X17_Y7_N22
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

-- Location: LCCOMB_X17_Y7_N24
\Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\Add0~54\ & ((\out_ready~input_o\) # ((!\Add0~55_combout\)))) # (!\Add0~54\ & (((!\out_ready~input_o\ & \Add0~55_combout\)) # (GND)))
-- \Add0~56\ = CARRY((\out_ready~input_o\) # ((!\Add0~54\) # (!\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Add0~55_combout\,
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X17_Y7_N26
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

-- Location: LCCOMB_X17_Y7_N28
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

-- Location: LCCOMB_X18_Y7_N26
\Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~1_combout\ = (!\Add0~53_combout\ & (!\Add0~59_combout\ & (!\Add0~57_combout\ & !\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datab => \Add0~59_combout\,
	datac => \Add0~57_combout\,
	datad => \Add0~55_combout\,
	combout => \Equal15~1_combout\);

-- Location: LCCOMB_X18_Y7_N2
\Equal15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~3_combout\ = (!\Add0~41_combout\ & (!\Add0~43_combout\ & (!\Add0~37_combout\ & !\Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \Add0~43_combout\,
	datac => \Add0~37_combout\,
	datad => \Add0~39_combout\,
	combout => \Equal15~3_combout\);

-- Location: LCCOMB_X18_Y7_N4
\Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~2_combout\ = (!\Add0~45_combout\ & (!\Add0~51_combout\ & (!\Add0~47_combout\ & !\Add0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \Add0~51_combout\,
	datac => \Add0~47_combout\,
	datad => \Add0~49_combout\,
	combout => \Equal15~2_combout\);

-- Location: LCCOMB_X17_Y7_N30
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

-- Location: LCCOMB_X18_Y7_N6
\next_counter[31]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_counter[31]~64_combout\ = (!\out_ready~input_o\ & \Add0~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~61_combout\,
	combout => \next_counter[31]~64_combout\);

-- Location: LCCOMB_X18_Y7_N24
\Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = (!\next_counter[31]~64_combout\ & ((\out_ready~input_o\) # ((!\Add0~1_combout\ & \next_counter[0]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \next_counter[0]~62_combout\,
	datac => \out_ready~input_o\,
	datad => \next_counter[31]~64_combout\,
	combout => \Equal15~0_combout\);

-- Location: LCCOMB_X18_Y7_N20
\Equal15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal15~4_combout\ = (\Equal15~1_combout\ & (\Equal15~3_combout\ & (\Equal15~2_combout\ & \Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~1_combout\,
	datab => \Equal15~3_combout\,
	datac => \Equal15~2_combout\,
	datad => \Equal15~0_combout\,
	combout => \Equal15~4_combout\);

-- Location: LCCOMB_X18_Y7_N8
\PROCES2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES2~0_combout\ = (\out_ready~input_o\) # ((\Equal15~9_combout\ & (!\Add0~3_combout\ & \Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal15~9_combout\,
	datab => \Add0~3_combout\,
	datac => \out_ready~input_o\,
	datad => \Equal15~4_combout\,
	combout => \PROCES2~0_combout\);

-- Location: FF_X22_Y4_N15
\delayed_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[0]~feeder_combout\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(0));

-- Location: FF_X22_Y4_N17
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
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(0));

-- Location: LCCOMB_X26_Y13_N0
\byte_index[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[0]~34_combout\ = byte_index(0) $ (VCC)
-- \byte_index[0]~35\ = CARRY(byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
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

-- Location: IOIBUF_X13_Y0_N15
\in_startofpacket~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_startofpacket,
	o => \in_startofpacket~input_o\);

-- Location: LCCOMB_X24_Y13_N26
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\in_startofpacket~input_o\ & !\s_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in_startofpacket~input_o\,
	datad => \s_state.IDLE~q\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X26_Y13_N2
\byte_index[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[1]~36_combout\ = (byte_index(1) & (!\byte_index[0]~35\)) # (!byte_index(1) & ((\byte_index[0]~35\) # (GND)))
-- \byte_index[1]~37\ = CARRY((!\byte_index[0]~35\) # (!byte_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datad => VCC,
	cin => \byte_index[0]~35\,
	combout => \byte_index[1]~36_combout\,
	cout => \byte_index[1]~37\);

-- Location: LCCOMB_X25_Y16_N12
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!byte_index(2) & !byte_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(2),
	datad => byte_index(4),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X26_Y12_N24
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

-- Location: LCCOMB_X26_Y12_N26
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

-- Location: FF_X26_Y12_N27
\byte_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[29]~98_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(29));

-- Location: LCCOMB_X26_Y12_N28
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

-- Location: FF_X26_Y12_N29
\byte_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[30]~100_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(30));

-- Location: LCCOMB_X26_Y12_N30
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

-- Location: FF_X26_Y12_N31
\byte_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[31]~102_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(31));

-- Location: LCCOMB_X23_Y12_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!byte_index(25) & (!byte_index(23) & (!byte_index(26) & !byte_index(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(25),
	datab => byte_index(23),
	datac => byte_index(26),
	datad => byte_index(24),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X25_Y12_N26
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!byte_index(30) & (!byte_index(29) & (!byte_index(28) & !byte_index(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(29),
	datac => byte_index(28),
	datad => byte_index(27),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X24_Y13_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!byte_index(12) & (!byte_index(11) & (!byte_index(13) & !byte_index(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datab => byte_index(11),
	datac => byte_index(13),
	datad => byte_index(14),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y13_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!byte_index(7) & (!byte_index(9) & (!byte_index(10) & !byte_index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(7),
	datab => byte_index(9),
	datac => byte_index(10),
	datad => byte_index(8),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X25_Y13_N20
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!byte_index(17) & (!byte_index(16) & (!byte_index(15) & !byte_index(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => byte_index(15),
	datad => byte_index(18),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X25_Y13_N22
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!byte_index(20) & (!byte_index(21) & (!byte_index(19) & !byte_index(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(20),
	datab => byte_index(21),
	datac => byte_index(19),
	datad => byte_index(22),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X24_Y13_N20
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X24_Y13_N14
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

-- Location: LCCOMB_X24_Y13_N28
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!byte_index(5) & (byte_index(3) & (\Equal0~7_combout\ & !byte_index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => byte_index(3),
	datac => \Equal0~7_combout\,
	datad => byte_index(6),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X24_Y13_N12
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (byte_index(1) & (byte_index(0) & (\Equal0~9_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(0),
	datac => \Equal0~9_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: IOIBUF_X34_Y19_N1
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: IOIBUF_X32_Y24_N15
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: LCCOMB_X26_Y8_N0
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\in_data[1]~input_o\ & (!\in_data[6]~input_o\ & (!\in_data[5]~input_o\ & !\in_data[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[1]~input_o\,
	datab => \in_data[6]~input_o\,
	datac => \in_data[5]~input_o\,
	datad => \in_data[2]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: LCCOMB_X26_Y8_N18
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\in_data[0]~input_o\ & (\Equal3~0_combout\ & (!\in_data[7]~input_o\ & !\in_data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datab => \Equal3~0_combout\,
	datac => \in_data[7]~input_o\,
	datad => \in_data[4]~input_o\,
	combout => \Equal3~1_combout\);

-- Location: IOIBUF_X18_Y24_N15
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: LCCOMB_X25_Y13_N4
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Equal3~1_combout\ & !\in_data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~1_combout\,
	datad => \in_data[3]~input_o\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X25_Y13_N18
\Selector2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~34_combout\ = (\Selector2~3_combout\ & (!\Equal0~10_combout\ & (\Equal3~2_combout\))) # (!\Selector2~3_combout\ & (((\s_state.IP_HEADER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal3~2_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \Selector2~3_combout\,
	combout => \Selector2~34_combout\);

-- Location: LCCOMB_X24_Y13_N2
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (byte_index(2) & (!byte_index(4) & (!byte_index(1) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(4),
	datac => byte_index(1),
	datad => \Equal0~8_combout\,
	combout => \Equal4~0_combout\);

-- Location: IOIBUF_X34_Y11_N8
\in_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: LCCOMB_X22_Y12_N0
\PROCES1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~0_combout\ = (\in_valid~input_o\ & \out_ready~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in_valid~input_o\,
	datad => \out_ready~input_o\,
	combout => \PROCES1~0_combout\);

-- Location: LCCOMB_X25_Y13_N24
\ip_header_length[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_header_length[2]~0_combout\ = (\Equal4~0_combout\ & (\s_state.IP_HEADER~q\ & (byte_index(0) & \PROCES1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => byte_index(0),
	datad => \PROCES1~0_combout\,
	combout => \ip_header_length[2]~0_combout\);

-- Location: FF_X24_Y16_N27
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

-- Location: FF_X24_Y16_N9
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

-- Location: FF_X24_Y16_N17
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

-- Location: FF_X24_Y16_N13
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

-- Location: LCCOMB_X24_Y16_N16
\PROCES1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~1_combout\ = (ip_header_length(4) & (ip_header_length(2) & (!ip_header_length(3) & !ip_header_length(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(4),
	datab => ip_header_length(2),
	datac => ip_header_length(3),
	datad => ip_header_length(5),
	combout => \PROCES1~1_combout\);

-- Location: LCCOMB_X24_Y13_N4
\Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (!byte_index(0) & (!byte_index(3) & (\Equal0~7_combout\ & !byte_index(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(3),
	datac => \Equal0~7_combout\,
	datad => byte_index(6),
	combout => \Equal23~0_combout\);

-- Location: LCCOMB_X26_Y16_N16
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (byte_index(1) & byte_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(1),
	datad => byte_index(4),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (byte_index(5)) # (((!\Equal5~0_combout\) # (!byte_index(2))) # (!\Equal23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => \Equal23~0_combout\,
	datac => byte_index(2),
	datad => \Equal5~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X25_Y16_N0
\Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~1_combout\ = (\Equal0~9_combout\ & (!byte_index(1) & (byte_index(5) & \Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => byte_index(1),
	datac => byte_index(5),
	datad => \Equal23~0_combout\,
	combout => \Equal23~1_combout\);

-- Location: LCCOMB_X24_Y14_N28
\Selector2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~25_combout\ = (((\PROCES1~1_combout\ & \Equal23~1_combout\)) # (!\Selector1~4_combout\)) # (!\Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~1_combout\,
	datab => \Equal5~1_combout\,
	datac => \Equal23~1_combout\,
	datad => \Selector1~4_combout\,
	combout => \Selector2~25_combout\);

-- Location: LCCOMB_X24_Y16_N30
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = ip_header_length(5) $ (((ip_header_length(4) & ((ip_header_length(3)) # (ip_header_length(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(4),
	datab => ip_header_length(3),
	datac => ip_header_length(2),
	datad => ip_header_length(5),
	combout => \Add6~2_combout\);

-- Location: LCCOMB_X26_Y16_N22
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = \Add6~2_combout\ $ (byte_index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add6~2_combout\,
	datad => byte_index(5),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X24_Y16_N6
\Add6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~3_combout\ = (ip_header_length(5) & (ip_header_length(4) & ((ip_header_length(3)) # (ip_header_length(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => ip_header_length(3),
	datac => ip_header_length(4),
	datad => ip_header_length(2),
	combout => \Add6~3_combout\);

-- Location: LCCOMB_X24_Y16_N24
\Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = \Add6~3_combout\ $ (byte_index(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~3_combout\,
	datad => byte_index(6),
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X24_Y16_N4
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

-- Location: LCCOMB_X24_Y16_N22
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

-- Location: LCCOMB_X24_Y16_N0
\Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (\Add6~0_combout\ & (byte_index(4) & (\Add6~1_combout\ $ (byte_index(3))))) # (!\Add6~0_combout\ & (!byte_index(4) & (\Add6~1_combout\ $ (byte_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => byte_index(4),
	datac => \Add6~1_combout\,
	datad => byte_index(3),
	combout => \Equal8~2_combout\);

-- Location: LCCOMB_X24_Y16_N2
\next_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~6_combout\ = (\Equal0~7_combout\ & (ip_header_length(2) $ (byte_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datab => byte_index(2),
	datad => \Equal0~7_combout\,
	combout => \next_state~6_combout\);

-- Location: LCCOMB_X24_Y16_N14
\Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~3_combout\ = (!\Equal8~0_combout\ & (!\Equal8~1_combout\ & (\Equal8~2_combout\ & \next_state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal8~1_combout\,
	datac => \Equal8~2_combout\,
	datad => \next_state~6_combout\,
	combout => \Equal8~3_combout\);

-- Location: LCCOMB_X24_Y14_N18
\Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~4_combout\ = (!byte_index(1) & (!byte_index(0) & \Equal8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(0),
	datad => \Equal8~3_combout\,
	combout => \Equal8~4_combout\);

-- Location: LCCOMB_X24_Y14_N16
\Selector2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~28_combout\ = (\s_state.IP_HEADER~q\ & ((\Selector2~25_combout\) # ((\s_state.IDLE~q\ & !\Equal8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datab => \Selector2~25_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal8~4_combout\,
	combout => \Selector2~28_combout\);

-- Location: LCCOMB_X24_Y13_N22
\Selector2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~31_combout\ = (\s_state.ETHERNET_HEADER~q\) # ((\s_state.CRC~q\) # ((!\s_state.IDLE~q\ & !\in_startofpacket~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \in_startofpacket~input_o\,
	datad => \s_state.CRC~q\,
	combout => \Selector2~31_combout\);

-- Location: LCCOMB_X24_Y14_N30
\Selector2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~29_combout\ = (\s_state.IDLE~q\ & !\s_state.IP_HEADER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datad => \s_state.IP_HEADER~q\,
	combout => \Selector2~29_combout\);

-- Location: LCCOMB_X24_Y14_N12
\next_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~8_combout\ = (!byte_index(1) & (byte_index(0) & (\in_valid~input_o\ & \out_ready~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(0),
	datac => \in_valid~input_o\,
	datad => \out_ready~input_o\,
	combout => \next_state~8_combout\);

-- Location: LCCOMB_X24_Y16_N12
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (ip_header_length(5) & ((ip_header_length(4) & (!ip_header_length(2) & !ip_header_length(3))) # (!ip_header_length(4) & (ip_header_length(2) & ip_header_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(4),
	datab => ip_header_length(2),
	datac => ip_header_length(5),
	datad => ip_header_length(3),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X24_Y16_N18
\next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~9_combout\ = (\Add7~0_combout\ & (\Equal8~1_combout\ & (\Add6~1_combout\ $ (!byte_index(3))))) # (!\Add7~0_combout\ & (!\Equal8~1_combout\ & (\Add6~1_combout\ $ (!byte_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \Equal8~1_combout\,
	datac => \Add6~1_combout\,
	datad => byte_index(3),
	combout => \next_state~9_combout\);

-- Location: LCCOMB_X24_Y16_N20
\next_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~7_combout\ = (\Add6~0_combout\ & ((byte_index(4) & (!\Equal8~0_combout\ & \Add6~1_combout\)) # (!byte_index(4) & (\Equal8~0_combout\ & !\Add6~1_combout\)))) # (!\Add6~0_combout\ & (!\Equal8~0_combout\ & (byte_index(4) $ (\Add6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => byte_index(4),
	datac => \Equal8~0_combout\,
	datad => \Add6~1_combout\,
	combout => \next_state~7_combout\);

-- Location: LCCOMB_X24_Y14_N22
\next_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = (\next_state~8_combout\ & (\next_state~9_combout\ & (\next_state~6_combout\ & \next_state~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~8_combout\,
	datab => \next_state~9_combout\,
	datac => \next_state~6_combout\,
	datad => \next_state~7_combout\,
	combout => \next_state~10_combout\);

-- Location: LCCOMB_X24_Y12_N18
\Selector2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~30_combout\ = (!\Selector1~13_combout\ & (\Selector2~29_combout\ & ((\s_state.DATA~q\) # (!\next_state~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~13_combout\,
	datab => \s_state.DATA~q\,
	datac => \Selector2~29_combout\,
	datad => \next_state~10_combout\,
	combout => \Selector2~30_combout\);

-- Location: LCCOMB_X24_Y14_N4
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\s_state.IP_HEADER~q\ & (!\Equal5~1_combout\ & \Selector1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.IP_HEADER~q\,
	datac => \Equal5~1_combout\,
	datad => \Selector1~4_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X24_Y14_N2
\Selector2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~26_combout\ = (\s_state.CRC~q\) # ((\Selector2~0_combout\ & \Selector2~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => \Selector2~0_combout\,
	datad => \Selector2~25_combout\,
	combout => \Selector2~26_combout\);

-- Location: LCCOMB_X26_Y8_N12
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ((\in_data[3]~input_o\) # (!\in_data[4]~input_o\)) # (!\in_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[0]~input_o\,
	datac => \in_data[3]~input_o\,
	datad => \in_data[4]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X26_Y8_N14
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (!\s_state.CRC~q\ & ((\Equal6~0_combout\) # ((\in_data[7]~input_o\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \in_data[7]~input_o\,
	datad => \s_state.CRC~q\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X21_Y16_N0
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

-- Location: LCCOMB_X21_Y18_N20
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

-- Location: LCCOMB_X24_Y16_N10
\Equal9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~10_combout\ = \Equal8~0_combout\ $ (((!ip_header_length(2) & (ip_header_length(4) & !ip_header_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(3),
	combout => \Equal9~10_combout\);

-- Location: LCCOMB_X24_Y16_N8
\Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~6_combout\ = (byte_index(2) & (ip_header_length(2) & (ip_header_length(3) $ (!byte_index(3))))) # (!byte_index(2) & (!ip_header_length(2) & (ip_header_length(3) $ (!byte_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => ip_header_length(3),
	datac => ip_header_length(2),
	datad => byte_index(3),
	combout => \Equal9~6_combout\);

-- Location: LCCOMB_X24_Y16_N26
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (ip_header_length(5) & (!ip_header_length(2) & (ip_header_length(4) & !ip_header_length(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(5),
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(3),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X25_Y16_N6
\Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~7_combout\ = (\Add3~0_combout\ & (\Equal8~1_combout\ & (ip_header_length(4) $ (byte_index(4))))) # (!\Add3~0_combout\ & (!\Equal8~1_combout\ & (ip_header_length(4) $ (byte_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => ip_header_length(4),
	datac => \Equal8~1_combout\,
	datad => byte_index(4),
	combout => \Equal9~7_combout\);

-- Location: LCCOMB_X25_Y16_N24
\Equal9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~8_combout\ = (!\Equal9~10_combout\ & (\Equal9~6_combout\ & (\Equal0~7_combout\ & \Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~10_combout\,
	datab => \Equal9~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal9~7_combout\,
	combout => \Equal9~8_combout\);

-- Location: LCCOMB_X25_Y16_N20
\Equal9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~9_combout\ = (!byte_index(1) & (byte_index(0) & \Equal9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datac => byte_index(0),
	datad => \Equal9~8_combout\,
	combout => \Equal9~9_combout\);

-- Location: LCCOMB_X24_Y14_N10
\udp_length[31]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[31]~36_combout\ = (\in_valid~input_o\ & (\s_state.UDP_HEADER~q\ & \out_ready~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \s_state.UDP_HEADER~q\,
	datad => \out_ready~input_o\,
	combout => \udp_length[31]~36_combout\);

-- Location: LCCOMB_X25_Y16_N30
\udp_length[31]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[31]~37_combout\ = (\udp_length[31]~36_combout\ & (\Equal9~8_combout\ & (byte_index(0) $ (byte_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \udp_length[31]~36_combout\,
	datab => byte_index(0),
	datac => byte_index(1),
	datad => \Equal9~8_combout\,
	combout => \udp_length[31]~37_combout\);

-- Location: FF_X21_Y16_N1
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(0));

-- Location: LCCOMB_X21_Y16_N2
\udp_length[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[1]~34_combout\ = (udp_length(1) & ((\in_data[1]~input_o\ & (\udp_length[0]~33\ & VCC)) # (!\in_data[1]~input_o\ & (!\udp_length[0]~33\)))) # (!udp_length(1) & ((\in_data[1]~input_o\ & (!\udp_length[0]~33\)) # (!\in_data[1]~input_o\ & 
-- ((\udp_length[0]~33\) # (GND)))))
-- \udp_length[1]~35\ = CARRY((udp_length(1) & (!\in_data[1]~input_o\ & !\udp_length[0]~33\)) # (!udp_length(1) & ((!\udp_length[0]~33\) # (!\in_data[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(1),
	datab => \in_data[1]~input_o\,
	datad => VCC,
	cin => \udp_length[0]~33\,
	combout => \udp_length[1]~34_combout\,
	cout => \udp_length[1]~35\);

-- Location: FF_X21_Y16_N3
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(1));

-- Location: LCCOMB_X21_Y16_N4
\udp_length[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[2]~38_combout\ = ((udp_length(2) $ (\in_data[2]~input_o\ $ (!\udp_length[1]~35\)))) # (GND)
-- \udp_length[2]~39\ = CARRY((udp_length(2) & ((\in_data[2]~input_o\) # (!\udp_length[1]~35\))) # (!udp_length(2) & (\in_data[2]~input_o\ & !\udp_length[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(2),
	datab => \in_data[2]~input_o\,
	datad => VCC,
	cin => \udp_length[1]~35\,
	combout => \udp_length[2]~38_combout\,
	cout => \udp_length[2]~39\);

-- Location: FF_X21_Y16_N5
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(2));

-- Location: LCCOMB_X21_Y16_N6
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

-- Location: FF_X21_Y16_N7
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(3));

-- Location: LCCOMB_X21_Y16_N8
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

-- Location: FF_X21_Y16_N9
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(4));

-- Location: LCCOMB_X21_Y16_N10
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

-- Location: FF_X21_Y16_N11
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(5));

-- Location: LCCOMB_X21_Y16_N12
\udp_length[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[6]~46_combout\ = ((\in_data[6]~input_o\ $ (udp_length(6) $ (!\udp_length[5]~45\)))) # (GND)
-- \udp_length[6]~47\ = CARRY((\in_data[6]~input_o\ & ((udp_length(6)) # (!\udp_length[5]~45\))) # (!\in_data[6]~input_o\ & (udp_length(6) & !\udp_length[5]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[6]~input_o\,
	datab => udp_length(6),
	datad => VCC,
	cin => \udp_length[5]~45\,
	combout => \udp_length[6]~46_combout\,
	cout => \udp_length[6]~47\);

-- Location: FF_X21_Y16_N13
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(6));

-- Location: LCCOMB_X21_Y16_N14
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

-- Location: FF_X21_Y16_N15
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(7));

-- Location: LCCOMB_X21_Y16_N16
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

-- Location: FF_X21_Y16_N17
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(8));

-- Location: LCCOMB_X21_Y16_N18
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

-- Location: FF_X21_Y16_N19
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(9));

-- Location: LCCOMB_X21_Y16_N20
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

-- Location: FF_X21_Y16_N21
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(10));

-- Location: LCCOMB_X21_Y16_N22
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

-- Location: FF_X21_Y16_N23
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(11));

-- Location: LCCOMB_X21_Y16_N24
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

-- Location: FF_X21_Y16_N25
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(12));

-- Location: LCCOMB_X21_Y16_N26
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

-- Location: FF_X21_Y16_N27
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(13));

-- Location: LCCOMB_X21_Y16_N28
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

-- Location: FF_X21_Y16_N29
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(14));

-- Location: LCCOMB_X21_Y16_N30
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

-- Location: FF_X21_Y16_N31
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(15));

-- Location: LCCOMB_X21_Y15_N0
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

-- Location: FF_X21_Y15_N1
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(16));

-- Location: LCCOMB_X21_Y15_N2
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

-- Location: FF_X21_Y15_N3
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(17));

-- Location: LCCOMB_X21_Y15_N4
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

-- Location: FF_X21_Y15_N5
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(18));

-- Location: LCCOMB_X21_Y15_N6
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

-- Location: FF_X21_Y15_N7
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(19));

-- Location: LCCOMB_X21_Y15_N8
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

-- Location: FF_X21_Y15_N9
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(20));

-- Location: LCCOMB_X21_Y15_N10
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

-- Location: FF_X21_Y15_N11
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(21));

-- Location: LCCOMB_X21_Y15_N12
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

-- Location: FF_X21_Y15_N13
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(22));

-- Location: LCCOMB_X21_Y15_N14
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

-- Location: FF_X21_Y15_N15
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(23));

-- Location: LCCOMB_X21_Y15_N16
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

-- Location: FF_X21_Y15_N17
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(24));

-- Location: LCCOMB_X21_Y15_N18
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

-- Location: FF_X21_Y15_N19
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(25));

-- Location: LCCOMB_X21_Y15_N20
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

-- Location: FF_X21_Y15_N21
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(26));

-- Location: LCCOMB_X22_Y16_N0
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = udp_length(0) $ (VCC)
-- \Add9~1\ = CARRY(udp_length(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X22_Y16_N2
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

-- Location: LCCOMB_X22_Y16_N4
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

-- Location: LCCOMB_X22_Y16_N6
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Add6~1_combout\ & ((udp_length(3) & (!\Add9~5\)) # (!udp_length(3) & ((\Add9~5\) # (GND))))) # (!\Add6~1_combout\ & ((udp_length(3) & (\Add9~5\ & VCC)) # (!udp_length(3) & (!\Add9~5\))))
-- \Add9~7\ = CARRY((\Add6~1_combout\ & ((!\Add9~5\) # (!udp_length(3)))) # (!\Add6~1_combout\ & (!udp_length(3) & !\Add9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~1_combout\,
	datab => udp_length(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X22_Y16_N8
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

-- Location: LCCOMB_X22_Y16_N10
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

-- Location: LCCOMB_X22_Y16_N12
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

-- Location: LCCOMB_X22_Y16_N14
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

-- Location: LCCOMB_X22_Y16_N16
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

-- Location: LCCOMB_X22_Y16_N18
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

-- Location: LCCOMB_X22_Y16_N20
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (udp_length(10) & (\Add9~19\ $ (GND))) # (!udp_length(10) & (!\Add9~19\ & VCC))
-- \Add9~21\ = CARRY((udp_length(10) & !\Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(10),
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X22_Y16_N22
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

-- Location: LCCOMB_X22_Y16_N24
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

-- Location: LCCOMB_X22_Y16_N26
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

-- Location: LCCOMB_X22_Y16_N28
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

-- Location: LCCOMB_X22_Y16_N30
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

-- Location: LCCOMB_X22_Y15_N0
\Add9~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = (udp_length(16) & (\Add9~31\ $ (GND))) # (!udp_length(16) & (!\Add9~31\ & VCC))
-- \Add9~33\ = CARRY((udp_length(16) & !\Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(16),
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: LCCOMB_X22_Y15_N2
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

-- Location: LCCOMB_X22_Y15_N4
\Add9~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (udp_length(18) & (\Add9~35\ $ (GND))) # (!udp_length(18) & (!\Add9~35\ & VCC))
-- \Add9~37\ = CARRY((udp_length(18) & !\Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(18),
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: LCCOMB_X22_Y15_N6
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

-- Location: LCCOMB_X22_Y15_N8
\Add9~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (udp_length(20) & (\Add9~39\ $ (GND))) # (!udp_length(20) & (!\Add9~39\ & VCC))
-- \Add9~41\ = CARRY((udp_length(20) & !\Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(20),
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: LCCOMB_X22_Y15_N10
\Add9~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (udp_length(21) & (!\Add9~41\)) # (!udp_length(21) & ((\Add9~41\) # (GND)))
-- \Add9~43\ = CARRY((!\Add9~41\) # (!udp_length(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(21),
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: LCCOMB_X22_Y15_N12
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

-- Location: LCCOMB_X22_Y15_N14
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

-- Location: LCCOMB_X22_Y15_N16
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

-- Location: LCCOMB_X22_Y15_N18
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

-- Location: LCCOMB_X22_Y15_N20
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

-- Location: LCCOMB_X23_Y16_N0
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

-- Location: LCCOMB_X23_Y16_N2
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

-- Location: LCCOMB_X23_Y16_N4
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\Add9~4_combout\ & (\Add10~3_cout\ $ (GND))) # (!\Add9~4_combout\ & (!\Add10~3_cout\ & VCC))
-- \Add10~5\ = CARRY((\Add9~4_combout\ & !\Add10~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~4_combout\,
	datad => VCC,
	cin => \Add10~3_cout\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X23_Y16_N6
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

-- Location: LCCOMB_X23_Y16_N8
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

-- Location: LCCOMB_X23_Y16_N10
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

-- Location: LCCOMB_X23_Y16_N12
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

-- Location: LCCOMB_X23_Y16_N14
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

-- Location: LCCOMB_X23_Y16_N16
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

-- Location: LCCOMB_X23_Y16_N18
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

-- Location: LCCOMB_X23_Y16_N20
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

-- Location: LCCOMB_X23_Y16_N22
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

-- Location: LCCOMB_X23_Y16_N24
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

-- Location: LCCOMB_X23_Y16_N26
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

-- Location: LCCOMB_X23_Y16_N28
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

-- Location: LCCOMB_X23_Y16_N30
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

-- Location: LCCOMB_X23_Y15_N0
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

-- Location: LCCOMB_X23_Y15_N2
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

-- Location: LCCOMB_X23_Y15_N4
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

-- Location: LCCOMB_X23_Y15_N6
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

-- Location: LCCOMB_X23_Y15_N8
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

-- Location: LCCOMB_X23_Y15_N10
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

-- Location: LCCOMB_X23_Y15_N12
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

-- Location: LCCOMB_X23_Y15_N14
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

-- Location: LCCOMB_X23_Y15_N16
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

-- Location: LCCOMB_X23_Y15_N18
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

-- Location: LCCOMB_X23_Y15_N20
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

-- Location: LCCOMB_X21_Y15_N22
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

-- Location: FF_X21_Y15_N23
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(27));

-- Location: LCCOMB_X22_Y15_N22
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

-- Location: LCCOMB_X23_Y15_N22
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

-- Location: LCCOMB_X23_Y12_N16
\Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (byte_index(26) & (\Add10~52_combout\ & (byte_index(27) $ (!\Add10~54_combout\)))) # (!byte_index(26) & (!\Add10~52_combout\ & (byte_index(27) $ (!\Add10~54_combout\))))

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
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X21_Y15_N24
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

-- Location: FF_X21_Y15_N25
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(28));

-- Location: LCCOMB_X21_Y15_N26
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

-- Location: FF_X21_Y15_N27
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(29));

-- Location: LCCOMB_X21_Y15_N28
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

-- Location: FF_X21_Y15_N29
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(30));

-- Location: LCCOMB_X21_Y15_N30
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

-- Location: FF_X21_Y15_N31
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
	sload => \Equal9~9_combout\,
	ena => \udp_length[31]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => udp_length(31));

-- Location: LCCOMB_X22_Y15_N24
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

-- Location: LCCOMB_X22_Y15_N26
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

-- Location: LCCOMB_X22_Y15_N28
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

-- Location: LCCOMB_X22_Y15_N30
\Add9~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = \Add9~61\ $ (udp_length(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => udp_length(31),
	cin => \Add9~61\,
	combout => \Add9~62_combout\);

-- Location: LCCOMB_X23_Y15_N24
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

-- Location: LCCOMB_X23_Y15_N26
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

-- Location: LCCOMB_X23_Y15_N28
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

-- Location: LCCOMB_X23_Y15_N30
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

-- Location: LCCOMB_X24_Y12_N4
\Selector2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~23_combout\ = (byte_index(31) & (\Add10~62_combout\ & (byte_index(30) $ (!\Add10~60_combout\)))) # (!byte_index(31) & (!\Add10~62_combout\ & (byte_index(30) $ (!\Add10~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => \Add10~62_combout\,
	datac => byte_index(30),
	datad => \Add10~60_combout\,
	combout => \Selector2~23_combout\);

-- Location: LCCOMB_X23_Y12_N8
\Selector2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~21_combout\ = (byte_index(24) & (\Add10~48_combout\ & (byte_index(25) $ (!\Add10~50_combout\)))) # (!byte_index(24) & (!\Add10~48_combout\ & (byte_index(25) $ (!\Add10~50_combout\))))

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
	combout => \Selector2~21_combout\);

-- Location: LCCOMB_X23_Y12_N30
\Selector2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~16_combout\ = (byte_index(17) & (\Add10~34_combout\ & (byte_index(16) $ (!\Add10~32_combout\)))) # (!byte_index(17) & (!\Add10~34_combout\ & (byte_index(16) $ (!\Add10~32_combout\))))

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
	combout => \Selector2~16_combout\);

-- Location: LCCOMB_X23_Y12_N14
\Selector2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~18_combout\ = (byte_index(20) & (\Add10~40_combout\ & (byte_index(21) $ (!\Add10~42_combout\)))) # (!byte_index(20) & (!\Add10~40_combout\ & (byte_index(21) $ (!\Add10~42_combout\))))

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
	combout => \Selector2~18_combout\);

-- Location: LCCOMB_X23_Y12_N4
\Selector2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~17_combout\ = (byte_index(18) & (\Add10~36_combout\ & (byte_index(19) $ (!\Add10~38_combout\)))) # (!byte_index(18) & (!\Add10~36_combout\ & (byte_index(19) $ (!\Add10~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(18),
	datab => byte_index(19),
	datac => \Add10~36_combout\,
	datad => \Add10~38_combout\,
	combout => \Selector2~17_combout\);

-- Location: LCCOMB_X23_Y12_N24
\Selector2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~19_combout\ = (byte_index(22) & (\Add10~44_combout\ & (byte_index(23) $ (!\Add10~46_combout\)))) # (!byte_index(22) & (!\Add10~44_combout\ & (byte_index(23) $ (!\Add10~46_combout\))))

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
	combout => \Selector2~19_combout\);

-- Location: LCCOMB_X23_Y12_N10
\Selector2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~20_combout\ = (\Selector2~16_combout\ & (\Selector2~18_combout\ & (\Selector2~17_combout\ & \Selector2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~16_combout\,
	datab => \Selector2~18_combout\,
	datac => \Selector2~17_combout\,
	datad => \Selector2~19_combout\,
	combout => \Selector2~20_combout\);

-- Location: LCCOMB_X23_Y12_N6
\Selector2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~22_combout\ = (\Selector2~21_combout\ & (\Selector2~20_combout\ & (\Add10~58_combout\ $ (!byte_index(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~58_combout\,
	datab => byte_index(29),
	datac => \Selector2~21_combout\,
	datad => \Selector2~20_combout\,
	combout => \Selector2~22_combout\);

-- Location: LCCOMB_X24_Y16_N28
\Selector2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~8_combout\ = (\Add10~12_combout\ & (byte_index(6) & (byte_index(7) $ (!\Add10~14_combout\)))) # (!\Add10~12_combout\ & (!byte_index(6) & (byte_index(7) $ (!\Add10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~12_combout\,
	datab => byte_index(6),
	datac => byte_index(7),
	datad => \Add10~14_combout\,
	combout => \Selector2~8_combout\);

-- Location: LCCOMB_X22_Y13_N4
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (byte_index(1) & (udp_length(1) & (byte_index(0) $ (!udp_length(0))))) # (!byte_index(1) & (!udp_length(1) & (byte_index(0) $ (!udp_length(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => udp_length(1),
	datac => byte_index(0),
	datad => udp_length(0),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = byte_index(2) $ (\Add10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datac => \Add10~4_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X23_Y13_N14
\Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (\Equal12~0_combout\ & (!\Equal14~0_combout\ & (byte_index(3) $ (!\Add10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => \Equal12~0_combout\,
	datac => \Add10~6_combout\,
	datad => \Equal14~0_combout\,
	combout => \Selector2~6_combout\);

-- Location: LCCOMB_X24_Y15_N14
\Selector2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~7_combout\ = (byte_index(4) & (\Add10~8_combout\ & (byte_index(5) $ (!\Add10~10_combout\)))) # (!byte_index(4) & (!\Add10~8_combout\ & (byte_index(5) $ (!\Add10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(5),
	datac => \Add10~8_combout\,
	datad => \Add10~10_combout\,
	combout => \Selector2~7_combout\);

-- Location: LCCOMB_X23_Y13_N26
\Selector2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~10_combout\ = (byte_index(10) & (\Add10~20_combout\ & (byte_index(11) $ (!\Add10~22_combout\)))) # (!byte_index(10) & (!\Add10~20_combout\ & (byte_index(11) $ (!\Add10~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(10),
	datab => byte_index(11),
	datac => \Add10~20_combout\,
	datad => \Add10~22_combout\,
	combout => \Selector2~10_combout\);

-- Location: LCCOMB_X23_Y13_N0
\Selector2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~9_combout\ = (byte_index(8) & (\Add10~16_combout\ & (byte_index(9) $ (!\Add10~18_combout\)))) # (!byte_index(8) & (!\Add10~16_combout\ & (byte_index(9) $ (!\Add10~18_combout\))))

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
	combout => \Selector2~9_combout\);

-- Location: LCCOMB_X23_Y13_N4
\Selector2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~11_combout\ = (byte_index(13) & (\Add10~26_combout\ & (\Add10~24_combout\ $ (!byte_index(12))))) # (!byte_index(13) & (!\Add10~26_combout\ & (\Add10~24_combout\ $ (!byte_index(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datab => \Add10~24_combout\,
	datac => byte_index(12),
	datad => \Add10~26_combout\,
	combout => \Selector2~11_combout\);

-- Location: LCCOMB_X23_Y13_N10
\Selector2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~12_combout\ = (byte_index(14) & (\Add10~28_combout\ & (byte_index(15) $ (!\Add10~30_combout\)))) # (!byte_index(14) & (!\Add10~28_combout\ & (byte_index(15) $ (!\Add10~30_combout\))))

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
	combout => \Selector2~12_combout\);

-- Location: LCCOMB_X23_Y13_N8
\Selector2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~13_combout\ = (\Selector2~10_combout\ & (\Selector2~9_combout\ & (\Selector2~11_combout\ & \Selector2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~10_combout\,
	datab => \Selector2~9_combout\,
	datac => \Selector2~11_combout\,
	datad => \Selector2~12_combout\,
	combout => \Selector2~13_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Selector2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~14_combout\ = (\Selector2~8_combout\ & (\Selector2~6_combout\ & (\Selector2~7_combout\ & \Selector2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~8_combout\,
	datab => \Selector2~6_combout\,
	datac => \Selector2~7_combout\,
	datad => \Selector2~13_combout\,
	combout => \Selector2~14_combout\);

-- Location: LCCOMB_X24_Y12_N6
\Selector2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~15_combout\ = (\s_state.CRC~q\ & (\Selector2~14_combout\ & (byte_index(28) $ (!\Add10~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(28),
	datab => \Add10~56_combout\,
	datac => \s_state.CRC~q\,
	datad => \Selector2~14_combout\,
	combout => \Selector2~15_combout\);

-- Location: LCCOMB_X24_Y12_N2
\Selector2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~24_combout\ = (\Selector2~5_combout\ & (\Selector2~23_combout\ & (\Selector2~22_combout\ & \Selector2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~5_combout\,
	datab => \Selector2~23_combout\,
	datac => \Selector2~22_combout\,
	datad => \Selector2~15_combout\,
	combout => \Selector2~24_combout\);

-- Location: LCCOMB_X24_Y12_N28
\Selector2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~27_combout\ = (\Selector2~26_combout\ & ((\Selector2~4_combout\) # ((\out_ready~input_o\ & \Selector2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Selector2~26_combout\,
	datac => \Selector2~4_combout\,
	datad => \Selector2~24_combout\,
	combout => \Selector2~27_combout\);

-- Location: LCCOMB_X24_Y12_N24
\Selector2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~32_combout\ = (\Selector2~27_combout\) # ((!\Selector2~28_combout\ & (!\Selector2~31_combout\ & !\Selector2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~28_combout\,
	datab => \Selector2~31_combout\,
	datac => \Selector2~30_combout\,
	datad => \Selector2~27_combout\,
	combout => \Selector2~32_combout\);

-- Location: LCCOMB_X25_Y13_N14
\Selector2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~33_combout\ = (\PROCES1~0_combout\ & (\PROCES1~1_combout\ & (\s_state.IP_HEADER~q\ & \Equal23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~0_combout\,
	datab => \PROCES1~1_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal23~1_combout\,
	combout => \Selector2~33_combout\);

-- Location: LCCOMB_X24_Y12_N26
\Selector2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~35_combout\ = (\Selector2~34_combout\ & (!\Selector2~33_combout\ & ((\Selector2~3_combout\) # (!\Selector2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~34_combout\,
	datab => \Selector2~32_combout\,
	datac => \Selector2~3_combout\,
	datad => \Selector2~33_combout\,
	combout => \Selector2~35_combout\);

-- Location: FF_X24_Y12_N27
\s_state.IP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~35_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IP_HEADER~q\);

-- Location: LCCOMB_X24_Y14_N0
\Selector1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~9_combout\ = (\s_state.CRC~q\) # ((\Selector1~4_combout\ & (\s_state.IP_HEADER~q\ & !\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~4_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \Equal5~1_combout\,
	datad => \s_state.CRC~q\,
	combout => \Selector1~9_combout\);

-- Location: LCCOMB_X24_Y14_N26
\Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (\s_state.CRC~q\) # ((\Selector2~0_combout\) # (\s_state.ETHERNET_HEADER~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.CRC~q\,
	datac => \Selector2~0_combout\,
	datad => \s_state.ETHERNET_HEADER~q\,
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X24_Y14_N8
\Selector1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = (\Selector1~3_combout\) # ((\Selector38~0_combout\) # ((\Selector2~3_combout\ & \Selector1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~3_combout\,
	datab => \Selector2~3_combout\,
	datac => \Selector1~5_combout\,
	datad => \Selector38~0_combout\,
	combout => \Selector1~6_combout\);

-- Location: LCCOMB_X24_Y12_N20
\Selector1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~10_combout\ = (!\s_state.ETHERNET_HEADER~q\ & ((\Selector2~4_combout\) # ((\out_ready~input_o\ & \Selector2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \Selector2~4_combout\,
	datad => \Selector2~24_combout\,
	combout => \Selector1~10_combout\);

-- Location: LCCOMB_X24_Y12_N14
\Selector1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~11_combout\ = (\Selector1~6_combout\) # ((\Selector1~8_combout\) # ((\Selector1~9_combout\ & \Selector1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~9_combout\,
	datab => \Selector1~6_combout\,
	datac => \Selector1~8_combout\,
	datad => \Selector1~10_combout\,
	combout => \Selector1~11_combout\);

-- Location: LCCOMB_X24_Y12_N8
\s_state.CRC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state.CRC~0_combout\ = (\Selector1~13_combout\) # ((!\Selector1~11_combout\ & \s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~11_combout\,
	datac => \s_state.CRC~q\,
	datad => \Selector1~13_combout\,
	combout => \s_state.CRC~0_combout\);

-- Location: FF_X24_Y12_N9
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

-- Location: LCCOMB_X25_Y12_N18
\byte_index[31]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~54_combout\ = (!\s_state.UDP_HEADER~q\ & (!\s_state.DATA~q\ & (!\s_state.IP_HEADER~q\ & !\s_state.ETHERNET_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.UDP_HEADER~q\,
	datab => \s_state.DATA~q\,
	datac => \s_state.IP_HEADER~q\,
	datad => \s_state.ETHERNET_HEADER~q\,
	combout => \byte_index[31]~54_combout\);

-- Location: LCCOMB_X25_Y12_N22
\byte_index[31]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~104_combout\ = (\out_ready~input_o\ & (((\byte_index[31]~54_combout\) # (\in_valid~input_o\)))) # (!\out_ready~input_o\ & (!\s_state.CRC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \byte_index[31]~54_combout\,
	datac => \out_ready~input_o\,
	datad => \in_valid~input_o\,
	combout => \byte_index[31]~104_combout\);

-- Location: LCCOMB_X25_Y12_N0
\byte_index[31]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~55_combout\ = (\byte_index[31]~104_combout\ & (\PROCES2~0_combout\ & ((\s_state.IDLE~q\) # (\in_startofpacket~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_index[31]~104_combout\,
	datab => \s_state.IDLE~q\,
	datac => \PROCES2~0_combout\,
	datad => \in_startofpacket~input_o\,
	combout => \byte_index[31]~55_combout\);

-- Location: FF_X25_Y13_N31
\byte_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[1]~36_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	sload => VCC,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(1));

-- Location: LCCOMB_X26_Y13_N4
\byte_index[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[2]~38_combout\ = (byte_index(2) & (\byte_index[1]~37\ $ (GND))) # (!byte_index(2) & (!\byte_index[1]~37\ & VCC))
-- \byte_index[2]~39\ = CARRY((byte_index(2) & !\byte_index[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datad => VCC,
	cin => \byte_index[1]~37\,
	combout => \byte_index[2]~38_combout\,
	cout => \byte_index[2]~39\);

-- Location: FF_X25_Y13_N27
\byte_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[2]~38_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	sload => VCC,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(2));

-- Location: LCCOMB_X26_Y13_N6
\byte_index[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[3]~40_combout\ = (byte_index(3) & (!\byte_index[2]~39\)) # (!byte_index(3) & ((\byte_index[2]~39\) # (GND)))
-- \byte_index[3]~41\ = CARRY((!\byte_index[2]~39\) # (!byte_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(3),
	datad => VCC,
	cin => \byte_index[2]~39\,
	combout => \byte_index[3]~40_combout\,
	cout => \byte_index[3]~41\);

-- Location: FF_X24_Y13_N17
\byte_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[3]~40_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	sload => VCC,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(3));

-- Location: LCCOMB_X26_Y13_N8
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

-- Location: FF_X26_Y13_N9
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
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(4));

-- Location: LCCOMB_X26_Y13_N10
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

-- Location: FF_X26_Y13_N11
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
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(5));

-- Location: LCCOMB_X26_Y13_N12
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

-- Location: FF_X26_Y13_N13
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
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(6));

-- Location: LCCOMB_X26_Y13_N14
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

-- Location: FF_X26_Y13_N15
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
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(7));

-- Location: LCCOMB_X26_Y13_N16
\byte_index[8]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[8]~56_combout\ = (byte_index(8) & (\byte_index[7]~49\ $ (GND))) # (!byte_index(8) & (!\byte_index[7]~49\ & VCC))
-- \byte_index[8]~57\ = CARRY((byte_index(8) & !\byte_index[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(8),
	datad => VCC,
	cin => \byte_index[7]~49\,
	combout => \byte_index[8]~56_combout\,
	cout => \byte_index[8]~57\);

-- Location: FF_X26_Y13_N17
\byte_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[8]~56_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(8));

-- Location: LCCOMB_X26_Y13_N18
\byte_index[9]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[9]~58_combout\ = (byte_index(9) & (!\byte_index[8]~57\)) # (!byte_index(9) & ((\byte_index[8]~57\) # (GND)))
-- \byte_index[9]~59\ = CARRY((!\byte_index[8]~57\) # (!byte_index(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datad => VCC,
	cin => \byte_index[8]~57\,
	combout => \byte_index[9]~58_combout\,
	cout => \byte_index[9]~59\);

-- Location: FF_X25_Y13_N13
\byte_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[9]~58_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	sload => VCC,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(9));

-- Location: LCCOMB_X26_Y13_N20
\byte_index[10]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[10]~60_combout\ = (byte_index(10) & (\byte_index[9]~59\ $ (GND))) # (!byte_index(10) & (!\byte_index[9]~59\ & VCC))
-- \byte_index[10]~61\ = CARRY((byte_index(10) & !\byte_index[9]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(10),
	datad => VCC,
	cin => \byte_index[9]~59\,
	combout => \byte_index[10]~60_combout\,
	cout => \byte_index[10]~61\);

-- Location: FF_X25_Y13_N11
\byte_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[10]~60_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	sload => VCC,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(10));

-- Location: LCCOMB_X26_Y13_N22
\byte_index[11]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[11]~62_combout\ = (byte_index(11) & (!\byte_index[10]~61\)) # (!byte_index(11) & ((\byte_index[10]~61\) # (GND)))
-- \byte_index[11]~63\ = CARRY((!\byte_index[10]~61\) # (!byte_index(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(11),
	datad => VCC,
	cin => \byte_index[10]~61\,
	combout => \byte_index[11]~62_combout\,
	cout => \byte_index[11]~63\);

-- Location: FF_X24_Y13_N25
\byte_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[11]~62_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	sload => VCC,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(11));

-- Location: LCCOMB_X26_Y13_N24
\byte_index[12]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[12]~64_combout\ = (byte_index(12) & (\byte_index[11]~63\ $ (GND))) # (!byte_index(12) & (!\byte_index[11]~63\ & VCC))
-- \byte_index[12]~65\ = CARRY((byte_index(12) & !\byte_index[11]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datad => VCC,
	cin => \byte_index[11]~63\,
	combout => \byte_index[12]~64_combout\,
	cout => \byte_index[12]~65\);

-- Location: FF_X24_Y13_N27
\byte_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[12]~64_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	sload => VCC,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(12));

-- Location: LCCOMB_X26_Y13_N26
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

-- Location: FF_X26_Y13_N27
\byte_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[13]~66_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(13));

-- Location: LCCOMB_X26_Y13_N28
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

-- Location: FF_X26_Y13_N29
\byte_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[14]~68_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(14));

-- Location: LCCOMB_X26_Y13_N30
\byte_index[15]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~70_combout\ = (byte_index(15) & (!\byte_index[14]~69\)) # (!byte_index(15) & ((\byte_index[14]~69\) # (GND)))
-- \byte_index[15]~71\ = CARRY((!\byte_index[14]~69\) # (!byte_index(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(15),
	datad => VCC,
	cin => \byte_index[14]~69\,
	combout => \byte_index[15]~70_combout\,
	cout => \byte_index[15]~71\);

-- Location: FF_X25_Y13_N5
\byte_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \byte_index[15]~70_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	sload => VCC,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(15));

-- Location: LCCOMB_X26_Y12_N0
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

-- Location: FF_X26_Y12_N1
\byte_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[16]~72_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(16));

-- Location: LCCOMB_X26_Y12_N2
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

-- Location: FF_X26_Y12_N3
\byte_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[17]~74_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(17));

-- Location: LCCOMB_X26_Y12_N4
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

-- Location: FF_X26_Y12_N5
\byte_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[18]~76_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(18));

-- Location: LCCOMB_X26_Y12_N6
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

-- Location: FF_X26_Y12_N7
\byte_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[19]~78_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(19));

-- Location: LCCOMB_X26_Y12_N8
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

-- Location: FF_X26_Y12_N9
\byte_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[20]~80_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(20));

-- Location: LCCOMB_X26_Y12_N10
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

-- Location: FF_X26_Y12_N11
\byte_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[21]~82_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(21));

-- Location: LCCOMB_X26_Y12_N12
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

-- Location: FF_X26_Y12_N13
\byte_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[22]~84_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(22));

-- Location: LCCOMB_X26_Y12_N14
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

-- Location: FF_X26_Y12_N15
\byte_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[23]~86_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(23));

-- Location: LCCOMB_X26_Y12_N16
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

-- Location: FF_X26_Y12_N17
\byte_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[24]~88_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(24));

-- Location: LCCOMB_X26_Y12_N18
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

-- Location: FF_X26_Y12_N19
\byte_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[25]~90_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(25));

-- Location: LCCOMB_X26_Y12_N20
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

-- Location: FF_X26_Y12_N21
\byte_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[26]~92_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(26));

-- Location: LCCOMB_X26_Y12_N22
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

-- Location: FF_X26_Y12_N23
\byte_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[27]~94_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(27));

-- Location: FF_X26_Y12_N25
\byte_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[28]~96_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[4]~53_combout\,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(28));

-- Location: LCCOMB_X25_Y12_N28
\Equal13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~18_combout\ = (byte_index(28) & (\Add9~56_combout\ & (byte_index(29) $ (!\Add9~58_combout\)))) # (!byte_index(28) & (!\Add9~56_combout\ & (byte_index(29) $ (!\Add9~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(28),
	datab => byte_index(29),
	datac => \Add9~58_combout\,
	datad => \Add9~56_combout\,
	combout => \Equal13~18_combout\);

-- Location: LCCOMB_X25_Y12_N8
\Equal13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~17_combout\ = (\Add9~54_combout\ & (byte_index(27) & (byte_index(26) $ (!\Add9~52_combout\)))) # (!\Add9~54_combout\ & (!byte_index(27) & (byte_index(26) $ (!\Add9~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~54_combout\,
	datab => byte_index(26),
	datac => \Add9~52_combout\,
	datad => byte_index(27),
	combout => \Equal13~17_combout\);

-- Location: LCCOMB_X24_Y15_N30
\Equal13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~14_combout\ = (byte_index(22) & (\Add9~44_combout\ & (byte_index(23) $ (!\Add9~46_combout\)))) # (!byte_index(22) & (!\Add9~44_combout\ & (byte_index(23) $ (!\Add9~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datab => byte_index(23),
	datac => \Add9~44_combout\,
	datad => \Add9~46_combout\,
	combout => \Equal13~14_combout\);

-- Location: LCCOMB_X24_Y15_N18
\Equal13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~12_combout\ = (byte_index(18) & (\Add9~36_combout\ & (\Add9~38_combout\ $ (!byte_index(19))))) # (!byte_index(18) & (!\Add9~36_combout\ & (\Add9~38_combout\ $ (!byte_index(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(18),
	datab => \Add9~36_combout\,
	datac => \Add9~38_combout\,
	datad => byte_index(19),
	combout => \Equal13~12_combout\);

-- Location: LCCOMB_X24_Y15_N8
\Equal13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~13_combout\ = (byte_index(20) & (\Add9~40_combout\ & (byte_index(21) $ (!\Add9~42_combout\)))) # (!byte_index(20) & (!\Add9~40_combout\ & (byte_index(21) $ (!\Add9~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(20),
	datab => byte_index(21),
	datac => \Add9~40_combout\,
	datad => \Add9~42_combout\,
	combout => \Equal13~13_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Equal13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~11_combout\ = (byte_index(17) & (\Add9~34_combout\ & (byte_index(16) $ (!\Add9~32_combout\)))) # (!byte_index(17) & (!\Add9~34_combout\ & (byte_index(16) $ (!\Add9~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(17),
	datab => byte_index(16),
	datac => \Add9~34_combout\,
	datad => \Add9~32_combout\,
	combout => \Equal13~11_combout\);

-- Location: LCCOMB_X24_Y15_N12
\Equal13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~15_combout\ = (\Equal13~14_combout\ & (\Equal13~12_combout\ & (\Equal13~13_combout\ & \Equal13~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~14_combout\,
	datab => \Equal13~12_combout\,
	datac => \Equal13~13_combout\,
	datad => \Equal13~11_combout\,
	combout => \Equal13~15_combout\);

-- Location: LCCOMB_X25_Y12_N10
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Equal13~18_combout\ & (\Equal13~17_combout\ & \Equal13~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal13~18_combout\,
	datac => \Equal13~17_combout\,
	datad => \Equal13~15_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X25_Y12_N30
\Equal13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~19_combout\ = (byte_index(30) & (\Add9~60_combout\ & (byte_index(31) $ (!\Add9~62_combout\)))) # (!byte_index(30) & (!\Add9~60_combout\ & (byte_index(31) $ (!\Add9~62_combout\))))

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
	combout => \Equal13~19_combout\);

-- Location: LCCOMB_X22_Y12_N14
\Equal13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~16_combout\ = (byte_index(24) & (\Add9~48_combout\ & (byte_index(25) $ (!\Add9~50_combout\)))) # (!byte_index(24) & (!\Add9~48_combout\ & (byte_index(25) $ (!\Add9~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(24),
	datab => byte_index(25),
	datac => \Add9~50_combout\,
	datad => \Add9~48_combout\,
	combout => \Equal13~16_combout\);

-- Location: LCCOMB_X22_Y13_N12
\Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (byte_index(4) & (\Add9~8_combout\ & (byte_index(5) $ (!\Add9~10_combout\)))) # (!byte_index(4) & (!\Add9~8_combout\ & (byte_index(5) $ (!\Add9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(5),
	datac => \Add9~10_combout\,
	datad => \Add9~8_combout\,
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X22_Y13_N20
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (byte_index(1) & (\Add9~2_combout\ & (byte_index(0) $ (!\Add9~0_combout\)))) # (!byte_index(1) & (!\Add9~2_combout\ & (byte_index(0) $ (!\Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => \Add9~2_combout\,
	datac => byte_index(0),
	datad => \Add9~0_combout\,
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X22_Y13_N22
\Equal13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~3_combout\ = (\Add9~14_combout\ & (byte_index(7) & (\Add9~12_combout\ $ (!byte_index(6))))) # (!\Add9~14_combout\ & (!byte_index(7) & (\Add9~12_combout\ $ (!byte_index(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~14_combout\,
	datab => byte_index(7),
	datac => \Add9~12_combout\,
	datad => byte_index(6),
	combout => \Equal13~3_combout\);

-- Location: LCCOMB_X22_Y13_N2
\Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (byte_index(3) & (\Add9~6_combout\ & (byte_index(2) $ (!\Add9~4_combout\)))) # (!byte_index(3) & (!\Add9~6_combout\ & (byte_index(2) $ (!\Add9~4_combout\))))

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
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X22_Y13_N28
\Equal13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~4_combout\ = (\Equal13~2_combout\ & (\Equal13~0_combout\ & (\Equal13~3_combout\ & \Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~2_combout\,
	datab => \Equal13~0_combout\,
	datac => \Equal13~3_combout\,
	datad => \Equal13~1_combout\,
	combout => \Equal13~4_combout\);

-- Location: LCCOMB_X23_Y13_N20
\Equal13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~6_combout\ = (byte_index(10) & (\Add9~20_combout\ & (byte_index(11) $ (!\Add9~22_combout\)))) # (!byte_index(10) & (!\Add9~20_combout\ & (byte_index(11) $ (!\Add9~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(10),
	datab => byte_index(11),
	datac => \Add9~20_combout\,
	datad => \Add9~22_combout\,
	combout => \Equal13~6_combout\);

-- Location: LCCOMB_X23_Y13_N18
\Equal13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~5_combout\ = (byte_index(8) & (\Add9~16_combout\ & (byte_index(9) $ (!\Add9~18_combout\)))) # (!byte_index(8) & (!\Add9~16_combout\ & (byte_index(9) $ (!\Add9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(8),
	datab => byte_index(9),
	datac => \Add9~18_combout\,
	datad => \Add9~16_combout\,
	combout => \Equal13~5_combout\);

-- Location: LCCOMB_X23_Y13_N30
\Equal13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~7_combout\ = (byte_index(13) & (\Add9~26_combout\ & (byte_index(12) $ (!\Add9~24_combout\)))) # (!byte_index(13) & (!\Add9~26_combout\ & (byte_index(12) $ (!\Add9~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datab => \Add9~26_combout\,
	datac => byte_index(12),
	datad => \Add9~24_combout\,
	combout => \Equal13~7_combout\);

-- Location: LCCOMB_X25_Y12_N16
\Equal13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~8_combout\ = byte_index(14) $ (\Add9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(14),
	datad => \Add9~28_combout\,
	combout => \Equal13~8_combout\);

-- Location: LCCOMB_X25_Y12_N12
\Equal13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~9_combout\ = (\Equal13~7_combout\ & (!\Equal13~8_combout\ & (byte_index(15) $ (!\Add9~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~7_combout\,
	datab => \Equal13~8_combout\,
	datac => byte_index(15),
	datad => \Add9~30_combout\,
	combout => \Equal13~9_combout\);

-- Location: LCCOMB_X25_Y12_N24
\Equal13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~10_combout\ = (\Equal13~4_combout\ & (\Equal13~6_combout\ & (\Equal13~5_combout\ & \Equal13~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~4_combout\,
	datab => \Equal13~6_combout\,
	datac => \Equal13~5_combout\,
	datad => \Equal13~9_combout\,
	combout => \Equal13~10_combout\);

-- Location: LCCOMB_X25_Y12_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\in_valid~input_o\ & (\Equal13~16_combout\ & (\out_ready~input_o\ & \Equal13~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~input_o\,
	datab => \Equal13~16_combout\,
	datac => \out_ready~input_o\,
	datad => \Equal13~10_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X25_Y12_N4
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1_combout\ & (\s_state.DATA~q\ & (\Equal13~19_combout\ & \Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \s_state.DATA~q\,
	datac => \Equal13~19_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X21_Y13_N0
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

-- Location: LCCOMB_X21_Y13_N2
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

-- Location: LCCOMB_X21_Y13_N4
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

-- Location: LCCOMB_X21_Y13_N6
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add9~6_combout\ & (\Add8~5\ & VCC)) # (!\Add9~6_combout\ & (!\Add8~5\))
-- \Add8~7\ = CARRY((!\Add9~6_combout\ & !\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X21_Y13_N8
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

-- Location: LCCOMB_X21_Y13_N10
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

-- Location: LCCOMB_X21_Y13_N12
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (\Add9~12_combout\ & ((GND) # (!\Add8~11\))) # (!\Add9~12_combout\ & (\Add8~11\ $ (GND)))
-- \Add8~13\ = CARRY((\Add9~12_combout\) # (!\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~12_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X21_Y13_N14
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\Add9~14_combout\ & (\Add8~13\ & VCC)) # (!\Add9~14_combout\ & (!\Add8~13\))
-- \Add8~15\ = CARRY((!\Add9~14_combout\ & !\Add8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~14_combout\,
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X21_Y13_N16
\Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (\Add9~16_combout\ & ((GND) # (!\Add8~15\))) # (!\Add9~16_combout\ & (\Add8~15\ $ (GND)))
-- \Add8~17\ = CARRY((\Add9~16_combout\) # (!\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~16_combout\,
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X21_Y13_N18
\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (\Add9~18_combout\ & (\Add8~17\ & VCC)) # (!\Add9~18_combout\ & (!\Add8~17\))
-- \Add8~19\ = CARRY((!\Add9~18_combout\ & !\Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~18_combout\,
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X21_Y13_N20
\Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (\Add9~20_combout\ & ((GND) # (!\Add8~19\))) # (!\Add9~20_combout\ & (\Add8~19\ $ (GND)))
-- \Add8~21\ = CARRY((\Add9~20_combout\) # (!\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~20_combout\,
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: LCCOMB_X21_Y13_N22
\Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (\Add9~22_combout\ & (\Add8~21\ & VCC)) # (!\Add9~22_combout\ & (!\Add8~21\))
-- \Add8~23\ = CARRY((!\Add9~22_combout\ & !\Add8~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~22_combout\,
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X21_Y13_N24
\Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (\Add9~24_combout\ & ((GND) # (!\Add8~23\))) # (!\Add9~24_combout\ & (\Add8~23\ $ (GND)))
-- \Add8~25\ = CARRY((\Add9~24_combout\) # (!\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~24_combout\,
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: LCCOMB_X21_Y13_N26
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

-- Location: LCCOMB_X21_Y13_N28
\Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = (\Add9~28_combout\ & ((GND) # (!\Add8~27\))) # (!\Add9~28_combout\ & (\Add8~27\ $ (GND)))
-- \Add8~29\ = CARRY((\Add9~28_combout\) # (!\Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~28_combout\,
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

-- Location: LCCOMB_X21_Y13_N30
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

-- Location: LCCOMB_X21_Y12_N0
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

-- Location: LCCOMB_X21_Y12_N2
\Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (\Add9~34_combout\ & (\Add8~33\ & VCC)) # (!\Add9~34_combout\ & (!\Add8~33\))
-- \Add8~35\ = CARRY((!\Add9~34_combout\ & !\Add8~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~34_combout\,
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

-- Location: LCCOMB_X23_Y12_N26
\Equal12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~11_combout\ = (byte_index(17) & (\Add8~34_combout\ & (byte_index(16) $ (!\Add8~32_combout\)))) # (!byte_index(17) & (!\Add8~34_combout\ & (byte_index(16) $ (!\Add8~32_combout\))))

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
	combout => \Equal12~11_combout\);

-- Location: LCCOMB_X21_Y12_N4
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

-- Location: LCCOMB_X21_Y12_N6
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

-- Location: LCCOMB_X21_Y12_N8
\Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~40_combout\ = (\Add9~40_combout\ & ((GND) # (!\Add8~39\))) # (!\Add9~40_combout\ & (\Add8~39\ $ (GND)))
-- \Add8~41\ = CARRY((\Add9~40_combout\) # (!\Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~40_combout\,
	datad => VCC,
	cin => \Add8~39\,
	combout => \Add8~40_combout\,
	cout => \Add8~41\);

-- Location: LCCOMB_X21_Y12_N10
\Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~42_combout\ = (\Add9~42_combout\ & (\Add8~41\ & VCC)) # (!\Add9~42_combout\ & (!\Add8~41\))
-- \Add8~43\ = CARRY((!\Add9~42_combout\ & !\Add8~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~42_combout\,
	datad => VCC,
	cin => \Add8~41\,
	combout => \Add8~42_combout\,
	cout => \Add8~43\);

-- Location: LCCOMB_X23_Y12_N0
\Equal12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~13_combout\ = (byte_index(20) & (\Add8~40_combout\ & (\Add8~42_combout\ $ (!byte_index(21))))) # (!byte_index(20) & (!\Add8~40_combout\ & (\Add8~42_combout\ $ (!byte_index(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(20),
	datab => \Add8~42_combout\,
	datac => byte_index(21),
	datad => \Add8~40_combout\,
	combout => \Equal12~13_combout\);

-- Location: LCCOMB_X22_Y12_N30
\Equal12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~12_combout\ = (byte_index(18) & (\Add8~36_combout\ & (\Add8~38_combout\ $ (!byte_index(19))))) # (!byte_index(18) & (!\Add8~36_combout\ & (\Add8~38_combout\ $ (!byte_index(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(18),
	datab => \Add8~36_combout\,
	datac => \Add8~38_combout\,
	datad => byte_index(19),
	combout => \Equal12~12_combout\);

-- Location: LCCOMB_X21_Y12_N12
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

-- Location: LCCOMB_X21_Y12_N14
\Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~46_combout\ = (\Add9~46_combout\ & (\Add8~45\ & VCC)) # (!\Add9~46_combout\ & (!\Add8~45\))
-- \Add8~47\ = CARRY((!\Add9~46_combout\ & !\Add8~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~46_combout\,
	datad => VCC,
	cin => \Add8~45\,
	combout => \Add8~46_combout\,
	cout => \Add8~47\);

-- Location: LCCOMB_X22_Y12_N8
\Equal12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~14_combout\ = (\Add8~44_combout\ & (byte_index(22) & (byte_index(23) $ (!\Add8~46_combout\)))) # (!\Add8~44_combout\ & (!byte_index(22) & (byte_index(23) $ (!\Add8~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~44_combout\,
	datab => byte_index(23),
	datac => byte_index(22),
	datad => \Add8~46_combout\,
	combout => \Equal12~14_combout\);

-- Location: LCCOMB_X23_Y12_N22
\Equal12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~15_combout\ = (\Equal12~11_combout\ & (\Equal12~13_combout\ & (\Equal12~12_combout\ & \Equal12~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~11_combout\,
	datab => \Equal12~13_combout\,
	datac => \Equal12~12_combout\,
	datad => \Equal12~14_combout\,
	combout => \Equal12~15_combout\);

-- Location: LCCOMB_X21_Y12_N16
\Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~48_combout\ = (\Add9~48_combout\ & ((GND) # (!\Add8~47\))) # (!\Add9~48_combout\ & (\Add8~47\ $ (GND)))
-- \Add8~49\ = CARRY((\Add9~48_combout\) # (!\Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~48_combout\,
	datad => VCC,
	cin => \Add8~47\,
	combout => \Add8~48_combout\,
	cout => \Add8~49\);

-- Location: LCCOMB_X21_Y12_N18
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

-- Location: LCCOMB_X21_Y12_N20
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

-- Location: LCCOMB_X21_Y12_N22
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

-- Location: LCCOMB_X21_Y12_N24
\Add8~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~56_combout\ = (\Add9~56_combout\ & ((GND) # (!\Add8~55\))) # (!\Add9~56_combout\ & (\Add8~55\ $ (GND)))
-- \Add8~57\ = CARRY((\Add9~56_combout\) # (!\Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~56_combout\,
	datad => VCC,
	cin => \Add8~55\,
	combout => \Add8~56_combout\,
	cout => \Add8~57\);

-- Location: LCCOMB_X21_Y12_N26
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

-- Location: LCCOMB_X21_Y12_N28
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

-- Location: LCCOMB_X21_Y12_N30
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

-- Location: LCCOMB_X22_Y12_N4
\Equal12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~19_combout\ = (byte_index(30) & (\Add8~60_combout\ & (byte_index(31) $ (!\Add8~62_combout\)))) # (!byte_index(30) & (!\Add8~60_combout\ & (byte_index(31) $ (!\Add8~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(31),
	datac => \Add8~62_combout\,
	datad => \Add8~60_combout\,
	combout => \Equal12~19_combout\);

-- Location: LCCOMB_X22_Y12_N16
\Equal12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~17_combout\ = (byte_index(26) & (\Add8~52_combout\ & (byte_index(27) $ (!\Add8~54_combout\)))) # (!byte_index(26) & (!\Add8~52_combout\ & (byte_index(27) $ (!\Add8~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(26),
	datab => \Add8~52_combout\,
	datac => byte_index(27),
	datad => \Add8~54_combout\,
	combout => \Equal12~17_combout\);

-- Location: LCCOMB_X22_Y12_N18
\Equal12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~16_combout\ = (byte_index(24) & (\Add8~48_combout\ & (byte_index(25) $ (!\Add8~50_combout\)))) # (!byte_index(24) & (!\Add8~48_combout\ & (byte_index(25) $ (!\Add8~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(24),
	datab => byte_index(25),
	datac => \Add8~48_combout\,
	datad => \Add8~50_combout\,
	combout => \Equal12~16_combout\);

-- Location: LCCOMB_X22_Y12_N6
\Equal12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~18_combout\ = (byte_index(29) & (\Add8~58_combout\ & (byte_index(28) $ (!\Add8~56_combout\)))) # (!byte_index(29) & (!\Add8~58_combout\ & (byte_index(28) $ (!\Add8~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datab => byte_index(28),
	datac => \Add8~58_combout\,
	datad => \Add8~56_combout\,
	combout => \Equal12~18_combout\);

-- Location: LCCOMB_X22_Y13_N10
\Equal12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~3_combout\ = (\Add8~8_combout\ & (byte_index(4) & (byte_index(5) $ (!\Add8~10_combout\)))) # (!\Add8~8_combout\ & (!byte_index(4) & (byte_index(5) $ (!\Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => byte_index(5),
	datac => byte_index(4),
	datad => \Add8~10_combout\,
	combout => \Equal12~3_combout\);

-- Location: LCCOMB_X22_Y13_N24
\Equal12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~4_combout\ = (\Add8~12_combout\ & (byte_index(6) & (byte_index(7) $ (!\Add8~14_combout\)))) # (!\Add8~12_combout\ & (!byte_index(6) & (byte_index(7) $ (!\Add8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~12_combout\,
	datab => byte_index(6),
	datac => byte_index(7),
	datad => \Add8~14_combout\,
	combout => \Equal12~4_combout\);

-- Location: LCCOMB_X22_Y13_N18
\Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = \Add8~4_combout\ $ (byte_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~4_combout\,
	datad => byte_index(2),
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X22_Y13_N8
\Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (\Equal12~0_combout\ & (!\Equal12~1_combout\ & (byte_index(3) $ (!\Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => \Equal12~0_combout\,
	datac => \Add8~6_combout\,
	datad => \Equal12~1_combout\,
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X23_Y13_N12
\Equal12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~5_combout\ = (byte_index(8) & (\Add8~16_combout\ & (byte_index(9) $ (!\Add8~18_combout\)))) # (!byte_index(8) & (!\Add8~16_combout\ & (byte_index(9) $ (!\Add8~18_combout\))))

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
	combout => \Equal12~5_combout\);

-- Location: LCCOMB_X22_Y13_N6
\Equal12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~6_combout\ = (byte_index(11) & (\Add8~22_combout\ & (\Add8~20_combout\ $ (!byte_index(10))))) # (!byte_index(11) & (!\Add8~22_combout\ & (\Add8~20_combout\ $ (!byte_index(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => \Add8~20_combout\,
	datac => byte_index(10),
	datad => \Add8~22_combout\,
	combout => \Equal12~6_combout\);

-- Location: LCCOMB_X22_Y13_N16
\Equal12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~7_combout\ = (byte_index(12) & (\Add8~24_combout\ & (byte_index(13) $ (!\Add8~26_combout\)))) # (!byte_index(12) & (!\Add8~24_combout\ & (byte_index(13) $ (!\Add8~26_combout\))))

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
	combout => \Equal12~7_combout\);

-- Location: LCCOMB_X22_Y13_N14
\Equal12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~8_combout\ = (byte_index(15) & (\Add8~30_combout\ & (byte_index(14) $ (!\Add8~28_combout\)))) # (!byte_index(15) & (!\Add8~30_combout\ & (byte_index(14) $ (!\Add8~28_combout\))))

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
	combout => \Equal12~8_combout\);

-- Location: LCCOMB_X23_Y13_N2
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

-- Location: LCCOMB_X23_Y13_N28
\Equal12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~10_combout\ = (\Equal12~3_combout\ & (\Equal12~4_combout\ & (\Equal12~2_combout\ & \Equal12~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~3_combout\,
	datab => \Equal12~4_combout\,
	datac => \Equal12~2_combout\,
	datad => \Equal12~9_combout\,
	combout => \Equal12~10_combout\);

-- Location: LCCOMB_X23_Y12_N12
\Selector1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~12_combout\ = (((!\Equal12~10_combout\) # (!\Equal12~18_combout\)) # (!\Equal12~16_combout\)) # (!\Equal12~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~17_combout\,
	datab => \Equal12~16_combout\,
	datac => \Equal12~18_combout\,
	datad => \Equal12~10_combout\,
	combout => \Selector1~12_combout\);

-- Location: LCCOMB_X24_Y12_N12
\Selector1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~13_combout\ = (\Selector1~2_combout\ & (((\Selector1~12_combout\) # (!\Equal12~19_combout\)) # (!\Equal12~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => \Equal12~15_combout\,
	datac => \Equal12~19_combout\,
	datad => \Selector1~12_combout\,
	combout => \Selector1~13_combout\);

-- Location: LCCOMB_X25_Y12_N2
\Selector1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~14_combout\ = (!\Selector1~13_combout\ & ((\Selector1~11_combout\ & (\Selector1~3_combout\)) # (!\Selector1~11_combout\ & ((\s_state.ETHERNET_HEADER~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~3_combout\,
	datab => \Selector1~13_combout\,
	datac => \s_state.ETHERNET_HEADER~q\,
	datad => \Selector1~11_combout\,
	combout => \Selector1~14_combout\);

-- Location: FF_X25_Y12_N3
\s_state.ETHERNET_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.ETHERNET_HEADER~q\);

-- Location: LCCOMB_X25_Y13_N8
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Equal4~0_combout\ & (!byte_index(0) & !\Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datac => byte_index(0),
	datad => \Equal0~10_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X25_Y13_N0
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Equal0~10_combout\ & ((!\Equal3~1_combout\) # (!\in_data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \Equal3~1_combout\,
	datad => \Equal0~10_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X25_Y13_N6
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\s_state.ETHERNET_HEADER~q\ & (\PROCES1~0_combout\ & ((\Selector2~2_combout\) # (\Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \PROCES1~0_combout\,
	datac => \Selector2~2_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X24_Y12_N10
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector2~3_combout\) # ((\Selector2~31_combout\) # ((\Selector2~30_combout\) # (\Selector2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~3_combout\,
	datab => \Selector2~31_combout\,
	datac => \Selector2~30_combout\,
	datad => \Selector2~28_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X25_Y13_N28
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\Selector2~33_combout\ & ((\Equal0~10_combout\) # ((!\Selector2~3_combout\) # (!\Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal3~2_combout\,
	datac => \Selector2~33_combout\,
	datad => \Selector2~3_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X25_Y13_N30
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\ & ((\Selector2~3_combout\) # (!\s_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datab => \Selector0~0_combout\,
	datad => \Selector2~3_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X24_Y12_N30
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector2~32_combout\ & (((!\Selector0~0_combout\)) # (!\Selector0~2_combout\))) # (!\Selector2~32_combout\ & (((!\Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \Selector2~32_combout\,
	datac => \Selector0~1_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~3_combout\);

-- Location: FF_X24_Y12_N31
\s_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IDLE~q\);

-- Location: LCCOMB_X26_Y8_N24
\byte_index[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[4]~50_combout\ = (\s_state.IP_HEADER~q\ & ((\in_data[7]~input_o\) # ((\Equal6~0_combout\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[7]~input_o\,
	datab => \Equal3~0_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \Equal6~0_combout\,
	combout => \byte_index[4]~50_combout\);

-- Location: LCCOMB_X25_Y13_N16
\byte_index[4]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[4]~51_combout\ = (!\s_state.CRC~q\ & ((\Selector2~1_combout\) # ((!\Equal3~2_combout\ & \Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \Equal3~2_combout\,
	datac => \Selector2~2_combout\,
	datad => \Selector2~1_combout\,
	combout => \byte_index[4]~51_combout\);

-- Location: LCCOMB_X25_Y13_N2
\byte_index[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[4]~52_combout\ = (\s_state.ETHERNET_HEADER~q\ & ((\byte_index[4]~51_combout\) # ((!\Equal5~1_combout\ & \byte_index[4]~50_combout\)))) # (!\s_state.ETHERNET_HEADER~q\ & (!\Equal5~1_combout\ & (\byte_index[4]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \Equal5~1_combout\,
	datac => \byte_index[4]~50_combout\,
	datad => \byte_index[4]~51_combout\,
	combout => \byte_index[4]~52_combout\);

-- Location: LCCOMB_X24_Y12_N22
\byte_index[4]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[4]~53_combout\ = ((\Selector2~24_combout\) # ((\PROCES1~0_combout\ & \byte_index[4]~52_combout\))) # (!\s_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datab => \PROCES1~0_combout\,
	datac => \byte_index[4]~52_combout\,
	datad => \Selector2~24_combout\,
	combout => \byte_index[4]~53_combout\);

-- Location: FF_X25_Y13_N1
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
	sclr => \byte_index[4]~53_combout\,
	sload => VCC,
	ena => \byte_index[31]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(0));

-- Location: LCCOMB_X24_Y14_N6
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\out_ready~input_o\ & (\in_valid~input_o\ & ((!\Equal4~0_combout\) # (!byte_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => byte_index(0),
	datac => \in_valid~input_o\,
	datad => \Equal4~0_combout\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X24_Y14_N20
\Selector1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~7_combout\ = (\Equal8~4_combout\) # ((\PROCES1~1_combout\ & \Equal23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROCES1~1_combout\,
	datac => \Equal23~1_combout\,
	datad => \Equal8~4_combout\,
	combout => \Selector1~7_combout\);

-- Location: LCCOMB_X24_Y14_N14
\Selector1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~8_combout\ = (\Selector1~4_combout\ & (\s_state.IP_HEADER~q\ & (\Equal5~1_combout\ & \Selector1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~4_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \Equal5~1_combout\,
	datad => \Selector1~7_combout\,
	combout => \Selector1~8_combout\);

-- Location: LCCOMB_X24_Y12_N0
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\Selector1~13_combout\ & ((\Selector1~8_combout\) # ((!\Selector1~11_combout\ & \s_state.UDP_HEADER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~8_combout\,
	datab => \Selector1~11_combout\,
	datac => \s_state.UDP_HEADER~q\,
	datad => \Selector1~13_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X24_Y12_N1
\s_state.UDP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.UDP_HEADER~q\);

-- Location: LCCOMB_X24_Y14_N24
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\s_state.UDP_HEADER~q\ & \next_state~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.UDP_HEADER~q\,
	datac => \next_state~10_combout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X25_Y12_N14
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\Selector1~13_combout\ & ((\Selector1~11_combout\ & (\Selector38~0_combout\)) # (!\Selector1~11_combout\ & ((\s_state.DATA~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \Selector1~13_combout\,
	datac => \s_state.DATA~q\,
	datad => \Selector1~11_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X25_Y12_N17
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X22_Y4_N16
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

-- Location: FF_X22_Y4_N31
\delayed_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(1));

-- Location: FF_X22_Y4_N3
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
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(1));

-- Location: LCCOMB_X22_Y4_N2
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

-- Location: LCCOMB_X22_Y4_N4
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

-- Location: FF_X22_Y4_N5
\delayed_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[2]~feeder_combout\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(2));

-- Location: FF_X22_Y4_N13
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
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(2));

-- Location: LCCOMB_X22_Y4_N12
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

-- Location: LCCOMB_X22_Y4_N8
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

-- Location: FF_X22_Y4_N9
\delayed_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[3]~feeder_combout\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(3));

-- Location: FF_X22_Y4_N19
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
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(3));

-- Location: LCCOMB_X22_Y4_N18
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

-- Location: LCCOMB_X22_Y4_N24
\delayed_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delayed_data[4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \delayed_data[4]~feeder_combout\);

-- Location: FF_X22_Y4_N25
\delayed_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[4]~feeder_combout\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(4));

-- Location: FF_X22_Y4_N7
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
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(4));

-- Location: LCCOMB_X22_Y4_N6
\out_data[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[4]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(4)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data[4]$latch~combout\,
	datac => s_out_data(4),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[4]$latch~combout\);

-- Location: LCCOMB_X22_Y4_N26
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

-- Location: FF_X22_Y4_N27
\delayed_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[5]~feeder_combout\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(5));

-- Location: FF_X22_Y4_N11
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
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(5));

-- Location: LCCOMB_X22_Y4_N10
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

-- Location: FF_X22_Y4_N23
\delayed_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(6));

-- Location: FF_X22_Y4_N21
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
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(6));

-- Location: LCCOMB_X22_Y4_N20
\out_data[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[6]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(6)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_data[6]$latch~combout\,
	datac => s_out_data(6),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[6]$latch~combout\);

-- Location: LCCOMB_X22_Y4_N28
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

-- Location: FF_X22_Y4_N29
\delayed_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delayed_data[7]~feeder_combout\,
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delayed_data(7));

-- Location: FF_X22_Y4_N1
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
	ena => \PROCES2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(7));

-- Location: LCCOMB_X22_Y4_N0
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

-- Location: LCCOMB_X22_Y12_N22
\Equal12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~20_combout\ = (\Equal12~18_combout\ & (\Equal12~16_combout\ & (\Equal12~19_combout\ & \Equal12~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~18_combout\,
	datab => \Equal12~16_combout\,
	datac => \Equal12~19_combout\,
	datad => \Equal12~17_combout\,
	combout => \Equal12~20_combout\);

-- Location: LCCOMB_X22_Y12_N24
\Equal12~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~21_combout\ = (\Equal12~20_combout\ & (\Equal12~15_combout\ & \Equal12~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~20_combout\,
	datab => \Equal12~15_combout\,
	datad => \Equal12~10_combout\,
	combout => \Equal12~21_combout\);

-- Location: LCCOMB_X25_Y12_N6
\Equal13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~20_combout\ = (\Equal13~19_combout\ & (\Equal13~17_combout\ & (\Equal13~16_combout\ & \Equal13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~19_combout\,
	datab => \Equal13~17_combout\,
	datac => \Equal13~16_combout\,
	datad => \Equal13~18_combout\,
	combout => \Equal13~20_combout\);

-- Location: LCCOMB_X22_Y12_N20
\s_out_startofpacket~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_startofpacket~2_combout\ = (\Equal13~10_combout\ & (\Equal13~15_combout\ & \Equal13~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal13~10_combout\,
	datac => \Equal13~15_combout\,
	datad => \Equal13~20_combout\,
	combout => \s_out_startofpacket~2_combout\);

-- Location: LCCOMB_X22_Y12_N12
\s_out_startofpacket~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_startofpacket~4_combout\ = (\out_ready~input_o\ & ((\Equal12~21_combout\) # ((\s_out_startofpacket~2_combout\) # (!\in_valid~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \Equal12~21_combout\,
	datac => \in_valid~input_o\,
	datad => \s_out_startofpacket~2_combout\,
	combout => \s_out_startofpacket~4_combout\);

-- Location: LCCOMB_X22_Y12_N28
\s_out_startofpacket~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_startofpacket~3_combout\ = (\s_state.DATA~q\ & (((\s_out_startofpacket~q\ & \s_out_startofpacket~4_combout\)))) # (!\s_state.DATA~q\ & ((\Selector38~0_combout\) # ((\s_out_startofpacket~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector38~0_combout\,
	datab => \s_state.DATA~q\,
	datac => \s_out_startofpacket~q\,
	datad => \s_out_startofpacket~4_combout\,
	combout => \s_out_startofpacket~3_combout\);

-- Location: FF_X22_Y12_N29
s_out_startofpacket : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_out_startofpacket~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_out_startofpacket~q\);

-- Location: LCCOMB_X22_Y12_N10
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

-- Location: LCCOMB_X22_Y12_N26
\s_out_endofpacket~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_endofpacket~1_combout\ = (\s_out_endofpacket~0_combout\ & ((\Equal12~21_combout\) # ((\s_out_endofpacket~q\ & !\Selector1~2_combout\)))) # (!\s_out_endofpacket~0_combout\ & (((\s_out_endofpacket~q\ & !\Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_out_endofpacket~0_combout\,
	datab => \Equal12~21_combout\,
	datac => \s_out_endofpacket~q\,
	datad => \Selector1~2_combout\,
	combout => \s_out_endofpacket~1_combout\);

-- Location: FF_X22_Y12_N27
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

-- Location: LCCOMB_X26_Y4_N16
\s_channel[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \s_channel[0]~feeder_combout\);

-- Location: LCCOMB_X25_Y16_N22
\s_channel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~0_combout\ = (!byte_index(1) & (!byte_index(0) & \Equal9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datac => byte_index(0),
	datad => \Equal9~8_combout\,
	combout => \s_channel[0]~0_combout\);

-- Location: LCCOMB_X26_Y16_N18
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (byte_index(4) & (byte_index(2) & (!byte_index(1) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(2),
	datac => byte_index(1),
	datad => \Equal0~8_combout\,
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X25_Y16_N4
\s_channel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~1_combout\ = (\s_channel[0]~0_combout\ & (!\Equal23~1_combout\ & ((byte_index(0)) # (!\Equal20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel[0]~0_combout\,
	datab => \Equal23~1_combout\,
	datac => byte_index(0),
	datad => \Equal20~0_combout\,
	combout => \s_channel[0]~1_combout\);

-- Location: FF_X26_Y4_N17
\s_channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(0));

-- Location: LCCOMB_X26_Y4_N6
\s_channel[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[1]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \s_channel[1]~feeder_combout\);

-- Location: FF_X26_Y4_N7
\s_channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(1));

-- Location: LCCOMB_X26_Y4_N28
\s_channel[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[2]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \s_channel[2]~feeder_combout\);

-- Location: FF_X26_Y4_N29
\s_channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(2));

-- Location: LCCOMB_X26_Y4_N18
\s_channel[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[3]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \s_channel[3]~feeder_combout\);

-- Location: FF_X26_Y4_N19
\s_channel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(3));

-- Location: LCCOMB_X26_Y4_N24
\s_channel[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[4]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[4]~feeder_combout\);

-- Location: FF_X26_Y4_N25
\s_channel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(4));

-- Location: LCCOMB_X26_Y4_N10
\s_channel[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[5]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \s_channel[5]~feeder_combout\);

-- Location: FF_X26_Y4_N11
\s_channel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(5));

-- Location: LCCOMB_X26_Y4_N4
\s_channel[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[6]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \s_channel[6]~feeder_combout\);

-- Location: FF_X26_Y4_N5
\s_channel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(6));

-- Location: FF_X26_Y4_N23
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
	ena => \s_channel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(7));

-- Location: LCCOMB_X19_Y20_N16
\s_channel[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[8]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \s_channel[8]~feeder_combout\);

-- Location: LCCOMB_X22_Y14_N24
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (byte_index(1) & byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datac => byte_index(0),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X26_Y16_N4
\Equal22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (byte_index(0) & (\Equal0~8_combout\ & (byte_index(2) & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \Equal0~8_combout\,
	datac => byte_index(2),
	datad => \Equal5~0_combout\,
	combout => \Equal22~0_combout\);

-- Location: LCCOMB_X25_Y16_N18
\Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (!byte_index(2) & (byte_index(0) & (\Equal0~8_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(0),
	datac => \Equal0~8_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X19_Y20_N24
\s_channel[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[8]~2_combout\ = (\Equal0~11_combout\ & (\Equal8~3_combout\ & (!\Equal22~0_combout\ & !\Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \Equal8~3_combout\,
	datac => \Equal22~0_combout\,
	datad => \Equal18~0_combout\,
	combout => \s_channel[8]~2_combout\);

-- Location: FF_X19_Y20_N17
\s_channel[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(8));

-- Location: FF_X18_Y20_N13
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
	ena => \s_channel[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(9));

-- Location: FF_X18_Y20_N23
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
	ena => \s_channel[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(10));

-- Location: LCCOMB_X18_Y20_N8
\s_channel[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[11]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \s_channel[11]~feeder_combout\);

-- Location: FF_X18_Y20_N9
\s_channel[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(11));

-- Location: FF_X18_Y20_N19
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
	ena => \s_channel[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(12));

-- Location: LCCOMB_X18_Y20_N24
\s_channel[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[13]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \s_channel[13]~feeder_combout\);

-- Location: FF_X18_Y20_N25
\s_channel[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(13));

-- Location: FF_X18_Y20_N11
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
	ena => \s_channel[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(14));

-- Location: LCCOMB_X18_Y20_N28
\s_channel[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[15]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \s_channel[15]~feeder_combout\);

-- Location: FF_X18_Y20_N29
\s_channel[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(15));

-- Location: LCCOMB_X25_Y16_N26
\s_channel[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[16]~4_combout\ = (!byte_index(0) & (byte_index(1) & \Equal8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datad => \Equal8~3_combout\,
	combout => \s_channel[16]~4_combout\);

-- Location: LCCOMB_X25_Y16_N2
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (byte_index(0) & !byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(0),
	datad => byte_index(1),
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X25_Y16_N8
\Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = (byte_index(4) & (\Equal16~0_combout\ & (\Equal0~8_combout\ & !byte_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => \Equal16~0_combout\,
	datac => \Equal0~8_combout\,
	datad => byte_index(2),
	combout => \Equal16~1_combout\);

-- Location: LCCOMB_X25_Y16_N28
\s_channel[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[24]~3_combout\ = (!\Equal23~1_combout\ & (!\Equal20~0_combout\ & ((!\Equal0~8_combout\) # (!\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal23~1_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal20~0_combout\,
	combout => \s_channel[24]~3_combout\);

-- Location: LCCOMB_X25_Y16_N14
\s_channel[16]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[16]~5_combout\ = (\s_channel[16]~4_combout\ & (!\Equal16~1_combout\ & \s_channel[24]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel[16]~4_combout\,
	datac => \Equal16~1_combout\,
	datad => \s_channel[24]~3_combout\,
	combout => \s_channel[16]~5_combout\);

-- Location: FF_X25_Y16_N13
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
	ena => \s_channel[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(16));

-- Location: FF_X18_Y20_N31
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
	ena => \s_channel[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(17));

-- Location: FF_X18_Y20_N5
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
	ena => \s_channel[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(18));

-- Location: LCCOMB_X18_Y20_N26
\s_channel[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[19]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \s_channel[19]~feeder_combout\);

-- Location: FF_X18_Y20_N27
\s_channel[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(19));

-- Location: FF_X18_Y20_N1
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
	ena => \s_channel[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(20));

-- Location: LCCOMB_X18_Y20_N2
\s_channel[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[21]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \s_channel[21]~feeder_combout\);

-- Location: FF_X18_Y20_N3
\s_channel[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(21));

-- Location: FF_X18_Y20_N21
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
	ena => \s_channel[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(22));

-- Location: FF_X25_Y16_N27
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
	ena => \s_channel[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(23));

-- Location: LCCOMB_X26_Y8_N16
\s_channel[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[24]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \s_channel[24]~feeder_combout\);

-- Location: LCCOMB_X25_Y16_N16
\s_channel[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[24]~6_combout\ = (\Equal8~3_combout\ & (\Equal16~0_combout\ & (!\Equal16~1_combout\ & \s_channel[24]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~3_combout\,
	datab => \Equal16~0_combout\,
	datac => \Equal16~1_combout\,
	datad => \s_channel[24]~3_combout\,
	combout => \s_channel[24]~6_combout\);

-- Location: FF_X26_Y8_N17
\s_channel[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[24]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(24));

-- Location: FF_X26_Y8_N27
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
	ena => \s_channel[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(25));

-- Location: LCCOMB_X26_Y8_N20
\s_channel[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[26]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \s_channel[26]~feeder_combout\);

-- Location: FF_X26_Y8_N21
\s_channel[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[26]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(26));

-- Location: FF_X26_Y8_N7
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
	ena => \s_channel[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(27));

-- Location: LCCOMB_X26_Y8_N28
\s_channel[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[28]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[28]~feeder_combout\);

-- Location: FF_X26_Y8_N29
\s_channel[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[28]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \s_channel[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(28));

-- Location: FF_X26_Y8_N11
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
	ena => \s_channel[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(29));

-- Location: FF_X26_Y8_N5
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
	ena => \s_channel[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(30));

-- Location: FF_X26_Y8_N23
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
	ena => \s_channel[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(31));

-- Location: LCCOMB_X26_Y4_N8
\s_channel[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[32]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \s_channel[32]~feeder_combout\);

-- Location: FF_X26_Y4_N9
\s_channel[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[32]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(32));

-- Location: LCCOMB_X26_Y4_N2
\s_channel[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[33]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \s_channel[33]~feeder_combout\);

-- Location: FF_X26_Y4_N3
\s_channel[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[33]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(33));

-- Location: LCCOMB_X26_Y4_N0
\s_channel[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[34]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \s_channel[34]~feeder_combout\);

-- Location: FF_X26_Y4_N1
\s_channel[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[34]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(34));

-- Location: LCCOMB_X26_Y4_N30
\s_channel[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[35]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \s_channel[35]~feeder_combout\);

-- Location: FF_X26_Y4_N31
\s_channel[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[35]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(35));

-- Location: LCCOMB_X26_Y4_N20
\s_channel[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[36]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[36]~feeder_combout\);

-- Location: FF_X26_Y4_N21
\s_channel[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[36]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(36));

-- Location: LCCOMB_X26_Y4_N14
\s_channel[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[37]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \s_channel[37]~feeder_combout\);

-- Location: FF_X26_Y4_N15
\s_channel[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[37]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(37));

-- Location: LCCOMB_X26_Y4_N12
\s_channel[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[38]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \s_channel[38]~feeder_combout\);

-- Location: FF_X26_Y4_N13
\s_channel[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[38]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(38));

-- Location: FF_X26_Y4_N27
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
	ena => \Equal23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(39));

-- Location: LCCOMB_X26_Y16_N12
\s_channel[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[40]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \s_channel[40]~feeder_combout\);

-- Location: FF_X26_Y16_N13
\s_channel[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[40]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(40));

-- Location: FF_X26_Y16_N27
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
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(41));

-- Location: LCCOMB_X25_Y20_N4
\s_channel[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[42]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \s_channel[42]~feeder_combout\);

-- Location: FF_X25_Y20_N5
\s_channel[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[42]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(42));

-- Location: LCCOMB_X25_Y20_N2
\s_channel[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[43]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \s_channel[43]~feeder_combout\);

-- Location: FF_X25_Y20_N3
\s_channel[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[43]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(43));

-- Location: LCCOMB_X26_Y16_N0
\s_channel[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[44]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[44]~feeder_combout\);

-- Location: FF_X26_Y16_N1
\s_channel[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[44]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(44));

-- Location: LCCOMB_X25_Y20_N0
\s_channel[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[45]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \s_channel[45]~feeder_combout\);

-- Location: FF_X25_Y20_N1
\s_channel[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[45]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(45));

-- Location: LCCOMB_X26_Y16_N10
\s_channel[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[46]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \s_channel[46]~feeder_combout\);

-- Location: FF_X26_Y16_N11
\s_channel[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[46]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(46));

-- Location: LCCOMB_X26_Y16_N24
\s_channel[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[47]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \s_channel[47]~feeder_combout\);

-- Location: FF_X26_Y16_N25
\s_channel[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[47]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(47));

-- Location: LCCOMB_X33_Y9_N4
\s_channel[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[48]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \s_channel[48]~feeder_combout\);

-- Location: LCCOMB_X24_Y13_N10
\Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (!byte_index(0) & (\Equal0~8_combout\ & (byte_index(2) & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \Equal0~8_combout\,
	datac => byte_index(2),
	datad => \Equal5~0_combout\,
	combout => \Equal21~0_combout\);

-- Location: FF_X33_Y9_N5
\s_channel[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[48]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(48));

-- Location: LCCOMB_X33_Y9_N30
\s_channel[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[49]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \s_channel[49]~feeder_combout\);

-- Location: FF_X33_Y9_N31
\s_channel[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[49]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(49));

-- Location: FF_X33_Y9_N9
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
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(50));

-- Location: FF_X33_Y9_N7
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
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(51));

-- Location: LCCOMB_X33_Y9_N0
\s_channel[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[52]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[52]~feeder_combout\);

-- Location: FF_X33_Y9_N1
\s_channel[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[52]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(52));

-- Location: LCCOMB_X33_Y9_N2
\s_channel[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[53]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \s_channel[53]~feeder_combout\);

-- Location: FF_X33_Y9_N3
\s_channel[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[53]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(53));

-- Location: LCCOMB_X33_Y9_N16
\s_channel[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[54]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \s_channel[54]~feeder_combout\);

-- Location: FF_X33_Y9_N17
\s_channel[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[54]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(54));

-- Location: FF_X33_Y9_N11
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
	ena => \Equal21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(55));

-- Location: LCCOMB_X28_Y20_N24
\Equal20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~1_combout\ = (byte_index(0) & \Equal20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datad => \Equal20~0_combout\,
	combout => \Equal20~1_combout\);

-- Location: FF_X28_Y20_N25
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
	ena => \Equal20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(56));

-- Location: FF_X28_Y20_N11
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
	ena => \Equal20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(57));

-- Location: LCCOMB_X28_Y20_N20
\s_channel[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[58]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \s_channel[58]~feeder_combout\);

-- Location: FF_X28_Y20_N21
\s_channel[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[58]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(58));

-- Location: LCCOMB_X28_Y20_N18
\s_channel[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[59]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \s_channel[59]~feeder_combout\);

-- Location: FF_X28_Y20_N19
\s_channel[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[59]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(59));

-- Location: LCCOMB_X28_Y20_N12
\s_channel[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[60]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[60]~feeder_combout\);

-- Location: FF_X28_Y20_N13
\s_channel[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[60]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(60));

-- Location: LCCOMB_X28_Y20_N22
\s_channel[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[61]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \s_channel[61]~feeder_combout\);

-- Location: FF_X28_Y20_N23
\s_channel[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[61]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(61));

-- Location: FF_X28_Y20_N29
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
	ena => \Equal20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(62));

-- Location: LCCOMB_X28_Y20_N26
\s_channel[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[63]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \s_channel[63]~feeder_combout\);

-- Location: FF_X28_Y20_N27
\s_channel[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[63]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(63));

-- Location: LCCOMB_X28_Y20_N8
\Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (!byte_index(0) & \Equal20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(0),
	datad => \Equal20~0_combout\,
	combout => \Equal19~0_combout\);

-- Location: FF_X28_Y20_N9
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
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(64));

-- Location: FF_X28_Y20_N15
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
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(65));

-- Location: LCCOMB_X28_Y20_N4
\s_channel[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[66]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \s_channel[66]~feeder_combout\);

-- Location: FF_X28_Y20_N5
\s_channel[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[66]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(66));

-- Location: LCCOMB_X28_Y20_N2
\s_channel[67]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[67]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \s_channel[67]~feeder_combout\);

-- Location: FF_X28_Y20_N3
\s_channel[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[67]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(67));

-- Location: LCCOMB_X28_Y20_N16
\s_channel[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[68]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[68]~feeder_combout\);

-- Location: FF_X28_Y20_N17
\s_channel[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[68]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(68));

-- Location: LCCOMB_X28_Y20_N6
\s_channel[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[69]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \s_channel[69]~feeder_combout\);

-- Location: FF_X28_Y20_N7
\s_channel[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[69]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(69));

-- Location: FF_X28_Y20_N1
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
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(70));

-- Location: LCCOMB_X28_Y20_N30
\s_channel[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[71]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \s_channel[71]~feeder_combout\);

-- Location: FF_X28_Y20_N31
\s_channel[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[71]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(71));

-- Location: LCCOMB_X19_Y20_N14
\s_channel[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[72]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \s_channel[72]~feeder_combout\);

-- Location: FF_X19_Y20_N15
\s_channel[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[72]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(72));

-- Location: FF_X22_Y20_N5
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
	ena => \Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(73));

-- Location: LCCOMB_X22_Y20_N26
\s_channel[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[74]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \s_channel[74]~feeder_combout\);

-- Location: FF_X22_Y20_N27
\s_channel[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[74]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(74));

-- Location: LCCOMB_X22_Y20_N8
\s_channel[75]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[75]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \s_channel[75]~feeder_combout\);

-- Location: FF_X22_Y20_N9
\s_channel[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[75]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(75));

-- Location: LCCOMB_X22_Y20_N14
\s_channel[76]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[76]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[76]~feeder_combout\);

-- Location: FF_X22_Y20_N15
\s_channel[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[76]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(76));

-- Location: FF_X22_Y20_N17
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
	ena => \Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(77));

-- Location: FF_X22_Y20_N23
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
	ena => \Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(78));

-- Location: LCCOMB_X22_Y20_N24
\s_channel[79]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[79]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \s_channel[79]~feeder_combout\);

-- Location: FF_X22_Y20_N25
\s_channel[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[79]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(79));

-- Location: LCCOMB_X33_Y9_N24
\s_channel[80]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[80]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \s_channel[80]~feeder_combout\);

-- Location: LCCOMB_X24_Y13_N0
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (\Equal5~0_combout\ & (!byte_index(0) & (!byte_index(2) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => byte_index(0),
	datac => byte_index(2),
	datad => \Equal0~8_combout\,
	combout => \Equal17~0_combout\);

-- Location: FF_X33_Y9_N25
\s_channel[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[80]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(80));

-- Location: LCCOMB_X33_Y9_N18
\s_channel[81]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[81]~feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \s_channel[81]~feeder_combout\);

-- Location: FF_X33_Y9_N19
\s_channel[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[81]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(81));

-- Location: FF_X33_Y9_N29
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
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(82));

-- Location: FF_X33_Y9_N27
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
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(83));

-- Location: LCCOMB_X33_Y9_N20
\s_channel[84]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[84]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[84]~feeder_combout\);

-- Location: FF_X33_Y9_N21
\s_channel[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[84]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(84));

-- Location: LCCOMB_X33_Y9_N22
\s_channel[85]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[85]~feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \s_channel[85]~feeder_combout\);

-- Location: FF_X33_Y9_N23
\s_channel[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[85]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(85));

-- Location: LCCOMB_X33_Y9_N12
\s_channel[86]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[86]~feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \s_channel[86]~feeder_combout\);

-- Location: FF_X33_Y9_N13
\s_channel[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[86]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(86));

-- Location: FF_X33_Y9_N15
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
	ena => \Equal17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(87));

-- Location: LCCOMB_X22_Y20_N2
\s_channel[88]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[88]~feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \s_channel[88]~feeder_combout\);

-- Location: FF_X22_Y20_N3
\s_channel[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[88]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(88));

-- Location: FF_X22_Y20_N29
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
	ena => \Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(89));

-- Location: LCCOMB_X22_Y20_N6
\s_channel[90]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[90]~feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \s_channel[90]~feeder_combout\);

-- Location: FF_X22_Y20_N7
\s_channel[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[90]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(90));

-- Location: LCCOMB_X22_Y20_N0
\s_channel[91]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[91]~feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \s_channel[91]~feeder_combout\);

-- Location: FF_X22_Y20_N1
\s_channel[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[91]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(91));

-- Location: LCCOMB_X22_Y20_N10
\s_channel[92]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[92]~feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \s_channel[92]~feeder_combout\);

-- Location: FF_X22_Y20_N11
\s_channel[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[92]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(92));

-- Location: FF_X22_Y20_N13
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
	ena => \Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(93));

-- Location: FF_X22_Y20_N31
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
	ena => \Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(94));

-- Location: LCCOMB_X22_Y20_N20
\s_channel[95]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[95]~feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \s_channel[95]~feeder_combout\);

-- Location: FF_X22_Y20_N21
\s_channel[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_channel[95]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \Equal16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(95));

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



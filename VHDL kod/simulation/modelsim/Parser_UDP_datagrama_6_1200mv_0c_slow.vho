-- Copyright (C) 2016  Intel Corporation. All rights reserved.
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
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Standard Edition"

-- DATE "01/14/2025 18:21:12"

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
	in_ready : BUFFER std_logic;
	in_valid : IN std_logic;
	out_data : BUFFER std_logic_vector(7 DOWNTO 0);
	out_startofpacket : BUFFER std_logic;
	out_endofpacket : BUFFER std_logic;
	out_ready : IN std_logic;
	out_valid : BUFFER std_logic;
	channel : BUFFER std_logic_vector(95 DOWNTO 0)
	);
END Parser_UDP_datagrama;

-- Design Ports Information
-- in_endofpacket	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_ready	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_data[7]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_startofpacket	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_endofpacket	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_valid	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[5]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[7]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[9]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[10]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[11]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[12]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[14]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[15]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[16]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[17]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[18]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[19]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[20]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[21]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[22]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[23]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[24]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[25]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[26]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[27]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[28]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[29]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[30]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[31]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[32]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[33]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[34]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[35]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[36]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[37]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[38]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[39]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[40]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[41]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[42]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[43]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[44]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[45]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[46]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[47]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[48]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[49]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[50]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[51]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[52]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[53]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[54]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[55]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[56]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[57]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[58]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[59]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[60]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[61]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[62]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[63]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[64]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[65]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[66]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[67]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[68]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[69]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[70]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[71]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[72]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[73]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[74]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[75]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[76]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[77]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[78]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[79]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[80]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[81]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[82]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[83]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[84]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[85]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[86]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[87]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[88]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[89]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[90]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[91]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[92]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[93]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[94]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- channel[95]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ready	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_valid	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_startofpacket	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \brojac~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_state.DATA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \byte_index[0]~32_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \byte_index[0]~33\ : std_logic;
SIGNAL \byte_index[1]~34_combout\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \udp_length[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \in_valid~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \in_startofpacket~input_o\ : std_logic;
SIGNAL \Selector32~4_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \byte_index[30]~99\ : std_logic;
SIGNAL \byte_index[31]~100_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \next_state~16_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \next_state~18_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \next_state~13_combout\ : std_logic;
SIGNAL \next_state~14_combout\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add11~3_combout\ : std_logic;
SIGNAL \Equal17~1_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Equal17~2_combout\ : std_logic;
SIGNAL \Equal17~3_combout\ : std_logic;
SIGNAL \next_state~19_combout\ : std_logic;
SIGNAL \next_state~20_combout\ : std_logic;
SIGNAL \next_state~15_combout\ : std_logic;
SIGNAL \next_state~12_combout\ : std_logic;
SIGNAL \next_state~17_combout\ : std_logic;
SIGNAL \Selector32~6_combout\ : std_logic;
SIGNAL \Selector32~5_combout\ : std_logic;
SIGNAL \s_state.IDLE~q\ : std_logic;
SIGNAL \brojac~0_combout\ : std_logic;
SIGNAL \brojac~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \PROCES1~7_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \PROCES1~5_combout\ : std_logic;
SIGNAL \PROCES1~6_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \PROCES1~8_combout\ : std_logic;
SIGNAL \PROCES1~9_combout\ : std_logic;
SIGNAL \PROCES1~3_combout\ : std_logic;
SIGNAL \PROCES1~0_combout\ : std_logic;
SIGNAL \PROCES1~1_combout\ : std_logic;
SIGNAL \PROCES1~2_combout\ : std_logic;
SIGNAL \PROCES1~4_combout\ : std_logic;
SIGNAL \PROCES1~10_combout\ : std_logic;
SIGNAL \ip_header_length[2]~0_combout\ : std_logic;
SIGNAL \ip_header_length[2]~1_combout\ : std_logic;
SIGNAL \Add11~1_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Equal20~2_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \Equal20~1_combout\ : std_logic;
SIGNAL \Equal20~3_combout\ : std_logic;
SIGNAL \Equal21~2_combout\ : std_logic;
SIGNAL \s_channel[0]~12_combout\ : std_logic;
SIGNAL \s_channel[0]~13_combout\ : std_logic;
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
SIGNAL \Add13~30_combout\ : std_logic;
SIGNAL \Add13~28_combout\ : std_logic;
SIGNAL \Equal27~10_combout\ : std_logic;
SIGNAL \Add13~24_combout\ : std_logic;
SIGNAL \Add13~26_combout\ : std_logic;
SIGNAL \Equal27~9_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Equal27~3_combout\ : std_logic;
SIGNAL \Equal25~1_combout\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \Equal27~4_combout\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Equal27~2_combout\ : std_logic;
SIGNAL \Equal27~5_combout\ : std_logic;
SIGNAL \Add13~20_combout\ : std_logic;
SIGNAL \Equal27~7_combout\ : std_logic;
SIGNAL \Add13~16_combout\ : std_logic;
SIGNAL \Add13~18_combout\ : std_logic;
SIGNAL \Equal27~6_combout\ : std_logic;
SIGNAL \Add13~22_combout\ : std_logic;
SIGNAL \Equal27~8_combout\ : std_logic;
SIGNAL \Equal27~11_combout\ : std_logic;
SIGNAL \udp_length[15]~63\ : std_logic;
SIGNAL \udp_length[16]~64_combout\ : std_logic;
SIGNAL \Add12~31\ : std_logic;
SIGNAL \Add12~32_combout\ : std_logic;
SIGNAL \Add13~31\ : std_logic;
SIGNAL \Add13~32_combout\ : std_logic;
SIGNAL \udp_length[16]~65\ : std_logic;
SIGNAL \udp_length[17]~66_combout\ : std_logic;
SIGNAL \Add12~33\ : std_logic;
SIGNAL \Add12~34_combout\ : std_logic;
SIGNAL \Add13~33\ : std_logic;
SIGNAL \Add13~34_combout\ : std_logic;
SIGNAL \Equal27~12_combout\ : std_logic;
SIGNAL \udp_length[17]~67\ : std_logic;
SIGNAL \udp_length[18]~68_combout\ : std_logic;
SIGNAL \udp_length[18]~69\ : std_logic;
SIGNAL \udp_length[19]~70_combout\ : std_logic;
SIGNAL \Add12~35\ : std_logic;
SIGNAL \Add12~37\ : std_logic;
SIGNAL \Add12~38_combout\ : std_logic;
SIGNAL \Add12~36_combout\ : std_logic;
SIGNAL \Add13~35\ : std_logic;
SIGNAL \Add13~37\ : std_logic;
SIGNAL \Add13~38_combout\ : std_logic;
SIGNAL \Add13~36_combout\ : std_logic;
SIGNAL \Equal27~13_combout\ : std_logic;
SIGNAL \udp_length[19]~71\ : std_logic;
SIGNAL \udp_length[20]~72_combout\ : std_logic;
SIGNAL \udp_length[20]~73\ : std_logic;
SIGNAL \udp_length[21]~74_combout\ : std_logic;
SIGNAL \Add12~39\ : std_logic;
SIGNAL \Add12~41\ : std_logic;
SIGNAL \Add12~42_combout\ : std_logic;
SIGNAL \Add12~40_combout\ : std_logic;
SIGNAL \Add13~39\ : std_logic;
SIGNAL \Add13~41\ : std_logic;
SIGNAL \Add13~42_combout\ : std_logic;
SIGNAL \Add13~40_combout\ : std_logic;
SIGNAL \Equal27~14_combout\ : std_logic;
SIGNAL \udp_length[21]~75\ : std_logic;
SIGNAL \udp_length[22]~76_combout\ : std_logic;
SIGNAL \Add12~43\ : std_logic;
SIGNAL \Add12~44_combout\ : std_logic;
SIGNAL \Add13~43\ : std_logic;
SIGNAL \Add13~44_combout\ : std_logic;
SIGNAL \udp_length[22]~77\ : std_logic;
SIGNAL \udp_length[23]~78_combout\ : std_logic;
SIGNAL \Add12~45\ : std_logic;
SIGNAL \Add12~46_combout\ : std_logic;
SIGNAL \Add13~45\ : std_logic;
SIGNAL \Add13~46_combout\ : std_logic;
SIGNAL \Equal27~15_combout\ : std_logic;
SIGNAL \Equal27~16_combout\ : std_logic;
SIGNAL \udp_length[23]~79\ : std_logic;
SIGNAL \udp_length[24]~80_combout\ : std_logic;
SIGNAL \udp_length[24]~81\ : std_logic;
SIGNAL \udp_length[25]~82_combout\ : std_logic;
SIGNAL \udp_length[25]~83\ : std_logic;
SIGNAL \udp_length[26]~84_combout\ : std_logic;
SIGNAL \Add12~47\ : std_logic;
SIGNAL \Add12~49\ : std_logic;
SIGNAL \Add12~51\ : std_logic;
SIGNAL \Add12~52_combout\ : std_logic;
SIGNAL \Add12~50_combout\ : std_logic;
SIGNAL \Add12~48_combout\ : std_logic;
SIGNAL \Add13~47\ : std_logic;
SIGNAL \Add13~49\ : std_logic;
SIGNAL \Add13~51\ : std_logic;
SIGNAL \Add13~52_combout\ : std_logic;
SIGNAL \udp_length[26]~85\ : std_logic;
SIGNAL \udp_length[27]~86_combout\ : std_logic;
SIGNAL \Add12~53\ : std_logic;
SIGNAL \Add12~54_combout\ : std_logic;
SIGNAL \Add13~53\ : std_logic;
SIGNAL \Add13~54_combout\ : std_logic;
SIGNAL \Equal27~18_combout\ : std_logic;
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
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \Add13~48_combout\ : std_logic;
SIGNAL \Add13~50_combout\ : std_logic;
SIGNAL \Equal27~17_combout\ : std_logic;
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
SIGNAL \Equal27~19_combout\ : std_logic;
SIGNAL \Equal27~20_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Add10~1_cout\ : std_logic;
SIGNAL \Add10~3_cout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Equal25~2_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Equal25~3_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Equal25~4_combout\ : std_logic;
SIGNAL \Equal25~5_combout\ : std_logic;
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
SIGNAL \Add10~53\ : std_logic;
SIGNAL \Add10~55\ : std_logic;
SIGNAL \Add10~56_combout\ : std_logic;
SIGNAL \Add10~30_combout\ : std_logic;
SIGNAL \Add10~28_combout\ : std_logic;
SIGNAL \Equal25~9_combout\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Equal25~6_combout\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \Equal25~7_combout\ : std_logic;
SIGNAL \Add10~24_combout\ : std_logic;
SIGNAL \Add10~26_combout\ : std_logic;
SIGNAL \Equal25~8_combout\ : std_logic;
SIGNAL \Equal25~10_combout\ : std_logic;
SIGNAL \Equal25~11_combout\ : std_logic;
SIGNAL \Add10~57\ : std_logic;
SIGNAL \Add10~59\ : std_logic;
SIGNAL \Add10~60_combout\ : std_logic;
SIGNAL \Add10~58_combout\ : std_logic;
SIGNAL \Equal25~12_combout\ : std_logic;
SIGNAL \Add10~52_combout\ : std_logic;
SIGNAL \Add10~54_combout\ : std_logic;
SIGNAL \Equal25~0_combout\ : std_logic;
SIGNAL \Add10~48_combout\ : std_logic;
SIGNAL \Add10~50_combout\ : std_logic;
SIGNAL \Equal25~18_combout\ : std_logic;
SIGNAL \Add10~61\ : std_logic;
SIGNAL \Add10~62_combout\ : std_logic;
SIGNAL \Add10~38_combout\ : std_logic;
SIGNAL \Add10~36_combout\ : std_logic;
SIGNAL \Equal25~14_combout\ : std_logic;
SIGNAL \Add10~32_combout\ : std_logic;
SIGNAL \Add10~34_combout\ : std_logic;
SIGNAL \Equal25~13_combout\ : std_logic;
SIGNAL \Add10~46_combout\ : std_logic;
SIGNAL \Add10~44_combout\ : std_logic;
SIGNAL \Equal25~16_combout\ : std_logic;
SIGNAL \Add10~40_combout\ : std_logic;
SIGNAL \Add10~42_combout\ : std_logic;
SIGNAL \Equal25~15_combout\ : std_logic;
SIGNAL \Equal25~17_combout\ : std_logic;
SIGNAL \Equal25~19_combout\ : std_logic;
SIGNAL \Equal25~20_combout\ : std_logic;
SIGNAL \Selector33~13_combout\ : std_logic;
SIGNAL \Selector33~12_combout\ : std_logic;
SIGNAL \Selector33~14_combout\ : std_logic;
SIGNAL \Selector33~11_combout\ : std_logic;
SIGNAL \Selector33~15_combout\ : std_logic;
SIGNAL \Selector33~8_combout\ : std_logic;
SIGNAL \Selector33~6_combout\ : std_logic;
SIGNAL \Selector33~7_combout\ : std_logic;
SIGNAL \Selector33~9_combout\ : std_logic;
SIGNAL \Selector33~10_combout\ : std_logic;
SIGNAL \Selector33~4_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \Selector33~3_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Selector33~5_combout\ : std_logic;
SIGNAL \Selector33~17_combout\ : std_logic;
SIGNAL \Selector33~16_combout\ : std_logic;
SIGNAL \Selector33~18_combout\ : std_logic;
SIGNAL \Selector33~19_combout\ : std_logic;
SIGNAL \Selector33~20_combout\ : std_logic;
SIGNAL \Selector33~21_combout\ : std_logic;
SIGNAL \Selector33~22_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \s_state.CRC~q\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector33~24_combout\ : std_logic;
SIGNAL \Selector33~25_combout\ : std_logic;
SIGNAL \Selector33~23_combout\ : std_logic;
SIGNAL \Selector33~26_combout\ : std_logic;
SIGNAL \Selector33~28_combout\ : std_logic;
SIGNAL \Selector33~27_combout\ : std_logic;
SIGNAL \Selector33~29_combout\ : std_logic;
SIGNAL \s_state.ETHERNET_HEADER~q\ : std_logic;
SIGNAL \byte_index[7]~90_combout\ : std_logic;
SIGNAL \byte_index[7]~89_combout\ : std_logic;
SIGNAL \byte_index[7]~91_combout\ : std_logic;
SIGNAL \byte_index[1]~35\ : std_logic;
SIGNAL \byte_index[2]~36_combout\ : std_logic;
SIGNAL \byte_index[2]~37\ : std_logic;
SIGNAL \byte_index[3]~38_combout\ : std_logic;
SIGNAL \byte_index[3]~39\ : std_logic;
SIGNAL \byte_index[4]~40_combout\ : std_logic;
SIGNAL \byte_index[4]~41\ : std_logic;
SIGNAL \byte_index[5]~42_combout\ : std_logic;
SIGNAL \byte_index[5]~43\ : std_logic;
SIGNAL \byte_index[6]~44_combout\ : std_logic;
SIGNAL \byte_index[6]~45\ : std_logic;
SIGNAL \byte_index[7]~46_combout\ : std_logic;
SIGNAL \byte_index[7]~47\ : std_logic;
SIGNAL \byte_index[8]~48_combout\ : std_logic;
SIGNAL \byte_index[8]~49\ : std_logic;
SIGNAL \byte_index[9]~50_combout\ : std_logic;
SIGNAL \byte_index[9]~51\ : std_logic;
SIGNAL \byte_index[10]~52_combout\ : std_logic;
SIGNAL \byte_index[10]~53\ : std_logic;
SIGNAL \byte_index[11]~54_combout\ : std_logic;
SIGNAL \byte_index[11]~55\ : std_logic;
SIGNAL \byte_index[12]~56_combout\ : std_logic;
SIGNAL \byte_index[12]~57\ : std_logic;
SIGNAL \byte_index[13]~58_combout\ : std_logic;
SIGNAL \byte_index[13]~59\ : std_logic;
SIGNAL \byte_index[14]~60_combout\ : std_logic;
SIGNAL \byte_index[14]~61\ : std_logic;
SIGNAL \byte_index[15]~62_combout\ : std_logic;
SIGNAL \byte_index[15]~63\ : std_logic;
SIGNAL \byte_index[16]~64_combout\ : std_logic;
SIGNAL \byte_index[16]~65\ : std_logic;
SIGNAL \byte_index[17]~66_combout\ : std_logic;
SIGNAL \byte_index[17]~67\ : std_logic;
SIGNAL \byte_index[18]~68_combout\ : std_logic;
SIGNAL \byte_index[18]~69\ : std_logic;
SIGNAL \byte_index[19]~70_combout\ : std_logic;
SIGNAL \byte_index[19]~71\ : std_logic;
SIGNAL \byte_index[20]~72_combout\ : std_logic;
SIGNAL \byte_index[20]~73\ : std_logic;
SIGNAL \byte_index[21]~74_combout\ : std_logic;
SIGNAL \byte_index[21]~75\ : std_logic;
SIGNAL \byte_index[22]~76_combout\ : std_logic;
SIGNAL \byte_index[22]~77\ : std_logic;
SIGNAL \byte_index[23]~78_combout\ : std_logic;
SIGNAL \byte_index[23]~79\ : std_logic;
SIGNAL \byte_index[24]~80_combout\ : std_logic;
SIGNAL \byte_index[24]~81\ : std_logic;
SIGNAL \byte_index[25]~82_combout\ : std_logic;
SIGNAL \byte_index[25]~83\ : std_logic;
SIGNAL \byte_index[26]~84_combout\ : std_logic;
SIGNAL \byte_index[26]~85\ : std_logic;
SIGNAL \byte_index[27]~92_combout\ : std_logic;
SIGNAL \byte_index[27]~93\ : std_logic;
SIGNAL \byte_index[28]~94_combout\ : std_logic;
SIGNAL \byte_index[28]~95\ : std_logic;
SIGNAL \byte_index[29]~96_combout\ : std_logic;
SIGNAL \byte_index[29]~97\ : std_logic;
SIGNAL \byte_index[30]~98_combout\ : std_logic;
SIGNAL \Equal27~1_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \byte_index[7]~86_combout\ : std_logic;
SIGNAL \byte_index[7]~87_combout\ : std_logic;
SIGNAL \byte_index[7]~88_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector34~2_combout\ : std_logic;
SIGNAL \s_state.IP_HEADER~q\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Equal23~2_combout\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \Equal23~1_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \next_state~8_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \s_state.UDP_HEADER~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \s_state.DATA~feeder_combout\ : std_logic;
SIGNAL \s_state.DATA~q\ : std_logic;
SIGNAL \s_state.DATA~clkctrl_outclk\ : std_logic;
SIGNAL \out_data[0]$latch~combout\ : std_logic;
SIGNAL \out_data[1]$latch~combout\ : std_logic;
SIGNAL \out_data[2]$latch~combout\ : std_logic;
SIGNAL \out_data[3]$latch~combout\ : std_logic;
SIGNAL \out_data[4]$latch~combout\ : std_logic;
SIGNAL \out_data[5]$latch~combout\ : std_logic;
SIGNAL \out_data[6]$latch~combout\ : std_logic;
SIGNAL \out_data[7]$latch~combout\ : std_logic;
SIGNAL \s_out_endofpacket~0_combout\ : std_logic;
SIGNAL \s_out_endofpacket~1_combout\ : std_logic;
SIGNAL \s_out_endofpacket~q\ : std_logic;
SIGNAL \s_channel[0]~22_combout\ : std_logic;
SIGNAL \channel~0_combout\ : std_logic;
SIGNAL \channel~1_combout\ : std_logic;
SIGNAL \s_channel[2]~feeder_combout\ : std_logic;
SIGNAL \channel~2_combout\ : std_logic;
SIGNAL \channel~3_combout\ : std_logic;
SIGNAL \channel~4_combout\ : std_logic;
SIGNAL \channel~5_combout\ : std_logic;
SIGNAL \channel~6_combout\ : std_logic;
SIGNAL \channel~7_combout\ : std_logic;
SIGNAL \s_channel[24]~14_combout\ : std_logic;
SIGNAL \s_channel[8]~15_combout\ : std_logic;
SIGNAL \channel~8_combout\ : std_logic;
SIGNAL \channel~9_combout\ : std_logic;
SIGNAL \channel~10_combout\ : std_logic;
SIGNAL \channel~11_combout\ : std_logic;
SIGNAL \channel~12_combout\ : std_logic;
SIGNAL \channel~13_combout\ : std_logic;
SIGNAL \channel~14_combout\ : std_logic;
SIGNAL \channel~15_combout\ : std_logic;
SIGNAL \s_channel[16]~16_combout\ : std_logic;
SIGNAL \channel~16_combout\ : std_logic;
SIGNAL \channel~17_combout\ : std_logic;
SIGNAL \channel~18_combout\ : std_logic;
SIGNAL \channel~19_combout\ : std_logic;
SIGNAL \channel~20_combout\ : std_logic;
SIGNAL \channel~21_combout\ : std_logic;
SIGNAL \channel~22_combout\ : std_logic;
SIGNAL \channel~23_combout\ : std_logic;
SIGNAL \s_channel[24]~23_combout\ : std_logic;
SIGNAL \channel~24_combout\ : std_logic;
SIGNAL \channel~25_combout\ : std_logic;
SIGNAL \channel~26_combout\ : std_logic;
SIGNAL \channel~27_combout\ : std_logic;
SIGNAL \channel~28_combout\ : std_logic;
SIGNAL \channel~29_combout\ : std_logic;
SIGNAL \channel~30_combout\ : std_logic;
SIGNAL \channel~31_combout\ : std_logic;
SIGNAL \s_channel[32]~24_combout\ : std_logic;
SIGNAL \channel~32_combout\ : std_logic;
SIGNAL \channel~33_combout\ : std_logic;
SIGNAL \channel~34_combout\ : std_logic;
SIGNAL \channel~35_combout\ : std_logic;
SIGNAL \channel~36_combout\ : std_logic;
SIGNAL \channel~37_combout\ : std_logic;
SIGNAL \channel~38_combout\ : std_logic;
SIGNAL \channel~39_combout\ : std_logic;
SIGNAL \s_channel[40]~17_combout\ : std_logic;
SIGNAL \channel~40_combout\ : std_logic;
SIGNAL \channel~41_combout\ : std_logic;
SIGNAL \channel~42_combout\ : std_logic;
SIGNAL \channel~43_combout\ : std_logic;
SIGNAL \channel~44_combout\ : std_logic;
SIGNAL \channel~45_combout\ : std_logic;
SIGNAL \channel~46_combout\ : std_logic;
SIGNAL \channel~47_combout\ : std_logic;
SIGNAL \s_channel[48]~25_combout\ : std_logic;
SIGNAL \channel~48_combout\ : std_logic;
SIGNAL \channel~49_combout\ : std_logic;
SIGNAL \channel~50_combout\ : std_logic;
SIGNAL \channel~51_combout\ : std_logic;
SIGNAL \channel~52_combout\ : std_logic;
SIGNAL \channel~53_combout\ : std_logic;
SIGNAL \channel~54_combout\ : std_logic;
SIGNAL \channel~55_combout\ : std_logic;
SIGNAL \s_channel[56]~18_combout\ : std_logic;
SIGNAL \channel~56_combout\ : std_logic;
SIGNAL \channel~57_combout\ : std_logic;
SIGNAL \channel~58_combout\ : std_logic;
SIGNAL \channel~59_combout\ : std_logic;
SIGNAL \channel~60_combout\ : std_logic;
SIGNAL \channel~61_combout\ : std_logic;
SIGNAL \channel~62_combout\ : std_logic;
SIGNAL \channel~63_combout\ : std_logic;
SIGNAL \s_channel[64]~19_combout\ : std_logic;
SIGNAL \channel~64_combout\ : std_logic;
SIGNAL \channel~65_combout\ : std_logic;
SIGNAL \channel~66_combout\ : std_logic;
SIGNAL \channel~67_combout\ : std_logic;
SIGNAL \channel~68_combout\ : std_logic;
SIGNAL \channel~69_combout\ : std_logic;
SIGNAL \channel~70_combout\ : std_logic;
SIGNAL \channel~71_combout\ : std_logic;
SIGNAL \s_channel[72]~20_combout\ : std_logic;
SIGNAL \channel~72_combout\ : std_logic;
SIGNAL \channel~73_combout\ : std_logic;
SIGNAL \channel~74_combout\ : std_logic;
SIGNAL \channel~75_combout\ : std_logic;
SIGNAL \channel~76_combout\ : std_logic;
SIGNAL \channel~77_combout\ : std_logic;
SIGNAL \channel~78_combout\ : std_logic;
SIGNAL \channel~79_combout\ : std_logic;
SIGNAL \s_channel[80]~26_combout\ : std_logic;
SIGNAL \channel~80_combout\ : std_logic;
SIGNAL \channel~81_combout\ : std_logic;
SIGNAL \channel~82_combout\ : std_logic;
SIGNAL \channel~83_combout\ : std_logic;
SIGNAL \channel~84_combout\ : std_logic;
SIGNAL \channel~85_combout\ : std_logic;
SIGNAL \channel~86_combout\ : std_logic;
SIGNAL \channel~87_combout\ : std_logic;
SIGNAL \s_channel[88]~21_combout\ : std_logic;
SIGNAL \channel~88_combout\ : std_logic;
SIGNAL \channel~89_combout\ : std_logic;
SIGNAL \channel~90_combout\ : std_logic;
SIGNAL \channel~91_combout\ : std_logic;
SIGNAL \channel~92_combout\ : std_logic;
SIGNAL \channel~93_combout\ : std_logic;
SIGNAL \channel~94_combout\ : std_logic;
SIGNAL \channel~95_combout\ : std_logic;
SIGNAL brojac : std_logic_vector(31 DOWNTO 0);
SIGNAL ip_header_length : std_logic_vector(31 DOWNTO 0);
SIGNAL s_out_data : std_logic_vector(7 DOWNTO 0);
SIGNAL s_channel : std_logic_vector(95 DOWNTO 0);
SIGNAL udp_length : std_logic_vector(31 DOWNTO 0);
SIGNAL byte_index : std_logic_vector(31 DOWNTO 0);

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

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\brojac~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \brojac~0_combout\);

\s_state.DATA~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_state.DATA~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y10_N16
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

-- Location: IOOBUF_X0_Y8_N23
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

-- Location: IOOBUF_X0_Y8_N16
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

-- Location: IOOBUF_X0_Y8_N2
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

-- Location: IOOBUF_X30_Y24_N9
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X25_Y24_N16
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X32_Y24_N23
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

-- Location: IOOBUF_X13_Y0_N23
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

-- Location: IOOBUF_X34_Y17_N23
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

-- Location: IOOBUF_X23_Y0_N2
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

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X21_Y0_N2
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X7_Y24_N2
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

-- Location: IOOBUF_X7_Y24_N9
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

-- Location: IOOBUF_X9_Y24_N16
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

-- Location: IOOBUF_X11_Y24_N9
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

-- Location: IOOBUF_X5_Y24_N16
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X3_Y24_N16
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

-- Location: IOOBUF_X5_Y24_N9
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X0_Y21_N23
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

-- Location: IOOBUF_X0_Y21_N9
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

-- Location: IOOBUF_X11_Y24_N2
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

-- Location: IOOBUF_X0_Y22_N2
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

-- Location: IOOBUF_X9_Y24_N9
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

-- Location: IOOBUF_X3_Y24_N23
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

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOOBUF_X18_Y24_N9
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

-- Location: IOOBUF_X11_Y24_N16
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

-- Location: IOOBUF_X11_Y24_N23
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

-- Location: IOOBUF_X7_Y24_N16
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X1_Y24_N9
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X0_Y19_N2
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

-- Location: IOOBUF_X0_Y19_N23
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

-- Location: IOOBUF_X0_Y19_N16
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

-- Location: IOOBUF_X0_Y22_N16
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X3_Y24_N2
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

-- Location: IOOBUF_X9_Y24_N23
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

-- Location: IOOBUF_X3_Y24_N9
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

-- Location: IOOBUF_X34_Y19_N2
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

-- Location: IOOBUF_X5_Y24_N23
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X25_Y24_N23
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

-- Location: IOOBUF_X13_Y24_N9
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

-- Location: IOOBUF_X34_Y19_N16
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

-- Location: IOOBUF_X9_Y0_N2
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

-- Location: IOOBUF_X28_Y24_N2
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

-- Location: IOOBUF_X21_Y24_N2
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

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOOBUF_X21_Y24_N16
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X34_Y17_N16
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOOBUF_X18_Y24_N16
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

-- Location: IOOBUF_X21_Y24_N9
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

-- Location: IOOBUF_X34_Y11_N9
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X28_Y24_N16
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X0_Y5_N23
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X0_Y4_N16
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

-- Location: IOOBUF_X0_Y7_N16
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

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOOBUF_X0_Y8_N9
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

-- Location: IOOBUF_X25_Y0_N16
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

-- Location: IOOBUF_X21_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X21_Y0_N9
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

-- Location: IOOBUF_X21_Y0_N16
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

-- Location: IOOBUF_X23_Y24_N23
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X25_Y24_N2
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

-- Location: IOOBUF_X13_Y0_N16
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

-- Location: IOOBUF_X13_Y24_N2
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

-- Location: IOOBUF_X13_Y24_N23
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

-- Location: IOOBUF_X16_Y24_N16
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X13_Y24_N16
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

-- Location: IOOBUF_X30_Y24_N2
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

-- Location: IOOBUF_X5_Y24_N2
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

-- Location: IOIBUF_X0_Y10_N1
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

-- Location: IOIBUF_X0_Y7_N1
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

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

-- Location: FF_X10_Y12_N13
\s_out_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(0));

-- Location: LCCOMB_X11_Y12_N0
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

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X11_Y12_N2
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

-- Location: IOIBUF_X25_Y24_N8
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: LCCOMB_X16_Y11_N0
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

-- Location: LCCOMB_X17_Y11_N8
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

-- Location: LCCOMB_X14_Y16_N22
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (byte_index(0) & !byte_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(0),
	datad => byte_index(4),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X14_Y12_N2
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (byte_index(2) & !byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(2),
	datad => byte_index(1),
	combout => \Equal2~1_combout\);

-- Location: IOIBUF_X0_Y6_N22
\in_valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_valid,
	o => \in_valid~input_o\);

-- Location: LCCOMB_X11_Y14_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = brojac(0) $ (VCC)
-- \Add0~1\ = CARRY(brojac(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X10_Y14_N28
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (!\out_ready~input_o\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \Add0~0_combout\,
	combout => \Add0~92_combout\);

-- Location: IOIBUF_X11_Y0_N22
\in_startofpacket~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_startofpacket,
	o => \in_startofpacket~input_o\);

-- Location: LCCOMB_X12_Y12_N14
\Selector32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~4_combout\ = (\s_state.IDLE~q\ & (\Selector32~3_combout\ & (\out_ready~input_o\))) # (!\s_state.IDLE~q\ & (((\Selector32~3_combout\ & \out_ready~input_o\)) # (!\in_startofpacket~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datab => \Selector32~3_combout\,
	datac => \out_ready~input_o\,
	datad => \in_startofpacket~input_o\,
	combout => \Selector32~4_combout\);

-- Location: LCCOMB_X10_Y12_N10
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\in_data[2]~input_o\ & (!\in_data[5]~input_o\ & (!\in_data[6]~input_o\ & !\in_data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[2]~input_o\,
	datab => \in_data[5]~input_o\,
	datac => \in_data[6]~input_o\,
	datad => \in_data[1]~input_o\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X10_Y12_N16
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\in_data[4]~input_o\ & (!\in_data[0]~input_o\ & (!\in_data[7]~input_o\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \in_data[0]~input_o\,
	datac => \in_data[7]~input_o\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X11_Y11_N28
\byte_index[30]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[30]~98_combout\ = (byte_index(30) & (\byte_index[29]~97\ $ (GND))) # (!byte_index(30) & (!\byte_index[29]~97\ & VCC))
-- \byte_index[30]~99\ = CARRY((byte_index(30) & !\byte_index[29]~97\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(30),
	datad => VCC,
	cin => \byte_index[29]~97\,
	combout => \byte_index[30]~98_combout\,
	cout => \byte_index[30]~99\);

-- Location: LCCOMB_X11_Y11_N30
\byte_index[31]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[31]~100_combout\ = byte_index(31) $ (\byte_index[30]~99\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	cin => \byte_index[30]~99\,
	combout => \byte_index[31]~100_combout\);

-- Location: FF_X11_Y11_N31
\byte_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[31]~100_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(31));

-- Location: LCCOMB_X12_Y11_N6
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!byte_index(23) & (!byte_index(25) & (!byte_index(24) & !byte_index(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(23),
	datab => byte_index(25),
	datac => byte_index(24),
	datad => byte_index(26),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X12_Y11_N16
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!byte_index(29) & (!byte_index(28) & (!byte_index(30) & !byte_index(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datab => byte_index(28),
	datac => byte_index(30),
	datad => byte_index(27),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X12_Y11_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!byte_index(12) & (!byte_index(14) & (!byte_index(13) & !byte_index(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(12),
	datab => byte_index(14),
	datac => byte_index(13),
	datad => byte_index(11),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X12_Y11_N18
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!byte_index(21) & (!byte_index(22) & (!byte_index(19) & !byte_index(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => byte_index(22),
	datac => byte_index(19),
	datad => byte_index(20),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X12_Y11_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!byte_index(16) & (!byte_index(18) & (!byte_index(15) & !byte_index(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(16),
	datab => byte_index(18),
	datac => byte_index(15),
	datad => byte_index(17),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y11_N28
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

-- Location: LCCOMB_X12_Y11_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X13_Y11_N24
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

-- Location: LCCOMB_X14_Y13_N16
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!byte_index(6) & (byte_index(3) & (!byte_index(5) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => byte_index(3),
	datac => byte_index(5),
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X13_Y13_N30
\next_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = (\Equal0~9_combout\ & (\Equal0~8_combout\ & ((!\in_data[3]~input_o\) # (!\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal3~1_combout\,
	datac => \in_data[3]~input_o\,
	datad => \Equal0~8_combout\,
	combout => \next_state~10_combout\);

-- Location: LCCOMB_X13_Y13_N20
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X14_Y13_N24
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!byte_index(1) & (byte_index(2) & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(2),
	datad => \Equal0~8_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X13_Y13_N2
\next_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~11_combout\ = (!byte_index(4) & (!\Equal0~10_combout\ & (!byte_index(0) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => \Equal0~10_combout\,
	datac => byte_index(0),
	datad => \Equal2~0_combout\,
	combout => \next_state~11_combout\);

-- Location: LCCOMB_X13_Y14_N20
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\s_state.ETHERNET_HEADER~q\ & (\PROCES1~10_combout\ & ((\next_state~10_combout\) # (\next_state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~10_combout\,
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \next_state~11_combout\,
	datad => \PROCES1~10_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X14_Y13_N20
\Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (!byte_index(0) & (!byte_index(6) & (!byte_index(3) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(6),
	datac => byte_index(3),
	datad => \Equal0~7_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X14_Y13_N26
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (((byte_index(5)) # (!byte_index(1))) # (!byte_index(2))) # (!byte_index(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => byte_index(2),
	datac => byte_index(5),
	datad => byte_index(1),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X14_Y13_N30
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (byte_index(0) & (byte_index(4) & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datac => byte_index(4),
	datad => \Equal0~8_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X14_Y12_N14
\next_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~16_combout\ = (\Equal7~0_combout\ & ((byte_index(1)) # (!byte_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(2),
	datac => \Equal7~0_combout\,
	datad => byte_index(1),
	combout => \next_state~16_combout\);

-- Location: LCCOMB_X14_Y13_N12
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!byte_index(0) & (byte_index(1) & (byte_index(4) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datac => byte_index(4),
	datad => \Equal0~8_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X14_Y12_N26
\next_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~18_combout\ = (!\next_state~16_combout\ & (!\Equal8~0_combout\ & ((\Equal5~0_combout\) # (!\Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \next_state~16_combout\,
	datac => \Equal8~0_combout\,
	datad => \Equal14~0_combout\,
	combout => \next_state~18_combout\);

-- Location: LCCOMB_X10_Y12_N14
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ((\in_data[3]~input_o\) # (!\in_data[0]~input_o\)) # (!\in_data[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => \in_data[3]~input_o\,
	datac => \in_data[0]~input_o\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X14_Y12_N16
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Equal5~0_combout\) # (!\Equal14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datad => \Equal14~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X10_Y12_N24
\next_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~13_combout\ = (!\Equal5~1_combout\ & (((\Equal6~0_combout\) # (\in_data[7]~input_o\)) # (!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal6~0_combout\,
	datac => \in_data[7]~input_o\,
	datad => \Equal5~1_combout\,
	combout => \next_state~13_combout\);

-- Location: FF_X13_Y9_N5
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
	ena => \ip_header_length[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(2));

-- Location: FF_X13_Y9_N29
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
	ena => \ip_header_length[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(4));

-- Location: FF_X13_Y9_N23
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
	ena => \ip_header_length[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(5));

-- Location: LCCOMB_X13_Y9_N28
\next_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~14_combout\ = (!ip_header_length(3) & (ip_header_length(2) & (ip_header_length(4) & !ip_header_length(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(2),
	datac => ip_header_length(4),
	datad => ip_header_length(5),
	combout => \next_state~14_combout\);

-- Location: LCCOMB_X14_Y13_N8
\Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal14~1_combout\ = (!byte_index(1) & (byte_index(5) & (!byte_index(4) & !byte_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(5),
	datac => byte_index(4),
	datad => byte_index(2),
	combout => \Equal14~1_combout\);

-- Location: LCCOMB_X13_Y9_N0
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = ip_header_length(4) $ (((ip_header_length(2)) # (ip_header_length(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ip_header_length(2),
	datac => ip_header_length(3),
	datad => ip_header_length(4),
	combout => \Add11~2_combout\);

-- Location: LCCOMB_X13_Y9_N2
\Add11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~3_combout\ = ip_header_length(2) $ (ip_header_length(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ip_header_length(2),
	datad => ip_header_length(3),
	combout => \Add11~3_combout\);

-- Location: LCCOMB_X13_Y9_N20
\Equal17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~1_combout\ = (\Add11~2_combout\ & (byte_index(4) & (byte_index(3) $ (\Add11~3_combout\)))) # (!\Add11~2_combout\ & (!byte_index(4) & (byte_index(3) $ (\Add11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => byte_index(3),
	datac => byte_index(4),
	datad => \Add11~3_combout\,
	combout => \Equal17~1_combout\);

-- Location: LCCOMB_X14_Y13_N4
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = ip_header_length(2) $ (byte_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datad => byte_index(2),
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X13_Y9_N24
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (ip_header_length(5) & (ip_header_length(4) & ((ip_header_length(3)) # (ip_header_length(2)))))

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
	combout => \Add11~0_combout\);

-- Location: LCCOMB_X13_Y9_N6
\Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~2_combout\ = (byte_index(6) & (\Add11~0_combout\ & (\Add11~1_combout\ $ (!byte_index(5))))) # (!byte_index(6) & (!\Add11~0_combout\ & (\Add11~1_combout\ $ (!byte_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => \Add11~0_combout\,
	datac => \Add11~1_combout\,
	datad => byte_index(5),
	combout => \Equal17~2_combout\);

-- Location: LCCOMB_X14_Y13_N2
\Equal17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~3_combout\ = (\Equal17~1_combout\ & (\Equal16~0_combout\ & (\Equal17~2_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal17~1_combout\,
	datab => \Equal16~0_combout\,
	datac => \Equal17~2_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal17~3_combout\);

-- Location: LCCOMB_X14_Y13_N22
\next_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~19_combout\ = (!byte_index(1) & (!byte_index(0) & \Equal17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datac => byte_index(0),
	datad => \Equal17~3_combout\,
	combout => \next_state~19_combout\);

-- Location: LCCOMB_X14_Y13_N28
\next_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~20_combout\ = (\Equal14~1_combout\ & ((\Equal14~0_combout\ & (\next_state~14_combout\)) # (!\Equal14~0_combout\ & ((\next_state~19_combout\))))) # (!\Equal14~1_combout\ & (((\next_state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~14_combout\,
	datab => \Equal14~1_combout\,
	datac => \next_state~19_combout\,
	datad => \Equal14~0_combout\,
	combout => \next_state~20_combout\);

-- Location: LCCOMB_X14_Y13_N14
\next_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~15_combout\ = (\next_state~20_combout\ & ((!\Equal2~0_combout\) # (!byte_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state~20_combout\,
	datac => byte_index(4),
	datad => \Equal2~0_combout\,
	combout => \next_state~15_combout\);

-- Location: LCCOMB_X14_Y12_N0
\next_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~12_combout\ = (\PROCES1~10_combout\ & (((!\Equal4~0_combout\) # (!\Equal2~1_combout\)) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal4~0_combout\,
	datad => \PROCES1~10_combout\,
	combout => \next_state~12_combout\);

-- Location: LCCOMB_X14_Y12_N8
\next_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~17_combout\ = (\next_state~12_combout\ & ((\next_state~13_combout\) # ((\next_state~18_combout\ & \next_state~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~18_combout\,
	datab => \next_state~13_combout\,
	datac => \next_state~15_combout\,
	datad => \next_state~12_combout\,
	combout => \next_state~17_combout\);

-- Location: LCCOMB_X14_Y12_N22
\Selector32~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~6_combout\ = (\Equal14~0_combout\ & (\s_state.IP_HEADER~q\ & (\next_state~17_combout\ & !\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \next_state~17_combout\,
	datad => \Equal5~0_combout\,
	combout => \Selector32~6_combout\);

-- Location: LCCOMB_X12_Y12_N6
\Selector32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~5_combout\ = (!\Selector32~4_combout\ & (!\Selector32~6_combout\ & ((\Selector34~1_combout\) # (!\Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~4_combout\,
	datab => \Selector34~1_combout\,
	datac => \Selector34~0_combout\,
	datad => \Selector32~6_combout\,
	combout => \Selector32~5_combout\);

-- Location: FF_X12_Y12_N7
\s_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector32~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IDLE~q\);

-- Location: LCCOMB_X13_Y12_N6
\brojac~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \brojac~0_combout\ = (\s_state.CRC~q\) # (!\s_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.IDLE~q\,
	datac => \s_state.CRC~q\,
	combout => \brojac~0_combout\);

-- Location: CLKCTRL_G5
\brojac~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \brojac~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \brojac~0clkctrl_outclk\);

-- Location: LCCOMB_X10_Y14_N8
\brojac[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(0) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(0)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~92_combout\,
	datac => brojac(0),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(0));

-- Location: LCCOMB_X11_Y14_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (brojac(1) & (!\Add0~1\)) # (!brojac(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!brojac(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X10_Y14_N30
\Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (!\out_ready~input_o\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~2_combout\,
	combout => \Add0~91_combout\);

-- Location: LCCOMB_X10_Y14_N10
\brojac[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(1) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(1))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(1),
	datac => \Add0~91_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(1));

-- Location: LCCOMB_X11_Y14_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (brojac(2) & (\Add0~3\ $ (GND))) # (!brojac(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((brojac(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X10_Y14_N12
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (!\out_ready~input_o\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~4_combout\,
	combout => \Add0~90_combout\);

-- Location: LCCOMB_X10_Y14_N16
\brojac[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(2) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(2)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datac => \brojac~0clkctrl_outclk\,
	datad => brojac(2),
	combout => brojac(2));

-- Location: LCCOMB_X11_Y14_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (brojac(3) & (!\Add0~5\)) # (!brojac(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!brojac(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X10_Y14_N26
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (!\out_ready~input_o\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~6_combout\,
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X13_Y14_N10
\brojac[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(3) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(3))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(3),
	datab => \Add0~89_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(3));

-- Location: LCCOMB_X11_Y14_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (brojac(4) & (\Add0~7\ $ (GND))) # (!brojac(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((brojac(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X13_Y14_N0
\Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (!\out_ready~input_o\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datad => \Add0~8_combout\,
	combout => \Add0~88_combout\);

-- Location: LCCOMB_X13_Y14_N24
\brojac[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(4) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(4)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~88_combout\,
	datac => \brojac~0clkctrl_outclk\,
	datad => brojac(4),
	combout => brojac(4));

-- Location: LCCOMB_X11_Y14_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (brojac(5) & (!\Add0~9\)) # (!brojac(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!brojac(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X10_Y14_N24
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (!\out_ready~input_o\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datad => \Add0~10_combout\,
	combout => \Add0~87_combout\);

-- Location: LCCOMB_X13_Y14_N2
\brojac[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(5) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(5))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => brojac(5),
	datac => \Add0~87_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(5));

-- Location: LCCOMB_X11_Y14_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (brojac(6) & (\Add0~11\ $ (GND))) # (!brojac(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((brojac(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X12_Y14_N2
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (!\out_ready~input_o\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~12_combout\,
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X13_Y14_N16
\brojac[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(6) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(6)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~86_combout\,
	datab => brojac(6),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(6));

-- Location: LCCOMB_X13_Y14_N26
\PROCES1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~7_combout\ = (!brojac(3) & (!brojac(6) & (!brojac(4) & !brojac(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(3),
	datab => brojac(6),
	datac => brojac(4),
	datad => brojac(5),
	combout => \PROCES1~7_combout\);

-- Location: LCCOMB_X11_Y14_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (brojac(7) & (!\Add0~13\)) # (!brojac(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!brojac(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X14_Y14_N8
\Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (!\out_ready~input_o\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~14_combout\,
	combout => \Add0~85_combout\);

-- Location: LCCOMB_X14_Y14_N4
\brojac[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(7) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(7)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~85_combout\,
	datac => brojac(7),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(7));

-- Location: LCCOMB_X11_Y14_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (brojac(8) & (\Add0~15\ $ (GND))) # (!brojac(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((brojac(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X14_Y14_N26
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (!\out_ready~input_o\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~16_combout\,
	combout => \Add0~84_combout\);

-- Location: LCCOMB_X14_Y14_N22
\brojac[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(8) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(8)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datac => brojac(8),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(8));

-- Location: LCCOMB_X11_Y14_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (brojac(9) & (!\Add0~17\)) # (!brojac(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!brojac(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X14_Y14_N28
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (!\out_ready~input_o\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~18_combout\,
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X14_Y14_N24
\brojac[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(9) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(9)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~83_combout\,
	datac => \brojac~0clkctrl_outclk\,
	datad => brojac(9),
	combout => brojac(9));

-- Location: LCCOMB_X11_Y14_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (brojac(10) & (\Add0~19\ $ (GND))) # (!brojac(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((brojac(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X14_Y14_N30
\Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (!\out_ready~input_o\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~20_combout\,
	combout => \Add0~82_combout\);

-- Location: LCCOMB_X14_Y14_N14
\brojac[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(10) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(10)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~82_combout\,
	datac => brojac(10),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(10));

-- Location: LCCOMB_X11_Y14_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (brojac(11) & (!\Add0~21\)) # (!brojac(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!brojac(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X12_Y14_N16
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (!\out_ready~input_o\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~22_combout\,
	combout => \Add0~81_combout\);

-- Location: LCCOMB_X12_Y14_N14
\brojac[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(11) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(11)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~81_combout\,
	datac => brojac(11),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(11));

-- Location: LCCOMB_X11_Y14_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (brojac(12) & (\Add0~23\ $ (GND))) # (!brojac(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((brojac(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X12_Y14_N18
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (!\out_ready~input_o\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~24_combout\,
	combout => \Add0~80_combout\);

-- Location: LCCOMB_X12_Y14_N12
\brojac[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(12) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(12)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~80_combout\,
	datac => \brojac~0clkctrl_outclk\,
	datad => brojac(12),
	combout => brojac(12));

-- Location: LCCOMB_X11_Y14_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (brojac(13) & (!\Add0~25\)) # (!brojac(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!brojac(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X12_Y14_N24
\Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (!\out_ready~input_o\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \Add0~26_combout\,
	combout => \Add0~79_combout\);

-- Location: LCCOMB_X12_Y14_N10
\brojac[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(13) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(13)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~79_combout\,
	datac => \brojac~0clkctrl_outclk\,
	datad => brojac(13),
	combout => brojac(13));

-- Location: LCCOMB_X11_Y14_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (brojac(14) & (\Add0~27\ $ (GND))) # (!brojac(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((brojac(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X12_Y14_N30
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (!\out_ready~input_o\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~28_combout\,
	combout => \Add0~78_combout\);

-- Location: LCCOMB_X12_Y14_N8
\brojac[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(14) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(14)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~78_combout\,
	datac => brojac(14),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(14));

-- Location: LCCOMB_X12_Y14_N28
\PROCES1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~5_combout\ = (!brojac(13) & (!brojac(11) & (!brojac(14) & !brojac(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(13),
	datab => brojac(11),
	datac => brojac(14),
	datad => brojac(12),
	combout => \PROCES1~5_combout\);

-- Location: LCCOMB_X14_Y14_N20
\PROCES1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~6_combout\ = (!brojac(8) & (!brojac(7) & (!brojac(10) & !brojac(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(8),
	datab => brojac(7),
	datac => brojac(10),
	datad => brojac(9),
	combout => \PROCES1~6_combout\);

-- Location: LCCOMB_X11_Y14_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (brojac(15) & (!\Add0~29\)) # (!brojac(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!brojac(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X10_Y14_N18
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (!\out_ready~input_o\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \Add0~30_combout\,
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X13_Y14_N6
\brojac[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(15) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(15))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(15),
	datac => \Add0~77_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(15));

-- Location: LCCOMB_X11_Y13_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (brojac(16) & (\Add0~31\ $ (GND))) # (!brojac(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((brojac(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X12_Y14_N4
\Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (!\out_ready~input_o\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \Add0~32_combout\,
	combout => \Add0~76_combout\);

-- Location: LCCOMB_X13_Y14_N12
\brojac[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(16) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(16))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(16),
	datac => \Add0~76_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(16));

-- Location: LCCOMB_X11_Y13_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (brojac(17) & (!\Add0~33\)) # (!brojac(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!brojac(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X12_Y14_N22
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (!\out_ready~input_o\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~34_combout\,
	combout => \Add0~75_combout\);

-- Location: LCCOMB_X12_Y14_N6
\brojac[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(17) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(17))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(17),
	datac => \Add0~75_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(17));

-- Location: LCCOMB_X11_Y13_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (brojac(18) & (\Add0~35\ $ (GND))) # (!brojac(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((brojac(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X12_Y14_N20
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (!\out_ready~input_o\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~36_combout\,
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X13_Y14_N14
\brojac[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(18) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(18)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~74_combout\,
	datac => brojac(18),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(18));

-- Location: LCCOMB_X11_Y13_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (brojac(19) & (!\Add0~37\)) # (!brojac(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!brojac(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X12_Y13_N28
\Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (!\out_ready~input_o\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \Add0~38_combout\,
	combout => \Add0~73_combout\);

-- Location: LCCOMB_X12_Y13_N30
\brojac[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(19) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(19)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~73_combout\,
	datac => brojac(19),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(19));

-- Location: LCCOMB_X11_Y13_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (brojac(20) & (\Add0~39\ $ (GND))) # (!brojac(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((brojac(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X12_Y13_N22
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (!\out_ready~input_o\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~40_combout\,
	combout => \Add0~72_combout\);

-- Location: LCCOMB_X12_Y13_N20
\brojac[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(20) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(20)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~72_combout\,
	datac => brojac(20),
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(20));

-- Location: LCCOMB_X11_Y13_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (brojac(21) & (!\Add0~41\)) # (!brojac(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!brojac(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X12_Y13_N24
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (!\out_ready~input_o\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~42_combout\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X12_Y13_N14
\brojac[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(21) = (GLOBAL(\brojac~0clkctrl_outclk\) & ((brojac(21)))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & (\Add0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~71_combout\,
	datac => \brojac~0clkctrl_outclk\,
	datad => brojac(21),
	combout => brojac(21));

-- Location: LCCOMB_X11_Y13_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (brojac(22) & (\Add0~43\ $ (GND))) # (!brojac(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((brojac(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X12_Y13_N26
\Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (!\out_ready~input_o\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~44_combout\,
	combout => \Add0~70_combout\);

-- Location: LCCOMB_X12_Y13_N16
\brojac[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(22) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(22))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => brojac(22),
	datac => \Add0~70_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(22));

-- Location: LCCOMB_X11_Y13_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (brojac(23) & (!\Add0~45\)) # (!brojac(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!brojac(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X12_Y14_N26
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (!\out_ready~input_o\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~46_combout\,
	combout => \Add0~69_combout\);

-- Location: LCCOMB_X12_Y14_N0
\brojac[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(23) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(23))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => brojac(23),
	datac => \Add0~69_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(23));

-- Location: LCCOMB_X11_Y13_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (brojac(24) & (\Add0~47\ $ (GND))) # (!brojac(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((brojac(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X12_Y13_N12
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (!\out_ready~input_o\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \Add0~48_combout\,
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X12_Y13_N10
\brojac[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(24) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(24))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(24),
	datac => \Add0~68_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(24));

-- Location: LCCOMB_X11_Y13_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (brojac(25) & (!\Add0~49\)) # (!brojac(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!brojac(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X12_Y13_N18
\Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (!\out_ready~input_o\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~50_combout\,
	combout => \Add0~67_combout\);

-- Location: LCCOMB_X12_Y13_N0
\brojac[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(25) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(25))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => brojac(25),
	datac => \Add0~67_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(25));

-- Location: LCCOMB_X11_Y13_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (brojac(26) & (\Add0~51\ $ (GND))) # (!brojac(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((brojac(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X12_Y13_N4
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (!\out_ready~input_o\ & \Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~52_combout\,
	combout => \Add0~66_combout\);

-- Location: LCCOMB_X12_Y13_N2
\brojac[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(26) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(26))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => brojac(26),
	datac => \Add0~66_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(26));

-- Location: LCCOMB_X11_Y13_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (brojac(27) & (!\Add0~53\)) # (!brojac(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!brojac(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X13_Y13_N8
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (!\out_ready~input_o\ & \Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datad => \Add0~54_combout\,
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X13_Y13_N4
\brojac[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(27) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(27))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => brojac(27),
	datac => \Add0~65_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(27));

-- Location: LCCOMB_X11_Y13_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (brojac(28) & (\Add0~55\ $ (GND))) # (!brojac(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((brojac(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X12_Y13_N6
\Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (!\out_ready~input_o\ & \Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \out_ready~input_o\,
	datad => \Add0~56_combout\,
	combout => \Add0~64_combout\);

-- Location: LCCOMB_X13_Y13_N10
\brojac[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(28) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(28))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(28),
	datac => \Add0~64_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(28));

-- Location: LCCOMB_X11_Y13_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (brojac(29) & (!\Add0~57\)) # (!brojac(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!brojac(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => brojac(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X13_Y13_N22
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (!\out_ready~input_o\ & \Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datad => \Add0~58_combout\,
	combout => \Add0~63_combout\);

-- Location: LCCOMB_X13_Y13_N28
\brojac[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(29) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(29))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => brojac(29),
	datac => \Add0~63_combout\,
	datad => \brojac~0clkctrl_outclk\,
	combout => brojac(29));

-- Location: LCCOMB_X11_Y13_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (brojac(30) & (\Add0~59\ $ (GND))) # (!brojac(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((brojac(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => brojac(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X13_Y13_N16
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (!\out_ready~input_o\ & \Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datad => \Add0~60_combout\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X13_Y13_N26
\brojac[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(30) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(30))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(30),
	datac => \brojac~0clkctrl_outclk\,
	datad => \Add0~62_combout\,
	combout => brojac(30));

-- Location: LCCOMB_X11_Y13_N30
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = \Add0~61\ $ (brojac(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => brojac(31),
	cin => \Add0~61\,
	combout => \Add0~93_combout\);

-- Location: LCCOMB_X10_Y14_N6
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (!\out_ready~input_o\ & \Add0~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~input_o\,
	datac => \Add0~93_combout\,
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X10_Y14_N14
\brojac[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- brojac(31) = (GLOBAL(\brojac~0clkctrl_outclk\) & (brojac(31))) # (!GLOBAL(\brojac~0clkctrl_outclk\) & ((\Add0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => brojac(31),
	datac => \brojac~0clkctrl_outclk\,
	datad => \Add0~95_combout\,
	combout => brojac(31));

-- Location: LCCOMB_X10_Y14_N20
\PROCES1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~8_combout\ = (!brojac(1) & (!brojac(0) & (!brojac(31) & !brojac(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(1),
	datab => brojac(0),
	datac => brojac(31),
	datad => brojac(2),
	combout => \PROCES1~8_combout\);

-- Location: LCCOMB_X13_Y14_N4
\PROCES1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~9_combout\ = (\PROCES1~7_combout\ & (\PROCES1~5_combout\ & (\PROCES1~6_combout\ & \PROCES1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~7_combout\,
	datab => \PROCES1~5_combout\,
	datac => \PROCES1~6_combout\,
	datad => \PROCES1~8_combout\,
	combout => \PROCES1~9_combout\);

-- Location: LCCOMB_X13_Y14_N22
\PROCES1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~3_combout\ = (!brojac(15) & (!brojac(18) & (!brojac(17) & !brojac(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(15),
	datab => brojac(18),
	datac => brojac(17),
	datad => brojac(16),
	combout => \PROCES1~3_combout\);

-- Location: LCCOMB_X13_Y13_N0
\PROCES1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~0_combout\ = (!brojac(28) & (!brojac(27) & (!brojac(30) & !brojac(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(28),
	datab => brojac(27),
	datac => brojac(30),
	datad => brojac(29),
	combout => \PROCES1~0_combout\);

-- Location: LCCOMB_X13_Y14_N8
\PROCES1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~1_combout\ = (!brojac(25) & (!brojac(23) & (!brojac(24) & !brojac(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(25),
	datab => brojac(23),
	datac => brojac(24),
	datad => brojac(26),
	combout => \PROCES1~1_combout\);

-- Location: LCCOMB_X12_Y13_N8
\PROCES1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~2_combout\ = (!brojac(19) & (!brojac(20) & (!brojac(21) & !brojac(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => brojac(19),
	datab => brojac(20),
	datac => brojac(21),
	datad => brojac(22),
	combout => \PROCES1~2_combout\);

-- Location: LCCOMB_X13_Y14_N28
\PROCES1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~4_combout\ = (\PROCES1~3_combout\ & (\PROCES1~0_combout\ & (\PROCES1~1_combout\ & \PROCES1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROCES1~3_combout\,
	datab => \PROCES1~0_combout\,
	datac => \PROCES1~1_combout\,
	datad => \PROCES1~2_combout\,
	combout => \PROCES1~4_combout\);

-- Location: LCCOMB_X13_Y14_N18
\PROCES1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PROCES1~10_combout\ = (\in_valid~input_o\ & ((\out_ready~input_o\) # ((\PROCES1~9_combout\ & \PROCES1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~input_o\,
	datab => \in_valid~input_o\,
	datac => \PROCES1~9_combout\,
	datad => \PROCES1~4_combout\,
	combout => \PROCES1~10_combout\);

-- Location: LCCOMB_X13_Y14_N30
\ip_header_length[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_header_length[2]~0_combout\ = (\s_state.IP_HEADER~q\ & \PROCES1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_state.IP_HEADER~q\,
	datad => \PROCES1~10_combout\,
	combout => \ip_header_length[2]~0_combout\);

-- Location: LCCOMB_X14_Y12_N30
\ip_header_length[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ip_header_length[2]~1_combout\ = (\Equal4~0_combout\ & (\Equal2~1_combout\ & (\ip_header_length[2]~0_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \ip_header_length[2]~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \ip_header_length[2]~1_combout\);

-- Location: FF_X13_Y9_N27
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
	ena => \ip_header_length[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ip_header_length(3));

-- Location: LCCOMB_X13_Y9_N10
\Add11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~1_combout\ = ip_header_length(5) $ (((ip_header_length(4) & ((ip_header_length(3)) # (ip_header_length(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(2),
	datac => ip_header_length(5),
	datad => ip_header_length(4),
	combout => \Add11~1_combout\);

-- Location: LCCOMB_X13_Y9_N30
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (!ip_header_length(2) & (!ip_header_length(3) & ip_header_length(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(2),
	datac => ip_header_length(3),
	datad => ip_header_length(4),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X13_Y9_N18
\Equal20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~2_combout\ = byte_index(6) $ (\Add11~0_combout\ $ (((\Add11~1_combout\ & \Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => \Add11~1_combout\,
	datac => \Add5~0_combout\,
	datad => \Add11~0_combout\,
	combout => \Equal20~2_combout\);

-- Location: LCCOMB_X13_Y9_N16
\Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = (ip_header_length(3) & (byte_index(3) & (ip_header_length(4) $ (byte_index(4))))) # (!ip_header_length(3) & (!byte_index(3) & (ip_header_length(4) $ (byte_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(4),
	datac => byte_index(4),
	datad => byte_index(3),
	combout => \Equal20~0_combout\);

-- Location: LCCOMB_X13_Y9_N8
\Equal20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~1_combout\ = (\Equal20~0_combout\ & (byte_index(5) $ (\Add11~1_combout\ $ (!\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => \Add11~1_combout\,
	datac => \Add5~0_combout\,
	datad => \Equal20~0_combout\,
	combout => \Equal20~1_combout\);

-- Location: LCCOMB_X14_Y13_N0
\Equal20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal20~3_combout\ = (!\Equal20~2_combout\ & (!\Equal16~0_combout\ & (\Equal20~1_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal20~2_combout\,
	datab => \Equal16~0_combout\,
	datac => \Equal20~1_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal20~3_combout\);

-- Location: LCCOMB_X16_Y14_N18
\Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal21~2_combout\ = (!byte_index(1) & (\Equal20~3_combout\ & byte_index(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datac => \Equal20~3_combout\,
	datad => byte_index(0),
	combout => \Equal21~2_combout\);

-- Location: LCCOMB_X16_Y14_N26
\s_channel[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~12_combout\ = (!byte_index(1) & !byte_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(1),
	datad => byte_index(0),
	combout => \s_channel[0]~12_combout\);

-- Location: LCCOMB_X16_Y14_N20
\s_channel[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~13_combout\ = (\s_state.UDP_HEADER~q\ & (\PROCES1~10_combout\ & ((\s_channel[0]~12_combout\) # (!\Equal17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel[0]~12_combout\,
	datab => \s_state.UDP_HEADER~q\,
	datac => \Equal17~3_combout\,
	datad => \PROCES1~10_combout\,
	combout => \s_channel[0]~13_combout\);

-- Location: LCCOMB_X16_Y14_N22
\udp_length[31]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[31]~88_combout\ = (\Equal20~3_combout\ & (\s_channel[0]~13_combout\ & (byte_index(0) $ (byte_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datac => \Equal20~3_combout\,
	datad => \s_channel[0]~13_combout\,
	combout => \udp_length[31]~88_combout\);

-- Location: FF_X16_Y11_N1
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

-- Location: LCCOMB_X16_Y11_N2
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

-- Location: FF_X16_Y11_N3
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

-- Location: LCCOMB_X16_Y11_N4
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

-- Location: FF_X16_Y11_N5
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

-- Location: LCCOMB_X16_Y11_N6
\udp_length[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[3]~38_combout\ = (udp_length(3) & ((\in_data[3]~input_o\ & (\udp_length[2]~37\ & VCC)) # (!\in_data[3]~input_o\ & (!\udp_length[2]~37\)))) # (!udp_length(3) & ((\in_data[3]~input_o\ & (!\udp_length[2]~37\)) # (!\in_data[3]~input_o\ & 
-- ((\udp_length[2]~37\) # (GND)))))
-- \udp_length[3]~39\ = CARRY((udp_length(3) & (!\in_data[3]~input_o\ & !\udp_length[2]~37\)) # (!udp_length(3) & ((!\udp_length[2]~37\) # (!\in_data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(3),
	datab => \in_data[3]~input_o\,
	datad => VCC,
	cin => \udp_length[2]~37\,
	combout => \udp_length[3]~38_combout\,
	cout => \udp_length[3]~39\);

-- Location: FF_X16_Y11_N7
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

-- Location: LCCOMB_X16_Y11_N8
\udp_length[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[4]~40_combout\ = ((\in_data[4]~input_o\ $ (udp_length(4) $ (!\udp_length[3]~39\)))) # (GND)
-- \udp_length[4]~41\ = CARRY((\in_data[4]~input_o\ & ((udp_length(4)) # (!\udp_length[3]~39\))) # (!\in_data[4]~input_o\ & (udp_length(4) & !\udp_length[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[4]~input_o\,
	datab => udp_length(4),
	datad => VCC,
	cin => \udp_length[3]~39\,
	combout => \udp_length[4]~40_combout\,
	cout => \udp_length[4]~41\);

-- Location: FF_X16_Y11_N9
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

-- Location: LCCOMB_X16_Y11_N10
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

-- Location: FF_X16_Y11_N11
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

-- Location: LCCOMB_X16_Y11_N12
\udp_length[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[6]~44_combout\ = ((udp_length(6) $ (\in_data[6]~input_o\ $ (!\udp_length[5]~43\)))) # (GND)
-- \udp_length[6]~45\ = CARRY((udp_length(6) & ((\in_data[6]~input_o\) # (!\udp_length[5]~43\))) # (!udp_length(6) & (\in_data[6]~input_o\ & !\udp_length[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(6),
	datab => \in_data[6]~input_o\,
	datad => VCC,
	cin => \udp_length[5]~43\,
	combout => \udp_length[6]~44_combout\,
	cout => \udp_length[6]~45\);

-- Location: FF_X16_Y11_N13
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

-- Location: LCCOMB_X16_Y11_N14
\udp_length[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \udp_length[7]~46_combout\ = (udp_length(7) & ((\in_data[7]~input_o\ & (\udp_length[6]~45\ & VCC)) # (!\in_data[7]~input_o\ & (!\udp_length[6]~45\)))) # (!udp_length(7) & ((\in_data[7]~input_o\ & (!\udp_length[6]~45\)) # (!\in_data[7]~input_o\ & 
-- ((\udp_length[6]~45\) # (GND)))))
-- \udp_length[7]~47\ = CARRY((udp_length(7) & (!\in_data[7]~input_o\ & !\udp_length[6]~45\)) # (!udp_length(7) & ((!\udp_length[6]~45\) # (!\in_data[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(7),
	datab => \in_data[7]~input_o\,
	datad => VCC,
	cin => \udp_length[6]~45\,
	combout => \udp_length[7]~46_combout\,
	cout => \udp_length[7]~47\);

-- Location: FF_X16_Y11_N15
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

-- Location: LCCOMB_X16_Y11_N16
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

-- Location: FF_X16_Y11_N17
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

-- Location: LCCOMB_X16_Y11_N18
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

-- Location: FF_X16_Y11_N19
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

-- Location: LCCOMB_X16_Y11_N20
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

-- Location: FF_X16_Y11_N21
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

-- Location: LCCOMB_X16_Y11_N22
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

-- Location: FF_X16_Y11_N23
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

-- Location: LCCOMB_X16_Y11_N24
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

-- Location: FF_X16_Y11_N25
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

-- Location: LCCOMB_X16_Y11_N26
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

-- Location: FF_X16_Y11_N27
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

-- Location: LCCOMB_X16_Y11_N28
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

-- Location: FF_X16_Y11_N29
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

-- Location: LCCOMB_X16_Y11_N30
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

-- Location: FF_X16_Y11_N31
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

-- Location: LCCOMB_X16_Y9_N0
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = udp_length(0) $ (VCC)
-- \Add12~1\ = CARRY(udp_length(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => udp_length(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X16_Y9_N2
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

-- Location: LCCOMB_X16_Y9_N4
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = ((udp_length(2) $ (ip_header_length(2) $ (\Add12~3\)))) # (GND)
-- \Add12~5\ = CARRY((udp_length(2) & ((!\Add12~3\) # (!ip_header_length(2)))) # (!udp_length(2) & (!ip_header_length(2) & !\Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(2),
	datab => ip_header_length(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X16_Y9_N6
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (udp_length(3) & ((\Add11~3_combout\ & (!\Add12~5\)) # (!\Add11~3_combout\ & (\Add12~5\ & VCC)))) # (!udp_length(3) & ((\Add11~3_combout\ & ((\Add12~5\) # (GND))) # (!\Add11~3_combout\ & (!\Add12~5\))))
-- \Add12~7\ = CARRY((udp_length(3) & (\Add11~3_combout\ & !\Add12~5\)) # (!udp_length(3) & ((\Add11~3_combout\) # (!\Add12~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(3),
	datab => \Add11~3_combout\,
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X16_Y9_N8
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = ((\Add11~2_combout\ $ (udp_length(4) $ (!\Add12~7\)))) # (GND)
-- \Add12~9\ = CARRY((\Add11~2_combout\ & ((udp_length(4)) # (!\Add12~7\))) # (!\Add11~2_combout\ & (udp_length(4) & !\Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => udp_length(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X16_Y9_N10
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (udp_length(5) & ((\Add11~1_combout\ & (\Add12~9\ & VCC)) # (!\Add11~1_combout\ & (!\Add12~9\)))) # (!udp_length(5) & ((\Add11~1_combout\ & (!\Add12~9\)) # (!\Add11~1_combout\ & ((\Add12~9\) # (GND)))))
-- \Add12~11\ = CARRY((udp_length(5) & (!\Add11~1_combout\ & !\Add12~9\)) # (!udp_length(5) & ((!\Add12~9\) # (!\Add11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(5),
	datab => \Add11~1_combout\,
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X16_Y9_N12
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = ((\Add11~0_combout\ $ (udp_length(6) $ (!\Add12~11\)))) # (GND)
-- \Add12~13\ = CARRY((\Add11~0_combout\ & ((udp_length(6)) # (!\Add12~11\))) # (!\Add11~0_combout\ & (udp_length(6) & !\Add12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datab => udp_length(6),
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X16_Y9_N14
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

-- Location: LCCOMB_X16_Y9_N16
\Add12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = (udp_length(8) & (\Add12~15\ $ (GND))) # (!udp_length(8) & (!\Add12~15\ & VCC))
-- \Add12~17\ = CARRY((udp_length(8) & !\Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(8),
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: LCCOMB_X16_Y9_N18
\Add12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = (udp_length(9) & (!\Add12~17\)) # (!udp_length(9) & ((\Add12~17\) # (GND)))
-- \Add12~19\ = CARRY((!\Add12~17\) # (!udp_length(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(9),
	datad => VCC,
	cin => \Add12~17\,
	combout => \Add12~18_combout\,
	cout => \Add12~19\);

-- Location: LCCOMB_X16_Y9_N20
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

-- Location: LCCOMB_X16_Y9_N22
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

-- Location: LCCOMB_X16_Y9_N24
\Add12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~24_combout\ = (udp_length(12) & (\Add12~23\ $ (GND))) # (!udp_length(12) & (!\Add12~23\ & VCC))
-- \Add12~25\ = CARRY((udp_length(12) & !\Add12~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(12),
	datad => VCC,
	cin => \Add12~23\,
	combout => \Add12~24_combout\,
	cout => \Add12~25\);

-- Location: LCCOMB_X16_Y9_N26
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

-- Location: LCCOMB_X16_Y9_N28
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

-- Location: LCCOMB_X16_Y9_N30
\Add12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~30_combout\ = (udp_length(15) & (!\Add12~29\)) # (!udp_length(15) & ((\Add12~29\) # (GND)))
-- \Add12~31\ = CARRY((!\Add12~29\) # (!udp_length(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(15),
	datad => VCC,
	cin => \Add12~29\,
	combout => \Add12~30_combout\,
	cout => \Add12~31\);

-- Location: LCCOMB_X17_Y9_N0
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

-- Location: LCCOMB_X17_Y9_N2
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

-- Location: LCCOMB_X17_Y9_N4
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

-- Location: LCCOMB_X17_Y9_N6
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

-- Location: LCCOMB_X17_Y9_N8
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

-- Location: LCCOMB_X17_Y9_N10
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

-- Location: LCCOMB_X17_Y9_N12
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

-- Location: LCCOMB_X17_Y9_N14
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

-- Location: LCCOMB_X17_Y9_N16
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

-- Location: LCCOMB_X17_Y9_N18
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

-- Location: LCCOMB_X17_Y9_N20
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

-- Location: LCCOMB_X17_Y9_N22
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

-- Location: LCCOMB_X17_Y9_N24
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

-- Location: LCCOMB_X17_Y9_N26
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

-- Location: LCCOMB_X17_Y9_N28
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

-- Location: LCCOMB_X17_Y9_N30
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

-- Location: LCCOMB_X16_Y12_N10
\Equal27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~10_combout\ = (byte_index(15) & (\Add13~30_combout\ & (byte_index(14) $ (!\Add13~28_combout\)))) # (!byte_index(15) & (!\Add13~30_combout\ & (byte_index(14) $ (!\Add13~28_combout\))))

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
	combout => \Equal27~10_combout\);

-- Location: LCCOMB_X17_Y12_N24
\Equal27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~9_combout\ = (byte_index(13) & (\Add13~26_combout\ & (byte_index(12) $ (!\Add13~24_combout\)))) # (!byte_index(13) & (!\Add13~26_combout\ & (byte_index(12) $ (!\Add13~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datab => byte_index(12),
	datac => \Add13~24_combout\,
	datad => \Add13~26_combout\,
	combout => \Equal27~9_combout\);

-- Location: LCCOMB_X17_Y12_N26
\Equal27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~3_combout\ = (byte_index(5) & (\Add13~10_combout\ & (byte_index(4) $ (!\Add13~8_combout\)))) # (!byte_index(5) & (!\Add13~10_combout\ & (byte_index(4) $ (!\Add13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => byte_index(4),
	datac => \Add13~8_combout\,
	datad => \Add13~10_combout\,
	combout => \Equal27~3_combout\);

-- Location: LCCOMB_X18_Y12_N12
\Equal25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~1_combout\ = (udp_length(1) & (byte_index(1) & (udp_length(0) $ (!byte_index(0))))) # (!udp_length(1) & (!byte_index(1) & (udp_length(0) $ (!byte_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(1),
	datab => udp_length(0),
	datac => byte_index(1),
	datad => byte_index(0),
	combout => \Equal25~1_combout\);

-- Location: LCCOMB_X18_Y12_N10
\Equal27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~4_combout\ = (byte_index(6) & (\Add13~12_combout\ & (byte_index(7) $ (!\Add13~14_combout\)))) # (!byte_index(6) & (!\Add13~12_combout\ & (byte_index(7) $ (!\Add13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => byte_index(7),
	datac => \Add13~12_combout\,
	datad => \Add13~14_combout\,
	combout => \Equal27~4_combout\);

-- Location: LCCOMB_X17_Y12_N16
\Equal27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~2_combout\ = (byte_index(2) & (\Add13~4_combout\ & (byte_index(3) $ (!\Add13~6_combout\)))) # (!byte_index(2) & (!\Add13~4_combout\ & (byte_index(3) $ (!\Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(2),
	datab => byte_index(3),
	datac => \Add13~6_combout\,
	datad => \Add13~4_combout\,
	combout => \Equal27~2_combout\);

-- Location: LCCOMB_X17_Y12_N20
\Equal27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~5_combout\ = (\Equal27~3_combout\ & (\Equal25~1_combout\ & (\Equal27~4_combout\ & \Equal27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~3_combout\,
	datab => \Equal25~1_combout\,
	datac => \Equal27~4_combout\,
	datad => \Equal27~2_combout\,
	combout => \Equal27~5_combout\);

-- Location: LCCOMB_X17_Y12_N4
\Equal27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~7_combout\ = byte_index(10) $ (\Add13~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => byte_index(10),
	datad => \Add13~20_combout\,
	combout => \Equal27~7_combout\);

-- Location: LCCOMB_X17_Y12_N30
\Equal27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~6_combout\ = (byte_index(9) & (\Add13~18_combout\ & (byte_index(8) $ (!\Add13~16_combout\)))) # (!byte_index(9) & (!\Add13~18_combout\ & (byte_index(8) $ (!\Add13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(9),
	datab => byte_index(8),
	datac => \Add13~16_combout\,
	datad => \Add13~18_combout\,
	combout => \Equal27~6_combout\);

-- Location: LCCOMB_X17_Y12_N22
\Equal27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~8_combout\ = (!\Equal27~7_combout\ & (\Equal27~6_combout\ & (byte_index(11) $ (!\Add13~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => \Equal27~7_combout\,
	datac => \Equal27~6_combout\,
	datad => \Add13~22_combout\,
	combout => \Equal27~8_combout\);

-- Location: LCCOMB_X16_Y12_N8
\Equal27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~11_combout\ = (\Equal27~10_combout\ & (\Equal27~9_combout\ & (\Equal27~5_combout\ & \Equal27~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~10_combout\,
	datab => \Equal27~9_combout\,
	datac => \Equal27~5_combout\,
	datad => \Equal27~8_combout\,
	combout => \Equal27~11_combout\);

-- Location: LCCOMB_X16_Y10_N0
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

-- Location: FF_X16_Y10_N1
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

-- Location: LCCOMB_X16_Y8_N0
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

-- Location: LCCOMB_X17_Y8_N0
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

-- Location: LCCOMB_X16_Y10_N2
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

-- Location: FF_X16_Y10_N3
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

-- Location: LCCOMB_X16_Y8_N2
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

-- Location: LCCOMB_X17_Y8_N2
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

-- Location: LCCOMB_X16_Y12_N30
\Equal27~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~12_combout\ = (byte_index(16) & (\Add13~32_combout\ & (byte_index(17) $ (!\Add13~34_combout\)))) # (!byte_index(16) & (!\Add13~32_combout\ & (byte_index(17) $ (!\Add13~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(16),
	datab => byte_index(17),
	datac => \Add13~32_combout\,
	datad => \Add13~34_combout\,
	combout => \Equal27~12_combout\);

-- Location: LCCOMB_X16_Y10_N4
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

-- Location: FF_X16_Y10_N5
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

-- Location: LCCOMB_X16_Y10_N6
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

-- Location: FF_X16_Y10_N7
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

-- Location: LCCOMB_X16_Y8_N4
\Add12~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~36_combout\ = (udp_length(18) & (\Add12~35\ $ (GND))) # (!udp_length(18) & (!\Add12~35\ & VCC))
-- \Add12~37\ = CARRY((udp_length(18) & !\Add12~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(18),
	datad => VCC,
	cin => \Add12~35\,
	combout => \Add12~36_combout\,
	cout => \Add12~37\);

-- Location: LCCOMB_X16_Y8_N6
\Add12~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~38_combout\ = (udp_length(19) & (!\Add12~37\)) # (!udp_length(19) & ((\Add12~37\) # (GND)))
-- \Add12~39\ = CARRY((!\Add12~37\) # (!udp_length(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(19),
	datad => VCC,
	cin => \Add12~37\,
	combout => \Add12~38_combout\,
	cout => \Add12~39\);

-- Location: LCCOMB_X17_Y8_N4
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

-- Location: LCCOMB_X17_Y8_N6
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

-- Location: LCCOMB_X16_Y12_N28
\Equal27~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~13_combout\ = (\Add13~38_combout\ & (byte_index(19) & (byte_index(18) $ (!\Add13~36_combout\)))) # (!\Add13~38_combout\ & (!byte_index(19) & (byte_index(18) $ (!\Add13~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~38_combout\,
	datab => byte_index(18),
	datac => byte_index(19),
	datad => \Add13~36_combout\,
	combout => \Equal27~13_combout\);

-- Location: LCCOMB_X16_Y10_N8
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

-- Location: FF_X16_Y10_N9
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

-- Location: LCCOMB_X16_Y10_N10
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

-- Location: FF_X16_Y10_N11
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

-- Location: LCCOMB_X16_Y8_N8
\Add12~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~40_combout\ = (udp_length(20) & (\Add12~39\ $ (GND))) # (!udp_length(20) & (!\Add12~39\ & VCC))
-- \Add12~41\ = CARRY((udp_length(20) & !\Add12~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(20),
	datad => VCC,
	cin => \Add12~39\,
	combout => \Add12~40_combout\,
	cout => \Add12~41\);

-- Location: LCCOMB_X16_Y8_N10
\Add12~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~42_combout\ = (udp_length(21) & (!\Add12~41\)) # (!udp_length(21) & ((\Add12~41\) # (GND)))
-- \Add12~43\ = CARRY((!\Add12~41\) # (!udp_length(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(21),
	datad => VCC,
	cin => \Add12~41\,
	combout => \Add12~42_combout\,
	cout => \Add12~43\);

-- Location: LCCOMB_X17_Y8_N8
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

-- Location: LCCOMB_X17_Y8_N10
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

-- Location: LCCOMB_X16_Y12_N22
\Equal27~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~14_combout\ = (byte_index(21) & (\Add13~42_combout\ & (byte_index(20) $ (!\Add13~40_combout\)))) # (!byte_index(21) & (!\Add13~42_combout\ & (byte_index(20) $ (!\Add13~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => \Add13~42_combout\,
	datac => byte_index(20),
	datad => \Add13~40_combout\,
	combout => \Equal27~14_combout\);

-- Location: LCCOMB_X16_Y10_N12
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

-- Location: FF_X16_Y10_N13
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

-- Location: LCCOMB_X16_Y8_N12
\Add12~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~44_combout\ = (udp_length(22) & (\Add12~43\ $ (GND))) # (!udp_length(22) & (!\Add12~43\ & VCC))
-- \Add12~45\ = CARRY((udp_length(22) & !\Add12~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(22),
	datad => VCC,
	cin => \Add12~43\,
	combout => \Add12~44_combout\,
	cout => \Add12~45\);

-- Location: LCCOMB_X17_Y8_N12
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

-- Location: LCCOMB_X16_Y10_N14
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

-- Location: FF_X16_Y10_N15
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

-- Location: LCCOMB_X16_Y8_N14
\Add12~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~46_combout\ = (udp_length(23) & (!\Add12~45\)) # (!udp_length(23) & ((\Add12~45\) # (GND)))
-- \Add12~47\ = CARRY((!\Add12~45\) # (!udp_length(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => udp_length(23),
	datad => VCC,
	cin => \Add12~45\,
	combout => \Add12~46_combout\,
	cout => \Add12~47\);

-- Location: LCCOMB_X17_Y8_N14
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

-- Location: LCCOMB_X16_Y12_N20
\Equal27~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~15_combout\ = (byte_index(22) & (\Add13~44_combout\ & (byte_index(23) $ (!\Add13~46_combout\)))) # (!byte_index(22) & (!\Add13~44_combout\ & (byte_index(23) $ (!\Add13~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datab => byte_index(23),
	datac => \Add13~44_combout\,
	datad => \Add13~46_combout\,
	combout => \Equal27~15_combout\);

-- Location: LCCOMB_X16_Y12_N6
\Equal27~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~16_combout\ = (\Equal27~12_combout\ & (\Equal27~13_combout\ & (\Equal27~14_combout\ & \Equal27~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~12_combout\,
	datab => \Equal27~13_combout\,
	datac => \Equal27~14_combout\,
	datad => \Equal27~15_combout\,
	combout => \Equal27~16_combout\);

-- Location: LCCOMB_X16_Y10_N16
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

-- Location: FF_X16_Y10_N17
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

-- Location: LCCOMB_X16_Y10_N18
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

-- Location: FF_X16_Y10_N19
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

-- Location: LCCOMB_X16_Y10_N20
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

-- Location: FF_X16_Y10_N21
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

-- Location: LCCOMB_X16_Y8_N16
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

-- Location: LCCOMB_X16_Y8_N18
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

-- Location: LCCOMB_X16_Y8_N20
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

-- Location: LCCOMB_X17_Y8_N16
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

-- Location: LCCOMB_X17_Y8_N18
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

-- Location: LCCOMB_X17_Y8_N20
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

-- Location: LCCOMB_X16_Y10_N22
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

-- Location: FF_X16_Y10_N23
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

-- Location: LCCOMB_X16_Y8_N22
\Add12~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~54_combout\ = (udp_length(27) & (!\Add12~53\)) # (!udp_length(27) & ((\Add12~53\) # (GND)))
-- \Add12~55\ = CARRY((!\Add12~53\) # (!udp_length(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(27),
	datad => VCC,
	cin => \Add12~53\,
	combout => \Add12~54_combout\,
	cout => \Add12~55\);

-- Location: LCCOMB_X17_Y8_N22
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

-- Location: LCCOMB_X13_Y8_N30
\Equal27~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~18_combout\ = (byte_index(27) & (\Add13~54_combout\ & (\Add13~52_combout\ $ (!byte_index(26))))) # (!byte_index(27) & (!\Add13~54_combout\ & (\Add13~52_combout\ $ (!byte_index(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datab => \Add13~52_combout\,
	datac => byte_index(26),
	datad => \Add13~54_combout\,
	combout => \Equal27~18_combout\);

-- Location: LCCOMB_X16_Y10_N24
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

-- Location: FF_X16_Y10_N25
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

-- Location: LCCOMB_X16_Y8_N24
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

-- Location: LCCOMB_X17_Y8_N24
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

-- Location: LCCOMB_X16_Y10_N26
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

-- Location: FF_X16_Y10_N27
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

-- Location: LCCOMB_X16_Y8_N26
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

-- Location: LCCOMB_X17_Y8_N26
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

-- Location: LCCOMB_X13_Y8_N14
\Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~0_combout\ = (byte_index(28) & (\Add13~56_combout\ & (byte_index(29) $ (!\Add13~58_combout\)))) # (!byte_index(28) & (!\Add13~56_combout\ & (byte_index(29) $ (!\Add13~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(28),
	datab => byte_index(29),
	datac => \Add13~56_combout\,
	datad => \Add13~58_combout\,
	combout => \Equal27~0_combout\);

-- Location: LCCOMB_X16_Y12_N4
\Equal27~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~17_combout\ = (byte_index(24) & (\Add13~48_combout\ & (byte_index(25) $ (!\Add13~50_combout\)))) # (!byte_index(24) & (!\Add13~48_combout\ & (byte_index(25) $ (!\Add13~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(24),
	datab => \Add13~48_combout\,
	datac => byte_index(25),
	datad => \Add13~50_combout\,
	combout => \Equal27~17_combout\);

-- Location: LCCOMB_X16_Y10_N28
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

-- Location: FF_X16_Y10_N29
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

-- Location: LCCOMB_X16_Y10_N30
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

-- Location: FF_X16_Y10_N31
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

-- Location: LCCOMB_X16_Y8_N28
\Add12~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~60_combout\ = (udp_length(30) & (\Add12~59\ $ (GND))) # (!udp_length(30) & (!\Add12~59\ & VCC))
-- \Add12~61\ = CARRY((udp_length(30) & !\Add12~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => udp_length(30),
	datad => VCC,
	cin => \Add12~59\,
	combout => \Add12~60_combout\,
	cout => \Add12~61\);

-- Location: LCCOMB_X16_Y8_N30
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

-- Location: LCCOMB_X17_Y8_N28
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

-- Location: LCCOMB_X17_Y8_N30
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

-- Location: LCCOMB_X13_Y8_N28
\Equal27~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~19_combout\ = (byte_index(30) & ((byte_index(31) $ (\Add13~62_combout\)) # (!\Add13~60_combout\))) # (!byte_index(30) & ((\Add13~60_combout\) # (byte_index(31) $ (\Add13~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(31),
	datac => \Add13~62_combout\,
	datad => \Add13~60_combout\,
	combout => \Equal27~19_combout\);

-- Location: LCCOMB_X13_Y8_N22
\Equal27~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~20_combout\ = (\Equal27~18_combout\ & (\Equal27~0_combout\ & (\Equal27~17_combout\ & !\Equal27~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~18_combout\,
	datab => \Equal27~0_combout\,
	datac => \Equal27~17_combout\,
	datad => \Equal27~19_combout\,
	combout => \Equal27~20_combout\);

-- Location: LCCOMB_X13_Y12_N12
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\Equal27~11_combout\ & (\out_ready~input_o\ & (\Equal27~16_combout\ & \Equal27~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~11_combout\,
	datab => \out_ready~input_o\,
	datac => \Equal27~16_combout\,
	datad => \Equal27~20_combout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X14_Y9_N0
\Add10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~1_cout\ = CARRY(\Add12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~0_combout\,
	datad => VCC,
	cout => \Add10~1_cout\);

-- Location: LCCOMB_X14_Y9_N2
\Add10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~3_cout\ = CARRY((!\Add12~2_combout\ & !\Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datad => VCC,
	cin => \Add10~1_cout\,
	cout => \Add10~3_cout\);

-- Location: LCCOMB_X14_Y9_N4
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\Add12~4_combout\ & ((GND) # (!\Add10~3_cout\))) # (!\Add12~4_combout\ & (\Add10~3_cout\ $ (GND)))
-- \Add10~5\ = CARRY((\Add12~4_combout\) # (!\Add10~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~4_combout\,
	datad => VCC,
	cin => \Add10~3_cout\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X14_Y9_N6
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Add12~6_combout\ & (\Add10~5\ & VCC)) # (!\Add12~6_combout\ & (!\Add10~5\))
-- \Add10~7\ = CARRY((!\Add12~6_combout\ & !\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~6_combout\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X14_Y10_N28
\Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~2_combout\ = (byte_index(3) & (\Add10~6_combout\ & (byte_index(2) $ (!\Add10~4_combout\)))) # (!byte_index(3) & (!\Add10~6_combout\ & (byte_index(2) $ (!\Add10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(3),
	datab => byte_index(2),
	datac => \Add10~6_combout\,
	datad => \Add10~4_combout\,
	combout => \Equal25~2_combout\);

-- Location: LCCOMB_X14_Y9_N8
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\Add12~8_combout\ & ((GND) # (!\Add10~7\))) # (!\Add12~8_combout\ & (\Add10~7\ $ (GND)))
-- \Add10~9\ = CARRY((\Add12~8_combout\) # (!\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X14_Y9_N10
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\Add12~10_combout\ & (\Add10~9\ & VCC)) # (!\Add12~10_combout\ & (!\Add10~9\))
-- \Add10~11\ = CARRY((!\Add12~10_combout\ & !\Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~10_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X14_Y10_N30
\Equal25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~3_combout\ = (byte_index(5) & (\Add10~10_combout\ & (byte_index(4) $ (!\Add10~8_combout\)))) # (!byte_index(5) & (!\Add10~10_combout\ & (byte_index(4) $ (!\Add10~8_combout\))))

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
	combout => \Equal25~3_combout\);

-- Location: LCCOMB_X14_Y9_N12
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (\Add12~12_combout\ & ((GND) # (!\Add10~11\))) # (!\Add12~12_combout\ & (\Add10~11\ $ (GND)))
-- \Add10~13\ = CARRY((\Add12~12_combout\) # (!\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X14_Y9_N14
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (\Add12~14_combout\ & (\Add10~13\ & VCC)) # (!\Add12~14_combout\ & (!\Add10~13\))
-- \Add10~15\ = CARRY((!\Add12~14_combout\ & !\Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~14_combout\,
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X14_Y10_N12
\Equal25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~4_combout\ = (byte_index(7) & (\Add10~14_combout\ & (byte_index(6) $ (!\Add10~12_combout\)))) # (!byte_index(7) & (!\Add10~14_combout\ & (byte_index(6) $ (!\Add10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(7),
	datab => byte_index(6),
	datac => \Add10~12_combout\,
	datad => \Add10~14_combout\,
	combout => \Equal25~4_combout\);

-- Location: LCCOMB_X14_Y10_N6
\Equal25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~5_combout\ = (\Equal25~1_combout\ & (\Equal25~2_combout\ & (\Equal25~3_combout\ & \Equal25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~1_combout\,
	datab => \Equal25~2_combout\,
	datac => \Equal25~3_combout\,
	datad => \Equal25~4_combout\,
	combout => \Equal25~5_combout\);

-- Location: LCCOMB_X14_Y9_N16
\Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = (\Add12~16_combout\ & ((GND) # (!\Add10~15\))) # (!\Add12~16_combout\ & (\Add10~15\ $ (GND)))
-- \Add10~17\ = CARRY((\Add12~16_combout\) # (!\Add10~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~16_combout\,
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X14_Y9_N18
\Add10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = (\Add12~18_combout\ & (\Add10~17\ & VCC)) # (!\Add12~18_combout\ & (!\Add10~17\))
-- \Add10~19\ = CARRY((!\Add12~18_combout\ & !\Add10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~18_combout\,
	datad => VCC,
	cin => \Add10~17\,
	combout => \Add10~18_combout\,
	cout => \Add10~19\);

-- Location: LCCOMB_X14_Y9_N20
\Add10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = (\Add12~20_combout\ & ((GND) # (!\Add10~19\))) # (!\Add12~20_combout\ & (\Add10~19\ $ (GND)))
-- \Add10~21\ = CARRY((\Add12~20_combout\) # (!\Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~20_combout\,
	datad => VCC,
	cin => \Add10~19\,
	combout => \Add10~20_combout\,
	cout => \Add10~21\);

-- Location: LCCOMB_X14_Y9_N22
\Add10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~22_combout\ = (\Add12~22_combout\ & (\Add10~21\ & VCC)) # (!\Add12~22_combout\ & (!\Add10~21\))
-- \Add10~23\ = CARRY((!\Add12~22_combout\ & !\Add10~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~22_combout\,
	datad => VCC,
	cin => \Add10~21\,
	combout => \Add10~22_combout\,
	cout => \Add10~23\);

-- Location: LCCOMB_X14_Y9_N24
\Add10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~24_combout\ = (\Add12~24_combout\ & ((GND) # (!\Add10~23\))) # (!\Add12~24_combout\ & (\Add10~23\ $ (GND)))
-- \Add10~25\ = CARRY((\Add12~24_combout\) # (!\Add10~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~24_combout\,
	datad => VCC,
	cin => \Add10~23\,
	combout => \Add10~24_combout\,
	cout => \Add10~25\);

-- Location: LCCOMB_X14_Y9_N26
\Add10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~26_combout\ = (\Add12~26_combout\ & (\Add10~25\ & VCC)) # (!\Add12~26_combout\ & (!\Add10~25\))
-- \Add10~27\ = CARRY((!\Add12~26_combout\ & !\Add10~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~26_combout\,
	datad => VCC,
	cin => \Add10~25\,
	combout => \Add10~26_combout\,
	cout => \Add10~27\);

-- Location: LCCOMB_X14_Y9_N28
\Add10~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~28_combout\ = (\Add12~28_combout\ & ((GND) # (!\Add10~27\))) # (!\Add12~28_combout\ & (\Add10~27\ $ (GND)))
-- \Add10~29\ = CARRY((\Add12~28_combout\) # (!\Add10~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~28_combout\,
	datad => VCC,
	cin => \Add10~27\,
	combout => \Add10~28_combout\,
	cout => \Add10~29\);

-- Location: LCCOMB_X14_Y9_N30
\Add10~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~30_combout\ = (\Add12~30_combout\ & (\Add10~29\ & VCC)) # (!\Add12~30_combout\ & (!\Add10~29\))
-- \Add10~31\ = CARRY((!\Add12~30_combout\ & !\Add10~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~30_combout\,
	datad => VCC,
	cin => \Add10~29\,
	combout => \Add10~30_combout\,
	cout => \Add10~31\);

-- Location: LCCOMB_X14_Y8_N0
\Add10~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~32_combout\ = (\Add12~32_combout\ & ((GND) # (!\Add10~31\))) # (!\Add12~32_combout\ & (\Add10~31\ $ (GND)))
-- \Add10~33\ = CARRY((\Add12~32_combout\) # (!\Add10~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~32_combout\,
	datad => VCC,
	cin => \Add10~31\,
	combout => \Add10~32_combout\,
	cout => \Add10~33\);

-- Location: LCCOMB_X14_Y8_N2
\Add10~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~34_combout\ = (\Add12~34_combout\ & (\Add10~33\ & VCC)) # (!\Add12~34_combout\ & (!\Add10~33\))
-- \Add10~35\ = CARRY((!\Add12~34_combout\ & !\Add10~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~34_combout\,
	datad => VCC,
	cin => \Add10~33\,
	combout => \Add10~34_combout\,
	cout => \Add10~35\);

-- Location: LCCOMB_X14_Y8_N4
\Add10~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~36_combout\ = (\Add12~36_combout\ & ((GND) # (!\Add10~35\))) # (!\Add12~36_combout\ & (\Add10~35\ $ (GND)))
-- \Add10~37\ = CARRY((\Add12~36_combout\) # (!\Add10~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~36_combout\,
	datad => VCC,
	cin => \Add10~35\,
	combout => \Add10~36_combout\,
	cout => \Add10~37\);

-- Location: LCCOMB_X14_Y8_N6
\Add10~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~38_combout\ = (\Add12~38_combout\ & (\Add10~37\ & VCC)) # (!\Add12~38_combout\ & (!\Add10~37\))
-- \Add10~39\ = CARRY((!\Add12~38_combout\ & !\Add10~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~38_combout\,
	datad => VCC,
	cin => \Add10~37\,
	combout => \Add10~38_combout\,
	cout => \Add10~39\);

-- Location: LCCOMB_X14_Y8_N8
\Add10~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~40_combout\ = (\Add12~40_combout\ & ((GND) # (!\Add10~39\))) # (!\Add12~40_combout\ & (\Add10~39\ $ (GND)))
-- \Add10~41\ = CARRY((\Add12~40_combout\) # (!\Add10~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~40_combout\,
	datad => VCC,
	cin => \Add10~39\,
	combout => \Add10~40_combout\,
	cout => \Add10~41\);

-- Location: LCCOMB_X14_Y8_N10
\Add10~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~42_combout\ = (\Add12~42_combout\ & (\Add10~41\ & VCC)) # (!\Add12~42_combout\ & (!\Add10~41\))
-- \Add10~43\ = CARRY((!\Add12~42_combout\ & !\Add10~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~42_combout\,
	datad => VCC,
	cin => \Add10~41\,
	combout => \Add10~42_combout\,
	cout => \Add10~43\);

-- Location: LCCOMB_X14_Y8_N12
\Add10~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~44_combout\ = (\Add12~44_combout\ & ((GND) # (!\Add10~43\))) # (!\Add12~44_combout\ & (\Add10~43\ $ (GND)))
-- \Add10~45\ = CARRY((\Add12~44_combout\) # (!\Add10~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~44_combout\,
	datad => VCC,
	cin => \Add10~43\,
	combout => \Add10~44_combout\,
	cout => \Add10~45\);

-- Location: LCCOMB_X14_Y8_N14
\Add10~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~46_combout\ = (\Add12~46_combout\ & (\Add10~45\ & VCC)) # (!\Add12~46_combout\ & (!\Add10~45\))
-- \Add10~47\ = CARRY((!\Add12~46_combout\ & !\Add10~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~46_combout\,
	datad => VCC,
	cin => \Add10~45\,
	combout => \Add10~46_combout\,
	cout => \Add10~47\);

-- Location: LCCOMB_X14_Y8_N16
\Add10~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~48_combout\ = (\Add12~48_combout\ & ((GND) # (!\Add10~47\))) # (!\Add12~48_combout\ & (\Add10~47\ $ (GND)))
-- \Add10~49\ = CARRY((\Add12~48_combout\) # (!\Add10~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~48_combout\,
	datad => VCC,
	cin => \Add10~47\,
	combout => \Add10~48_combout\,
	cout => \Add10~49\);

-- Location: LCCOMB_X14_Y8_N18
\Add10~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~50_combout\ = (\Add12~50_combout\ & (\Add10~49\ & VCC)) # (!\Add12~50_combout\ & (!\Add10~49\))
-- \Add10~51\ = CARRY((!\Add12~50_combout\ & !\Add10~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~50_combout\,
	datad => VCC,
	cin => \Add10~49\,
	combout => \Add10~50_combout\,
	cout => \Add10~51\);

-- Location: LCCOMB_X14_Y8_N20
\Add10~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~52_combout\ = (\Add12~52_combout\ & ((GND) # (!\Add10~51\))) # (!\Add12~52_combout\ & (\Add10~51\ $ (GND)))
-- \Add10~53\ = CARRY((\Add12~52_combout\) # (!\Add10~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~52_combout\,
	datad => VCC,
	cin => \Add10~51\,
	combout => \Add10~52_combout\,
	cout => \Add10~53\);

-- Location: LCCOMB_X14_Y8_N22
\Add10~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~54_combout\ = (\Add12~54_combout\ & (\Add10~53\ & VCC)) # (!\Add12~54_combout\ & (!\Add10~53\))
-- \Add10~55\ = CARRY((!\Add12~54_combout\ & !\Add10~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~54_combout\,
	datad => VCC,
	cin => \Add10~53\,
	combout => \Add10~54_combout\,
	cout => \Add10~55\);

-- Location: LCCOMB_X14_Y8_N24
\Add10~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~56_combout\ = (\Add12~56_combout\ & ((GND) # (!\Add10~55\))) # (!\Add12~56_combout\ & (\Add10~55\ $ (GND)))
-- \Add10~57\ = CARRY((\Add12~56_combout\) # (!\Add10~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~56_combout\,
	datad => VCC,
	cin => \Add10~55\,
	combout => \Add10~56_combout\,
	cout => \Add10~57\);

-- Location: LCCOMB_X14_Y12_N20
\Equal25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~9_combout\ = (\Add10~30_combout\ & (byte_index(15) & (\Add10~28_combout\ $ (!byte_index(14))))) # (!\Add10~30_combout\ & (!byte_index(15) & (\Add10~28_combout\ $ (!byte_index(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~30_combout\,
	datab => byte_index(15),
	datac => \Add10~28_combout\,
	datad => byte_index(14),
	combout => \Equal25~9_combout\);

-- Location: LCCOMB_X13_Y9_N12
\Equal25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~6_combout\ = (byte_index(8) & (\Add10~16_combout\ & (byte_index(9) $ (!\Add10~18_combout\)))) # (!byte_index(8) & (!\Add10~16_combout\ & (byte_index(9) $ (!\Add10~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(8),
	datab => \Add10~16_combout\,
	datac => byte_index(9),
	datad => \Add10~18_combout\,
	combout => \Equal25~6_combout\);

-- Location: LCCOMB_X14_Y11_N16
\Equal25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~7_combout\ = (byte_index(11) & (\Add10~22_combout\ & (byte_index(10) $ (!\Add10~20_combout\)))) # (!byte_index(11) & (!\Add10~22_combout\ & (byte_index(10) $ (!\Add10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => byte_index(10),
	datac => \Add10~20_combout\,
	datad => \Add10~22_combout\,
	combout => \Equal25~7_combout\);

-- Location: LCCOMB_X13_Y12_N20
\Equal25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~8_combout\ = (\Add10~24_combout\ & (byte_index(12) & (byte_index(13) $ (!\Add10~26_combout\)))) # (!\Add10~24_combout\ & (!byte_index(12) & (byte_index(13) $ (!\Add10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~24_combout\,
	datab => byte_index(13),
	datac => byte_index(12),
	datad => \Add10~26_combout\,
	combout => \Equal25~8_combout\);

-- Location: LCCOMB_X13_Y12_N2
\Equal25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~10_combout\ = (\Equal25~9_combout\ & (\Equal25~6_combout\ & (\Equal25~7_combout\ & \Equal25~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~9_combout\,
	datab => \Equal25~6_combout\,
	datac => \Equal25~7_combout\,
	datad => \Equal25~8_combout\,
	combout => \Equal25~10_combout\);

-- Location: LCCOMB_X13_Y12_N10
\Equal25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~11_combout\ = (\Equal25~5_combout\ & (\Equal25~10_combout\ & (byte_index(28) $ (!\Add10~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(28),
	datab => \Equal25~5_combout\,
	datac => \Add10~56_combout\,
	datad => \Equal25~10_combout\,
	combout => \Equal25~11_combout\);

-- Location: LCCOMB_X14_Y8_N26
\Add10~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~58_combout\ = (\Add12~58_combout\ & (\Add10~57\ & VCC)) # (!\Add12~58_combout\ & (!\Add10~57\))
-- \Add10~59\ = CARRY((!\Add12~58_combout\ & !\Add10~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~58_combout\,
	datad => VCC,
	cin => \Add10~57\,
	combout => \Add10~58_combout\,
	cout => \Add10~59\);

-- Location: LCCOMB_X14_Y8_N28
\Add10~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~60_combout\ = (\Add12~60_combout\ & ((GND) # (!\Add10~59\))) # (!\Add12~60_combout\ & (\Add10~59\ $ (GND)))
-- \Add10~61\ = CARRY((\Add12~60_combout\) # (!\Add10~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~60_combout\,
	datad => VCC,
	cin => \Add10~59\,
	combout => \Add10~60_combout\,
	cout => \Add10~61\);

-- Location: LCCOMB_X13_Y12_N14
\Equal25~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~12_combout\ = (byte_index(29) & (\Add10~58_combout\ & (byte_index(30) $ (!\Add10~60_combout\)))) # (!byte_index(29) & (!\Add10~58_combout\ & (byte_index(30) $ (!\Add10~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datab => byte_index(30),
	datac => \Add10~60_combout\,
	datad => \Add10~58_combout\,
	combout => \Equal25~12_combout\);

-- Location: LCCOMB_X13_Y8_N0
\Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~0_combout\ = (\Add10~52_combout\ & (byte_index(26) & (byte_index(27) $ (!\Add10~54_combout\)))) # (!\Add10~52_combout\ & (!byte_index(26) & (byte_index(27) $ (!\Add10~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~52_combout\,
	datab => byte_index(27),
	datac => byte_index(26),
	datad => \Add10~54_combout\,
	combout => \Equal25~0_combout\);

-- Location: LCCOMB_X13_Y8_N10
\Equal25~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~18_combout\ = (byte_index(24) & (\Add10~48_combout\ & (byte_index(25) $ (!\Add10~50_combout\)))) # (!byte_index(24) & (!\Add10~48_combout\ & (byte_index(25) $ (!\Add10~50_combout\))))

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
	combout => \Equal25~18_combout\);

-- Location: LCCOMB_X14_Y8_N30
\Add10~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~62_combout\ = \Add10~61\ $ (!\Add12~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add12~62_combout\,
	cin => \Add10~61\,
	combout => \Add10~62_combout\);

-- Location: LCCOMB_X14_Y12_N6
\Equal25~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~14_combout\ = (byte_index(18) & (\Add10~36_combout\ & (byte_index(19) $ (!\Add10~38_combout\)))) # (!byte_index(18) & (!\Add10~36_combout\ & (byte_index(19) $ (!\Add10~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(18),
	datab => byte_index(19),
	datac => \Add10~38_combout\,
	datad => \Add10~36_combout\,
	combout => \Equal25~14_combout\);

-- Location: LCCOMB_X13_Y8_N18
\Equal25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~13_combout\ = (byte_index(16) & (\Add10~32_combout\ & (byte_index(17) $ (!\Add10~34_combout\)))) # (!byte_index(16) & (!\Add10~32_combout\ & (byte_index(17) $ (!\Add10~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(16),
	datab => byte_index(17),
	datac => \Add10~32_combout\,
	datad => \Add10~34_combout\,
	combout => \Equal25~13_combout\);

-- Location: LCCOMB_X13_Y12_N30
\Equal25~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~16_combout\ = (byte_index(22) & (\Add10~44_combout\ & (\Add10~46_combout\ $ (!byte_index(23))))) # (!byte_index(22) & (!\Add10~44_combout\ & (\Add10~46_combout\ $ (!byte_index(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datab => \Add10~46_combout\,
	datac => \Add10~44_combout\,
	datad => byte_index(23),
	combout => \Equal25~16_combout\);

-- Location: LCCOMB_X13_Y8_N20
\Equal25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~15_combout\ = (byte_index(20) & (\Add10~40_combout\ & (\Add10~42_combout\ $ (!byte_index(21))))) # (!byte_index(20) & (!\Add10~40_combout\ & (\Add10~42_combout\ $ (!byte_index(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(20),
	datab => \Add10~40_combout\,
	datac => \Add10~42_combout\,
	datad => byte_index(21),
	combout => \Equal25~15_combout\);

-- Location: LCCOMB_X13_Y12_N24
\Equal25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~17_combout\ = (\Equal25~14_combout\ & (\Equal25~13_combout\ & (\Equal25~16_combout\ & \Equal25~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~14_combout\,
	datab => \Equal25~13_combout\,
	datac => \Equal25~16_combout\,
	datad => \Equal25~15_combout\,
	combout => \Equal25~17_combout\);

-- Location: LCCOMB_X13_Y12_N18
\Equal25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~19_combout\ = (\Equal25~18_combout\ & (\Equal25~17_combout\ & (byte_index(31) $ (!\Add10~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(31),
	datab => \Equal25~18_combout\,
	datac => \Add10~62_combout\,
	datad => \Equal25~17_combout\,
	combout => \Equal25~19_combout\);

-- Location: LCCOMB_X13_Y12_N4
\Equal25~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal25~20_combout\ = (\Equal25~11_combout\ & (\Equal25~12_combout\ & (\Equal25~0_combout\ & \Equal25~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal25~11_combout\,
	datab => \Equal25~12_combout\,
	datac => \Equal25~0_combout\,
	datad => \Equal25~19_combout\,
	combout => \Equal25~20_combout\);

-- Location: LCCOMB_X16_Y12_N12
\Selector33~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~13_combout\ = (byte_index(21) & (\Add12~42_combout\ & (byte_index(20) $ (!\Add12~40_combout\)))) # (!byte_index(21) & (!\Add12~42_combout\ & (byte_index(20) $ (!\Add12~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datab => \Add12~42_combout\,
	datac => byte_index(20),
	datad => \Add12~40_combout\,
	combout => \Selector33~13_combout\);

-- Location: LCCOMB_X16_Y12_N18
\Selector33~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~12_combout\ = (byte_index(19) & (\Add12~38_combout\ & (byte_index(18) $ (!\Add12~36_combout\)))) # (!byte_index(19) & (!\Add12~38_combout\ & (byte_index(18) $ (!\Add12~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datab => byte_index(18),
	datac => \Add12~38_combout\,
	datad => \Add12~36_combout\,
	combout => \Selector33~12_combout\);

-- Location: LCCOMB_X16_Y12_N26
\Selector33~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~14_combout\ = (byte_index(22) & (\Add12~44_combout\ & (byte_index(23) $ (!\Add12~46_combout\)))) # (!byte_index(22) & (!\Add12~44_combout\ & (byte_index(23) $ (!\Add12~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datab => byte_index(23),
	datac => \Add12~46_combout\,
	datad => \Add12~44_combout\,
	combout => \Selector33~14_combout\);

-- Location: LCCOMB_X16_Y12_N24
\Selector33~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~11_combout\ = (byte_index(16) & (\Add12~32_combout\ & (byte_index(17) $ (!\Add12~34_combout\)))) # (!byte_index(16) & (!\Add12~32_combout\ & (byte_index(17) $ (!\Add12~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(16),
	datab => byte_index(17),
	datac => \Add12~34_combout\,
	datad => \Add12~32_combout\,
	combout => \Selector33~11_combout\);

-- Location: LCCOMB_X16_Y12_N0
\Selector33~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~15_combout\ = (\Selector33~13_combout\ & (\Selector33~12_combout\ & (\Selector33~14_combout\ & \Selector33~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~13_combout\,
	datab => \Selector33~12_combout\,
	datac => \Selector33~14_combout\,
	datad => \Selector33~11_combout\,
	combout => \Selector33~15_combout\);

-- Location: LCCOMB_X17_Y11_N10
\Selector33~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~8_combout\ = (\Add12~24_combout\ & (byte_index(12) & (byte_index(13) $ (!\Add12~26_combout\)))) # (!\Add12~24_combout\ & (!byte_index(12) & (byte_index(13) $ (!\Add12~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~24_combout\,
	datab => byte_index(12),
	datac => byte_index(13),
	datad => \Add12~26_combout\,
	combout => \Selector33~8_combout\);

-- Location: LCCOMB_X17_Y10_N14
\Selector33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~6_combout\ = (\Add12~16_combout\ & (byte_index(8) & (byte_index(9) $ (!\Add12~18_combout\)))) # (!\Add12~16_combout\ & (!byte_index(8) & (byte_index(9) $ (!\Add12~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~16_combout\,
	datab => byte_index(9),
	datac => \Add12~18_combout\,
	datad => byte_index(8),
	combout => \Selector33~6_combout\);

-- Location: LCCOMB_X17_Y11_N0
\Selector33~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~7_combout\ = (byte_index(11) & (\Add12~22_combout\ & (byte_index(10) $ (!\Add12~20_combout\)))) # (!byte_index(11) & (!\Add12~22_combout\ & (byte_index(10) $ (!\Add12~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datab => \Add12~22_combout\,
	datac => byte_index(10),
	datad => \Add12~20_combout\,
	combout => \Selector33~7_combout\);

-- Location: LCCOMB_X17_Y12_N18
\Selector33~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~9_combout\ = (byte_index(15) & (\Add12~30_combout\ & (byte_index(14) $ (!\Add12~28_combout\)))) # (!byte_index(15) & (!\Add12~30_combout\ & (byte_index(14) $ (!\Add12~28_combout\))))

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
	combout => \Selector33~9_combout\);

-- Location: LCCOMB_X17_Y12_N0
\Selector33~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~10_combout\ = (\Selector33~8_combout\ & (\Selector33~6_combout\ & (\Selector33~7_combout\ & \Selector33~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~8_combout\,
	datab => \Selector33~6_combout\,
	datac => \Selector33~7_combout\,
	datad => \Selector33~9_combout\,
	combout => \Selector33~10_combout\);

-- Location: LCCOMB_X17_Y10_N16
\Selector33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~4_combout\ = (byte_index(7) & (\Add12~14_combout\ & (byte_index(6) $ (!\Add12~12_combout\)))) # (!byte_index(7) & (!\Add12~14_combout\ & (byte_index(6) $ (!\Add12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(7),
	datab => byte_index(6),
	datac => \Add12~12_combout\,
	datad => \Add12~14_combout\,
	combout => \Selector33~4_combout\);

-- Location: LCCOMB_X18_Y12_N28
\Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\Add12~4_combout\ & (byte_index(2) & (byte_index(3) $ (!\Add12~6_combout\)))) # (!\Add12~4_combout\ & (!byte_index(2) & (byte_index(3) $ (!\Add12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~4_combout\,
	datab => byte_index(3),
	datac => \Add12~6_combout\,
	datad => byte_index(2),
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X18_Y12_N30
\Selector33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~3_combout\ = (byte_index(4) & (\Add12~8_combout\ & (\Add12~10_combout\ $ (!byte_index(5))))) # (!byte_index(4) & (!\Add12~8_combout\ & (\Add12~10_combout\ $ (!byte_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(4),
	datab => \Add12~10_combout\,
	datac => \Add12~8_combout\,
	datad => byte_index(5),
	combout => \Selector33~3_combout\);

-- Location: LCCOMB_X18_Y12_N2
\Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (byte_index(1) & (\Add12~2_combout\ & (\Add12~0_combout\ $ (!byte_index(0))))) # (!byte_index(1) & (!\Add12~2_combout\ & (\Add12~0_combout\ $ (!byte_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => \Add12~2_combout\,
	datac => \Add12~0_combout\,
	datad => byte_index(0),
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X18_Y12_N20
\Selector33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~5_combout\ = (\Selector33~4_combout\ & (\Selector33~2_combout\ & (\Selector33~3_combout\ & \Selector33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~4_combout\,
	datab => \Selector33~2_combout\,
	datac => \Selector33~3_combout\,
	datad => \Selector33~1_combout\,
	combout => \Selector33~5_combout\);

-- Location: LCCOMB_X13_Y8_N26
\Selector33~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~17_combout\ = (\Add12~52_combout\ & (byte_index(26) & (byte_index(27) $ (!\Add12~54_combout\)))) # (!\Add12~52_combout\ & (!byte_index(26) & (byte_index(27) $ (!\Add12~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~52_combout\,
	datab => byte_index(27),
	datac => byte_index(26),
	datad => \Add12~54_combout\,
	combout => \Selector33~17_combout\);

-- Location: LCCOMB_X13_Y8_N16
\Selector33~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~16_combout\ = (byte_index(24) & (\Add12~48_combout\ & (byte_index(25) $ (!\Add12~50_combout\)))) # (!byte_index(24) & (!\Add12~48_combout\ & (byte_index(25) $ (!\Add12~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(24),
	datab => byte_index(25),
	datac => \Add12~48_combout\,
	datad => \Add12~50_combout\,
	combout => \Selector33~16_combout\);

-- Location: LCCOMB_X13_Y8_N8
\Selector33~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~18_combout\ = (byte_index(28) & (\Add12~56_combout\ & (byte_index(29) $ (!\Add12~58_combout\)))) # (!byte_index(28) & (!\Add12~56_combout\ & (byte_index(29) $ (!\Add12~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(28),
	datab => byte_index(29),
	datac => \Add12~58_combout\,
	datad => \Add12~56_combout\,
	combout => \Selector33~18_combout\);

-- Location: LCCOMB_X13_Y8_N6
\Selector33~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~19_combout\ = (byte_index(30) & (\Add12~60_combout\ & (byte_index(31) $ (!\Add12~62_combout\)))) # (!byte_index(30) & (!\Add12~60_combout\ & (byte_index(31) $ (!\Add12~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(31),
	datac => \Add12~60_combout\,
	datad => \Add12~62_combout\,
	combout => \Selector33~19_combout\);

-- Location: LCCOMB_X13_Y8_N24
\Selector33~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~20_combout\ = (\Selector33~17_combout\ & (\Selector33~16_combout\ & (\Selector33~18_combout\ & \Selector33~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~17_combout\,
	datab => \Selector33~16_combout\,
	datac => \Selector33~18_combout\,
	datad => \Selector33~19_combout\,
	combout => \Selector33~20_combout\);

-- Location: LCCOMB_X17_Y12_N10
\Selector33~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~21_combout\ = (\Selector33~15_combout\ & (\Selector33~10_combout\ & (\Selector33~5_combout\ & \Selector33~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~15_combout\,
	datab => \Selector33~10_combout\,
	datac => \Selector33~5_combout\,
	datad => \Selector33~20_combout\,
	combout => \Selector33~21_combout\);

-- Location: LCCOMB_X13_Y12_N8
\Selector33~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~22_combout\ = (\PROCES1~10_combout\ & (\Selector33~21_combout\ & \s_state.DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROCES1~10_combout\,
	datac => \Selector33~21_combout\,
	datad => \s_state.DATA~q\,
	combout => \Selector33~22_combout\);

-- Location: LCCOMB_X13_Y12_N0
\Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\Selector37~0_combout\ & (!\Equal25~20_combout\ & (\Selector33~22_combout\))) # (!\Selector37~0_combout\ & ((\s_state.CRC~q\) # ((!\Equal25~20_combout\ & \Selector33~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~0_combout\,
	datab => \Equal25~20_combout\,
	datac => \Selector33~22_combout\,
	datad => \s_state.CRC~q\,
	combout => \Selector37~1_combout\);

-- Location: FF_X13_Y12_N23
\s_state.CRC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector37~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.CRC~q\);

-- Location: LCCOMB_X16_Y12_N14
\Selector32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (\Equal27~16_combout\ & (\Equal27~17_combout\ & (\Equal27~11_combout\ & \Equal27~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~16_combout\,
	datab => \Equal27~17_combout\,
	datac => \Equal27~11_combout\,
	datad => \Equal27~18_combout\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X12_Y12_N26
\Selector33~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~24_combout\ = (\Equal27~1_combout\ & (\Equal27~0_combout\ & (\out_ready~input_o\ & \Selector32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~1_combout\,
	datab => \Equal27~0_combout\,
	datac => \out_ready~input_o\,
	datad => \Selector32~2_combout\,
	combout => \Selector33~24_combout\);

-- Location: LCCOMB_X12_Y12_N2
\Selector33~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~25_combout\ = (\s_state.CRC~q\ & (((\Selector33~24_combout\)))) # (!\s_state.CRC~q\ & (\s_state.IP_HEADER~q\ & ((\next_state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => \s_state.CRC~q\,
	datac => \Selector33~24_combout\,
	datad => \next_state~17_combout\,
	combout => \Selector33~25_combout\);

-- Location: LCCOMB_X12_Y12_N12
\Selector33~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~23_combout\ = (\Selector36~0_combout\) # ((\Selector34~0_combout\) # ((\in_startofpacket~input_o\ & !\s_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \in_startofpacket~input_o\,
	datac => \Selector34~0_combout\,
	datad => \s_state.IDLE~q\,
	combout => \Selector33~23_combout\);

-- Location: LCCOMB_X12_Y12_N8
\Selector33~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~26_combout\ = (\Selector33~23_combout\) # ((!\s_state.ETHERNET_HEADER~q\ & \Selector33~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.ETHERNET_HEADER~q\,
	datac => \Selector33~25_combout\,
	datad => \Selector33~23_combout\,
	combout => \Selector33~26_combout\);

-- Location: LCCOMB_X12_Y12_N16
\Selector33~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~28_combout\ = (!\s_state.IDLE~q\ & \in_startofpacket~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IDLE~q\,
	datad => \in_startofpacket~input_o\,
	combout => \Selector33~28_combout\);

-- Location: LCCOMB_X13_Y12_N16
\Selector33~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~27_combout\ = (\Selector33~21_combout\ & (\PROCES1~10_combout\ & (!\Equal25~20_combout\ & \s_state.DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~21_combout\,
	datab => \PROCES1~10_combout\,
	datac => \Equal25~20_combout\,
	datad => \s_state.DATA~q\,
	combout => \Selector33~27_combout\);

-- Location: LCCOMB_X12_Y12_N22
\Selector33~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~29_combout\ = (!\Selector33~27_combout\ & ((\Selector33~26_combout\ & (\Selector33~28_combout\)) # (!\Selector33~26_combout\ & ((\s_state.ETHERNET_HEADER~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~26_combout\,
	datab => \Selector33~28_combout\,
	datac => \s_state.ETHERNET_HEADER~q\,
	datad => \Selector33~27_combout\,
	combout => \Selector33~29_combout\);

-- Location: FF_X12_Y12_N23
\s_state.ETHERNET_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector33~29_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.ETHERNET_HEADER~q\);

-- Location: LCCOMB_X12_Y12_N20
\byte_index[7]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[7]~90_combout\ = (\s_state.DATA~q\) # ((\s_state.IP_HEADER~q\) # ((\s_state.ETHERNET_HEADER~q\) # (\s_state.UDP_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datab => \s_state.IP_HEADER~q\,
	datac => \s_state.ETHERNET_HEADER~q\,
	datad => \s_state.UDP_HEADER~q\,
	combout => \byte_index[7]~90_combout\);

-- Location: LCCOMB_X13_Y12_N26
\byte_index[7]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[7]~89_combout\ = (\s_state.CRC~q\ & (((!\s_state.IDLE~q\ & !\in_startofpacket~input_o\)) # (!\out_ready~input_o\))) # (!\s_state.CRC~q\ & (!\s_state.IDLE~q\ & ((!\in_startofpacket~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.CRC~q\,
	datab => \s_state.IDLE~q\,
	datac => \out_ready~input_o\,
	datad => \in_startofpacket~input_o\,
	combout => \byte_index[7]~89_combout\);

-- Location: LCCOMB_X12_Y12_N30
\byte_index[7]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[7]~91_combout\ = (!\byte_index[7]~89_combout\ & ((\PROCES1~10_combout\) # (!\byte_index[7]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \byte_index[7]~90_combout\,
	datab => \byte_index[7]~89_combout\,
	datad => \PROCES1~10_combout\,
	combout => \byte_index[7]~91_combout\);

-- Location: FF_X11_Y12_N3
\byte_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[1]~34_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(1));

-- Location: LCCOMB_X11_Y12_N4
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

-- Location: FF_X11_Y12_N5
\byte_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[2]~36_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(2));

-- Location: LCCOMB_X11_Y12_N6
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

-- Location: FF_X11_Y12_N7
\byte_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[3]~38_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(3));

-- Location: LCCOMB_X11_Y12_N8
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

-- Location: FF_X11_Y12_N9
\byte_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[4]~40_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(4));

-- Location: LCCOMB_X11_Y12_N10
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

-- Location: FF_X11_Y12_N11
\byte_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[5]~42_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(5));

-- Location: LCCOMB_X11_Y12_N12
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

-- Location: FF_X11_Y12_N13
\byte_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[6]~44_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(6));

-- Location: LCCOMB_X11_Y12_N14
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

-- Location: FF_X11_Y12_N15
\byte_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[7]~46_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(7));

-- Location: LCCOMB_X11_Y12_N16
\byte_index[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[8]~48_combout\ = (byte_index(8) & (\byte_index[7]~47\ $ (GND))) # (!byte_index(8) & (!\byte_index[7]~47\ & VCC))
-- \byte_index[8]~49\ = CARRY((byte_index(8) & !\byte_index[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(8),
	datad => VCC,
	cin => \byte_index[7]~47\,
	combout => \byte_index[8]~48_combout\,
	cout => \byte_index[8]~49\);

-- Location: FF_X11_Y12_N17
\byte_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[8]~48_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(8));

-- Location: LCCOMB_X11_Y12_N18
\byte_index[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[9]~50_combout\ = (byte_index(9) & (!\byte_index[8]~49\)) # (!byte_index(9) & ((\byte_index[8]~49\) # (GND)))
-- \byte_index[9]~51\ = CARRY((!\byte_index[8]~49\) # (!byte_index(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(9),
	datad => VCC,
	cin => \byte_index[8]~49\,
	combout => \byte_index[9]~50_combout\,
	cout => \byte_index[9]~51\);

-- Location: FF_X11_Y12_N19
\byte_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[9]~50_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(9));

-- Location: LCCOMB_X11_Y12_N20
\byte_index[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[10]~52_combout\ = (byte_index(10) & (\byte_index[9]~51\ $ (GND))) # (!byte_index(10) & (!\byte_index[9]~51\ & VCC))
-- \byte_index[10]~53\ = CARRY((byte_index(10) & !\byte_index[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(10),
	datad => VCC,
	cin => \byte_index[9]~51\,
	combout => \byte_index[10]~52_combout\,
	cout => \byte_index[10]~53\);

-- Location: FF_X11_Y12_N21
\byte_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[10]~52_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(10));

-- Location: LCCOMB_X11_Y12_N22
\byte_index[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[11]~54_combout\ = (byte_index(11) & (!\byte_index[10]~53\)) # (!byte_index(11) & ((\byte_index[10]~53\) # (GND)))
-- \byte_index[11]~55\ = CARRY((!\byte_index[10]~53\) # (!byte_index(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(11),
	datad => VCC,
	cin => \byte_index[10]~53\,
	combout => \byte_index[11]~54_combout\,
	cout => \byte_index[11]~55\);

-- Location: FF_X11_Y12_N23
\byte_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[11]~54_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(11));

-- Location: LCCOMB_X11_Y12_N24
\byte_index[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[12]~56_combout\ = (byte_index(12) & (\byte_index[11]~55\ $ (GND))) # (!byte_index(12) & (!\byte_index[11]~55\ & VCC))
-- \byte_index[12]~57\ = CARRY((byte_index(12) & !\byte_index[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(12),
	datad => VCC,
	cin => \byte_index[11]~55\,
	combout => \byte_index[12]~56_combout\,
	cout => \byte_index[12]~57\);

-- Location: FF_X11_Y12_N25
\byte_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[12]~56_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(12));

-- Location: LCCOMB_X11_Y12_N26
\byte_index[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[13]~58_combout\ = (byte_index(13) & (!\byte_index[12]~57\)) # (!byte_index(13) & ((\byte_index[12]~57\) # (GND)))
-- \byte_index[13]~59\ = CARRY((!\byte_index[12]~57\) # (!byte_index(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(13),
	datad => VCC,
	cin => \byte_index[12]~57\,
	combout => \byte_index[13]~58_combout\,
	cout => \byte_index[13]~59\);

-- Location: FF_X11_Y12_N27
\byte_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[13]~58_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(13));

-- Location: LCCOMB_X11_Y12_N28
\byte_index[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[14]~60_combout\ = (byte_index(14) & (\byte_index[13]~59\ $ (GND))) # (!byte_index(14) & (!\byte_index[13]~59\ & VCC))
-- \byte_index[14]~61\ = CARRY((byte_index(14) & !\byte_index[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(14),
	datad => VCC,
	cin => \byte_index[13]~59\,
	combout => \byte_index[14]~60_combout\,
	cout => \byte_index[14]~61\);

-- Location: FF_X11_Y12_N29
\byte_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[14]~60_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(14));

-- Location: LCCOMB_X11_Y12_N30
\byte_index[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[15]~62_combout\ = (byte_index(15) & (!\byte_index[14]~61\)) # (!byte_index(15) & ((\byte_index[14]~61\) # (GND)))
-- \byte_index[15]~63\ = CARRY((!\byte_index[14]~61\) # (!byte_index(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(15),
	datad => VCC,
	cin => \byte_index[14]~61\,
	combout => \byte_index[15]~62_combout\,
	cout => \byte_index[15]~63\);

-- Location: FF_X11_Y12_N31
\byte_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[15]~62_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(15));

-- Location: LCCOMB_X11_Y11_N0
\byte_index[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[16]~64_combout\ = (byte_index(16) & (\byte_index[15]~63\ $ (GND))) # (!byte_index(16) & (!\byte_index[15]~63\ & VCC))
-- \byte_index[16]~65\ = CARRY((byte_index(16) & !\byte_index[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(16),
	datad => VCC,
	cin => \byte_index[15]~63\,
	combout => \byte_index[16]~64_combout\,
	cout => \byte_index[16]~65\);

-- Location: FF_X11_Y11_N1
\byte_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[16]~64_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(16));

-- Location: LCCOMB_X11_Y11_N2
\byte_index[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[17]~66_combout\ = (byte_index(17) & (!\byte_index[16]~65\)) # (!byte_index(17) & ((\byte_index[16]~65\) # (GND)))
-- \byte_index[17]~67\ = CARRY((!\byte_index[16]~65\) # (!byte_index(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(17),
	datad => VCC,
	cin => \byte_index[16]~65\,
	combout => \byte_index[17]~66_combout\,
	cout => \byte_index[17]~67\);

-- Location: FF_X11_Y11_N3
\byte_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[17]~66_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(17));

-- Location: LCCOMB_X11_Y11_N4
\byte_index[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[18]~68_combout\ = (byte_index(18) & (\byte_index[17]~67\ $ (GND))) # (!byte_index(18) & (!\byte_index[17]~67\ & VCC))
-- \byte_index[18]~69\ = CARRY((byte_index(18) & !\byte_index[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(18),
	datad => VCC,
	cin => \byte_index[17]~67\,
	combout => \byte_index[18]~68_combout\,
	cout => \byte_index[18]~69\);

-- Location: FF_X11_Y11_N5
\byte_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[18]~68_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(18));

-- Location: LCCOMB_X11_Y11_N6
\byte_index[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[19]~70_combout\ = (byte_index(19) & (!\byte_index[18]~69\)) # (!byte_index(19) & ((\byte_index[18]~69\) # (GND)))
-- \byte_index[19]~71\ = CARRY((!\byte_index[18]~69\) # (!byte_index(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(19),
	datad => VCC,
	cin => \byte_index[18]~69\,
	combout => \byte_index[19]~70_combout\,
	cout => \byte_index[19]~71\);

-- Location: FF_X11_Y11_N7
\byte_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[19]~70_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(19));

-- Location: LCCOMB_X11_Y11_N8
\byte_index[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[20]~72_combout\ = (byte_index(20) & (\byte_index[19]~71\ $ (GND))) # (!byte_index(20) & (!\byte_index[19]~71\ & VCC))
-- \byte_index[20]~73\ = CARRY((byte_index(20) & !\byte_index[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(20),
	datad => VCC,
	cin => \byte_index[19]~71\,
	combout => \byte_index[20]~72_combout\,
	cout => \byte_index[20]~73\);

-- Location: FF_X11_Y11_N9
\byte_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[20]~72_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(20));

-- Location: LCCOMB_X11_Y11_N10
\byte_index[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[21]~74_combout\ = (byte_index(21) & (!\byte_index[20]~73\)) # (!byte_index(21) & ((\byte_index[20]~73\) # (GND)))
-- \byte_index[21]~75\ = CARRY((!\byte_index[20]~73\) # (!byte_index(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(21),
	datad => VCC,
	cin => \byte_index[20]~73\,
	combout => \byte_index[21]~74_combout\,
	cout => \byte_index[21]~75\);

-- Location: FF_X11_Y11_N11
\byte_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[21]~74_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(21));

-- Location: LCCOMB_X11_Y11_N12
\byte_index[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[22]~76_combout\ = (byte_index(22) & (\byte_index[21]~75\ $ (GND))) # (!byte_index(22) & (!\byte_index[21]~75\ & VCC))
-- \byte_index[22]~77\ = CARRY((byte_index(22) & !\byte_index[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(22),
	datad => VCC,
	cin => \byte_index[21]~75\,
	combout => \byte_index[22]~76_combout\,
	cout => \byte_index[22]~77\);

-- Location: FF_X11_Y11_N13
\byte_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[22]~76_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(22));

-- Location: LCCOMB_X11_Y11_N14
\byte_index[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[23]~78_combout\ = (byte_index(23) & (!\byte_index[22]~77\)) # (!byte_index(23) & ((\byte_index[22]~77\) # (GND)))
-- \byte_index[23]~79\ = CARRY((!\byte_index[22]~77\) # (!byte_index(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(23),
	datad => VCC,
	cin => \byte_index[22]~77\,
	combout => \byte_index[23]~78_combout\,
	cout => \byte_index[23]~79\);

-- Location: FF_X11_Y11_N15
\byte_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[23]~78_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(23));

-- Location: LCCOMB_X11_Y11_N16
\byte_index[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[24]~80_combout\ = (byte_index(24) & (\byte_index[23]~79\ $ (GND))) # (!byte_index(24) & (!\byte_index[23]~79\ & VCC))
-- \byte_index[24]~81\ = CARRY((byte_index(24) & !\byte_index[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(24),
	datad => VCC,
	cin => \byte_index[23]~79\,
	combout => \byte_index[24]~80_combout\,
	cout => \byte_index[24]~81\);

-- Location: FF_X11_Y11_N17
\byte_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[24]~80_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(24));

-- Location: LCCOMB_X11_Y11_N18
\byte_index[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[25]~82_combout\ = (byte_index(25) & (!\byte_index[24]~81\)) # (!byte_index(25) & ((\byte_index[24]~81\) # (GND)))
-- \byte_index[25]~83\ = CARRY((!\byte_index[24]~81\) # (!byte_index(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(25),
	datad => VCC,
	cin => \byte_index[24]~81\,
	combout => \byte_index[25]~82_combout\,
	cout => \byte_index[25]~83\);

-- Location: FF_X11_Y11_N19
\byte_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[25]~82_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(25));

-- Location: LCCOMB_X11_Y11_N20
\byte_index[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[26]~84_combout\ = (byte_index(26) & (\byte_index[25]~83\ $ (GND))) # (!byte_index(26) & (!\byte_index[25]~83\ & VCC))
-- \byte_index[26]~85\ = CARRY((byte_index(26) & !\byte_index[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(26),
	datad => VCC,
	cin => \byte_index[25]~83\,
	combout => \byte_index[26]~84_combout\,
	cout => \byte_index[26]~85\);

-- Location: FF_X11_Y11_N21
\byte_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[26]~84_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(26));

-- Location: LCCOMB_X11_Y11_N22
\byte_index[27]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[27]~92_combout\ = (byte_index(27) & (!\byte_index[26]~85\)) # (!byte_index(27) & ((\byte_index[26]~85\) # (GND)))
-- \byte_index[27]~93\ = CARRY((!\byte_index[26]~85\) # (!byte_index(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(27),
	datad => VCC,
	cin => \byte_index[26]~85\,
	combout => \byte_index[27]~92_combout\,
	cout => \byte_index[27]~93\);

-- Location: FF_X11_Y11_N23
\byte_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[27]~92_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(27));

-- Location: LCCOMB_X11_Y11_N24
\byte_index[28]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[28]~94_combout\ = (byte_index(28) & (\byte_index[27]~93\ $ (GND))) # (!byte_index(28) & (!\byte_index[27]~93\ & VCC))
-- \byte_index[28]~95\ = CARRY((byte_index(28) & !\byte_index[27]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => byte_index(28),
	datad => VCC,
	cin => \byte_index[27]~93\,
	combout => \byte_index[28]~94_combout\,
	cout => \byte_index[28]~95\);

-- Location: FF_X11_Y11_N25
\byte_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[28]~94_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(28));

-- Location: LCCOMB_X11_Y11_N26
\byte_index[29]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[29]~96_combout\ = (byte_index(29) & (!\byte_index[28]~95\)) # (!byte_index(29) & ((\byte_index[28]~95\) # (GND)))
-- \byte_index[29]~97\ = CARRY((!\byte_index[28]~95\) # (!byte_index(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(29),
	datad => VCC,
	cin => \byte_index[28]~95\,
	combout => \byte_index[29]~96_combout\,
	cout => \byte_index[29]~97\);

-- Location: FF_X11_Y11_N27
\byte_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[29]~96_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(29));

-- Location: FF_X11_Y11_N29
\byte_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[30]~98_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(30));

-- Location: LCCOMB_X13_Y8_N4
\Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~1_combout\ = (byte_index(30) & (\Add13~60_combout\ & (byte_index(31) $ (!\Add13~62_combout\)))) # (!byte_index(30) & (!\Add13~60_combout\ & (byte_index(31) $ (!\Add13~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(30),
	datab => byte_index(31),
	datac => \Add13~62_combout\,
	datad => \Add13~60_combout\,
	combout => \Equal27~1_combout\);

-- Location: LCCOMB_X12_Y12_N4
\Selector32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (\Equal27~1_combout\ & (\s_state.CRC~q\ & (\Equal27~0_combout\ & \Selector32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal27~1_combout\,
	datab => \s_state.CRC~q\,
	datac => \Equal27~0_combout\,
	datad => \Selector32~2_combout\,
	combout => \Selector32~3_combout\);

-- Location: LCCOMB_X13_Y13_N14
\byte_index[7]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[7]~86_combout\ = (\next_state~10_combout\) # ((\next_state~11_combout\ & ((\in_data[3]~input_o\) # (!\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data[3]~input_o\,
	datab => \Equal3~1_combout\,
	datac => \next_state~10_combout\,
	datad => \next_state~11_combout\,
	combout => \byte_index[7]~86_combout\);

-- Location: LCCOMB_X12_Y12_N18
\byte_index[7]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[7]~87_combout\ = (\s_state.IDLE~q\ & (((\s_state.CRC~q\) # (!\byte_index[7]~86_combout\)) # (!\s_state.ETHERNET_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.ETHERNET_HEADER~q\,
	datab => \s_state.CRC~q\,
	datac => \byte_index[7]~86_combout\,
	datad => \s_state.IDLE~q\,
	combout => \byte_index[7]~87_combout\);

-- Location: LCCOMB_X12_Y12_N0
\byte_index[7]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \byte_index[7]~88_combout\ = (\Selector32~3_combout\) # (((\s_state.IP_HEADER~q\ & \next_state~13_combout\)) # (!\byte_index[7]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => \Selector32~3_combout\,
	datac => \byte_index[7]~87_combout\,
	datad => \next_state~13_combout\,
	combout => \byte_index[7]~88_combout\);

-- Location: FF_X11_Y12_N1
\byte_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \byte_index[0]~32_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \byte_index[7]~88_combout\,
	ena => \byte_index[7]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => byte_index(0));

-- Location: LCCOMB_X14_Y13_N6
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (byte_index(0) & (!byte_index(2) & (!byte_index(4) & byte_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(2),
	datac => byte_index(4),
	datad => byte_index(1),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X13_Y13_N24
\Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\Equal3~1_combout\ & (!\in_data[3]~input_o\ & ((!\Equal0~8_combout\) # (!\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal3~1_combout\,
	datac => \in_data[3]~input_o\,
	datad => \Equal0~8_combout\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X14_Y12_N10
\Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~2_combout\ = (\Selector34~1_combout\ & ((\Selector34~0_combout\) # ((!\next_state~17_combout\ & \s_state.IP_HEADER~q\)))) # (!\Selector34~1_combout\ & (!\next_state~17_combout\ & (\s_state.IP_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~1_combout\,
	datab => \next_state~17_combout\,
	datac => \s_state.IP_HEADER~q\,
	datad => \Selector34~0_combout\,
	combout => \Selector34~2_combout\);

-- Location: FF_X14_Y12_N11
\s_state.IP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.IP_HEADER~q\);

-- Location: LCCOMB_X13_Y15_N26
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (byte_index(0) & !byte_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => byte_index(0),
	datad => byte_index(1),
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X13_Y9_N4
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (ip_header_length(5) & ((ip_header_length(3) & (ip_header_length(2) & !ip_header_length(4))) # (!ip_header_length(3) & (!ip_header_length(2) & ip_header_length(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(3),
	datab => ip_header_length(5),
	datac => ip_header_length(2),
	datad => ip_header_length(4),
	combout => \Add9~0_combout\);

-- Location: LCCOMB_X13_Y9_N22
\Equal23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~2_combout\ = byte_index(6) $ (\Add9~0_combout\ $ (\Add11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(6),
	datab => \Add9~0_combout\,
	datad => \Add11~0_combout\,
	combout => \Equal23~2_combout\);

-- Location: LCCOMB_X13_Y11_N2
\next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~9_combout\ = (\Equal17~0_combout\ & (!\Equal23~2_combout\ & (\Add11~3_combout\ $ (!byte_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~3_combout\,
	datab => \Equal17~0_combout\,
	datac => \Equal23~2_combout\,
	datad => byte_index(3),
	combout => \next_state~9_combout\);

-- Location: LCCOMB_X13_Y9_N14
\Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~1_combout\ = byte_index(5) $ (\Add11~1_combout\ $ (((!\Add11~3_combout\ & \Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(5),
	datab => \Add11~3_combout\,
	datac => \Add11~1_combout\,
	datad => \Add11~2_combout\,
	combout => \Equal23~1_combout\);

-- Location: LCCOMB_X13_Y9_N26
\Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = ip_header_length(4) $ (byte_index(4) $ (((ip_header_length(2) & ip_header_length(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ip_header_length(4),
	datab => ip_header_length(2),
	datac => ip_header_length(3),
	datad => byte_index(4),
	combout => \Equal23~0_combout\);

-- Location: LCCOMB_X14_Y13_N18
\next_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~8_combout\ = (!\Equal23~1_combout\ & (\Equal23~0_combout\ & (\Equal16~0_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~1_combout\,
	datab => \Equal23~0_combout\,
	datac => \Equal16~0_combout\,
	datad => \Equal0~7_combout\,
	combout => \next_state~8_combout\);

-- Location: LCCOMB_X14_Y12_N24
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\s_state.UDP_HEADER~q\ & (((!\PROCES1~10_combout\) # (!\next_state~8_combout\)) # (!\next_state~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.UDP_HEADER~q\,
	datab => \next_state~9_combout\,
	datac => \next_state~8_combout\,
	datad => \PROCES1~10_combout\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X14_Y12_N12
\Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\Selector35~0_combout\) # ((\s_state.IP_HEADER~q\ & (\Equal5~1_combout\ & \next_state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => \Equal5~1_combout\,
	datac => \next_state~17_combout\,
	datad => \Selector35~0_combout\,
	combout => \Selector35~1_combout\);

-- Location: FF_X14_Y12_N13
\s_state.UDP_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector35~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.UDP_HEADER~q\);

-- Location: LCCOMB_X12_Y12_N10
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\s_state.UDP_HEADER~q\ & (\next_state~8_combout\ & (\next_state~9_combout\ & \PROCES1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.UDP_HEADER~q\,
	datab => \next_state~8_combout\,
	datac => \next_state~9_combout\,
	datad => \PROCES1~10_combout\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X12_Y12_N28
\Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (!\Selector33~27_combout\ & ((\Selector33~26_combout\ & (\Selector36~0_combout\)) # (!\Selector33~26_combout\ & ((\s_state.DATA~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~0_combout\,
	datab => \Selector33~27_combout\,
	datac => \s_state.DATA~q\,
	datad => \Selector33~26_combout\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X12_Y12_N24
\s_state.DATA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_state.DATA~feeder_combout\ = \Selector36~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector36~1_combout\,
	combout => \s_state.DATA~feeder_combout\);

-- Location: FF_X12_Y12_N25
\s_state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_state.DATA~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_state.DATA~q\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X10_Y12_N12
\out_data[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[0]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(0)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_data[0]$latch~combout\,
	datac => s_out_data(0),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[0]$latch~combout\);

-- Location: FF_X10_Y12_N3
\s_out_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(1));

-- Location: LCCOMB_X10_Y12_N2
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

-- Location: FF_X10_Y12_N1
\s_out_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(2));

-- Location: LCCOMB_X10_Y12_N0
\out_data[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[2]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(2)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_data[2]$latch~combout\,
	datac => s_out_data(2),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[2]$latch~combout\);

-- Location: FF_X16_Y14_N3
\s_out_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(3));

-- Location: LCCOMB_X16_Y14_N2
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

-- Location: FF_X17_Y12_N29
\s_out_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(4));

-- Location: LCCOMB_X17_Y12_N28
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

-- Location: FF_X16_Y14_N1
\s_out_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(5));

-- Location: LCCOMB_X16_Y14_N0
\out_data[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_data[5]$latch~combout\ = (GLOBAL(\s_state.DATA~clkctrl_outclk\) & ((s_out_data(5)))) # (!GLOBAL(\s_state.DATA~clkctrl_outclk\) & (\out_data[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_data[5]$latch~combout\,
	datac => s_out_data(5),
	datad => \s_state.DATA~clkctrl_outclk\,
	combout => \out_data[5]$latch~combout\);

-- Location: FF_X16_Y14_N7
\s_out_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(6));

-- Location: LCCOMB_X16_Y14_N6
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

-- Location: FF_X16_Y14_N29
\s_out_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_out_data(7));

-- Location: LCCOMB_X16_Y14_N28
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

-- Location: LCCOMB_X13_Y12_N22
\s_out_endofpacket~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_endofpacket~0_combout\ = (\PROCES1~10_combout\ & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROCES1~10_combout\,
	datad => \s_state.DATA~q\,
	combout => \s_out_endofpacket~0_combout\);

-- Location: LCCOMB_X13_Y12_N28
\s_out_endofpacket~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_out_endofpacket~1_combout\ = (\Selector33~22_combout\ & (\Equal25~20_combout\ & ((\s_out_endofpacket~0_combout\)))) # (!\Selector33~22_combout\ & ((\s_out_endofpacket~q\) # ((\Equal25~20_combout\ & \s_out_endofpacket~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~22_combout\,
	datab => \Equal25~20_combout\,
	datac => \s_out_endofpacket~q\,
	datad => \s_out_endofpacket~0_combout\,
	combout => \s_out_endofpacket~1_combout\);

-- Location: FF_X13_Y12_N29
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

-- Location: LCCOMB_X16_Y14_N4
\s_channel[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[0]~22_combout\ = (!byte_index(0) & (!byte_index(1) & (\Equal20~3_combout\ & \s_channel[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datac => \Equal20~3_combout\,
	datad => \s_channel[0]~13_combout\,
	combout => \s_channel[0]~22_combout\);

-- Location: FF_X16_Y14_N17
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
	ena => \s_channel[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(0));

-- Location: LCCOMB_X16_Y14_N16
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

-- Location: FF_X16_Y14_N15
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
	ena => \s_channel[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(1));

-- Location: LCCOMB_X16_Y14_N14
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

-- Location: LCCOMB_X17_Y14_N4
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

-- Location: FF_X17_Y14_N5
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
	ena => \s_channel[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(2));

-- Location: LCCOMB_X19_Y14_N4
\channel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~2_combout\ = (\s_state.DATA~q\ & s_channel(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datad => s_channel(2),
	combout => \channel~2_combout\);

-- Location: FF_X16_Y14_N13
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
	ena => \s_channel[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(3));

-- Location: LCCOMB_X16_Y14_N12
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

-- Location: FF_X16_Y14_N31
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
	ena => \s_channel[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(4));

-- Location: LCCOMB_X16_Y14_N30
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

-- Location: FF_X16_Y14_N9
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
	ena => \s_channel[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(5));

-- Location: LCCOMB_X16_Y13_N28
\channel~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~5_combout\ = (\s_state.DATA~q\ & s_channel(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datad => s_channel(5),
	combout => \channel~5_combout\);

-- Location: FF_X16_Y14_N11
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
	ena => \s_channel[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(6));

-- Location: LCCOMB_X16_Y14_N10
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

-- Location: FF_X16_Y14_N25
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
	ena => \s_channel[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(7));

-- Location: LCCOMB_X16_Y14_N24
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

-- Location: LCCOMB_X12_Y17_N28
\s_channel[24]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[24]~14_combout\ = (\s_state.UDP_HEADER~q\ & \PROCES1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.UDP_HEADER~q\,
	datad => \PROCES1~10_combout\,
	combout => \s_channel[24]~14_combout\);

-- Location: LCCOMB_X12_Y17_N8
\s_channel[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[8]~15_combout\ = (byte_index(1) & (byte_index(0) & (\Equal17~3_combout\ & \s_channel[24]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(0),
	datac => \Equal17~3_combout\,
	datad => \s_channel[24]~14_combout\,
	combout => \s_channel[8]~15_combout\);

-- Location: FF_X12_Y17_N21
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
	ena => \s_channel[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(8));

-- Location: LCCOMB_X12_Y17_N20
\channel~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~8_combout\ = (\s_state.DATA~q\ & s_channel(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(8),
	combout => \channel~8_combout\);

-- Location: FF_X12_Y17_N15
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
	ena => \s_channel[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(9));

-- Location: LCCOMB_X12_Y17_N14
\channel~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~9_combout\ = (\s_state.DATA~q\ & s_channel(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(9),
	combout => \channel~9_combout\);

-- Location: FF_X12_Y17_N5
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
	ena => \s_channel[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(10));

-- Location: LCCOMB_X12_Y17_N4
\channel~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~10_combout\ = (\s_state.DATA~q\ & s_channel(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(10),
	combout => \channel~10_combout\);

-- Location: FF_X12_Y17_N31
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
	ena => \s_channel[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(11));

-- Location: LCCOMB_X12_Y17_N30
\channel~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~11_combout\ = (\s_state.DATA~q\ & s_channel(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(11),
	combout => \channel~11_combout\);

-- Location: FF_X12_Y17_N1
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
	ena => \s_channel[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(12));

-- Location: LCCOMB_X12_Y17_N0
\channel~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~12_combout\ = (\s_state.DATA~q\ & s_channel(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(12),
	combout => \channel~12_combout\);

-- Location: FF_X12_Y17_N19
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
	ena => \s_channel[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(13));

-- Location: LCCOMB_X12_Y17_N18
\channel~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~13_combout\ = (\s_state.DATA~q\ & s_channel(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(13),
	combout => \channel~13_combout\);

-- Location: FF_X12_Y17_N13
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
	ena => \s_channel[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(14));

-- Location: LCCOMB_X12_Y17_N12
\channel~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~14_combout\ = (\s_state.DATA~q\ & s_channel(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(14),
	combout => \channel~14_combout\);

-- Location: FF_X12_Y17_N27
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
	ena => \s_channel[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(15));

-- Location: LCCOMB_X12_Y17_N26
\channel~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~15_combout\ = (\s_state.DATA~q\ & s_channel(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(15),
	combout => \channel~15_combout\);

-- Location: LCCOMB_X12_Y17_N10
\s_channel[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[16]~16_combout\ = (byte_index(1) & (!byte_index(0) & (\Equal17~3_combout\ & \s_channel[24]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(0),
	datac => \Equal17~3_combout\,
	datad => \s_channel[24]~14_combout\,
	combout => \s_channel[16]~16_combout\);

-- Location: FF_X11_Y17_N1
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
	ena => \s_channel[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(16));

-- Location: LCCOMB_X11_Y17_N0
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

-- Location: FF_X11_Y17_N7
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
	ena => \s_channel[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(17));

-- Location: LCCOMB_X11_Y17_N6
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

-- Location: FF_X12_Y17_N29
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
	ena => \s_channel[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(18));

-- Location: LCCOMB_X11_Y17_N20
\channel~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~18_combout\ = (s_channel(18) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_channel(18),
	datad => \s_state.DATA~q\,
	combout => \channel~18_combout\);

-- Location: FF_X12_Y17_N7
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
	ena => \s_channel[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(19));

-- Location: LCCOMB_X12_Y17_N6
\channel~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~19_combout\ = (\s_state.DATA~q\ & s_channel(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(19),
	combout => \channel~19_combout\);

-- Location: FF_X12_Y17_N25
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
	ena => \s_channel[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(20));

-- Location: LCCOMB_X12_Y17_N24
\channel~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~20_combout\ = (\s_state.DATA~q\ & s_channel(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(20),
	combout => \channel~20_combout\);

-- Location: FF_X12_Y17_N23
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
	ena => \s_channel[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(21));

-- Location: LCCOMB_X12_Y17_N22
\channel~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~21_combout\ = (\s_state.DATA~q\ & s_channel(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(21),
	combout => \channel~21_combout\);

-- Location: FF_X12_Y17_N17
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
	ena => \s_channel[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(22));

-- Location: LCCOMB_X12_Y17_N16
\channel~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~22_combout\ = (\s_state.DATA~q\ & s_channel(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(22),
	combout => \channel~22_combout\);

-- Location: FF_X12_Y17_N3
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
	ena => \s_channel[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(23));

-- Location: LCCOMB_X12_Y17_N2
\channel~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~23_combout\ = (\s_state.DATA~q\ & s_channel(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(23),
	combout => \channel~23_combout\);

-- Location: LCCOMB_X11_Y17_N18
\s_channel[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[24]~23_combout\ = (byte_index(0) & (!byte_index(1) & (\Equal17~3_combout\ & \s_channel[24]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => byte_index(1),
	datac => \Equal17~3_combout\,
	datad => \s_channel[24]~14_combout\,
	combout => \s_channel[24]~23_combout\);

-- Location: FF_X11_Y17_N3
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
	ena => \s_channel[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(24));

-- Location: LCCOMB_X11_Y17_N2
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

-- Location: FF_X11_Y17_N13
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
	ena => \s_channel[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(25));

-- Location: LCCOMB_X11_Y17_N12
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

-- Location: FF_X11_Y17_N23
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
	ena => \s_channel[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(26));

-- Location: LCCOMB_X11_Y17_N22
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

-- Location: FF_X11_Y17_N29
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
	ena => \s_channel[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(27));

-- Location: LCCOMB_X11_Y17_N28
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

-- Location: FF_X11_Y17_N11
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
	ena => \s_channel[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(28));

-- Location: LCCOMB_X11_Y17_N10
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

-- Location: FF_X11_Y17_N25
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
	ena => \s_channel[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(29));

-- Location: LCCOMB_X11_Y17_N24
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

-- Location: FF_X11_Y17_N27
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
	ena => \s_channel[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(30));

-- Location: LCCOMB_X11_Y17_N26
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

-- Location: FF_X11_Y17_N17
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
	ena => \s_channel[24]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(31));

-- Location: LCCOMB_X11_Y17_N16
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

-- Location: LCCOMB_X12_Y16_N26
\s_channel[32]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[32]~24_combout\ = (\Equal14~1_combout\ & (\s_state.IP_HEADER~q\ & (\PROCES1~10_combout\ & \Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~1_combout\,
	datab => \s_state.IP_HEADER~q\,
	datac => \PROCES1~10_combout\,
	datad => \Equal14~0_combout\,
	combout => \s_channel[32]~24_combout\);

-- Location: FF_X12_Y16_N1
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
	ena => \s_channel[32]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(32));

-- Location: LCCOMB_X12_Y16_N0
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

-- Location: FF_X12_Y16_N3
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
	ena => \s_channel[32]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(33));

-- Location: LCCOMB_X12_Y16_N2
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

-- Location: FF_X12_Y16_N25
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
	ena => \s_channel[32]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(34));

-- Location: LCCOMB_X12_Y16_N24
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

-- Location: FF_X12_Y16_N7
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
	ena => \s_channel[32]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(35));

-- Location: LCCOMB_X12_Y16_N6
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

-- Location: FF_X12_Y16_N17
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
	ena => \s_channel[32]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(36));

-- Location: LCCOMB_X12_Y16_N16
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

-- Location: FF_X11_Y16_N13
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
	ena => \s_channel[32]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(37));

-- Location: LCCOMB_X11_Y16_N12
\channel~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~37_combout\ = (\s_state.DATA~q\ & s_channel(37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(37),
	combout => \channel~37_combout\);

-- Location: FF_X12_Y16_N23
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
	ena => \s_channel[32]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(38));

-- Location: LCCOMB_X12_Y16_N22
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

-- Location: FF_X11_Y16_N3
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
	ena => \s_channel[32]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(39));

-- Location: LCCOMB_X11_Y16_N2
\channel~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~39_combout\ = (\s_state.DATA~q\ & s_channel(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_state.DATA~q\,
	datac => s_channel(39),
	combout => \channel~39_combout\);

-- Location: LCCOMB_X12_Y16_N28
\s_channel[40]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[40]~17_combout\ = (byte_index(1) & (byte_index(2) & (\Equal7~0_combout\ & \ip_header_length[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(2),
	datac => \Equal7~0_combout\,
	datad => \ip_header_length[2]~0_combout\,
	combout => \s_channel[40]~17_combout\);

-- Location: FF_X12_Y16_N5
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
	ena => \s_channel[40]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(40));

-- Location: LCCOMB_X12_Y16_N4
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

-- Location: FF_X12_Y16_N31
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
	ena => \s_channel[40]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(41));

-- Location: LCCOMB_X12_Y16_N30
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

-- Location: FF_X12_Y16_N9
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
	ena => \s_channel[40]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(42));

-- Location: LCCOMB_X12_Y16_N8
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

-- Location: FF_X12_Y16_N11
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
	ena => \s_channel[40]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(43));

-- Location: LCCOMB_X12_Y16_N10
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

-- Location: FF_X12_Y16_N21
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
	ena => \s_channel[40]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(44));

-- Location: LCCOMB_X12_Y16_N20
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

-- Location: FF_X12_Y16_N19
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
	ena => \s_channel[40]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(45));

-- Location: LCCOMB_X12_Y16_N18
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

-- Location: FF_X12_Y16_N13
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
	ena => \s_channel[40]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(46));

-- Location: LCCOMB_X12_Y16_N12
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

-- Location: FF_X12_Y16_N15
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
	ena => \s_channel[40]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(47));

-- Location: LCCOMB_X12_Y16_N14
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

-- Location: LCCOMB_X14_Y12_N28
\s_channel[48]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[48]~25_combout\ = (\s_state.IP_HEADER~q\ & (byte_index(2) & (\Equal8~0_combout\ & \PROCES1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => byte_index(2),
	datac => \Equal8~0_combout\,
	datad => \PROCES1~10_combout\,
	combout => \s_channel[48]~25_combout\);

-- Location: FF_X14_Y12_N17
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
	ena => \s_channel[48]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(48));

-- Location: LCCOMB_X14_Y16_N24
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

-- Location: FF_X14_Y12_N3
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
	ena => \s_channel[48]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(49));

-- Location: LCCOMB_X13_Y15_N24
\channel~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~49_combout\ = (s_channel(49) & \s_state.DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel(49),
	datac => \s_state.DATA~q\,
	combout => \channel~49_combout\);

-- Location: FF_X14_Y16_N11
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
	ena => \s_channel[48]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(50));

-- Location: LCCOMB_X14_Y16_N10
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

-- Location: FF_X14_Y12_N5
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
	ena => \s_channel[48]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(51));

-- Location: LCCOMB_X14_Y12_N4
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

-- Location: FF_X14_Y16_N5
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
	ena => \s_channel[48]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(52));

-- Location: LCCOMB_X14_Y16_N4
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

-- Location: FF_X14_Y12_N19
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
	ena => \s_channel[48]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(53));

-- Location: LCCOMB_X14_Y12_N18
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

-- Location: FF_X14_Y16_N31
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
	ena => \s_channel[48]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(54));

-- Location: LCCOMB_X14_Y16_N30
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

-- Location: FF_X14_Y16_N1
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
	ena => \s_channel[48]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(55));

-- Location: LCCOMB_X14_Y16_N0
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

-- Location: LCCOMB_X14_Y16_N20
\s_channel[56]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[56]~18_combout\ = (byte_index(0) & (\Equal2~0_combout\ & (\ip_header_length[2]~0_combout\ & byte_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \Equal2~0_combout\,
	datac => \ip_header_length[2]~0_combout\,
	datad => byte_index(4),
	combout => \s_channel[56]~18_combout\);

-- Location: FF_X14_Y16_N7
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
	ena => \s_channel[56]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(56));

-- Location: LCCOMB_X14_Y16_N6
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

-- Location: FF_X14_Y16_N17
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
	ena => \s_channel[56]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(57));

-- Location: LCCOMB_X14_Y16_N16
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

-- Location: FF_X14_Y16_N27
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
	ena => \s_channel[56]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(58));

-- Location: LCCOMB_X14_Y16_N26
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

-- Location: FF_X14_Y16_N13
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
	ena => \s_channel[56]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(59));

-- Location: LCCOMB_X14_Y16_N12
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

-- Location: FF_X14_Y16_N19
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
	ena => \s_channel[56]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(60));

-- Location: LCCOMB_X14_Y16_N18
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

-- Location: FF_X14_Y16_N9
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
	ena => \s_channel[56]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(61));

-- Location: LCCOMB_X14_Y16_N8
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

-- Location: FF_X14_Y16_N15
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
	ena => \s_channel[56]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(62));

-- Location: LCCOMB_X14_Y16_N14
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

-- Location: FF_X14_Y16_N29
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
	ena => \s_channel[56]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(63));

-- Location: LCCOMB_X14_Y16_N28
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

-- Location: LCCOMB_X16_Y13_N2
\s_channel[64]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[64]~19_combout\ = (!byte_index(0) & (\Equal2~0_combout\ & (byte_index(4) & \ip_header_length[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(0),
	datab => \Equal2~0_combout\,
	datac => byte_index(4),
	datad => \ip_header_length[2]~0_combout\,
	combout => \s_channel[64]~19_combout\);

-- Location: FF_X16_Y13_N7
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
	ena => \s_channel[64]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(64));

-- Location: LCCOMB_X16_Y13_N6
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

-- Location: FF_X16_Y13_N5
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
	ena => \s_channel[64]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(65));

-- Location: LCCOMB_X16_Y13_N4
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

-- Location: FF_X16_Y13_N15
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
	ena => \s_channel[64]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(66));

-- Location: LCCOMB_X16_Y13_N14
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

-- Location: FF_X16_Y13_N25
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
	ena => \s_channel[64]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(67));

-- Location: LCCOMB_X16_Y13_N24
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

-- Location: FF_X16_Y13_N23
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
	ena => \s_channel[64]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(68));

-- Location: LCCOMB_X16_Y13_N22
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

-- Location: FF_X16_Y13_N17
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
	ena => \s_channel[64]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(69));

-- Location: LCCOMB_X16_Y13_N16
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

-- Location: FF_X16_Y13_N19
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
	ena => \s_channel[64]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(70));

-- Location: LCCOMB_X16_Y13_N18
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

-- Location: FF_X16_Y13_N1
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
	ena => \s_channel[64]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(71));

-- Location: LCCOMB_X16_Y13_N0
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

-- Location: LCCOMB_X10_Y12_N26
\s_channel[72]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[72]~20_combout\ = (byte_index(1) & (!byte_index(2) & (\ip_header_length[2]~0_combout\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(2),
	datac => \ip_header_length[2]~0_combout\,
	datad => \Equal7~0_combout\,
	combout => \s_channel[72]~20_combout\);

-- Location: FF_X10_Y12_N5
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
	ena => \s_channel[72]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(72));

-- Location: LCCOMB_X10_Y12_N4
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

-- Location: FF_X10_Y12_N19
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
	ena => \s_channel[72]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(73));

-- Location: LCCOMB_X10_Y12_N18
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

-- Location: FF_X10_Y12_N21
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
	ena => \s_channel[72]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(74));

-- Location: LCCOMB_X10_Y12_N20
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

-- Location: FF_X10_Y12_N23
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
	ena => \s_channel[72]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(75));

-- Location: LCCOMB_X10_Y12_N22
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

-- Location: FF_X10_Y12_N9
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
	ena => \s_channel[72]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(76));

-- Location: LCCOMB_X10_Y12_N8
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

-- Location: FF_X10_Y12_N31
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
	ena => \s_channel[72]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(77));

-- Location: LCCOMB_X10_Y12_N30
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

-- Location: FF_X10_Y12_N29
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
	ena => \s_channel[72]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(78));

-- Location: LCCOMB_X10_Y12_N28
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

-- Location: FF_X10_Y12_N7
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
	ena => \s_channel[72]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(79));

-- Location: LCCOMB_X10_Y12_N6
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

-- Location: LCCOMB_X19_Y12_N24
\s_channel[80]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[80]~26_combout\ = (\s_state.IP_HEADER~q\ & (!byte_index(2) & (\Equal8~0_combout\ & \PROCES1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.IP_HEADER~q\,
	datab => byte_index(2),
	datac => \Equal8~0_combout\,
	datad => \PROCES1~10_combout\,
	combout => \s_channel[80]~26_combout\);

-- Location: FF_X19_Y12_N5
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
	ena => \s_channel[80]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(80));

-- Location: LCCOMB_X19_Y12_N4
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

-- Location: FF_X19_Y12_N23
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
	ena => \s_channel[80]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(81));

-- Location: LCCOMB_X19_Y12_N22
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

-- Location: FF_X19_Y12_N9
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
	ena => \s_channel[80]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(82));

-- Location: LCCOMB_X19_Y12_N8
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

-- Location: FF_X19_Y12_N27
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
	ena => \s_channel[80]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(83));

-- Location: LCCOMB_X19_Y12_N26
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

-- Location: FF_X19_Y12_N21
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
	ena => \s_channel[80]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(84));

-- Location: LCCOMB_X19_Y12_N20
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

-- Location: FF_X19_Y12_N11
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
	ena => \s_channel[80]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(85));

-- Location: LCCOMB_X19_Y12_N10
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

-- Location: FF_X19_Y12_N13
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
	ena => \s_channel[80]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(86));

-- Location: LCCOMB_X19_Y12_N12
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

-- Location: FF_X19_Y12_N31
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
	ena => \s_channel[80]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(87));

-- Location: LCCOMB_X19_Y12_N30
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

-- Location: LCCOMB_X13_Y16_N16
\s_channel[88]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_channel[88]~21_combout\ = (!byte_index(1) & (!byte_index(2) & (\Equal7~0_combout\ & \ip_header_length[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => byte_index(1),
	datab => byte_index(2),
	datac => \Equal7~0_combout\,
	datad => \ip_header_length[2]~0_combout\,
	combout => \s_channel[88]~21_combout\);

-- Location: FF_X13_Y16_N5
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
	ena => \s_channel[88]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(88));

-- Location: LCCOMB_X13_Y16_N4
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

-- Location: FF_X13_Y16_N23
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
	ena => \s_channel[88]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(89));

-- Location: LCCOMB_X13_Y16_N22
\channel~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~89_combout\ = (\s_state.DATA~q\ & s_channel(89))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(89),
	combout => \channel~89_combout\);

-- Location: FF_X13_Y16_N25
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
	ena => \s_channel[88]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(90));

-- Location: LCCOMB_X13_Y16_N24
\channel~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~90_combout\ = (\s_state.DATA~q\ & s_channel(90))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(90),
	combout => \channel~90_combout\);

-- Location: FF_X13_Y16_N3
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
	ena => \s_channel[88]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(91));

-- Location: LCCOMB_X13_Y16_N2
\channel~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~91_combout\ = (\s_state.DATA~q\ & s_channel(91))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(91),
	combout => \channel~91_combout\);

-- Location: FF_X13_Y16_N29
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
	ena => \s_channel[88]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(92));

-- Location: LCCOMB_X13_Y16_N28
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

-- Location: FF_X13_Y16_N19
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
	ena => \s_channel[88]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(93));

-- Location: LCCOMB_X13_Y16_N18
\channel~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~93_combout\ = (\s_state.DATA~q\ & s_channel(93))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(93),
	combout => \channel~93_combout\);

-- Location: FF_X13_Y16_N13
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
	ena => \s_channel[88]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(94));

-- Location: LCCOMB_X13_Y16_N12
\channel~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \channel~94_combout\ = (\s_state.DATA~q\ & s_channel(94))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.DATA~q\,
	datac => s_channel(94),
	combout => \channel~94_combout\);

-- Location: FF_X13_Y16_N11
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
	ena => \s_channel[88]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_channel(95));

-- Location: LCCOMB_X13_Y16_N10
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



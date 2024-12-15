LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Parser_UDP_datagrama IS
    PORT (
        -- Common signals
        clk : IN STD_LOGIC;
        reset_n : IN STD_LOGIC;
        -- Input signals
        in_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        in_startofpacket : IN STD_LOGIC;
        in_endofpacket : IN STD_LOGIC;
        in_ready : OUT STD_LOGIC;
        in_valid : IN STD_LOGIC;
        -- Output signals
        out_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        out_startofpacket : OUT STD_LOGIC;
        out_endofpacket : OUT STD_LOGIC;
        out_ready : IN STD_LOGIC;
        out_valid : OUT STD_LOGIC;
        channel: OUT STD_LOGIC_VECTOR(95 DOWNTO 0) -- IP source, IP dest, source port, dest port
    );
END ENTITY Parser_UDP_datagrama;

ARCHITECTURE rtl OF Parser_UDP_datagrama IS
    TYPE STATE_TYPE IS (IDLE, ETHERNET_HEADER, IP_HEADER, UDP_HEADER, DATA, CRC);
    SIGNAL s_state : STATE_TYPE := IDLE;
    SIGNAL byte_index : INTEGER := 0;
    SIGNAL ip_header_length : INTEGER := 0;
    SIGNAL udp_length : INTEGER := 0;
    SIGNAL udp_payload_length : INTEGER := 0;
    SIGNAL s_channel : STD_LOGIC_VECTOR(95 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s_out_endofpacket : STD_LOGIC := '0';
BEGIN

    fsm: PROCESS (reset_n, clk)
    BEGIN
        IF reset_n = '0' THEN
            s_state <= IDLE;
            byte_index <= 0;
            ip_header_length <= 0;
            udp_length <= 0;
            udp_payload_length <= 0;
            s_channel <= (OTHERS => '0');
            s_out_endofpacket <= '0';
        ELSIF RISING_EDGE(clk) THEN
            CASE s_state IS
                WHEN IDLE =>
                    IF in_startofpacket = '1' THEN
                        byte_index <= 0;
                        s_state <= ETHERNET_HEADER;
                    END IF;

                WHEN ETHERNET_HEADER =>
                    IF byte_index = 11 THEN
                        IF in_data /= "00001000" THEN -- Check first part of Ethernet type for IPv4
                            s_state <= IDLE;
                            byte_index <= 0;
                        ELSE
                            byte_index <= byte_index + 1;
                        END IF;
                    ELSIF byte_index = 12 THEN
                        IF in_data = "00000000" THEN -- Check second part of Ethernet type for IPv4
                            byte_index <= byte_index + 1;
                            s_state <= IP_HEADER;
                        ELSE
                            s_state <= IDLE;
                            byte_index <= 0;
                        END IF;
                    ELSE
                        byte_index <= byte_index + 1;
                    END IF;

                WHEN IP_HEADER =>
                    IF byte_index = 13 THEN
                        ip_header_length <= to_integer(unsigned(in_data(3 DOWNTO 0))) * 4;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 22 THEN
                        IF in_data /= "00010001" THEN -- Check protocol type
                            s_state <= IDLE;
                            byte_index <= 0;
                        ELSE
                            byte_index <= byte_index + 1;
                        END IF;
                    ELSIF byte_index = 25 THEN
                        s_channel(95 DOWNTO 88) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 26 THEN
                        s_channel(87 DOWNTO 80) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 27 THEN
                        s_channel(79 DOWNTO 72) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 28 THEN
                        s_channel(71 DOWNTO 64) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 29 THEN
                        s_channel(63 DOWNTO 56) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 30 THEN
                        s_channel(55 DOWNTO 48) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 31 THEN
                        s_channel(47 DOWNTO 40) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 32 THEN
                        s_channel(39 DOWNTO 32) <= in_data;
								IF ip_header_length = 20 THEN
									s_state <= UDP_HEADER;
									byte_index <= byte_index + 1;
                        ELSE byte_index <= byte_index + 1;
								END IF;
                    ELSIF byte_index = 13 + ip_header_length -1 THEN
                        s_state <= UDP_HEADER;
                        byte_index <= byte_index + 1;
                    ELSE
                        byte_index <= byte_index + 1;
                    END IF;

                WHEN UDP_HEADER =>
                    IF byte_index = 13 + ip_header_length THEN
                        s_channel(31 DOWNTO 24) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + 1 THEN
                        s_channel(23 DOWNTO 16) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + 2 THEN
                        s_channel(15 DOWNTO 8) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + 3 THEN
                        s_channel(7 DOWNTO 0) <= in_data;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + 4 THEN
                        udp_length <= to_integer(unsigned(in_data)) * 256;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + 5 THEN
                        udp_length <= udp_length + to_integer(unsigned(in_data));
                        udp_payload_length <= udp_length - 8;
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + 8 THEN
							   out_startofpacket <='1';
                        byte_index <= byte_index + 1;
                        s_state <= DATA;
                    ELSE
                        byte_index <= byte_index + 1;
                    END IF;

                WHEN DATA =>
						  IF byte_index = 13 + ip_header_length + 9 THEN
                        out_startofpacket <= '0';
                        byte_index <= byte_index + 1;
						  ELSIF byte_index = 13 + ip_header_length + udp_length-1 THEN
                        s_out_endofpacket <= '1';
                        byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + udp_length THEN
                        s_out_endofpacket <= '0';
                        byte_index <= byte_index + 1;
                        s_state <= CRC;
                    ELSE
                        byte_index <= byte_index + 1;
                    END IF;

                WHEN CRC =>
                    IF byte_index = 13 + ip_header_length + udp_length + 3 THEN
                        byte_index <= 0;
                        s_state <= IDLE;
                    ELSE
                        byte_index <= byte_index + 1;
                    END IF;

                WHEN OTHERS =>
                    s_state <= IDLE;
            END CASE;
        END IF;
    END PROCESS;

    outp: PROCESS (s_state)
BEGIN
    CASE s_state IS
        WHEN IDLE =>
            out_data <= (OTHERS => '0');
            out_valid <= '0';

        WHEN DATA =>
            out_data <= in_data;
            channel <= s_channel;
            out_valid <= '1';
		  WHEN CRC =>
				out_data <= (OTHERS => '0');
				--s_out_endofpacket <= '0';
				channel <= (OTHERS => '0');
            out_valid <= '0';

        WHEN OTHERS =>
				channel <= (OTHERS => '0');
            out_data <= (OTHERS => '0');
            out_valid <= '0';
    END CASE;
END PROCESS;


    out_endofpacket <= s_out_endofpacket;

END ARCHITECTURE rtl;

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
    SIGNAL s_state, next_state : STATE_TYPE := IDLE;
    SIGNAL byte_index, next_byte_index : INTEGER := 0;
    SIGNAL ip_header_length, next_ip_header_length : INTEGER := 0;
    SIGNAL udp_length, next_udp_length : INTEGER := 0;
    SIGNAL udp_payload_length, next_udp_payload_length : INTEGER := 0;
    SIGNAL s_channel, next_channel : STD_LOGIC_VECTOR(95 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s_out_endofpacket, next_out_endofpacket : STD_LOGIC := '0';
    SIGNAL counter, next_counter : INTEGER := 0;
    SIGNAL s_out_data : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL delayed_data : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
BEGIN

    -- Kombinatorna logika za tranzicije stanja i pomoćne registre
    PROCES1: PROCESS(s_state, in_startofpacket, in_valid, out_ready, in_data, byte_index, ip_header_length, udp_length, counter)
    BEGIN
        next_state <= s_state;
        next_byte_index <= byte_index;
        next_ip_header_length <= ip_header_length;
        next_udp_length <= udp_length;
        next_udp_payload_length <= udp_payload_length;
        next_channel <= s_channel;
        next_out_endofpacket <= s_out_endofpacket;
        IF out_ready = '0' THEN
            next_counter <= counter + 1;
        ELSIF out_ready = '1' THEN
            next_counter <= 0;
        END IF;

        CASE s_state IS
            WHEN IDLE =>
                IF in_startofpacket = '1' THEN
                    next_state <= ETHERNET_HEADER;
                    next_byte_index <= 0;
                END IF;

            WHEN ETHERNET_HEADER =>
                IF (out_ready = '1' AND in_valid = '1') THEN
                    IF byte_index = 11 THEN
                        IF in_data /= "00001000" THEN
                            next_state <= IDLE;
                            next_byte_index <= 0;
                        ELSE
                            next_byte_index <= byte_index + 1;
                        END IF;
                    ELSIF byte_index = 12 THEN
                        IF in_data = "00000000" THEN
                            next_state <= IP_HEADER;
                            next_byte_index <= byte_index + 1;
                        ELSE
                            next_state <= IDLE;
                            next_byte_index <= 0;
                        END IF;
                    ELSE
                        next_byte_index <= byte_index + 1;
                    END IF;
                ELSIF out_ready = '0' THEN
                    next_byte_index <= byte_index + 1;
                END IF;

            WHEN IP_HEADER =>
                IF (out_ready = '1' AND in_valid = '1') THEN
                    IF byte_index = 13 THEN
                        next_ip_header_length <= TO_INTEGER(UNSIGNED(in_data(3 DOWNTO 0))) * 4;
                        next_byte_index <= byte_index + 1;
                    ELSIF byte_index = 22 THEN
                        IF in_data /= "00010001" THEN
                            next_state <= IDLE;
                            next_byte_index <= 0;
                        ELSE
                            next_byte_index <= byte_index + 1;
                        END IF;
                    ELSIF byte_index = 32 AND ip_header_length = 20 THEN
                        next_state <= UDP_HEADER;
                        next_byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length - 1 THEN
                        next_state <= UDP_HEADER;
                        next_byte_index <= byte_index + 1;
                    ELSE
                        next_byte_index <= byte_index + 1;
                    END IF;
                ELSIF out_ready = '0' THEN
                    next_byte_index <= byte_index + 1;
                END IF;

            WHEN UDP_HEADER =>
                IF (out_ready = '1' AND in_valid = '1') THEN
                    IF byte_index = 13 + ip_header_length + 4 THEN
                        next_udp_length <= TO_INTEGER(UNSIGNED(in_data)) * 256;
                        next_byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + 5 THEN
                        next_udp_length <= udp_length + TO_INTEGER(UNSIGNED(in_data));
                        next_udp_payload_length <= udp_length - 8;
                        next_byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + 8 THEN
                        next_state <= DATA;
                        next_byte_index <= byte_index + 1;
                    ELSE
                        next_byte_index <= byte_index + 1;
                    END IF;
                ELSIF out_ready = '0' THEN
                    next_byte_index <= byte_index + 1;
                END IF;

            WHEN DATA =>
                IF (out_ready = '1' AND in_valid = '1') THEN
                    IF byte_index = 13 + ip_header_length + udp_length - 1 THEN
                        next_out_endofpacket <= '1';
                        next_byte_index <= byte_index + 1;
                    ELSIF byte_index = 13 + ip_header_length + udp_length THEN
                        next_out_endofpacket <= '0';
                        next_state <= CRC;
                        next_byte_index <= byte_index + 1;
                    ELSE
                        next_byte_index <= byte_index + 1;
                    END IF;
                ELSIF out_ready = '0' THEN
                    next_byte_index <= byte_index + 1;
                END IF;

            WHEN CRC =>
                IF out_ready = '1' THEN
                    IF byte_index = 13 + ip_header_length + udp_length + 3 THEN
                        next_byte_index <= 0;
                        next_state <= IDLE;
                    ELSE
                        next_byte_index <= byte_index + 1;
                    END IF;
                END IF;

            WHEN OTHERS =>
                next_state <= IDLE;
        END CASE;
    END PROCESS;

    -- Sekvencijalna logika za registre
    PROCES2: PROCESS(clk, reset_n)
    BEGIN
        counter <= next_counter; --mora ici asinhrono nisam našao bolje rješenje
        IF reset_n = '0' THEN
            s_state <= IDLE;
            byte_index <= 0;
            ip_header_length <= 0;
            udp_length <= 0;
            udp_payload_length <= 0;
            s_channel <= (OTHERS => '0');
            s_out_endofpacket <= '0';
            delayed_data <= (OTHERS => '0');
            s_out_data <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            s_state <= next_state;
            IF (out_ready = '0' AND counter = 0) OR out_ready = '1' THEN
                byte_index <= next_byte_index;
                delayed_data <= in_data; -- Sačuvaj trenutnu vrednost in_data
                s_out_data <= delayed_data; -- Dodijeli odgođenu vrednost izlazu
            END IF;
            ip_header_length <= next_ip_header_length;
            udp_length <= next_udp_length;
            udp_payload_length <= next_udp_payload_length;
            s_out_endofpacket <= next_out_endofpacket;
            IF byte_index = 25 THEN
                s_channel(95 DOWNTO 88) <= in_data;
            ELSIF byte_index = 26 THEN
                s_channel(87 DOWNTO 80) <= in_data;
            ELSIF byte_index = 27 THEN
                s_channel(79 DOWNTO 72) <= in_data;
            ELSIF byte_index = 28 THEN
                s_channel(71 DOWNTO 64) <= in_data;
            ELSIF byte_index = 29 THEN
                s_channel(63 DOWNTO 56) <= in_data;
            ELSIF byte_index = 30 THEN
                s_channel(55 DOWNTO 48) <= in_data;
            ELSIF byte_index = 31 THEN
                s_channel(47 DOWNTO 40) <= in_data;
            ELSIF byte_index = 32 THEN
                s_channel(39 DOWNTO 32) <= in_data;
            ELSIF byte_index = 13 + ip_header_length THEN
                s_channel(31 DOWNTO 24) <= in_data;
            ELSIF byte_index = 13 + ip_header_length + 1 THEN
                s_channel(23 DOWNTO 16) <= in_data;
            ELSIF byte_index = 13 + ip_header_length + 2 THEN
                s_channel(15 DOWNTO 8) <= in_data;
            ELSIF byte_index = 13 + ip_header_length + 3 THEN
                s_channel(7 DOWNTO 0) <= in_data;
            END IF;
        END IF;
    END PROCESS;

    -- Kombinatorna logika za izlaze
    PROCES3: PROCESS(ALL)
    BEGIN
        out_valid <= '0';
        out_startofpacket <= '0';
        out_endofpacket <= s_out_endofpacket;
        channel <= (OTHERS => '0');
        in_ready <= out_ready;
        CASE s_state IS
            WHEN DATA =>
                out_data <= s_out_data; -- Koristi odgođeni signal
                out_valid <= '1';
                channel <= s_channel;
            WHEN OTHERS =>
                out_valid <= '0';
        END CASE;
    END PROCESS;

END ARCHITECTURE rtl;

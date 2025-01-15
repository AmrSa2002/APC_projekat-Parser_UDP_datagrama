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
	 SIGNAL brojac : INTEGER := 0;
	 SIGNAL s_out_data : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

	
BEGIN

    -- Kombinatorna logika za tranzicije stanja i pomoćne registre
    PROCES1: process(s_state, in_startofpacket, in_valid, out_ready, in_data, byte_index, ip_header_length, udp_length)
    begin
        next_state <= s_state;
        next_byte_index <= byte_index;
        next_ip_header_length <= ip_header_length;
        next_udp_length <= udp_length;
        next_udp_payload_length <= udp_payload_length;
        next_channel <= s_channel;
        next_out_endofpacket <= s_out_endofpacket;

        case s_state is
            when IDLE =>
                if in_startofpacket = '1' then
                    next_state <= ETHERNET_HEADER;
                    next_byte_index <= 0;
                end if;

            when ETHERNET_HEADER =>
					if out_ready = '0' then
						brojac <= brojac + 1;					
					elsif out_ready = '1' then
						brojac <= 0;
					end if;
					
					if (out_ready = '1' and in_valid = '1') or (out_ready = '0' and brojac = 0 and in_valid = '1') then
                    if byte_index = 11 then
                        if in_data /= "00001000" then
                            next_state <= IDLE;
                            next_byte_index <= 0;
                        else
                           next_byte_index <= byte_index + 1;
                        end if;
                    elsif byte_index = 12 then
                        if in_data = "00000000" then
                            next_state <= IP_HEADER;
                            next_byte_index <= byte_index + 1;
                        else
                            next_state <= IDLE;
                            next_byte_index <= 0;
                        end if;
                    else
                        next_byte_index <= byte_index + 1;
                    end if;
                end if;

            when IP_HEADER =>
				   if out_ready = '0' then
						brojac <= brojac + 1;					
					elsif out_ready = '1' then
						brojac <= 0;
					end if;
					
					if (out_ready = '1' and in_valid = '1') or (out_ready = '0' and brojac = 0 and in_valid = '1') then
                    if byte_index = 13 then
                        next_ip_header_length <= to_integer(unsigned(in_data(3 DOWNTO 0))) * 4;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 22 then
                        if in_data /= "00010001" then
                            next_state <= IDLE;
                            next_byte_index <= 0;
                        else
                            next_byte_index <= byte_index + 1;
                        end if;
                    elsif byte_index = 25 then
                        next_channel(95 DOWNTO 88) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 26 then
                        next_channel(87 DOWNTO 80) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 27 then
                        next_channel(79 DOWNTO 72) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 28 then
                        next_channel(71 DOWNTO 64) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 29 then
                        next_channel(63 DOWNTO 56) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 30 then
                        next_channel(55 DOWNTO 48) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 31 then
                        next_channel(47 DOWNTO 40) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 32 then
                        next_channel(39 DOWNTO 32) <= in_data;
                        if ip_header_length = 20 then
                            next_state <= UDP_HEADER;
                            next_byte_index <= byte_index + 1;
                        else
                            next_byte_index <= byte_index + 1;
                        end if;
                    elsif byte_index = 13 + ip_header_length - 1 then
                        next_state <= UDP_HEADER;
                        next_byte_index <= byte_index + 1;
                    else
                        next_byte_index <= byte_index + 1;
                    end if;
                end if;

            when UDP_HEADER =>
				if out_ready = '0' then
						brojac <= brojac + 1;					
				elsif out_ready = '1' then
						brojac <= 0;
					end if;
					if (out_ready = '1' and in_valid = '1') or (out_ready = '0' and brojac = 0 and in_valid = '1') then
                    if byte_index = 13 + ip_header_length then
                        next_channel(31 DOWNTO 24) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 13 + ip_header_length + 1 then
                        next_channel(23 DOWNTO 16) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 13 + ip_header_length + 2 then
                        next_channel(15 DOWNTO 8) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 13 + ip_header_length + 3 then
                        next_channel(7 DOWNTO 0) <= in_data;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 13 + ip_header_length + 4 then
                        next_udp_length <= to_integer(unsigned(in_data)) * 256;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 13 + ip_header_length + 5 then
                        next_udp_length <= udp_length + to_integer(unsigned(in_data));
                        next_udp_payload_length <= udp_length - 8;
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 13 + ip_header_length + 8 then
                        next_state <= DATA;
                        next_byte_index <= byte_index + 1;
                    else
                        next_byte_index <= byte_index + 1;
                    end if;
                end if;

            when DATA =>
				   if out_ready = '0' then
						brojac <= brojac + 1;					
					elsif out_ready = '1' then
						brojac <= 0;
					end if;
					
					if (out_ready = '1' and in_valid = '1') or (out_ready = '0' and brojac = 0 and in_valid = '1') then
                    if byte_index = 13 + ip_header_length + udp_length - 1 then
                        next_out_endofpacket <= '1';
                        next_byte_index <= byte_index + 1;
                    elsif byte_index = 13 + ip_header_length + udp_length then
                        next_out_endofpacket <= '0';
                        next_state <= CRC;
                        next_byte_index <= byte_index + 1;
                    else
                        next_byte_index <= byte_index + 1;
                    end if;
                end if;

            when CRC =>
                if out_ready = '1' then
                    if byte_index = 13 + ip_header_length + udp_length + 3 then
                        next_byte_index <= 0;
                        next_state <= IDLE;
                    else
                        next_byte_index <= byte_index + 1;
                    end if;
                end if;

            when others =>
                next_state <= IDLE;
        end case;
    end process;

    -- Sekvencijalna logika za registre
    PROCES2:process(clk, reset_n)
    begin
        if reset_n = '0' then
            s_state <= IDLE;
            byte_index <= 0;
            ip_header_length <= 0;
            udp_length <= 0;
            udp_payload_length <= 0;
            s_channel <= (OTHERS => '0');
            s_out_endofpacket <= '0';
        elsif rising_edge(clk) then
            s_state <= next_state;
            byte_index <= next_byte_index;
            ip_header_length <= next_ip_header_length;
            udp_length <= next_udp_length;
            udp_payload_length <= next_udp_payload_length;
            s_channel <= next_channel;
            s_out_endofpacket <= next_out_endofpacket;
				s_out_data <= in_data;
        end if;
    end process;

    -- Kombinatorna logika za izlaze
    PROCES3: process(all)
    begin
        out_valid <= '0';
        out_startofpacket <= '0';
        out_endofpacket <= s_out_endofpacket;
        channel <= (OTHERS => '0');
		  in_ready <= out_ready;
        case s_state is
            when DATA =>
                out_data <= s_out_data;
                out_valid <= '1';
                channel <= s_channel;
            when others =>
                out_valid <= '0';
        end case;
		          
    end process;



END ARCHITECTURE rtl;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Parser_UDP_datagrama_tb2 IS
END ENTITY Parser_UDP_datagrama_tb2;

ARCHITECTURE behavior OF Parser_UDP_datagrama_tb2 IS

    -- Component declaration for the tested entity
    COMPONENT Parser_UDP_datagrama
        PORT (
            clk : IN STD_LOGIC;
            reset_n : IN STD_LOGIC;
            in_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            in_startofpacket : IN STD_LOGIC;
            in_endofpacket : IN STD_LOGIC;
            in_ready : OUT STD_LOGIC;
            in_valid : IN STD_LOGIC;
            out_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            out_startofpacket : OUT STD_LOGIC;
            out_endofpacket : OUT STD_LOGIC;
            out_ready : IN STD_LOGIC;
            out_valid : OUT STD_LOGIC;
            channel: OUT STD_LOGIC_VECTOR(95 DOWNTO 0)
        );
    END COMPONENT;

    -- Signals to connect to the DUT (Device Under Test)
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL reset_n : STD_LOGIC := '0';
    SIGNAL in_data : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL in_startofpacket : STD_LOGIC := '0';
    SIGNAL in_endofpacket : STD_LOGIC := '0';
    SIGNAL in_ready : STD_LOGIC;
    SIGNAL in_valid : STD_LOGIC := '0';
    SIGNAL out_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL out_startofpacket : STD_LOGIC;
    SIGNAL out_endofpacket : STD_LOGIC;
    SIGNAL out_ready : STD_LOGIC := '1';
    SIGNAL channel : STD_LOGIC_VECTOR(95 DOWNTO 0);  
    -- Clock period definition
    CONSTANT clk_period : TIME := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: Parser_UDP_datagrama
        PORT MAP (
            clk => clk,
            reset_n => reset_n,
            in_data => in_data,
            in_startofpacket => in_startofpacket,
            in_endofpacket => in_endofpacket,
            in_ready => in_ready,
            in_valid => in_valid,
            out_data => out_data,
            out_startofpacket => out_startofpacket,
            out_endofpacket => out_endofpacket,
            out_ready => out_ready,
            channel => channel
        );

    -- Clock generation process
    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period / 2;
        clk <= '1';
        WAIT FOR clk_period / 2;
    END PROCESS;

    -- Stimulus process
    stim_proc: PROCESS
    BEGIN
        -- Reset the system
        reset_n <= '0';
        WAIT FOR 20 ns;
        reset_n <= '1'; 
        -- Send a valid Ethernet frame with an IPv4 header
        in_startofpacket <= '1';
        in_valid <= '1';

        in_data <= X"00"; WAIT FOR clk_period; -- MAC odredista 1/6
        in_startofpacket <= '0';
        in_data <= X"1A"; WAIT FOR clk_period; -- MAC odredista 2/6
        in_data <= X"2B"; WAIT FOR clk_period; -- MAC odredista 3/6
	in_data <= X"3C"; WAIT FOR clk_period; -- MAC odredista 4/6
        in_data <= X"5B"; WAIT FOR clk_period; -- MAC odredista 5/6
	in_data <= X"4B"; WAIT FOR clk_period; -- MAC odredista 6/6

	in_data <= X"00"; WAIT FOR clk_period; -- MAC izvorista 1/6
        in_data <= X"1A"; WAIT FOR clk_period; -- MAC izvorista 2/6
        in_data <= X"2B"; WAIT FOR clk_period; -- MAC izvorista 3/6
	in_data <= X"3C"; WAIT FOR clk_period; -- MAC izvorista 4/6
        in_data <= X"5B"; -- MAC izvorista 5/6
	out_ready <= '0';
	WAIT FOR 3*clk_period;
	out_ready <= '1';
	in_data <= X"4B"; WAIT FOR clk_period; -- MAC izvorista 6/6

        -- EtherType
        in_data <= X"08"; WAIT FOR clk_period; -- Ethertype 1/2
        in_data <= X"00"; WAIT FOR clk_period; -- Ethertype 2/2

	-- IPv4 + IHL
        in_data <= X"45"; WAIT FOR clk_period; --

	-- TOS
        in_data <= X"B9"; WAIT FOR clk_period; --

	-- IP length
        in_data <= X"00"; WAIT FOR clk_period; -- IP length 1/2
        in_data <= X"14"; WAIT FOR clk_period; -- IP length 2/2

	-- IP identification
        in_data <= X"12"; WAIT FOR clk_period; -- IP identification 1/2
        in_data <= X"34"; WAIT FOR clk_period; -- IP identification 2/2

	-- IP flags
        in_data <= X"12"; WAIT FOR clk_period; -- IP flags 1/2
        in_data <= X"34"; WAIT FOR clk_period; -- IP flags 2/2

	-- TTL
        in_data <= X"B9"; WAIT FOR clk_period; --

	-- UDP
	out_ready <= '0'; 
        in_data <= X"11"; WAIT FOR 5*clk_period; --

	-- IP checksum
	out_ready <= '1';
        in_data <= X"12"; WAIT FOR clk_period; -- IP checksum 1/2
        in_data <= X"34"; WAIT FOR clk_period; -- IP checksum 2/2

        -- Source IP
        in_data <= X"C0"; WAIT FOR clk_period; -- 192
        in_data <= X"A8"; WAIT FOR clk_period; -- 168
        in_data <= X"01"; WAIT FOR clk_period; -- 1
        in_data <= X"01"; WAIT FOR clk_period; -- 1

        -- Dest IP
        in_data <= X"C0"; WAIT FOR clk_period; -- 192
        in_data <= X"A8"; WAIT FOR clk_period; -- 168
        in_data <= X"01"; WAIT FOR clk_period; -- 1
        in_data <= X"02"; WAIT FOR clk_period; -- 2

        -- UDP header
        in_data <= X"00"; WAIT FOR clk_period; -- Source Port MSB
        in_data <= X"50"; WAIT FOR clk_period; -- Source Port LSB (80)
        in_data <= X"00"; WAIT FOR clk_period; -- Dest Port MSB
        in_data <= X"50"; WAIT FOR clk_period; -- Dest Port LSB (80)

        -- UDP length
        in_data <= X"00"; WAIT FOR clk_period; -- UDP length 1/2
	in_data <= X"0D"; WAIT FOR clk_period; -- UDP length 2/2

	-- IP checksum
        in_data <= X"12"; WAIT FOR clk_period; -- IP checksum 1/2
        in_data <= X"34"; WAIT FOR clk_period; -- IP checksum 2/2

	--Data
	in_data <= X"CC"; WAIT FOR clk_period; -- Data 1/5
        in_data <= X"CC"; WAIT FOR clk_period; -- Data 2/5
        in_data <= X"CC"; WAIT FOR clk_period; -- Data 3/5
        in_data <= X"CC"; WAIT FOR clk_period; -- Data 4/5
	in_data <= X"CC"; WAIT FOR clk_period; -- Data 5/5

	-- CRC
        in_data <= X"12"; WAIT FOR clk_period; -- CRC 1/4
        in_data <= X"34"; WAIT FOR clk_period; -- CRC 2/4
        in_data <= X"56"; WAIT FOR clk_period; -- CRC 3/4
        in_data <= X"78";   -- CRC 4/4
        -- End of packet
        in_endofpacket <= '1';
	WAIT FOR clk_period;
        in_endofpacket <= '0';
        in_valid <= '0';

        -- Wait for a while and finish simulation
        WAIT FOR 100 ns;
        WAIT;
    END PROCESS;

END ARCHITECTURE behavior;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Parser_UDP_datagrama_tb3 IS
END ENTITY Parser_UDP_datagrama_tb3;

ARCHITECTURE behavior OF Parser_UDP_datagrama_tb3 IS

    -- Component declaration for the tested entity
    COMPONENT Parser_UDP_datagrama
        PORT (
            clk                 : IN  STD_LOGIC;
            reset               : IN  STD_LOGIC;
            in_data             : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            in_startofpacket    : IN  STD_LOGIC;
            in_endofpacket      : IN  STD_LOGIC;
            in_ready            : OUT STD_LOGIC;
            in_valid            : IN  STD_LOGIC;
            out_data            : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            out_startofpacket   : OUT STD_LOGIC;
            out_endofpacket     : OUT STD_LOGIC;
            out_ready           : IN  STD_LOGIC;
            out_valid           : OUT STD_LOGIC;
            out_channel         : OUT STD_LOGIC_VECTOR(95 DOWNTO 0)
        );
    END COMPONENT;

    -- Signals to connect to the DUT (Device Under Test)
    SIGNAL clk                 : STD_LOGIC := '0';
    SIGNAL reset               : STD_LOGIC := '0';
    SIGNAL in_data             : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL in_startofpacket    : STD_LOGIC := '0';
    SIGNAL in_endofpacket      : STD_LOGIC := '0';
    SIGNAL in_ready            : STD_LOGIC;
    SIGNAL in_valid            : STD_LOGIC := '0';
    SIGNAL out_data            : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL out_startofpacket   : STD_LOGIC;
    SIGNAL out_endofpacket     : STD_LOGIC;
    SIGNAL out_ready           : STD_LOGIC := '1';
    SIGNAL out_valid           : STD_LOGIC := '1';
    SIGNAL out_channel         : STD_LOGIC_VECTOR(95 DOWNTO 0);

    -- Clock period definition
    CONSTANT clk_period : TIME := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut : Parser_UDP_datagrama
        PORT MAP (
            clk                 => clk,
            reset               => reset,
            in_data             => in_data,
            in_startofpacket    => in_startofpacket,
            in_endofpacket      => in_endofpacket,
            in_ready            => in_ready,
            in_valid            => in_valid,
            out_data            => out_data,
            out_startofpacket   => out_startofpacket,
            out_endofpacket     => out_endofpacket,
            out_ready           => out_ready,
            out_valid		=> out_valid,
            out_channel         => out_channel
        );

    -- Clock generation process
    clk_process : PROCESS
    BEGIN
        clk <= '1';
        WAIT FOR clk_period / 2;
        clk <= '0';
        WAIT FOR clk_period / 2;
    END PROCESS;

    -- Stimulus process
    stim_proc : PROCESS
        TYPE packet_type IS ARRAY (0 TO 63) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
        VARIABLE ethernet_frame : packet_type := (
            X"AA", X"1A", X"2B", X"3C", X"5B", X"4B", X"11", X"22",
            X"33", X"44", X"55", X"66", X"08", X"00", X"45", X"B9",
            X"00", X"14", X"12", X"34", X"12", X"34", X"B9", X"11",
            X"12", X"34", X"C0", X"A8", X"01", X"01", X"C0", X"A8",
            X"01", X"02", X"00", X"50", X"00", X"80", X"00", X"1A",
            X"12", X"34", X"CC", X"DD", X"AA", X"BB", X"CC", X"DD",
            X"AA", X"BB", X"CC", X"DD", X"AA", X"BB", X"CC", X"DD",
            X"AA", X"BB", X"CC", X"DD", X"12", X"34", X"56", X"78"
        );
        VARIABLE index : INTEGER := 0;
        VARIABLE backpreusere : INTEGER := 0;
    BEGIN
        -- Reset the system
        reset <= '1';
        WAIT FOR 20 ns;
        reset <= '0';

        -- Send a valid Ethernet frame with an IPv4 header
        in_startofpacket <= '1';
        in_valid <= '1';

        -- Process to send Ethernet frame with backpressure handling
        WHILE index <= 63 LOOP
            IF ethernet_frame(index) <= X"1A" THEN
	       in_startofpacket <= '0';
            END IF;
            IF index = 63 THEN
                in_data <= ethernet_frame(index);  -- Send the predefined byte of the Ethernet frame
                index := index + 1;
                in_endofpacket <= '1';  -- End of packet
            ELSIF index = 10 THEN
                out_ready <= '0';  -- Apply backpressure
                in_data <= ethernet_frame(index);  -- Send the predefined byte of the Ethernet frame
                backpreusere := backpreusere + 1;
                IF backpreusere = 4 THEN
                    out_ready <= '1';  -- Remove backpressure after 3 cycles
                    index := index + 1;
                    in_data <= ethernet_frame(index);
                    index := index + 1;
                    backpreusere := 0;
                END IF;
            ELSIF index = 23 THEN
                out_ready <= '0';  -- Apply backpressure
                in_data <= ethernet_frame(index);  -- Send the predefined byte of the Ethernet frame
                backpreusere := backpreusere + 1;
                IF backpreusere = 6 THEN
                    out_ready <= '1';  -- Remove backpressure after 5 cycles
                    index := index + 1;
                    in_data <= ethernet_frame(index);
                    index := index + 1;
                    backpreusere := 0;
                END IF;
            ELSIF index = 58 THEN
                out_ready <= '0';  -- Apply backpressure
                in_data <= ethernet_frame(index);  -- Send the predefined byte of the Ethernet frame
                backpreusere := backpreusere + 1;
                IF backpreusere = 3 THEN
                    out_ready <= '1';  -- Remove backpressure after 3 cycles
                    index := index + 1;
                    in_data <= ethernet_frame(index);
                    index := index + 1;
                    backpreusere := 0;
                END IF;
            ELSIF in_ready = '1' THEN
                in_data <= ethernet_frame(index);  -- Send the predefined byte of the Ethernet frame
                index := index + 1;
            END IF;

            WAIT FOR clk_period;  -- Wait for the next clock cycle
        END LOOP;

        -- End of packet
        in_valid <= '0';
        in_endofpacket <= '0';
        in_data <= X"00";

        -- End the simulation after a delay
        WAIT FOR 100 ns;
        WAIT;

    END PROCESS;

END ARCHITECTURE behavior;


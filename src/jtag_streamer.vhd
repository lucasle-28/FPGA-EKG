-- ============================================================================
-- jtag_streamer.vhd
-- Streams 12-bit ADC samples to the PC via the JTAG UART (alt_jtag_atlantic).
-- Uses the existing USB-Blaster connection — no extra hardware needed.
--
-- Framing protocol (2 bytes per sample):
--   Byte 0 (sync):  1 | sample[11:5]       (MSB=1 marks start of frame)
--   Byte 1 (data):  0 | 00 | sample[4:0]   (MSB=0 marks continuation)
--
-- PC-side reconstruction:
--   sample = ((byte0 & 0x7F) << 5) | (byte1 & 0x1F)
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity jtag_streamer is
    port (
        clk          : in  std_logic;                      -- System clock (50 MHz)
        reset_n      : in  std_logic;                      -- Active-low reset
        sample_data  : in  std_logic_vector(11 downto 0);  -- 12-bit ADC sample
        sample_valid : in  std_logic                       -- Single-cycle strobe
    );
end entity jtag_streamer;

architecture rtl of jtag_streamer is

    -- ========================================================================
    -- alt_jtag_atlantic component declaration (Altera built-in megafunction)
    --
    -- Port naming is from the JTAG/PC perspective:
    --   r_* = "read"     = PC reads FROM FPGA (FPGA → PC direction)
    --   t_* = "transmit" = PC transmits TO FPGA (PC → FPGA direction)
    -- ========================================================================
    component alt_jtag_atlantic is
        generic (
            INSTANCE_ID             : integer := 0;
            LOG2_RXFIFO_DEPTH       : integer := 0;
            LOG2_TXFIFO_DEPTH       : integer := 0;
            SLD_AUTO_INSTANCE_INDEX : string  := "YES"
        );
        port (
            clk   : in  std_logic;
            rst_n : in  std_logic;
            -- FPGA → PC: user provides data for the PC to "read"
            r_dat : in  std_logic_vector(7 downto 0);   -- Data byte to send
            r_val : in  std_logic;                       -- Assert when r_dat is valid
            r_ena : out std_logic;                       -- Atlantic ready to accept
            -- PC → FPGA: atlantic provides data "transmitted" from the PC
            t_dat : out std_logic_vector(7 downto 0);   -- Received data byte
            t_dav : in  std_logic;                       -- FPGA ready to accept (ack)
            t_ena : out std_logic                        -- Data available from PC
        );
    end component alt_jtag_atlantic;

    -- ========================================================================
    -- FSM
    -- ========================================================================
    type state_t is (S_IDLE, S_SEND_HIGH, S_SEND_LOW);
    signal state   : state_t := S_IDLE;
    signal latched : std_logic_vector(11 downto 0) := (others => '0');

    -- Atlantic read-channel signals (FPGA → PC)
    signal r_dat : std_logic_vector(7 downto 0);
    signal r_val : std_logic;
    signal r_ena : std_logic;

begin

    -- ========================================================================
    -- alt_jtag_atlantic instance
    -- TX FIFO = 256 bytes (LOG2 = 8): holds ~128 samples at 2 bytes each,
    -- which is ~355 ms of buffer at 360 Hz. Plenty of margin.
    -- ========================================================================
    u_atlantic : alt_jtag_atlantic
        generic map (
            INSTANCE_ID             => 0,
            LOG2_RXFIFO_DEPTH       => 2,       -- 4-byte RX FIFO (unused)
            LOG2_TXFIFO_DEPTH       => 12,      -- 4096-byte TX FIFO (holds ~5.6 seconds of data)
            SLD_AUTO_INSTANCE_INDEX => "YES"
        )
        port map (
            clk   => clk,
            rst_n => reset_n,
            -- FPGA → PC: our data stream
            r_dat => r_dat,
            r_val     => r_val,
            r_ena     => r_ena,
            t_dat     => open,
            t_dav     => '1',   -- Always acknowledge/drain incoming bytes to prevent JTAG stall
            t_ena     => open
        );

    -- ========================================================================
    -- FSM: latch sample on valid strobe, then send 2 bytes via read channel
    --
    -- Transfer occurs on rising_edge(clk) when BOTH r_val='1' AND r_ena='1'.
    -- If the FIFO is full (r_ena='0'), we wait. If a new sample arrives
    -- while we're still sending, it is silently dropped (safe at 360 Hz —
    -- each sample is ~139k clocks apart, sending takes ~2 clocks).
    -- ========================================================================
    p_fsm : process(clk, reset_n)
    begin
        if reset_n = '0' then
            state   <= S_IDLE;
            latched <= (others => '0');
        elsif rising_edge(clk) then
            case state is
                when S_IDLE =>
                    if sample_valid = '1' then
                        latched <= sample_data;
                        state   <= S_SEND_HIGH;
                    end if;

                when S_SEND_HIGH =>
                    if r_ena = '1' then
                        state <= S_SEND_LOW;
                    end if;

                when S_SEND_LOW =>
                    if r_ena = '1' then
                        state <= S_IDLE;
                    end if;
            end case;
        end if;
    end process p_fsm;

    -- ========================================================================
    -- Combinational outputs to alt_jtag_atlantic read channel
    -- ========================================================================
    -- Assert r_val whenever we have a byte to send
    r_val <= '1' when (state = S_SEND_HIGH or state = S_SEND_LOW) else '0';

    -- Byte 0 (sync):  1 | sample[11:5]      → MSB=1 marks frame start
    -- Byte 1 (data):  0 | 00 | sample[4:0]  → MSB=0 marks continuation
    r_dat <= '1' & latched(11 downto 5)   when state = S_SEND_HIGH else
             "000" & latched(4 downto 0)  when state = S_SEND_LOW  else
             (others => '0');

end architecture rtl;

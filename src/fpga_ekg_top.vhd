-- ============================================================================
-- fpga_ekg_top.vhd
-- Top-level entity for the FPGA-EKG project on the Terasic DE1-SoC (Rev F).
--
-- Phase 0: LED blink proof-of-concept (toolchain validation).
-- Phase 1: ADC sampling via LTC2308 SPI driver, displayed on HEX displays.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fpga_ekg_top is
    port (
        ---- CLOCK ----
        CLOCK_50  : in  std_logic;                       -- 50 MHz main clock

        ---- USER INPUTS ----
        KEY       : in  std_logic_vector(3 downto 0);    -- Push buttons (active-low)
        SW        : in  std_logic_vector(9 downto 0);    -- Slide switches

        ---- USER OUTPUTS ----
        LEDR      : out std_logic_vector(9 downto 0);    -- Red LEDs
        HEX0      : out std_logic_vector(6 downto 0);    -- 7-seg display 0 (active-low)
        HEX1      : out std_logic_vector(6 downto 0);    -- 7-seg display 1
        HEX2      : out std_logic_vector(6 downto 0);    -- 7-seg display 2
        HEX3      : out std_logic_vector(6 downto 0);    -- 7-seg display 3
        HEX4      : out std_logic_vector(6 downto 0);    -- 7-seg display 4
        HEX5      : out std_logic_vector(6 downto 0);    -- 7-seg display 5

        ---- ONBOARD ADC (LTC2308 SPI) ----
        -- AD8232 analog OUTPUT connects to ADC header (JP1) channel 0
        ADC_CONVST : out std_logic;                      -- Conversion start (active-high pulse)
        ADC_DIN    : out std_logic;                      -- Config data to ADC (6-bit command)
        ADC_DOUT   : in  std_logic;                      -- Result data from ADC (12-bit)
        ADC_SCLK   : out std_logic;                      -- SPI clock (≤40 MHz)

        ---- AD8232 LEADS-OFF DETECTION (via GPIO_0) ----
        -- Active-high: '1' means the corresponding electrode is disconnected
        GPIO_0    : inout std_logic_vector(35 downto 0)  -- Expansion header 0
    );
end entity fpga_ekg_top;

architecture rtl of fpga_ekg_top is

    -- ========================================================================
    -- Hex-to-7-segment decoder function (active-low outputs)
    -- Segment order: gfedcba
    -- ========================================================================
    function hex_to_7seg(hex : std_logic_vector(3 downto 0))
        return std_logic_vector is
    begin
        case hex is
            when "0000" => return "1000000";  -- 0
            when "0001" => return "1111001";  -- 1
            when "0010" => return "0100100";  -- 2
            when "0011" => return "0110000";  -- 3
            when "0100" => return "0011001";  -- 4
            when "0101" => return "0010010";  -- 5
            when "0110" => return "0000010";  -- 6
            when "0111" => return "1111000";  -- 7
            when "1000" => return "0000000";  -- 8
            when "1001" => return "0010000";  -- 9
            when "1010" => return "0001000";  -- A
            when "1011" => return "0000011";  -- b
            when "1100" => return "1000110";  -- C
            when "1101" => return "0100001";  -- d
            when "1110" => return "0000110";  -- E
            when "1111" => return "0001110";  -- F
            when others => return "1111111";  -- blank
        end case;
    end function hex_to_7seg;

    -- ========================================================================
    -- Constants
    -- ========================================================================
    -- 50 MHz / 2 = 25 MHz toggle → 1 Hz blink (25_000_000 counts per toggle)
    constant C_BLINK_MAX : natural := 25_000_000 - 1;

    -- ========================================================================
    -- Phase 0: blink signals
    -- ========================================================================
    signal reset_n       : std_logic;
    signal blink_counter : natural range 0 to C_BLINK_MAX := 0;
    signal blink_led     : std_logic := '0';

    -- ========================================================================
    -- AD8232 leads-off detection
    -- ========================================================================
    signal ad8232_lo_plus  : std_logic;
    signal ad8232_lo_minus : std_logic;
    signal leads_off       : std_logic;

    -- ========================================================================
    -- Phase 1: ADC pipeline signals
    -- ========================================================================
    signal sample_tick   : std_logic;                      -- from sample_clock
    signal adc_data      : std_logic_vector(11 downto 0);  -- 12-bit ADC result
    signal adc_valid     : std_logic;                      -- single-cycle data-ready strobe
    signal adc_busy      : std_logic;                      -- driver busy flag

    -- Latched display value (updated on each valid sample)
    signal display_data  : std_logic_vector(11 downto 0) := (others => '0');

begin

    -- ========================================================================
    -- Reset
    -- ========================================================================
    reset_n <= KEY(0);  -- KEY(0) active-low: pressed = reset

    -- ========================================================================
    -- AD8232 leads-off mapping
    -- ========================================================================
    ad8232_lo_plus  <= GPIO_0(0);  -- LO+ from AD8232
    ad8232_lo_minus <= GPIO_0(1);  -- LO- from AD8232
    leads_off       <= ad8232_lo_plus or ad8232_lo_minus;

    -- ========================================================================
    -- Phase 0: 1 Hz LED blink (proves clock, reset, and programming work)
    -- ========================================================================
    p_blink : process(CLOCK_50, reset_n)
    begin
        if reset_n = '0' then
            blink_counter <= 0;
            blink_led     <= '0';
        elsif rising_edge(CLOCK_50) then
            if blink_counter = C_BLINK_MAX then
                blink_counter <= 0;
                blink_led     <= not blink_led;
            else
                blink_counter <= blink_counter + 1;
            end if;
        end if;
    end process p_blink;

    -- ========================================================================
    -- Phase 1: Sample clock (360 Hz tick to trigger ADC conversions)
    -- ========================================================================
    u_sample_clock : entity work.sample_clock
        generic map (
            G_DIVIDER => 138889   -- 50 MHz / 138889 ≈ 360 Hz
        )
        port map (
            clk         => CLOCK_50,
            reset_n     => reset_n,
            sample_tick => sample_tick
        );

    -- ========================================================================
    -- Phase 1: LTC2308 ADC SPI driver
    -- ========================================================================
    u_adc_driver : entity work.adc_spi_driver
        port map (
            clk          => CLOCK_50,
            reset_n      => reset_n,
            channel      => "000",          -- CH0: AD8232 analog output
            start        => sample_tick,    -- triggered by sample clock
            adc_convst   => ADC_CONVST,
            adc_din      => ADC_DIN,
            adc_dout     => ADC_DOUT,
            adc_sclk     => ADC_SCLK,
            sample_data  => adc_data,
            sample_valid => adc_valid,
            busy         => adc_busy
        );

    -- ========================================================================
    -- Latch display value on each valid ADC sample
    -- ========================================================================
    p_latch : process(CLOCK_50, reset_n)
    begin
        if reset_n = '0' then
            display_data <= (others => '0');
        elsif rising_edge(CLOCK_50) then
            if adc_valid = '1' then
                display_data <= adc_data;
            end if;
        end if;
    end process p_latch;

    -- ========================================================================
    -- JTAG UART streamer: sends ADC samples to PC over USB-Blaster
    -- ========================================================================
    u_jtag_streamer : entity work.jtag_streamer
        port map (
            clk          => CLOCK_50,
            reset_n      => reset_n,
            sample_data  => adc_data,
            sample_valid => adc_valid
        );

    -- ========================================================================
    -- Output assignments
    -- ========================================================================

    -- Heartbeat LED (blinks at 1 Hz)
    LEDR(0) <= blink_led;

    -- ADC busy indicator
    LEDR(1) <= adc_busy;

    -- Unused LEDs
    LEDR(7 downto 2) <= (others => '0');

    -- ADC sample_valid blink (very brief flash on each sample)
    LEDR(8) <= adc_valid;

    -- Leads-off warning: lights up if either electrode is disconnected
    LEDR(9) <= leads_off;

    -- ========================================================================
    -- 7-segment displays: show 12-bit ADC value as 3 hex digits
    --   HEX2 = upper nibble [11:8]
    --   HEX1 = middle nibble [7:4]
    --   HEX0 = lower nibble [3:0]
    -- ========================================================================
    HEX0 <= hex_to_7seg(display_data(3  downto 0));
    HEX1 <= hex_to_7seg(display_data(7  downto 4));
    HEX2 <= hex_to_7seg(display_data(11 downto 8));

    -- Blank upper displays
    HEX3 <= (others => '1');
    HEX4 <= (others => '1');
    HEX5 <= (others => '1');

    -- Unused GPIO pins driven to high-Z
    GPIO_0(35 downto 2) <= (others => 'Z');

end architecture rtl;

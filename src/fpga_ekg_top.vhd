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

    -- LED pulse stretcher: 2 ms at 50 MHz so single-cycle strobes are visible
    constant C_STRETCH_MAX : natural := 100_000 - 1;

    -- ========================================================================
    -- Phase 0: blink signals
    -- ========================================================================
    signal reset_n       : std_logic;
    signal reset_sync    : std_logic_vector(1 downto 0) := (others => '0');
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

    -- ========================================================================
    -- Phase 2: Filter pipeline signals
    -- ========================================================================
    -- ADC → Q1.15 conversion
    signal adc_q15       : std_logic_vector(15 downto 0);  -- ADC in Q1.15 signed
    signal adc_q15_valid : std_logic;

    -- Notch filter stage
    signal notch_out       : std_logic_vector(15 downto 0);
    signal notch_valid     : std_logic;

    -- DC block stage
    signal dcblock_out     : std_logic_vector(15 downto 0);
    signal dcblock_valid   : std_logic;

    -- Bandpass FIR stage (for QRS detection, not displayed)
    signal bandpass_out    : std_logic_vector(15 downto 0);
    signal bandpass_valid  : std_logic;

    -- Filtered signal converted back to 12-bit unsigned for JTAG
    signal filtered_12bit  : std_logic_vector(11 downto 0);
    signal filtered_valid  : std_logic;

    -- Stretched adc_valid for LED visibility
    signal adc_valid_led   : std_logic := '0';
    signal stretch_cnt     : natural range 0 to C_STRETCH_MAX := 0;

begin

    -- ========================================================================
    -- Reset: KEY(0) active-low, pressed = reset.
    -- 2-FF synchronizer: asserts asynchronously, de-asserts synchronously
    -- to CLOCK_50 so all logic leaves reset on the same clock edge.
    -- ========================================================================
    p_reset_sync : process(CLOCK_50, KEY)
    begin
        if KEY(0) = '0' then
            reset_sync <= (others => '0');
        elsif rising_edge(CLOCK_50) then
            reset_sync <= reset_sync(0) & '1';
        end if;
    end process p_reset_sync;

    reset_n <= reset_sync(1);

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
    -- Phase 2: ADC 12-bit unsigned → Q1.15 signed conversion
    -- ========================================================================
    -- Subtract mid-scale (2048) to center at zero, then shift left by 4
    -- to fill the 16-bit range.
    -- signed_16 = (unsigned_12 - 2048) << 4
    -- ========================================================================
    p_adc_to_q15 : process(CLOCK_50, reset_n)
        variable centered : signed(12 downto 0);  -- 13-bit to hold subtraction result
    begin
        if reset_n = '0' then
            adc_q15       <= (others => '0');
            adc_q15_valid <= '0';
        elsif rising_edge(CLOCK_50) then
            adc_q15_valid <= '0';
            if adc_valid = '1' then
                -- Subtract 2048 (mid-scale) to center at zero
                centered := signed('0' & adc_data) - to_signed(2048, 13);
                -- Shift left 4 to scale 12-bit to 16-bit range
                adc_q15 <= std_logic_vector(
                    shift_left(resize(centered, 16), 4)
                );
                adc_q15_valid <= '1';
            end if;
        end if;
    end process p_adc_to_q15;

    -- ========================================================================
    -- Phase 2: Notch filter (50/60 Hz mains rejection)
    -- ========================================================================
    u_notch : entity work.notch_5060
        port map (
            clk          => CLOCK_50,
            reset_n      => reset_n,
            sel_60hz     => SW(0),       -- SW(0)=0: 50 Hz, SW(0)=1: 60 Hz
            sample_in    => adc_q15,
            sample_valid => adc_q15_valid,
            sample_out   => notch_out,
            out_valid    => notch_valid
        );

    -- ========================================================================
    -- Phase 2: DC block (baseline wander removal, ~0.5 Hz HPF)
    -- ========================================================================
    u_dc_block : entity work.dc_block
        port map (
            clk          => CLOCK_50,
            reset_n      => reset_n,
            sample_in    => notch_out,
            sample_valid => notch_valid,
            sample_out   => dcblock_out,
            out_valid    => dcblock_valid
        );

    -- ========================================================================
    -- Phase 2: Bandpass FIR (8-22 Hz, for QRS detection only)
    -- ========================================================================
    u_bandpass : entity work.bandpass_fir
        generic map (
            G_NUM_TAPS => 65
        )
        port map (
            clk          => CLOCK_50,
            reset_n      => reset_n,
            sample_in    => dcblock_out,
            sample_valid => dcblock_valid,
            sample_out   => bandpass_out,
            out_valid    => bandpass_valid
        );

    -- ========================================================================
    -- Phase 2: Q1.15 signed → 12-bit unsigned conversion (for JTAG stream)
    -- ========================================================================
    -- Reverse of the input conversion:
    --   unsigned_12 = (signed_16 >> 4) + 2048
    -- Clamped to [0, 4095].
    -- ========================================================================
    p_q15_to_12bit : process(CLOCK_50, reset_n)
        variable shifted  : signed(15 downto 0);
        variable restored : signed(15 downto 0);  -- after adding 2048
    begin
        if reset_n = '0' then
            filtered_12bit <= (others => '0');
            filtered_valid <= '0';
        elsif rising_edge(CLOCK_50) then
            filtered_valid <= '0';
            if dcblock_valid = '1' then
                -- Right-shift by 4 to undo the input scaling
                shifted := shift_right(signed(dcblock_out), 4);
                -- Add back mid-scale offset
                restored := shifted + to_signed(2048, 16);

                -- Clamp to 12-bit unsigned range [0, 4095]
                if restored < 0 then
                    filtered_12bit <= (others => '0');
                elsif restored > 4095 then
                    filtered_12bit <= (others => '1');
                else
                    filtered_12bit <= std_logic_vector(restored(11 downto 0));
                end if;

                filtered_valid <= '1';
            end if;
        end if;
    end process p_q15_to_12bit;

    -- ========================================================================
    -- Latch display value on each filtered sample
    -- ========================================================================
    p_latch : process(CLOCK_50, reset_n)
    begin
        if reset_n = '0' then
            display_data <= (others => '0');
        elsif rising_edge(CLOCK_50) then
            if filtered_valid = '1' then
                display_data <= filtered_12bit;
            end if;
        end if;
    end process p_latch;

    -- ========================================================================
    -- Pulse stretcher: adc_valid is a single 20 ns pulse (invisible on an
    -- LED). Stretch each pulse to 2 ms so LEDR(8) is visibly lit while
    -- samples are flowing.
    -- ========================================================================
    p_stretch : process(CLOCK_50, reset_n)
    begin
        if reset_n = '0' then
            stretch_cnt   <= 0;
            adc_valid_led <= '0';
        elsif rising_edge(CLOCK_50) then
            if adc_valid = '1' then
                stretch_cnt   <= C_STRETCH_MAX;
                adc_valid_led <= '1';
            elsif stretch_cnt > 0 then
                stretch_cnt <= stretch_cnt - 1;
            else
                adc_valid_led <= '0';
            end if;
        end if;
    end process p_stretch;

    -- ========================================================================
    -- JTAG UART streamer: sends FILTERED samples to PC over USB-Blaster
    -- ========================================================================
    u_jtag_streamer : entity work.jtag_streamer
        port map (
            clk          => CLOCK_50,
            reset_n      => reset_n,
            sample_data  => filtered_12bit,
            sample_valid => filtered_valid
        );

    -- ========================================================================
    -- Output assignments
    -- ========================================================================

    -- Heartbeat LED (blinks at 1 Hz)
    LEDR(0) <= blink_led;

    -- ADC busy indicator
    LEDR(1) <= adc_busy;

    -- Filter active indicator
    LEDR(2) <= filtered_valid;

    -- Notch filter mode: on = 60 Hz, off = 50 Hz
    LEDR(3) <= SW(0);

    -- Unused LEDs
    LEDR(7 downto 4) <= (others => '0');

    -- ADC sampling activity (stretched adc_valid, lit while samples flow)
    LEDR(8) <= adc_valid_led;

    -- Leads-off warning: lights up if either electrode is disconnected
    LEDR(9) <= leads_off;

    -- ========================================================================
    -- 7-segment displays: show filtered 12-bit value as 3 hex digits
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

    -- LO+/LO- inputs: explicitly tri-state our drivers so the AD8232 owns them
    GPIO_0(1 downto 0) <= (others => 'Z');

    -- JP1 Pin 3 (GPIO_0(2)) driven to 3.3V output
    GPIO_0(2) <= '1';

    -- Unused GPIO pins driven to high-Z
    GPIO_0(35 downto 3) <= (others => 'Z');

end architecture rtl;

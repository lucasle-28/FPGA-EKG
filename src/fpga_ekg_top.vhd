-- ============================================================================
-- fpga_ekg_top.vhd
-- Top-level entity for the FPGA-EKG project on the Terasic DE1-SoC.
--
-- Phase 0: LED blink proof-of-concept (toolchain validation).
-- Later phases will instantiate the full DSP + NN pipeline here.
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
        ADC_CS_N  : out std_logic;                       -- Chip select (active-low)
        ADC_DIN   : out std_logic;                       -- Data to ADC (channel/config)
        ADC_DOUT  : in  std_logic;                       -- Data from ADC (12-bit result)
        ADC_SCLK  : out std_logic;                       -- SPI clock

        ---- AD8232 LEADS-OFF DETECTION (via GPIO_0) ----
        -- Active-high: '1' means the corresponding electrode is disconnected
        GPIO_0    : inout std_logic_vector(35 downto 0)  -- Expansion header 0
    );
end entity fpga_ekg_top;

architecture rtl of fpga_ekg_top is

    -- ========================================================================
    -- Constants
    -- ========================================================================
    -- 50 MHz / 2 = 25 MHz toggle → 1 Hz blink (25_000_000 counts per toggle)
    constant C_BLINK_MAX : natural := 25_000_000 - 1;

    -- ========================================================================
    -- Signals
    -- ========================================================================
    signal reset_n       : std_logic;  -- Active-low reset from KEY(0)
    signal blink_counter : natural range 0 to C_BLINK_MAX := 0;
    signal blink_led     : std_logic := '0';

    -- AD8232 leads-off detection (directly from GPIO)
    signal ad8232_lo_plus  : std_logic;
    signal ad8232_lo_minus : std_logic;

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
    -- Output assignments
    -- ========================================================================

    -- Heartbeat LED (blinks at 1 Hz for Phase 0)
    LEDR(0) <= blink_led;

    -- Mirror switches to LEDs (simple I/O test)
    LEDR(9 downto 1) <= SW(9 downto 1);

    -- Leads-off warning: light if either electrode is disconnected
    -- (active once AD8232 is connected; safe default for Phase 0)
    -- LEDR(9) <= ad8232_lo_plus or ad8232_lo_minus;

    -- Blank all 7-segment displays (active-low: '1111111' = all off)
    HEX0 <= (others => '1');
    HEX1 <= (others => '1');
    HEX2 <= (others => '1');
    HEX3 <= (others => '1');
    HEX4 <= (others => '1');
    HEX5 <= (others => '1');

    -- ADC idle (active-low CS deasserted = ADC not selected)
    ADC_CS_N <= '1';
    ADC_DIN  <= '0';
    ADC_SCLK <= '0';

    -- Unused GPIO pins driven to high-Z
    GPIO_0(35 downto 2) <= (others => 'Z');

end architecture rtl;

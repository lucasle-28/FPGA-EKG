-- ============================================================================
-- sample_clock.vhd
-- Generates a periodic sample strobe at 250–500 Hz from the 50 MHz clock.
--
-- Divides CLOCK_50 to produce a single-cycle pulse at the configured
-- sample rate. Used to trigger ADC conversions.
--
-- Phase 1 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sample_clock is
    generic (
        -- 50_000_000 / 360 = 138889 for 360 Hz (MIT-BIH compatible)
        -- 50_000_000 / 250 = 200000 for 250 Hz
        -- 50_000_000 / 500 = 100000 for 500 Hz
        G_DIVIDER : natural := 138889   -- Default: ~360 Hz
    );
    port (
        clk         : in  std_logic;    -- System clock (50 MHz)
        reset_n     : in  std_logic;    -- Active-low reset
        sample_tick : out std_logic     -- Single-cycle pulse at sample rate
    );
end entity sample_clock;

architecture rtl of sample_clock is
begin
    -- TODO: Phase 1 implementation
    sample_tick <= '0';
end architecture rtl;

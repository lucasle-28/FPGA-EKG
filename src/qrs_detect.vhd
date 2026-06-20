-- ============================================================================
-- qrs_detect.vhd
-- Pan-Tompkins QRS complex detector.
--
-- Streaming pipeline: derivative → square → moving-window integrator →
-- adaptive dual-threshold with refractory period.
--
-- Outputs a single-cycle beat strobe when an R-peak is detected, plus
-- the R-peak sample index for beat segmentation.
--
-- Phase 3 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity qrs_detect is
    port (
        clk          : in  std_logic;
        reset_n      : in  std_logic;
        -- Input (filtered EKG from bandpass stage)
        sample_in    : in  std_logic_vector(15 downto 0);  -- Q1.15 signed
        sample_valid : in  std_logic;
        -- Output
        beat_detect  : out std_logic;                      -- Pulse: R-peak detected
        rr_interval  : out std_logic_vector(15 downto 0);  -- Samples between beats
        heart_rate   : out std_logic_vector(7 downto 0)    -- BPM (0-255)
    );
end entity qrs_detect;

architecture rtl of qrs_detect is
begin
    -- TODO: Phase 3 implementation
    beat_detect <= '0';
    rr_interval <= (others => '0');
    heart_rate  <= (others => '0');
end architecture rtl;

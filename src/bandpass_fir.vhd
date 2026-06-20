-- ============================================================================
-- bandpass_fir.vhd
-- Symmetric FIR bandpass filter (~5–15 Hz) to isolate QRS energy.
--
-- Used by the Pan-Tompkins QRS detector. Coefficients designed in Python
-- and quantized to Q1.15. Symmetric coefficients allow half the multiplies.
--
-- Phase 2 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bandpass_fir is
    generic (
        G_NUM_TAPS : natural := 33  -- Filter order + 1 (odd for symmetric)
    );
    port (
        clk          : in  std_logic;
        reset_n      : in  std_logic;
        -- Input
        sample_in    : in  std_logic_vector(15 downto 0);  -- Q1.15 signed
        sample_valid : in  std_logic;
        -- Output
        sample_out   : out std_logic_vector(15 downto 0);  -- Q1.15 signed
        out_valid    : out std_logic
    );
end entity bandpass_fir;

architecture rtl of bandpass_fir is
begin
    -- TODO: Phase 2 implementation
    sample_out <= (others => '0');
    out_valid  <= '0';
end architecture rtl;

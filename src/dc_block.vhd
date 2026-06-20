-- ============================================================================
-- dc_block.vhd
-- First-order IIR high-pass filter for baseline wander removal.
--
-- Removes DC offset and very low frequency drift (~0.5 Hz cutoff).
-- Transfer function: H(z) = (1 - z^-1) / (1 - alpha * z^-1)
-- where alpha is close to 1 (e.g., 0.995 in Q1.15).
--
-- Fixed-point: signed Q1.15 input/output, wider accumulator internally.
--
-- Phase 2 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dc_block is
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
end entity dc_block;

architecture rtl of dc_block is
begin
    -- TODO: Phase 2 implementation
    sample_out <= (others => '0');
    out_valid  <= '0';
end architecture rtl;

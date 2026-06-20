-- ============================================================================
-- beat_segmenter.vhd
-- Captures a fixed-length window of samples around each detected R-peak.
--
-- Uses a BRAM-backed circular buffer. On beat_detect, outputs a vector
-- of G_WINDOW_LEN samples centered on the R-peak for classification.
--
-- Phase 3 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity beat_segmenter is
    generic (
        G_WINDOW_LEN  : natural := 180;  -- Samples per beat window
        G_SAMPLE_BITS : natural := 16    -- Bits per sample (Q1.15)
    );
    port (
        clk          : in  std_logic;
        reset_n      : in  std_logic;
        -- Input stream
        sample_in    : in  std_logic_vector(G_SAMPLE_BITS-1 downto 0);
        sample_valid : in  std_logic;
        -- Beat trigger
        beat_detect  : in  std_logic;
        -- Output: beat window (read port)
        beat_ready   : out std_logic;                      -- High when a beat window is available
        rd_addr      : in  std_logic_vector(7 downto 0);   -- Read address (0 to G_WINDOW_LEN-1)
        rd_data      : out std_logic_vector(G_SAMPLE_BITS-1 downto 0)
    );
end entity beat_segmenter;

architecture rtl of beat_segmenter is
begin
    -- TODO: Phase 3 implementation
    beat_ready <= '0';
    rd_data    <= (others => '0');
end architecture rtl;

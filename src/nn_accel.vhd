-- ============================================================================
-- nn_accel.vhd
-- Fixed-point neural network accelerator for beat classification.
--
-- Architecture: time-multiplexed MAC array using Cyclone V DSP blocks.
-- Sequences through: Conv1D → ReLU → MaxPool → Conv1D → ReLU → MaxPool
--                    → Flatten → FC → ReLU → FC → argmax
--
-- Weights stored in BRAM (initialized from .mif files exported by Python).
-- All arithmetic is 8-bit or 16-bit fixed-point (Q-format).
--
-- Phase 5 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nn_accel is
    generic (
        G_INPUT_LEN   : natural := 180;  -- Beat window length
        G_NUM_CLASSES  : natural := 3;    -- N, S, V
        G_SAMPLE_BITS : natural := 16
    );
    port (
        clk          : in  std_logic;
        reset_n      : in  std_logic;
        -- Input: beat window (read interface to beat_segmenter)
        start        : in  std_logic;                      -- Pulse to begin inference
        rd_addr      : out std_logic_vector(7 downto 0);
        rd_data      : in  std_logic_vector(G_SAMPLE_BITS-1 downto 0);
        -- Output: classification result
        class_id     : out std_logic_vector(1 downto 0);   -- 0=N, 1=S, 2=V
        confidence   : out std_logic_vector(7 downto 0);   -- 0-255 scaled confidence
        result_valid : out std_logic;                      -- Pulse when classification is ready
        busy         : out std_logic
    );
end entity nn_accel;

architecture rtl of nn_accel is
begin
    -- TODO: Phase 5 implementation
    rd_addr      <= (others => '0');
    class_id     <= (others => '0');
    confidence   <= (others => '0');
    result_valid <= '0';
    busy         <= '0';
end architecture rtl;

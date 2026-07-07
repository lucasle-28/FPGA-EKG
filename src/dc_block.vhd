-- ============================================================================
-- dc_block.vhd
-- First-order IIR high-pass filter for baseline wander removal.
--
-- Removes DC offset and very low frequency drift (~0.5 Hz cutoff at 360 Hz).
-- Transfer function: H(z) = (1 - z^-1) / (1 - alpha * z^-1)
--
-- Difference equation:  y[n] = x[n] - x[n-1] + alpha * y[n-1]
--
-- Fixed-point: signed 16-bit (Q1.15) input/output, 32-bit accumulator.
-- alpha = 0.995 => 32604 in Q15 (round(0.995 * 32768)).
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

    -- alpha = 0.995 in Q15
    constant C_ALPHA : signed(15 downto 0) := to_signed(32604, 16);

    -- State registers
    signal x_prev : signed(15 downto 0) := (others => '0');  -- x[n-1]
    signal y_prev : signed(15 downto 0) := (others => '0');  -- y[n-1]

begin

    p_filter : process(clk, reset_n)
        variable x_curr   : signed(15 downto 0);
        variable diff     : signed(16 downto 0);  -- x[n] - x[n-1], 17-bit to avoid overflow
        variable alpha_y  : signed(31 downto 0);  -- alpha * y[n-1], 32-bit product
        variable sum      : signed(31 downto 0);  -- diff + alpha*y (aligned to Q30)
        variable y_out    : signed(15 downto 0);
    begin
        if reset_n = '0' then
            x_prev     <= (others => '0');
            y_prev     <= (others => '0');
            sample_out <= (others => '0');
            out_valid  <= '0';

        elsif rising_edge(clk) then
            out_valid <= '0';

            if sample_valid = '1' then
                x_curr := signed(sample_in);

                -- diff = x[n] - x[n-1]  (17-bit to prevent overflow)
                diff := resize(x_curr, 17) - resize(x_prev, 17);

                -- alpha_y = alpha * y[n-1]  (Q15 * Q15 = Q30, 32-bit)
                alpha_y := C_ALPHA * y_prev;

                -- sum = diff (in Q30) + alpha_y (in Q30)
                -- Shift diff left by 15 to align to Q30
                sum := shift_left(resize(diff, 32), 15) + alpha_y;

                -- Extract Q15 result: right-shift by 15 (truncate Q30 → Q15)
                y_out := sum(30 downto 15);

                -- Saturate on overflow (if bit 31 != bit 30, we overflowed)
                if sum(31) /= sum(30) then
                    if sum(31) = '1' then
                        y_out := to_signed(-32768, 16);  -- Negative clamp
                    else
                        y_out := to_signed(32767, 16);   -- Positive clamp
                    end if;
                end if;

                -- Update state
                x_prev <= x_curr;
                y_prev <= y_out;

                sample_out <= std_logic_vector(y_out);
                out_valid  <= '1';
            end if;
        end if;
    end process p_filter;

end architecture rtl;

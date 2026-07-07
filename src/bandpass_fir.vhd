-- ============================================================================
-- bandpass_fir.vhd
-- Symmetric FIR bandpass filter (5-15 Hz) to isolate QRS energy.
--
-- Used by the Pan-Tompkins QRS detector. Coefficients designed with
--   scipy.signal.firwin(33, [5, 15], pass_zero=False, fs=360, window='hamming')
-- and quantized to Q1.15.
--
-- 33-tap symmetric filter: h[k] = h[32-k] for k = 0..16.
-- Pre-adds symmetric sample pairs before multiply → 17 multiplies instead of 33.
--
-- Sequential MAC FSM: processes one tap pair per clock cycle.
-- At 50 MHz / 360 Hz = 138889 clocks per sample, 17 MAC cycles is plenty.
--
-- KNOWN LIMITATION: with 33 taps at fs=360 Hz, the Hamming-window transition
-- width (~18 Hz) is wider than the 5 Hz high-pass edge, so frequencies below
-- 5 Hz are NOT attenuated (DC gain ~1.0). This is acceptable in-system
-- because dc_block precedes this filter; effectively this stage acts as a
-- ~15-20 Hz low-pass. Use >= 128 taps if true 5 Hz rejection is needed.
-- See scripts/golden_model.py for the measured response.
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

    -- ========================================================================
    -- Constants
    -- ========================================================================
    constant C_HALF_TAPS : natural := (G_NUM_TAPS + 1) / 2;  -- 17 unique coefficients

    -- Coefficient array type (Q1.15)
    type coeff_array_t is array (0 to C_HALF_TAPS - 1) of signed(15 downto 0);

    -- Coefficients from scipy.signal.firwin(33, [5,15], pass_zero=False, fs=360)
    -- Quantized to Q1.15 (multiply by 32768 and round)
    constant C_COEFFS : coeff_array_t := (
        to_signed(  -200, 16),  -- h[0]  = h[32]
        to_signed(  -214, 16),  -- h[1]  = h[31]
        to_signed(  -255, 16),  -- h[2]  = h[30]
        to_signed(  -305, 16),  -- h[3]  = h[29]
        to_signed(  -335, 16),  -- h[4]  = h[28]
        to_signed(  -313, 16),  -- h[5]  = h[27]
        to_signed(  -209, 16),  -- h[6]  = h[26]
        to_signed(     0, 16),  -- h[7]  = h[25]
        to_signed(   325, 16),  -- h[8]  = h[24]
        to_signed(   762, 16),  -- h[9]  = h[23]
        to_signed(  1288, 16),  -- h[10] = h[22]
        to_signed(  1866, 16),  -- h[11] = h[21]
        to_signed(  2447, 16),  -- h[12] = h[20]
        to_signed(  2976, 16),  -- h[13] = h[19]
        to_signed(  3400, 16),  -- h[14] = h[18]
        to_signed(  3673, 16),  -- h[15] = h[17]
        to_signed(  3768, 16)   -- h[16] (center tap, no pair)
    );

    -- ========================================================================
    -- Delay line (shift register)
    -- ========================================================================
    type delay_line_t is array (0 to G_NUM_TAPS - 1) of signed(15 downto 0);
    signal delay_line : delay_line_t := (others => (others => '0'));

    -- ========================================================================
    -- FSM
    -- ========================================================================
    type state_t is (S_IDLE, S_LOAD, S_MAC, S_DONE);
    signal state    : state_t := S_IDLE;
    signal tap_idx  : natural range 0 to C_HALF_TAPS - 1 := 0;

    -- Accumulator: Q1.15 data × Q1.15 coeff = Q2.30 product
    -- Pre-added pair is 17-bit × 16-bit coeff = 33-bit product
    -- Sum of 17 products: need 33 + 5 = 38 bits, use 40 for safety
    signal acc : signed(39 downto 0) := (others => '0');

begin

    p_fir : process(clk, reset_n)
        variable pair_sum : signed(16 downto 0);  -- x[k] + x[N-1-k], 17-bit
        variable product  : signed(32 downto 0);  -- 17-bit × 16-bit = 33-bit
        variable result   : signed(39 downto 0);
    begin
        if reset_n = '0' then
            state      <= S_IDLE;
            tap_idx    <= 0;
            acc        <= (others => '0');
            delay_line <= (others => (others => '0'));
            sample_out <= (others => '0');
            out_valid  <= '0';

        elsif rising_edge(clk) then
            out_valid <= '0';

            case state is

                -- Wait for new sample
                when S_IDLE =>
                    if sample_valid = '1' then
                        -- Shift new sample into delay line
                        for i in G_NUM_TAPS - 1 downto 1 loop
                            delay_line(i) <= delay_line(i - 1);
                        end loop;
                        delay_line(0) <= signed(sample_in);

                        acc     <= (others => '0');
                        tap_idx <= 0;
                        state   <= S_MAC;
                    end if;

                -- Unused LOAD state kept for clarity
                when S_LOAD =>
                    state <= S_MAC;

                -- Sequential MAC: one tap per clock
                when S_MAC =>
                    if tap_idx < C_HALF_TAPS - 1 then
                        -- Symmetric pair: pre-add x[k] + x[N-1-k]
                        pair_sum := resize(delay_line(tap_idx), 17)
                                  + resize(delay_line(G_NUM_TAPS - 1 - tap_idx), 17);
                        product := pair_sum * C_COEFFS(tap_idx);
                        -- Product is 17-bit × 16-bit = 33-bit, in Q2.30
                        acc     <= acc + resize(product, 40);
                        tap_idx <= tap_idx + 1;
                    else
                        -- Center tap (no symmetric pair)
                        product := resize(delay_line(tap_idx), 17) * C_COEFFS(tap_idx);
                        acc     <= acc + resize(product, 40);
                        state   <= S_DONE;
                    end if;

                -- Extract result
                when S_DONE =>
                    -- acc is in Q2.30. Right-shift by 15 → Q2.15.
                    -- Take lower 16 bits with saturation.
                    result := shift_right(acc, 15);

                    if result > to_signed(32767, 40) then
                        sample_out <= std_logic_vector(to_signed(32767, 16));
                    elsif result < to_signed(-32768, 40) then
                        sample_out <= std_logic_vector(to_signed(-32768, 16));
                    else
                        sample_out <= std_logic_vector(result(15 downto 0));
                    end if;

                    out_valid <= '1';
                    state     <= S_IDLE;

            end case;
        end if;
    end process p_fir;

end architecture rtl;

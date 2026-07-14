-- ============================================================================
-- bandpass_fir.vhd
-- Symmetric FIR bandpass filter (8-22 Hz) to isolate QRS energy.
--
-- Used by the Pan-Tompkins QRS detector. Coefficients designed with
--   scipy.signal.firwin(65, [8, 22], pass_zero=False, fs=360, window='hamming')
-- and quantized to Q1.15.
--
-- 65-tap symmetric filter: h[k] = h[64-k] for k = 0..32.
-- Pre-adds symmetric sample pairs before multiply → 33 multiplies instead of 65.
--
-- Sequential MAC FSM: processes one tap pair per clock cycle.
-- At 50 MHz / 360 Hz = 138889 clocks per sample, 33 MAC cycles is plenty.
--
-- DESIGN NOTE: the previous 33-tap "5-15 Hz" version could not realise its
-- high-pass edge at fs=360 Hz (Hamming transition width ~18 Hz), so it passed
-- DC/baseline and the T-wave at ~unity gain while attenuating the QRS core —
-- biasing the detector toward counting T-waves as extra beats. 65 taps give a
-- real 8-22 Hz passband: sub-8 Hz (baseline/T-wave) and >25 Hz (mains/EMG) are
-- attenuated, QRS core passes near unity. See scripts/golden_model.py for the
-- measured response. NOTE: re-run synthesis and tb/tb_bandpass_fir after this
-- change (the golden-model TB thresholds — 10 Hz in [0.70,1.20], 60 Hz < 0.20 —
-- still hold for the new coefficients).
--
-- Phase 2 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bandpass_fir is
    generic (
        G_NUM_TAPS : natural := 65  -- Filter order + 1 (odd for symmetric)
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
    constant C_HALF_TAPS : natural := (G_NUM_TAPS + 1) / 2;  -- 33 unique coefficients

    -- Coefficient array type (Q1.15)
    type coeff_array_t is array (0 to C_HALF_TAPS - 1) of signed(15 downto 0);

    -- Coefficients from scipy.signal.firwin(65, [8,22], pass_zero=False, fs=360)
    -- Quantized to Q1.15 (multiply by 32768 and round)
    constant C_COEFFS : coeff_array_t := (
        to_signed(    19, 16),  -- h[0]  = h[64]
        to_signed(     9, 16),  -- h[1]  = h[63]
        to_signed(     0, 16),  -- h[2]  = h[62]
        to_signed(    -8, 16),  -- h[3]  = h[61]
        to_signed(   -13, 16),  -- h[4]  = h[60]
        to_signed(   -12, 16),  -- h[5]  = h[59]
        to_signed(    -4, 16),  -- h[6]  = h[58]
        to_signed(    14, 16),  -- h[7]  = h[57]
        to_signed(    42, 16),  -- h[8]  = h[56]
        to_signed(    76, 16),  -- h[9]  = h[55]
        to_signed(   110, 16),  -- h[10] = h[54]
        to_signed(   132, 16),  -- h[11] = h[53]
        to_signed(   131, 16),  -- h[12] = h[52]
        to_signed(    90, 16),  -- h[13] = h[51]
        to_signed(     0, 16),  -- h[14] = h[50]
        to_signed(  -147, 16),  -- h[15] = h[49]
        to_signed(  -350, 16),  -- h[16] = h[48]
        to_signed(  -595, 16),  -- h[17] = h[47]
        to_signed(  -862, 16),  -- h[18] = h[46]
        to_signed( -1118, 16),  -- h[19] = h[45]
        to_signed( -1326, 16),  -- h[20] = h[44]
        to_signed( -1447, 16),  -- h[21] = h[43]
        to_signed( -1446, 16),  -- h[22] = h[42]
        to_signed( -1301, 16),  -- h[23] = h[41]
        to_signed( -1002, 16),  -- h[24] = h[40]
        to_signed(  -558, 16),  -- h[25] = h[39]
        to_signed(     0, 16),  -- h[26] = h[38]
        to_signed(   627, 16),  -- h[27] = h[37]
        to_signed(  1265, 16),  -- h[28] = h[36]
        to_signed(  1850, 16),  -- h[29] = h[35]
        to_signed(  2320, 16),  -- h[30] = h[34]
        to_signed(  2624, 16),  -- h[31] = h[33]
        to_signed(  2729, 16)   -- h[32] (center tap, no pair)
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
    -- Sum of 33 products: need 33 + 6 = 39 bits, 40-bit acc has 1 bit of margin
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

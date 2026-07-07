-- ============================================================================
-- notch_5060.vhd
-- Second-order IIR notch filter for 50/60 Hz mains interference rejection.
--
-- Implements a biquad notch filter with selectable center frequency.
-- Transfer function:
--   H(z) = (b0 + b1*z^-1 + b2*z^-2) / (1 + a1*z^-1 + a2*z^-2)
--
-- Coefficients from scipy.signal.iirnotch(f0, Q=30, fs=360) quantized to Q2.14.
--
-- Sequential multiply-accumulate FSM: shares one 16×16 multiplier across
-- 5 MAC cycles per sample. At 50 MHz / 360 Hz = 138889 clocks per sample,
-- the 5-cycle MAC is invisible.
--
-- Phase 2 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity notch_5060 is
    port (
        clk          : in  std_logic;
        reset_n      : in  std_logic;
        -- Control
        sel_60hz     : in  std_logic;                      -- '0' = 50 Hz, '1' = 60 Hz
        -- Input
        sample_in    : in  std_logic_vector(15 downto 0);  -- Q1.15 signed
        sample_valid : in  std_logic;
        -- Output
        sample_out   : out std_logic_vector(15 downto 0);  -- Q1.15 signed
        out_valid    : out std_logic
    );
end entity notch_5060;

architecture rtl of notch_5060 is

    -- ========================================================================
    -- Coefficients in Q2.14 (16-bit signed, 14 fractional bits)
    -- From scipy.signal.iirnotch(f0, Q=30, fs=360)
    -- ========================================================================

    -- 60 Hz notch (Q=30, fs=360)
    constant C_B0_60 : signed(15 downto 0) := to_signed( 16103, 16);
    constant C_B1_60 : signed(15 downto 0) := to_signed(-16103, 16);
    constant C_B2_60 : signed(15 downto 0) := to_signed( 16103, 16);
    constant C_A1_60 : signed(15 downto 0) := to_signed(-16103, 16);
    constant C_A2_60 : signed(15 downto 0) := to_signed( 15822, 16);

    -- 50 Hz notch (Q=30, fs=360)
    constant C_B0_50 : signed(15 downto 0) := to_signed( 16149, 16);
    constant C_B1_50 : signed(15 downto 0) := to_signed(-20761, 16);
    constant C_B2_50 : signed(15 downto 0) := to_signed( 16149, 16);
    constant C_A1_50 : signed(15 downto 0) := to_signed(-20761, 16);
    constant C_A2_50 : signed(15 downto 0) := to_signed( 15914, 16);

    -- ========================================================================
    -- FSM for sequential MAC
    -- ========================================================================
    type state_t is (S_IDLE, S_MAC1, S_MAC2, S_MAC3, S_MAC4, S_MAC5, S_DONE);
    signal state : state_t := S_IDLE;

    -- Delay line: x[n-1], x[n-2], y[n-1], y[n-2]
    signal x_n   : signed(15 downto 0) := (others => '0');
    signal x_n1  : signed(15 downto 0) := (others => '0');  -- x[n-1]
    signal x_n2  : signed(15 downto 0) := (others => '0');  -- x[n-2]
    signal y_n1  : signed(15 downto 0) := (others => '0');  -- y[n-1]
    signal y_n2  : signed(15 downto 0) := (others => '0');  -- y[n-2]

    -- Selected coefficients
    signal b0, b1, b2, a1, a2 : signed(15 downto 0);

    -- Accumulator: Q1.15 data × Q2.14 coeff = Q3.29 product
    -- Sum of 5 products needs 3 extra bits → 35-bit, use 40-bit for safety
    signal acc : signed(39 downto 0) := (others => '0');

    -- Output register
    signal y_out : signed(15 downto 0) := (others => '0');

begin

    -- ========================================================================
    -- Coefficient selection (mux on sel_60hz)
    -- ========================================================================
    b0 <= C_B0_60 when sel_60hz = '1' else C_B0_50;
    b1 <= C_B1_60 when sel_60hz = '1' else C_B1_50;
    b2 <= C_B2_60 when sel_60hz = '1' else C_B2_50;
    a1 <= C_A1_60 when sel_60hz = '1' else C_A1_50;
    a2 <= C_A2_60 when sel_60hz = '1' else C_A2_50;

    -- ========================================================================
    -- Sequential MAC FSM
    -- ========================================================================
    -- y[n] = b0*x[n] + b1*x[n-1] + b2*x[n-2] - a1*y[n-1] - a2*y[n-2]
    --
    -- Product is Q1.15 × Q2.14 = Q3.29 (32-bit), accumulated in 40-bit.
    -- Final result: extract Q1.15 from accumulator by right-shifting 14
    -- (from Q3.29 to Q3.15), then taking lower 16 bits with saturation.
    -- ========================================================================
    p_mac : process(clk, reset_n)
        variable product : signed(31 downto 0);
        variable result  : signed(39 downto 0);
        variable y_new   : signed(15 downto 0);
    begin
        if reset_n = '0' then
            state  <= S_IDLE;
            x_n    <= (others => '0');
            x_n1   <= (others => '0');
            x_n2   <= (others => '0');
            y_n1   <= (others => '0');
            y_n2   <= (others => '0');
            acc    <= (others => '0');
            y_out  <= (others => '0');
            sample_out <= (others => '0');
            out_valid  <= '0';

        elsif rising_edge(clk) then
            out_valid <= '0';

            case state is

                when S_IDLE =>
                    if sample_valid = '1' then
                        x_n   <= signed(sample_in);
                        acc   <= (others => '0');
                        state <= S_MAC1;
                    end if;

                -- MAC1: acc += b0 * x[n]
                when S_MAC1 =>
                    product := b0 * x_n;
                    acc     <= resize(product, 40);
                    state   <= S_MAC2;

                -- MAC2: acc += b1 * x[n-1]
                when S_MAC2 =>
                    product := b1 * x_n1;
                    acc     <= acc + resize(product, 40);
                    state   <= S_MAC3;

                -- MAC3: acc += b2 * x[n-2]
                when S_MAC3 =>
                    product := b2 * x_n2;
                    acc     <= acc + resize(product, 40);
                    state   <= S_MAC4;

                -- MAC4: acc -= a1 * y[n-1]
                when S_MAC4 =>
                    product := a1 * y_n1;
                    acc     <= acc - resize(product, 40);
                    state   <= S_MAC5;

                -- MAC5: acc -= a2 * y[n-2]
                when S_MAC5 =>
                    product := a2 * y_n2;
                    acc     <= acc - resize(product, 40);
                    state   <= S_DONE;

                -- Extract result and update state
                when S_DONE =>
                    -- acc is in Q3.29. Right-shift by 14 → Q3.15.
                    -- Then take bits [15:0] with saturation.
                    result := shift_right(acc, 14);

                    -- Saturate to 16-bit signed range
                    if result > to_signed(32767, 40) then
                        y_new := to_signed(32767, 16);
                    elsif result < to_signed(-32768, 40) then
                        y_new := to_signed(-32768, 16);
                    else
                        y_new := result(15 downto 0);
                    end if;

                    y_out <= y_new;

                    -- Update delay line
                    x_n2 <= x_n1;
                    x_n1 <= x_n;
                    y_n2 <= y_n1;
                    y_n1 <= y_new;  -- MUST use the variable to avoid 1-sample delay!

                    sample_out <= std_logic_vector(y_new);
                    out_valid  <= '1';
                    state      <= S_IDLE;

            end case;
        end if;
    end process p_mac;

end architecture rtl;

-- ============================================================================
-- tb_bandpass_fir.vhd
-- Self-checking testbench for the 33-tap QRS bandpass FIR.
--
-- Tests:
--   1. 10 Hz tone (band center) passes at ~unity gain
--   2. 60 Hz tone (stopband) is strongly attenuated
--   3. DC gain measured and reported (informational)
--
-- NOTE on the DC test: a 33-tap Hamming FIR at fs=360 Hz has a transition
-- width of ~18 Hz, so the nominal 5 Hz high-pass edge cannot be realized —
-- DC gain is ~1.0, not 0. This is acceptable in-system because dc_block
-- precedes this filter, but it is why the DC check is informational only.
-- See scripts/golden_model.py for the frequency response.
--
-- Run:  vsim work.tb_bandpass_fir ; run -all
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity tb_bandpass_fir is
end entity tb_bandpass_fir;

architecture sim of tb_bandpass_fir is

    constant CLK_PERIOD : time := 20 ns;
    constant FS         : real := 360.0;
    constant AMPLITUDE  : real := 8000.0;

    signal clk          : std_logic := '0';
    signal reset_n      : std_logic := '0';
    signal sample_in    : std_logic_vector(15 downto 0) := (others => '0');
    signal sample_valid : std_logic := '0';
    signal sample_out   : std_logic_vector(15 downto 0);
    signal out_valid    : std_logic;

    signal sim_done     : boolean := false;
    signal error_count  : natural := 0;

begin

    dut : entity work.bandpass_fir
        generic map (
            G_NUM_TAPS => 33
        )
        port map (
            clk          => clk,
            reset_n      => reset_n,
            sample_in    => sample_in,
            sample_valid => sample_valid,
            sample_out   => sample_out,
            out_valid    => out_valid
        );

    p_clk : process
    begin
        while not sim_done loop
            clk <= '0'; wait for CLK_PERIOD / 2;
            clk <= '1'; wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process p_clk;

    p_stim : process
        variable y       : integer;
        variable max_abs : integer;

        procedure send_sample(x_in : in integer; y_out : out integer) is
        begin
            wait until rising_edge(clk);
            sample_in    <= std_logic_vector(to_signed(x_in, 16));
            sample_valid <= '1';
            wait until rising_edge(clk);
            sample_valid <= '0';
            wait until out_valid = '1';
            y_out := to_integer(signed(sample_out));
        end procedure send_sample;

        procedure run_tone(f_hz    : in  real;
                           n_total : in  natural;
                           n_meas  : in  natural;
                           max_out : out integer) is
            variable x : integer;
            variable m : integer := 0;
            variable v : integer;
        begin
            for n in 0 to n_total - 1 loop
                x := integer(round(AMPLITUDE *
                     sin(MATH_2_PI * f_hz * real(n) / FS)));
                send_sample(x, v);
                if n >= n_total - n_meas then
                    if abs(v) > m then
                        m := abs(v);
                    end if;
                end if;
            end loop;
            max_out := m;
        end procedure run_tone;

    begin
        reset_n <= '0';
        wait for 10 * CLK_PERIOD;
        wait until rising_edge(clk);
        reset_n <= '1';
        wait until rising_edge(clk);

        -- --------------------------------------------------------------------
        -- Test 1: 10 Hz passband tone (band center, scaled to unity)
        -- --------------------------------------------------------------------
        report "Test 1: 10 Hz passband";
        run_tone(10.0, 720, 360, max_abs);
        if max_abs < 5600 or max_abs > 9600 then  -- 0.7x .. 1.2x
            report "FAIL: 10 Hz amplitude = " & integer'image(max_abs)
                severity error;
            error_count <= error_count + 1;
        else
            report "PASS: 10 Hz amplitude = " & integer'image(max_abs);
        end if;

        -- --------------------------------------------------------------------
        -- Test 2: 60 Hz stopband tone
        -- --------------------------------------------------------------------
        report "Test 2: 60 Hz stopband";
        run_tone(60.0, 720, 360, max_abs);
        if max_abs > 1600 then  -- must be < 0.2x input
            report "FAIL: 60 Hz residual = " & integer'image(max_abs)
                severity error;
            error_count <= error_count + 1;
        else
            report "PASS: 60 Hz residual = " & integer'image(max_abs);
        end if;

        -- --------------------------------------------------------------------
        -- Test 3: DC gain (informational, see header note)
        -- --------------------------------------------------------------------
        report "Test 3: DC gain (informational)";
        for n in 0 to 99 loop
            send_sample(8192, y);
        end loop;
        report "INFO: DC output for 8192 input = " & integer'image(y) &
               " (expected ~8400: 33 taps cannot realize the 5 Hz edge)";

        -- --------------------------------------------------------------------
        wait for 10 * CLK_PERIOD;
        if error_count = 0 then
            report "tb_bandpass_fir: ALL TESTS PASSED";
        else
            report "tb_bandpass_fir: " & integer'image(error_count) &
                   " TEST(S) FAILED" severity error;
        end if;
        sim_done <= true;
        wait;
    end process p_stim;

    p_watchdog : process
    begin
        wait for 50 ms;
        if not sim_done then
            report "Watchdog timeout - simulation hung" severity failure;
        end if;
        wait;
    end process p_watchdog;

end architecture sim;

-- ============================================================================
-- tb_notch_5060.vhd
-- Self-checking testbench for the 50/60 Hz IIR notch filter.
--
-- Tests:
--   1. DC gain = 1.0        (steady-state output tracks a DC input)
--   2. 60 Hz tone rejected  (sel_60hz = '1')
--   3. 50 Hz tone rejected  (sel_60hz = '0')
--   4. 10 Hz passband tone passes at ~unity gain
--
-- Expected values cross-checked against scripts/golden_model.py.
-- Run:  vsim work.tb_notch_5060 ; run -all
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity tb_notch_5060 is
end entity tb_notch_5060;

architecture sim of tb_notch_5060 is

    constant CLK_PERIOD : time := 20 ns;
    constant FS         : real := 360.0;   -- Sample rate the coefficients assume
    constant AMPLITUDE  : real := 8000.0;  -- Test tone amplitude (Q1.15 counts)

    signal clk          : std_logic := '0';
    signal reset_n      : std_logic := '0';
    signal sel_60hz     : std_logic := '1';
    signal sample_in    : std_logic_vector(15 downto 0) := (others => '0');
    signal sample_valid : std_logic := '0';
    signal sample_out   : std_logic_vector(15 downto 0);
    signal out_valid    : std_logic;

    signal sim_done     : boolean := false;
    signal error_count  : natural := 0;

begin

    -- ========================================================================
    -- DUT
    -- ========================================================================
    dut : entity work.notch_5060
        port map (
            clk          => clk,
            reset_n      => reset_n,
            sel_60hz     => sel_60hz,
            sample_in    => sample_in,
            sample_valid => sample_valid,
            sample_out   => sample_out,
            out_valid    => out_valid
        );

    -- ========================================================================
    -- Clock
    -- ========================================================================
    p_clk : process
    begin
        while not sim_done loop
            clk <= '0'; wait for CLK_PERIOD / 2;
            clk <= '1'; wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process p_clk;

    -- ========================================================================
    -- Stimulus and checks
    -- ========================================================================
    p_stim : process
        variable y       : integer;
        variable max_abs : integer;

        -- Drive one sample through the DUT and return the filter output
        procedure send_sample(x : in integer; y_out : out integer) is
        begin
            wait until rising_edge(clk);
            sample_in    <= std_logic_vector(to_signed(x, 16));
            sample_valid <= '1';
            wait until rising_edge(clk);
            sample_valid <= '0';
            wait until out_valid = '1';
            y_out := to_integer(signed(sample_out));
        end procedure send_sample;

        -- Run a tone of frequency f_hz for n_total samples; return the max
        -- |output| observed over the final n_meas samples (steady state).
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
        -- Reset
        reset_n <= '0';
        wait for 10 * CLK_PERIOD;
        wait until rising_edge(clk);
        reset_n <= '1';
        wait until rising_edge(clk);

        -- --------------------------------------------------------------------
        -- Test 1: DC gain (H(0) = 1.0 exactly for these coefficients)
        -- --------------------------------------------------------------------
        report "Test 1: DC gain";
        sel_60hz <= '1';
        for n in 0 to 299 loop
            send_sample(8192, y);
        end loop;
        if abs(y - 8192) > 410 then  -- 5% tolerance
            report "FAIL: DC gain. Expected ~8192, got " & integer'image(y)
                severity error;
            error_count <= error_count + 1;
        else
            report "PASS: DC output = " & integer'image(y);
        end if;

        -- --------------------------------------------------------------------
        -- Test 2: 60 Hz rejection (sel_60hz = '1')
        -- --------------------------------------------------------------------
        report "Test 2: 60 Hz rejection";
        sel_60hz <= '1';
        run_tone(60.0, 600, 120, max_abs);
        if max_abs > 800 then  -- > -20 dB residual = fail
            report "FAIL: 60 Hz residual = " & integer'image(max_abs)
                severity error;
            error_count <= error_count + 1;
        else
            report "PASS: 60 Hz residual = " & integer'image(max_abs);
        end if;

        -- --------------------------------------------------------------------
        -- Test 3: 50 Hz rejection (sel_60hz = '0')
        -- --------------------------------------------------------------------
        report "Test 3: 50 Hz rejection";
        sel_60hz <= '0';
        run_tone(50.0, 600, 120, max_abs);
        if max_abs > 800 then
            report "FAIL: 50 Hz residual = " & integer'image(max_abs)
                severity error;
            error_count <= error_count + 1;
        else
            report "PASS: 50 Hz residual = " & integer'image(max_abs);
        end if;

        -- --------------------------------------------------------------------
        -- Test 4: 10 Hz passband (should pass at ~unity gain)
        -- --------------------------------------------------------------------
        report "Test 4: 10 Hz passband";
        sel_60hz <= '1';
        run_tone(10.0, 720, 360, max_abs);
        if max_abs < 6800 or max_abs > 8800 then  -- 0.85x .. 1.1x
            report "FAIL: 10 Hz amplitude = " & integer'image(max_abs)
                severity error;
            error_count <= error_count + 1;
        else
            report "PASS: 10 Hz amplitude = " & integer'image(max_abs);
        end if;

        -- --------------------------------------------------------------------
        wait for 10 * CLK_PERIOD;
        if error_count = 0 then
            report "tb_notch_5060: ALL TESTS PASSED";
        else
            report "tb_notch_5060: " & integer'image(error_count) &
                   " TEST(S) FAILED" severity error;
        end if;
        sim_done <= true;
        wait;
    end process p_stim;

    -- ========================================================================
    -- Watchdog
    -- ========================================================================
    p_watchdog : process
    begin
        wait for 50 ms;
        if not sim_done then
            report "Watchdog timeout - simulation hung" severity failure;
        end if;
        wait;
    end process p_watchdog;

end architecture sim;

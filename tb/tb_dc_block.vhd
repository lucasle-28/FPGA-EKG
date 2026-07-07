-- ============================================================================
-- tb_dc_block.vhd
-- Self-checking testbench for the DC-blocking high-pass filter.
--
-- Tests:
--   1. Step response: first output equals the step (y[0] = x[0]),
--      then decays toward zero (DC removed)
--   2. 20 Hz tone passes at ~unity gain (well above the ~0.3 Hz cutoff)
--
-- Expected values cross-checked against scripts/golden_model.py.
-- Run:  vsim work.tb_dc_block ; run -all
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity tb_dc_block is
end entity tb_dc_block;

architecture sim of tb_dc_block is

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

    dut : entity work.dc_block
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
        variable y_first : integer;
        variable max_abs : integer;
        variable x       : integer;

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

    begin
        reset_n <= '0';
        wait for 10 * CLK_PERIOD;
        wait until rising_edge(clk);
        reset_n <= '1';
        wait until rising_edge(clk);

        -- --------------------------------------------------------------------
        -- Test 1: Step response
        -- --------------------------------------------------------------------
        report "Test 1: step response / DC rejection";
        send_sample(8192, y_first);
        -- First output: y[0] = x[0] - 0 + alpha*0 = 8192
        if abs(y_first - 8192) > 16 then
            report "FAIL: first step output = " & integer'image(y_first) &
                   " (expected ~8192)" severity error;
            error_count <= error_count + 1;
        else
            report "PASS: first step output = " & integer'image(y_first);
        end if;

        -- Hold the DC input; output must decay toward zero
        -- (alpha = 0.995 -> ~5.5e-4 of initial value after 1500 samples)
        for n in 1 to 1500 loop
            send_sample(8192, y);
        end loop;
        if abs(y) > 164 then  -- 2% of the step
            report "FAIL: DC residual after 1500 samples = " &
                   integer'image(y) severity error;
            error_count <= error_count + 1;
        else
            report "PASS: DC residual = " & integer'image(y);
        end if;

        -- --------------------------------------------------------------------
        -- Test 2: 20 Hz passband tone (gain should be ~0.996)
        -- --------------------------------------------------------------------
        report "Test 2: 20 Hz passband";
        max_abs := 0;
        for n in 0 to 719 loop
            x := integer(round(AMPLITUDE * sin(MATH_2_PI * 20.0 * real(n) / FS)));
            send_sample(x, y);
            if n >= 360 and abs(y) > max_abs then
                max_abs := abs(y);
            end if;
        end loop;
        -- Peak *sampled* sine value is sin(80 deg) ~ 0.985 * 8000 = 7878
        if max_abs < 7200 or max_abs > 8800 then
            report "FAIL: 20 Hz amplitude = " & integer'image(max_abs)
                severity error;
            error_count <= error_count + 1;
        else
            report "PASS: 20 Hz amplitude = " & integer'image(max_abs);
        end if;

        -- --------------------------------------------------------------------
        wait for 10 * CLK_PERIOD;
        if error_count = 0 then
            report "tb_dc_block: ALL TESTS PASSED";
        else
            report "tb_dc_block: " & integer'image(error_count) &
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

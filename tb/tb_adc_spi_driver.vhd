-- ============================================================================
-- tb_adc_spi_driver.vhd
-- Testbench for the LTC2308 ADC SPI driver module.
--
-- Simulates the LTC2308 behavior: after CONVST pulse, drives a known 12-bit
-- test pattern on DOUT synchronized to SCLK, then verifies that sample_data
-- matches the expected value.
--
-- Test 1: CH0, pattern 0xA5C
-- Test 2: CH3, pattern 0x123
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_adc_spi_driver is
    -- Testbench has no ports
end entity tb_adc_spi_driver;

architecture sim of tb_adc_spi_driver is

    -- Clock period: 20 ns = 50 MHz
    constant C_CLK_PERIOD : time := 20 ns;

    -- DUT signals
    signal clk          : std_logic := '0';
    signal reset_n      : std_logic := '0';
    signal channel      : std_logic_vector(2 downto 0) := "000";
    signal start        : std_logic := '0';
    signal adc_convst   : std_logic;
    signal adc_din      : std_logic;
    signal adc_dout     : std_logic := '0';
    signal adc_sclk     : std_logic;
    signal sample_data  : std_logic_vector(11 downto 0);
    signal sample_valid : std_logic;
    signal busy         : std_logic;

    -- Simulation control
    signal sim_done     : boolean := false;

    -- Test patterns
    constant C_PATTERN_1 : std_logic_vector(11 downto 0) := x"A5C";
    constant C_PATTERN_2 : std_logic_vector(11 downto 0) := x"123";

begin

    -- ========================================================================
    -- Clock generation
    -- ========================================================================
    clk <= not clk after C_CLK_PERIOD / 2 when not sim_done else '0';

    -- ========================================================================
    -- DUT instantiation
    -- ========================================================================
    u_dut : entity work.adc_spi_driver
        port map (
            clk          => clk,
            reset_n      => reset_n,
            channel      => channel,
            start        => start,
            adc_convst   => adc_convst,
            adc_din      => adc_din,
            adc_dout     => adc_dout,
            adc_sclk     => adc_sclk,
            sample_data  => sample_data,
            sample_valid => sample_valid,
            busy         => busy
        );

    -- ========================================================================
    -- LTC2308 behavioral model
    --
    -- After CONVST rises then falls, the MSB of the current test pattern
    -- is driven on adc_dout. Each subsequent falling edge of SCLK advances
    -- to the next bit (MSB-first).
    -- ========================================================================
    p_adc_model : process
        -- Shared variable set by the stimulus process before each conversion
        variable v_pattern : std_logic_vector(11 downto 0) := C_PATTERN_1;
    begin
        adc_dout <= '0';

        -- ---- Test 1: pattern 0xA5C ----
        v_pattern := C_PATTERN_1;

        -- Wait for CONVST pulse
        wait until rising_edge(adc_convst);
        wait until falling_edge(adc_convst);

        -- MSB is available on DOUT after conversion completes
        -- (the driver waits ~1.6 us before starting SCLK)
        adc_dout <= v_pattern(11);

        -- Drive remaining bits on each falling edge of SCLK
        for i in 1 to 11 loop
            wait until falling_edge(adc_sclk);
            adc_dout <= v_pattern(11 - i);
        end loop;

        -- Wait for this conversion to finish
        wait until busy = '0';
        wait for 200 ns;

        -- ---- Test 2: pattern 0x123 ----
        v_pattern := C_PATTERN_2;

        wait until rising_edge(adc_convst);
        wait until falling_edge(adc_convst);

        adc_dout <= v_pattern(11);

        for i in 1 to 11 loop
            wait until falling_edge(adc_sclk);
            adc_dout <= v_pattern(11 - i);
        end loop;

        wait until busy = '0';
        wait for 200 ns;

        -- Model done
        wait;
    end process p_adc_model;

    -- ========================================================================
    -- Stimulus and checking
    -- ========================================================================
    p_stim : process
        variable v_pass_count : natural := 0;
        variable v_fail_count : natural := 0;
    begin
        -- --------------------------------------------------------------------
        -- Reset
        -- --------------------------------------------------------------------
        reset_n <= '0';
        start   <= '0';
        channel <= "000";
        wait for 100 ns;
        reset_n <= '1';
        wait for 100 ns;

        -- Verify initial state
        assert busy = '0'
            report "FAIL: busy should be '0' after reset"
            severity error;
        assert sample_valid = '0'
            report "FAIL: sample_valid should be '0' after reset"
            severity error;

        -- --------------------------------------------------------------------
        -- Test 1: CH0, expect 0xA5C
        -- --------------------------------------------------------------------
        report "TEST 1: Starting conversion on CH0, expecting 0xA5C" severity note;

        wait until rising_edge(clk);
        channel <= "000";
        start   <= '1';
        wait until rising_edge(clk);
        start   <= '0';

        -- Verify busy goes high
        wait until rising_edge(clk);
        assert busy = '1'
            report "FAIL: busy should be '1' after start"
            severity error;

        -- Wait for result
        wait until sample_valid = '1';
        wait until rising_edge(clk);

        if sample_data = C_PATTERN_1 then
            report "PASS: Test 1 - sample_data = 0xA5C" severity note;
            v_pass_count := v_pass_count + 1;
        else
            report "FAIL: Test 1 - expected 0xA5C, got 0x" &
                   integer'image(to_integer(unsigned(sample_data)))
                severity error;
            v_fail_count := v_fail_count + 1;
        end if;

        -- Verify busy cleared
        assert busy = '0'
            report "FAIL: busy should be '0' after sample_valid"
            severity error;

        wait for 500 ns;

        -- --------------------------------------------------------------------
        -- Test 2: CH3, expect 0x123
        -- --------------------------------------------------------------------
        report "TEST 2: Starting conversion on CH3, expecting 0x123" severity note;

        wait until rising_edge(clk);
        channel <= "011";
        start   <= '1';
        wait until rising_edge(clk);
        start   <= '0';

        wait until sample_valid = '1';
        wait until rising_edge(clk);

        if sample_data = C_PATTERN_2 then
            report "PASS: Test 2 - sample_data = 0x123" severity note;
            v_pass_count := v_pass_count + 1;
        else
            report "FAIL: Test 2 - expected 0x123, got 0x" &
                   integer'image(to_integer(unsigned(sample_data)))
                severity error;
            v_fail_count := v_fail_count + 1;
        end if;

        -- --------------------------------------------------------------------
        -- Summary
        -- --------------------------------------------------------------------
        report "============================================" severity note;
        report "  Test complete: " &
               integer'image(v_pass_count) & " passed, " &
               integer'image(v_fail_count) & " failed."
            severity note;
        report "============================================" severity note;

        wait for 200 ns;
        sim_done <= true;
        wait;
    end process p_stim;

end architecture sim;

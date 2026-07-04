-- ============================================================================
-- adc_spi_driver.vhd
-- SPI master controller for the LTC2308 12-bit SAR ADC on the DE1-SoC Rev F.
--
-- Drives the LTC2308 SPI bus: pulses CONVST to start a conversion, waits
-- for the internal SAR to finish, then clocks out 12 result bits on DOUT
-- while shifting in a 6-bit config word on DIN for the next conversion.

-- Phase 1
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_spi_driver is
    port (
        clk         : in  std_logic;                      -- 50MHz clock
        reset_n     : in  std_logic;                      -- Active-low reset
        -- control pins
        channel     : in  std_logic_vector(2 downto 0);   -- ADC channel select (0-7)
        start       : in  std_logic;                      -- init pulse

        -- SPI interface (to LTC2308 pins)
        adc_convst  : out std_logic;                      -- Conversion start (active-high pulse)
        adc_din     : out std_logic;                      -- Config data to ADC
        adc_dout    : in  std_logic;                      -- ADC result
        adc_sclk    : out std_logic;                      -- 12.5 MHz SPI clock

        -- Output
        sample_data : out std_logic_vector(11 downto 0);  -- 12-bit conversion result
        sample_valid: out std_logic;                      -- Pulses high for one clock when data is ready
        busy        : out std_logic                       -- High while a conversion is in progress
    );
end entity adc_spi_driver;

architecture rtl of adc_spi_driver is

    -- ========================================================================
    -- FSM
    -- ========================================================================
    type t_state is (
        S_IDLE,     -- Waiting for start pulse
        S_CONVST,   -- CONVST high pulse (triggers ADC conversion)
        S_WAIT,     -- Wait for internal conversion to complete via latch
        S_SHIFT,    -- 12 SCLK cycles: shift config out, shift result in
        S_DONE      -- Latch result, pulse sample_valid
    );
    signal state : t_state := S_IDLE; --S_IDLe is init state

    -- ========================================================================
    -- Timing constants (all counts at 50 MHz = 20 ns per clock)
    -- ========================================================================
    -- CONVST pulse width: 4 clocks = 80 ns (min required: ~20 ns)
    constant C_CONVST_CLKS : natural := 3;  -- count 0 to 3 = 4 clocks

    -- Conversion wait: 80 clocks = 1.6 us (max LTC2308 tCONV ~1.6 us)
    constant C_WAIT_CLKS   : natural := 79; -- count 0 to 79 = 80 clocks

    -- ========================================================================
    -- Counters
    -- ========================================================================
    signal conv_cnt : natural range 0 to C_CONVST_CLKS := 0;
    signal wait_cnt : natural range 0 to C_WAIT_CLKS   := 0;
    signal clk_cnt  : natural range 0 to 3             := 0;  -- SCLK ÷4
    signal bit_cnt  : natural range 0 to 11            := 0;  -- 12 SCLK cycles

    -- ========================================================================
    -- Shift registers
    -- ========================================================================
    -- TX: 6-bit config word shifted out MSB-first on DIN
    signal tx_reg : std_logic_vector(5 downto 0) := (others => '0');

    -- RX: 12-bit result shifted in MSB-first from DOUT
    signal rx_reg : std_logic_vector(11 downto 0) := (others => '0');

    -- ========================================================================
    -- Internal SCLK (active only during S_SHIFT)
    -- ========================================================================
    signal sclk_int : std_logic := '0';

begin

    -- Drive SCLK output from internal register
    adc_sclk <= sclk_int;

    -- ========================================================================
    -- Main FSM process (single clocked process)
    -- ========================================================================
    p_fsm : process(clk, reset_n)
    begin
        if reset_n = '0' then
            state        <= S_IDLE;
            adc_convst   <= '0';
            adc_din      <= '0';
            sclk_int     <= '0';
            sample_data  <= (others => '0');
            sample_valid <= '0';
            busy         <= '0';
            conv_cnt     <= 0;
            wait_cnt     <= 0;
            clk_cnt      <= 0;
            bit_cnt      <= 0;
            tx_reg       <= (others => '0');
            rx_reg       <= (others => '0');

        elsif rising_edge(clk) then
            -- Default: clear single-cycle strobes
            sample_valid <= '0';

            case state is

                -- ============================================================
                -- S_IDLE: wait for external start pulse
                -- ============================================================
                when S_IDLE =>
                    sclk_int   <= '0';
                    adc_convst <= '0';
                    adc_din    <= '0';
                    busy       <= '0';

                    if start = '1' then
                        -- Build 6-bit config word:
                        --   S/D=1 (single-ended)
                        --   O/S=channel(2), S1=channel(1), S0=channel(0)
                        --   UNI=1 (unipolar 0–5V)
                        --   SLP=0 (no sleep)
                        tx_reg   <= '1' & channel & "10";
                        conv_cnt <= 0;
                        busy     <= '1';
                        state    <= S_CONVST;
                    end if;

                -- ============================================================
                -- S_CONVST: pulse CONVST high for 4 clocks (80 ns)
                -- ============================================================
                when S_CONVST =>
                    adc_convst <= '1';

                    if conv_cnt = C_CONVST_CLKS then
                        wait_cnt <= 0;
                        state    <= S_WAIT;
                    else
                        conv_cnt <= conv_cnt + 1;
                    end if;

                -- ============================================================
                -- S_WAIT: CONVST low, wait for SAR conversion (~1.6 us)
                -- ============================================================
                when S_WAIT =>
                    adc_convst <= '0';

                    if wait_cnt = C_WAIT_CLKS then
                        -- Transition to shift phase
                        clk_cnt <= 0;
                        bit_cnt <= 0;
                        -- Pre-load DIN with MSB of config word
                        adc_din <= tx_reg(5);
                        state   <= S_SHIFT;
                    else
                        wait_cnt <= wait_cnt + 1;
                    end if;

                -- ============================================================
                -- S_SHIFT: 12 SCLK cycles (48 system clocks)
                --
                -- clk_cnt divides system clock by 4 for SCLK:
                --   0: SCLK low  — set up DIN with next config bit
                --   1: SCLK high — rising edge; ADC latches DIN, FPGA samples DOUT
                --   2: SCLK high — hold
                --   3: SCLK low  — falling edge; ADC drives next DOUT; shift TX reg
                -- ============================================================
                when S_SHIFT =>
                    case clk_cnt is
                        when 0 =>
                            -- SCLK low phase: set up DIN before rising edge
                            sclk_int <= '0';
                            adc_din  <= tx_reg(5);
                            clk_cnt  <= 1;

                        when 1 =>
                            -- Rising edge: ADC latches DIN; FPGA samples DOUT
                            sclk_int <= '1';
                            rx_reg   <= rx_reg(10 downto 0) & adc_dout;
                            clk_cnt  <= 2;

                        when 2 =>
                            -- SCLK high hold
                            clk_cnt <= 3;

                        when 3 =>
                            -- Falling edge: shift TX register for next DIN bit
                            sclk_int <= '0';
                            tx_reg   <= tx_reg(4 downto 0) & '0';

                            if bit_cnt = 11 then
                                -- All 12 bits received
                                state <= S_DONE;
                            else
                                bit_cnt <= bit_cnt + 1;
                                clk_cnt <= 0;
                            end if;

                        when others =>
                            clk_cnt <= 0;
                    end case;

                -- ============================================================
                -- S_DONE: latch result, pulse sample_valid, return to idle
                -- ============================================================
                when S_DONE =>
                    sample_data  <= rx_reg;
                    sample_valid <= '1';
                    busy         <= '0';
                    sclk_int     <= '0';
                    adc_din      <= '0';
                    state        <= S_IDLE;

            end case;
        end if;
    end process p_fsm;

end architecture rtl;

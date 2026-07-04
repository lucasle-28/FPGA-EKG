-- ============================================================================
-- test module for viewing raw analog signal
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity view_sig is
    port (
        clk         : in  std_logic;                      -- System clock (50 MHz)
        -- SPI interface (directly to LTC2308 pins)
        adc_cs_n    : out std_logic;
        adc_din     : out std_logic;
        adc_dout    : in  std_logic;
        adc_sclk    : out std_logic;
        -- Output
        sample_data : out std_logic_vector(11 downto 0);  -- 12-bit conversion result
        sample_valid: out std_logic;                      -- Pulses high for one clock when data is ready
        busy        : out std_logic                       -- High while a conversion is in progress
    );
end entity view_sig;

architecture rtl of view_sig is
begin
    -- TODO: Phase 1 implementation
    adc_cs_n     <= '1';
    adc_din      <= '0';
    adc_sclk     <= '0';
    sample_data  <= (others => '0');
    sample_valid <= '0';
    busy         <= '0';
end architecture rtl;

-- ============================================================================
-- adc_spi_driver.vhd
-- SPI master controller for the LTC2308 12-bit SAR ADC on the DE1-SoC.
--
-- Drives the LTC2308 SPI bus, selects the analog channel, and outputs
-- a 12-bit sample with a valid strobe at the requested sample rate.
--
-- Phase 1 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_spi_driver is
    port (
        clk         : in  std_logic;                      -- System clock (50 MHz)
        reset_n     : in  std_logic;                      -- Active-low reset
        -- Control
        channel     : in  std_logic_vector(2 downto 0);   -- ADC channel select (0-7)
        start       : in  std_logic;                      -- Pulse to begin conversion
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
end entity adc_spi_driver;

architecture rtl of adc_spi_driver is
begin
    -- TODO: Phase 1 implementation
    adc_cs_n     <= '1';
    adc_din      <= '0';
    adc_sclk     <= '0';
    sample_data  <= (others => '0');
    sample_valid <= '0';
    busy         <= '0';
end architecture rtl;

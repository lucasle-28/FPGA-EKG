-- ============================================================================
-- result_fifo.vhd
-- Dual-clock FIFO for passing classification results from FPGA to HPS.
--
-- Bridges the FPGA clock domain to the HPS-FPGA lightweight bridge.
-- Stores {class_id, confidence, rr_interval, timestamp} per beat.
--
-- Phase 6 implementation.
-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity result_fifo is
    generic (
        G_DATA_WIDTH : natural := 32;
        G_FIFO_DEPTH : natural := 64
    );
    port (
        -- Write side (FPGA clock domain)
        wr_clk   : in  std_logic;
        wr_en    : in  std_logic;
        wr_data  : in  std_logic_vector(G_DATA_WIDTH-1 downto 0);
        wr_full  : out std_logic;
        -- Read side (HPS clock domain)
        rd_clk   : in  std_logic;
        rd_en    : in  std_logic;
        rd_data  : out std_logic_vector(G_DATA_WIDTH-1 downto 0);
        rd_empty : out std_logic
    );
end entity result_fifo;

architecture rtl of result_fifo is
begin
    -- TODO: Phase 6 implementation
    wr_full  <= '0';
    rd_data  <= (others => '0');
    rd_empty <= '1';
end architecture rtl;

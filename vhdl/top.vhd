library ieee;
use ieee.std_logic_1164.all;

entity top is 
	port (
		clk		: in std_logic; --50 MHz
		
		--user inputs
		KEY		: in std_logic_vector(3 downto 0);
		SW			: in std_logic_vector(9 downto 0);
		
		--board outputs
		LEDR		: out std_logic_vector(6 downto 0);
		HEX0		: out std_logic_vector(6 downto 0);
		HEX1		: out std_logic_vector(6 downto 0);
		HEX2		: out std_logic_vector(6 downto 0);
		HEX3		: out std_logic_vector(6 downto 0);
		HEX4		: out std_logic_vector(6 downto 0);
		HEX5		: out std_logic_vector(6 downto 0);
		
		--ADC module
		output	: in std_logic;
		loMin		: in std_logic;
		loPlu		: in std_logic;
		sdn		: in std_logic;
		
	);
end top;

architecture behavorial of top is

begin

end behavorial;
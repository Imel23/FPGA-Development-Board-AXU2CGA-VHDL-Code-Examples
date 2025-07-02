----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/06/2025 11:37:53 AM
-- Design Name: 
-- Module Name: pll_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pll_test is
Port ( 
    sys_clk: in std_logic; -- 25 MHz input clock
    rst_n: in std_logic; -- Active-low reset
    clk_out_4: out std_logic; -- PLL output clock (25 MHz)
    clk_out_3: out std_logic; -- 50 MHz
    clk_out_2: out std_logic; -- 8.33 MHz
    clk_out_1: out std_logic -- 6.25 MHz
);
end pll_test;

architecture Behavioral of pll_test is

signal locked: std_logic;
signal sys_clkbuf: std_logic;
signal pll_reset : std_logic;

-- Component declaration for BUFG
component BUFG
    port (
        I : in std_logic;
        O : out std_logic
    );
end component;

-- The following code must appear in the VHDL architecture header:
------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component clk_wiz_0
port
 (-- Clock in ports
  -- Clock out ports
  clk_out1          : out    std_logic;
  clk_out2          : out    std_logic;
  clk_out3          : out    std_logic;
  clk_out4          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic;
  clk_in1           : in     std_logic
 );
end component;


begin

    -- Instantiate the BUFG
    BUFG_inst : BUFG
        port map (
            I => sys_clk,
            O => sys_clkbuf
        );
    
    pll_reset <= not rst_n;
    
    -- Instantiate the PLL IP
    pll_inst : clk_wiz_0
        port map (
            clk_in1   => sys_clkbuf,
            clk_out1  => clk_out_1,         -- 6.25 MHz (not used)
            clk_out2  => clk_out_2,         -- 8.33 MHz (not used)
            clk_out3  => clk_out_3,         -- 50 MHz (not used)
            clk_out4  => clk_out_4,      -- 25 MHz used
            reset     => pll_reset,    -- Active-high reset
            locked    => locked
        );
 
end Behavioral;

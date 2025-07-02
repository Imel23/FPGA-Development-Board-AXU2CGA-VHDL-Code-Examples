library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_pwm_test is
end tb_pwm_test;

architecture Behavioral of tb_pwm_test is

  -- Component under test
  component pwm_test
    Port (
      sys_clk : in  STD_LOGIC;
      rst_n   : in  STD_LOGIC;  -- Active low reset
      led     : out STD_LOGIC
    );
  end component;

  -- Simulation signals
  signal sys_clk : STD_LOGIC := '0';
  signal rst_n   : STD_LOGIC := '0';  -- Start with reset asserted (active-low)
  signal led     : STD_LOGIC;

  -- Clock period for 200 MHz (5 ns)
  constant CLK_PERIOD : time := 5 ns;

begin

  -- Instantiate DUT
  DUT: pwm_test
    port map (
      sys_clk => sys_clk,
      rst_n   => rst_n,
      led     => led
    );

  -- Clock generation
  clk_process : process
  begin
    while now < 5 ms loop  -- Simulate for 5 ms
      sys_clk <= '0';
      wait for CLK_PERIOD / 2;
      sys_clk <= '1';
      wait for CLK_PERIOD / 2;
    end loop;
    wait; -- End simulation
  end process;

  -- Reset generation (active-low)
  rst_process : process
  begin
    rst_n <= '0';              -- Assert reset
    wait for 100 ns;
    rst_n <= '1';              -- Deassert reset after 100 ns
    wait;
  end process;

end Behavioral;

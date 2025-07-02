library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ax_pwm is
  generic (
    N : integer := 16  -- PWM resolution
  );
  Port (
    clk     : in  STD_LOGIC;
    rst     : in  STD_LOGIC;
    period  : in  STD_LOGIC_VECTOR (N - 1 downto 0); -- PWM period
    duty    : in  STD_LOGIC_VECTOR (N - 1 downto 0); -- PWM duty
    pwm_out : out STD_LOGIC  -- PWM output
  );
end ax_pwm;

architecture Behavioral of ax_pwm is

signal period_r     : STD_LOGIC_VECTOR(N-1 downto 0);
signal duty_r       : STD_LOGIC_VECTOR(N-1 downto 0);
signal period_cnt   : STD_LOGIC_VECTOR(N-1 downto 0);
signal pwm_r        : STD_LOGIC;

begin

-- Register period and duty
process(clk, rst)
begin
  if rst = '1' then
    period_r <= (others => '0');
    duty_r   <= (others => '0');
  elsif rising_edge(clk) then
    period_r <= period;
    duty_r   <= duty;
  end if;
end process;

-- Period counter with wrap-around
process(clk, rst)
begin
  if rst = '1' then
    period_cnt <= (others => '0');
  elsif rising_edge(clk) then
    if unsigned(period_cnt) >= unsigned(period_r) then
      period_cnt <= (others => '0');
    else
      period_cnt <= std_logic_vector(unsigned(period_cnt) + 1);
    end if;
  end if;
end process;

-- PWM output logic
process(clk, rst)
begin
  if rst = '1' then
    pwm_r <= '0';
  elsif rising_edge(clk) then
    if unsigned(period_cnt) < unsigned(duty_r) then
      pwm_r <= '1';
    else
      pwm_r <= '0';
    end if;
  end if;
end process;

pwm_out <= pwm_r;

end Behavioral;

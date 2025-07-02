library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.ALL;

entity pwm_test is
  Port (
    sys_clk : in  STD_LOGIC;  -- 200 MHz input
    rst_n   : in  STD_LOGIC;  -- active-low reset
    led     : out STD_LOGIC
  );
end pwm_test;

architecture Behavioral of pwm_test is

  -- === Clock & Reset ===
  signal clk_bufg : std_logic;
  signal clk_int  : std_logic;
  signal rst_p    : std_logic;  -- active-high reset

  -- === PWM Parameters ===
  constant SYS_CLK_HZ   : integer := 200_000_000;  -- 200 MHz
  constant PWM_FREQ_HZ  : integer := 1_000;        -- 1 kHz carrier
  constant PWM_PERIOD   : unsigned(31 downto 0) :=
    to_unsigned(SYS_CLK_HZ / PWM_FREQ_HZ, 32);

  -- === Breathing Envelope ===
  constant BREATH_RATE_HZ : integer := 250;     -- 250 Hz → update every 4 ms
  constant BREATH_TICKS   : unsigned(31 downto 0) :=
    to_unsigned(SYS_CLK_HZ / BREATH_RATE_HZ, 32);
  constant HALF_STEPS     : integer := BREATH_RATE_HZ * 2;  -- 500 steps over 2 s
  constant STEP_SIZE      : unsigned(31 downto 0) :=
    PWM_PERIOD / to_unsigned(HALF_STEPS, PWM_PERIOD'length);

  signal breath_cnt : unsigned(31 downto 0) := (others => '0');
  signal duty       : unsigned(31 downto 0) := (others => '0');
  signal up_dir     : std_logic := '1';  -- '1' = brightening, '0' = dimming
  signal pwm_out    : std_logic;

  -- PWM component
  component ax_pwm
    generic (N : integer := 32);
    port (
      clk     : in  STD_LOGIC;
      rst     : in  STD_LOGIC;
      period  : in  STD_LOGIC_VECTOR(N-1 downto 0);
      duty    : in  STD_LOGIC_VECTOR(N-1 downto 0);
      pwm_out : out STD_LOGIC
    );
  end component;

  -- Clock wizard
  component clk_wiz_0
    port (
      clk_out1 : out std_logic;
      reset    : in  std_logic;
      locked   : out std_logic;
      clk_in1  : in  std_logic
    );
  end component;

begin

  rst_p <= not rst_n;

  -- Buffer & PLL
  clk_buf : BUFG port map(I => sys_clk, O => clk_bufg);
  clk_pll_inst : clk_wiz_0
    port map(
      clk_out1 => clk_int,
      reset    => rst_p,
      locked   => open,
      clk_in1  => clk_bufg
    );

  -- Combined breathing-and-tick process
  breath_proc: process(clk_int, rst_p)
  begin
    if rst_p = '1' then
      breath_cnt <= (others => '0');
      duty        <= (others => '0');
      up_dir      <= '1';
    elsif rising_edge(clk_int) then
      if breath_cnt = BREATH_TICKS - 1 then
        breath_cnt <= (others => '0');
        -- Update duty every 4 ms:
        if up_dir = '1' then
          if duty + STEP_SIZE >= PWM_PERIOD then
            duty   <= PWM_PERIOD;
            up_dir <= '0';
          else
            duty <= duty + STEP_SIZE;
          end if;
        else
          if duty <= STEP_SIZE then
            duty   <= (others => '0');
            up_dir <= '1';
          else
            duty <= duty - STEP_SIZE;
          end if;
        end if;
      else
        breath_cnt <= breath_cnt + 1;
      end if;
    end if;
  end process;

  -- PWM instantiation
  U_PWM: ax_pwm
    generic map(N => 32)
    port map(
      clk     => clk_int,
      rst     => rst_p,
      period  => std_logic_vector(PWM_PERIOD),
      duty    => std_logic_vector(duty),
      pwm_out => pwm_out
    );

  -- LED output
  led <= pwm_out;

end Behavioral;

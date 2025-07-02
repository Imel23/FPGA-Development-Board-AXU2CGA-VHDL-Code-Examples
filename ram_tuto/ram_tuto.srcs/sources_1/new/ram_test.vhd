library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;

entity ram_test is
  port (
    clk : in  std_logic;   
    rst_n     : in  std_logic    -- async, active-LOW reset
  );
end ram_test;

architecture Behavioral of ram_test is

  ---------------------------------------------------------------------------
  --  Clocking and RAM signals
  ---------------------------------------------------------------------------
  signal w_addr  : std_logic_vector(8 downto 0);
  signal w_data  : std_logic_vector(15 downto 0);
  signal wea     : std_logic_vector(0 downto 0);

  signal r_addr  : std_logic_vector(8 downto 0);
  signal r_data  : std_logic_vector(15 downto 0);

  ---------------------------------------------------------------------------
  --  Primitive and IP declarations
  ---------------------------------------------------------------------------
  component ram_ip
    port (
      clka  : in  std_logic;
      wea   : in  std_logic_vector(0 downto 0);
      addra : in  std_logic_vector(8 downto 0);
      dina  : in  std_logic_vector(15 downto 0);
      clkb  : in  std_logic;
      addrb : in  std_logic_vector(8 downto 0);
      doutb : out std_logic_vector(15 downto 0)
    );
  end component;

  component ila_0
    port (
      clk    : in  std_logic;
      probe0 : in  std_logic_vector(15 downto 0);
      probe1 : in  std_logic_vector(8 downto 0)
    );
  end component;

begin

  ---------------------------------------------------------------------------
  -- Dual-port block RAM
  ---------------------------------------------------------------------------
  ram_ip_inst : ram_ip
    port map (
      clka  => clk, wea => wea, addra => w_addr, dina => w_data,
      clkb  => clk, addrb => r_addr, doutb => r_data
    );

  ---------------------------------------------------------------------------
  -- ILA (Vivado will insert a debug-hub for this automatically)
  ---------------------------------------------------------------------------
  ila_0_inst : ila_0
    port map ( clk => clk, probe0 => r_data, probe1 => r_addr );

  ---------------------------------------------------------------------------
  -- READ-address generator
  ---------------------------------------------------------------------------
  process(clk, rst_n)
  begin
    if rst_n = '0' then
      r_addr <= (others => '0');
    elsif rising_edge(clk) then
      if unsigned(w_addr) /= 0 then
        r_addr <= std_logic_vector(unsigned(r_addr) + 1);
      else
        r_addr <= (others => '0');
      end if;
    end if;
  end process;

  ---------------------------------------------------------------------------
  -- WRITE-enable generator
  ---------------------------------------------------------------------------
    process(clk, rst_n)
    begin
      if rst_n = '0' then
        wea <= (others => '0');                     -- reset
      elsif rising_edge(clk) then
        if w_addr = "111111111" then               -- max address?
          wea <= "0";                              -- stop writing
        else
          wea <= "1";                              -- keep writing
        end if;
      end if;
    end process;
    

  ---------------------------------------------------------------------------
  -- WRITE address/data generator
  ---------------------------------------------------------------------------
  process(clk, rst_n)
  begin
    if rst_n = '0' then
      w_addr <= (others => '0');
      w_data <= (others => '0');
    elsif rising_edge(clk) and (wea = "1") then
      if w_addr /= "111111111" then
        w_addr <= std_logic_vector(unsigned(w_addr) + 1);
        w_data <= std_logic_vector(unsigned(w_data) + 1);
      end if;
    end if;
  end process;

end Behavioral;

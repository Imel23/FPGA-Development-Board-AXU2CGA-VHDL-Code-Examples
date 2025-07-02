library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity led_tb is
end led_tb;

architecture Behavioral of led_tb is

    -- DUT component declaration
    component led
        Port (
            sys_clk : in  std_logic;
            rst_n   : in  std_logic;
            led     : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Testbench signals
    signal tb_clk     : std_logic := '0';
    signal tb_rst_n   : std_logic := '0';
    signal tb_led_out : std_logic_vector(3 downto 0);

    constant CLK_PERIOD : time := 40 ns;  -- 25 MHz

begin

    -- Instantiate the DUT
    uut: led
        port map (
            sys_clk => tb_clk,
            rst_n   => tb_rst_n,
            led     => tb_led_out
        );

    -- Clock generation
    clk_gen: process
    begin
        while now < 2.2 sec loop  -- run for 2.2s
            tb_clk <= '0';
            wait for CLK_PERIOD / 2;
            tb_clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Reset stimulus
    stim_proc: process
    begin
        tb_rst_n <= '0';         -- Apply reset
        wait for 100 ns;
        tb_rst_n <= '1';         -- Release reset

        wait;  -- Wait forever
    end process;

end Behavioral;

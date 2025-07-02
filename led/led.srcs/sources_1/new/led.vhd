----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2025 10:57:58 PM
-- Design Name: 
-- Module Name: led - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led is
--  Port ( );
Port(
    sys_clk: in std_logic;
    rst_n: in std_logic;
    led: out std_logic_vector(3 downto 0)
);
end led;

architecture Behavioral of led is

signal timer_cnt: unsigned(31 downto 0);
signal led_out: std_logic_vector(3 downto 0);

-- Vivado ILA debug attributes
attribute MARK_DEBUG : string;
attribute MARK_DEBUG of led_out   : signal is "true";
attribute MARK_DEBUG of timer_cnt : signal is "true";

component ila_0
    port (
        clk    : in std_logic;
        probe0 : in std_logic_vector(31 downto 0); -- timer counter
        probe1 : in std_logic_vector(3 downto 0)   -- LED output
    );
end component;

begin

---- ILA instance
--ila_inst : ila_0
--    port map (
--        clk    => sys_clk,
--        probe0 => std_logic_vector(timer_cnt),
--        probe1 => led_out
--    );

process(sys_clk, rst_n)

begin 

    if rst_n = '0' then
        led_out <= (others => '1');
        timer_cnt <= (others => '0');
    elsif rising_edge(sys_clk) then
        if timer_cnt >= to_unsigned(24999999, 32) then
            led_out <= not led_out;
            timer_cnt <= (others => '0');
        else   
            timer_cnt <= timer_cnt + 1;   
        end if;
    end if;


end process;

led <= led_out;

end Behavioral;

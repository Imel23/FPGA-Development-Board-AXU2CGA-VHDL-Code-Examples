----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/08/2025 02:21:37 AM
-- Design Name: 
-- Module Name: key_test - Behavioral
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

entity key_test is
    Port ( clk : in STD_LOGIC; -- system clock 25Mhz on board
           key : in STD_LOGIC_VECTOR (3 downto 0); --input four key signal,when the keydown,the value is 0
           led : out STD_LOGIC_VECTOR (3 downto 0)); -- LED display ,when the siganl low,LED lighten
end key_test;

architecture Behavioral of key_test is

signal led_r: std_logic_vector(3 downto 0); --define the first stage register , generate four D Flip-flop
signal led_r1: std_logic_vector(3 downto 0); --define the second stage register , generate four D Flip-flop

begin

process(clk)
begin

if rising_edge(clk) then
    
    led_r <= key; --first stage latched data
    
end if;

end process;

process(clk)
begin

if rising_edge(clk) then
    
    led_r1 <= led_r; --second stage latched data
    
end if;

end process;

led <= led_r1;


end Behavioral;

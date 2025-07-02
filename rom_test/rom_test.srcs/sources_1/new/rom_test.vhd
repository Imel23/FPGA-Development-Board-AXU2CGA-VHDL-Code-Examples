----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/07/2025 12:04:57 AM
-- Design Name: 
-- Module Name: rom_test - Behavioral
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

entity rom_test is
  Port ( 
  
  clk: in std_logic;
  rst_n: in std_logic -- reset active low
  
  );
end rom_test;

architecture Behavioral of rom_test is

signal rom_data: std_logic_vector(7 downto 0); -- ROM read data
signal rom_addr: std_logic_vector(4 downto 0); -- ROM input address

COMPONENT rom_ip
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
  );
END COMPONENT;

COMPONENT ila_0

PORT (
	clk : IN STD_LOGIC;



	probe0 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	probe1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END COMPONENT  ;

begin

process(clk, rst_n)
begin

    if rst_n = '0' then
        rom_addr <= (others => '0');
    elsif rising_edge(clk) then
        rom_addr <= std_logic_vector(unsigned(rom_addr) + 1);
    end if;
end process; 

rom_ip_inst : rom_ip
  PORT MAP (
    clka => clk,
    addra => rom_addr,
    douta => rom_data
  );

ila_m0 : ila_0
PORT MAP (
	clk => clk,
	probe0 => rom_addr,
	probe1 => rom_data
);


end Behavioral;

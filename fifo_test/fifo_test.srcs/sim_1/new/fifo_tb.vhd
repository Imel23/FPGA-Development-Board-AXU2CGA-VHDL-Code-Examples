-- *********************************************************************
--  Simple testbench pour le module fifo_test
--  Génère un clock 25 MHz, un reset actif bas,
--  puis laisse tourner la simulation 10 ms.
-- *********************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_fifo_test is
end entity;

architecture sim of tb_fifo_test is

    -- Signaux reliés au DUT
    signal sys_clk : std_logic := '0';
    signal rst_n   : std_logic := '0';

    -- 25 MHz ⇒ 40 ns de période
    constant CLK_PERIOD : time := 40 ns;

begin

    --------------------------------------------------------------------
    -- Instance du Device Under Test (DUT)
    --------------------------------------------------------------------
    dut : entity work.fifo_test
        port map (
            sys_clk => sys_clk,
            rst_n   => rst_n
        );

    --------------------------------------------------------------------
    -- Générateur d'horloge : état bas / état haut toutes les 20 ns
    --------------------------------------------------------------------
    clk_gen : process
    begin
        while true loop
            sys_clk <= '0';
            wait for CLK_PERIOD / 2;
            sys_clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process clk_gen;

    --------------------------------------------------------------------
    -- Générateur de reset : maintient rst_n à '0' pendant 100 ns,
    -- puis le libère à '1' pour le reste de la simulation.
    --------------------------------------------------------------------
    rst_gen : process
    begin
        rst_n <= '0';
        wait for 100 ns;
        rst_n <= '1';
        wait;
    end process rst_gen;

    --------------------------------------------------------------------
    -- Fin automatique après 10 ms pour ne pas laisser tourner indéfiniment
    --------------------------------------------------------------------
    end_sim : process
    begin
        wait for 10 ms;
        assert false report "End of simulation" severity failure;
    end process end_sim;

end architecture sim;

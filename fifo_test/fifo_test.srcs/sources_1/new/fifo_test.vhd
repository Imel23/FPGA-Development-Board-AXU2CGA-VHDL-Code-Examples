library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity fifo_test is
    Port (
        sys_clk : in  std_logic;
        rst_n   : in  std_logic
    );
end fifo_test;

architecture Behavioral of fifo_test is

    --------------------------------------------------------------------
    -- Signaux internes
    --------------------------------------------------------------------
    signal w_data        : std_logic_vector(15 downto 0);
    signal r_data        : std_logic_vector(15 downto 0);
    signal wr_en         : std_logic;
    signal rd_en         : std_logic;
    signal full          : std_logic;
    signal empty         : std_logic;
    signal rd_data_count : std_logic_vector(8 downto 0);
    signal wr_data_count : std_logic_vector(8 downto 0);

    -- Clocks & reset
    signal clk_100M  : std_logic;
    signal clk_75M   : std_logic;
    signal locked    : std_logic;
    signal fifo_rst_n : std_logic;  -- actif bas
    signal wr_clk, rd_clk : std_logic;

    -- Compteurs d'attente
    signal wcnt, rcnt : std_logic_vector(7 downto 0);

    -- Buffers d'entrée PLL
    signal sys_clk_ibuf : std_logic;
    signal sys_clk_buf  : std_logic;

    -- États des machines à états
    type write_fifo_state is (W_IDLE, W_FIFO);
    signal current_write_state, next_write_state : write_fifo_state;

    type read_fifo_state is (R_IDLE, R_FIFO);
    signal current_read_state, next_read_state : read_fifo_state;

    --------------------------------------------------------------------
    -- Déclarations des composants IP
    --------------------------------------------------------------------
    component clk_wiz_0
        port (
            clk_out1 : out std_logic;
            clk_out2 : out std_logic;
            reset    : in  std_logic;
            locked   : out std_logic;
            clk_in1  : in  std_logic
        );
    end component;

    component fifo_ip
        port (
            rst           : in  std_logic;
            wr_clk        : in  std_logic;
            rd_clk        : in  std_logic;
            din           : in  std_logic_vector(15 downto 0);
            wr_en         : in  std_logic;
            rd_en         : in  std_logic;
            dout          : out std_logic_vector(15 downto 0);
            full          : out std_logic;
            empty         : out std_logic;
            rd_data_count : out std_logic_vector(8 downto 0);
            wr_data_count : out std_logic_vector(8 downto 0);
            wr_rst_busy   : out std_logic;
            rd_rst_busy   : out std_logic
        );
    end component;

    component ila_0
        port (
            clk    : in std_logic;
            probe0 : in std_logic_vector(15 downto 0);
            probe1 : in std_logic_vector(0 downto 0);
            probe2 : in std_logic_vector(0 downto 0);
            probe3 : in std_logic_vector(8 downto 0)
        );
    end component;

    -- Vecteurs ILA
    signal empty_vec  : std_logic_vector(0 downto 0);
    signal rd_en_vec  : std_logic_vector(0 downto 0);
    signal full_vec   : std_logic_vector(0 downto 0);
    signal wr_en_vec  : std_logic_vector(0 downto 0);

begin

    --------------------------------------------------------------------
    -- Buffer & PLL
    --------------------------------------------------------------------
    IBUF_inst : IBUF port map (I => sys_clk, O => sys_clk_ibuf);
    BUFG_inst : BUFG port map (I => sys_clk_ibuf, O => sys_clk_buf);

    pll_inst : clk_wiz_0
        port map (
            clk_in1  => sys_clk_buf,
            reset    => not rst_n,  -- reset actif haut pour l'IP
            clk_out1 => clk_100M,
            clk_out2 => clk_75M,
            locked   => locked
        );

    fifo_rst_n <= locked;            -- actif bas (0 tant que PLL non verrouillée)
    wr_clk     <= clk_100M;
    rd_clk     <= clk_75M;

    --------------------------------------------------------------------
    -- FIFO IP
    --------------------------------------------------------------------
    fifo_ip_inst : fifo_ip
        port map (
            rst           => not fifo_rst_n,  -- FIFO IP attend un reset actif haut
            wr_clk        => wr_clk,
            rd_clk        => rd_clk,
            din           => w_data,
            wr_en         => wr_en,
            rd_en         => rd_en,
            dout          => r_data,
            full          => full,
            empty         => empty,
            rd_data_count => rd_data_count,
            wr_data_count => wr_data_count,
            wr_rst_busy   => open,
            rd_rst_busy   => open
        );

    --------------------------------------------------------------------
    -- MACHINE À ÉTATS : ÉCRITURE
    --------------------------------------------------------------------
    -- 1) Registre d'état
    process (wr_clk, fifo_rst_n)
    begin
        if fifo_rst_n = '0' then
            current_write_state <= W_IDLE;
        elsif rising_edge(wr_clk) then
            current_write_state <= next_write_state;
        end if;
    end process;

    -- 2) Logique de transition
    process (current_write_state, wcnt)
    begin
        case current_write_state is
            when W_IDLE =>
                if unsigned(wcnt) = 79 then
                    next_write_state <= W_FIFO;
                else
                    next_write_state <= W_IDLE;
                end if;
            when others => -- W_FIFO
                next_write_state <= W_FIFO;
        end case;
    end process;

    -- 3) Compteur wcnt (séquentiel, pas de boucle)
    process (wr_clk, fifo_rst_n)
    begin
        if fifo_rst_n = '0' then
            wcnt <= (others => '0');
        elsif rising_edge(wr_clk) then
            if current_write_state = W_IDLE then
                wcnt <= std_logic_vector(unsigned(wcnt) + 1);
            else
                wcnt <= (others => '0');
            end if;
        end if;
    end process;

    -- 4) Génération du wr_en (pure combinatoire)
    wr_en <= '1' when (current_write_state = W_FIFO and full = '0') else '0';

    -- 5) Génération des données à écrire
    process (wr_clk, fifo_rst_n)
    begin
        if fifo_rst_n = '0' then
            w_data <= std_logic_vector(to_unsigned(1, 16));
        elsif rising_edge(wr_clk) then
            if wr_en = '1' then
                w_data <= std_logic_vector(unsigned(w_data) + 1);
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- MACHINE À ÉTATS : LECTURE
    --------------------------------------------------------------------
    -- 1) Registre d'état
    process (rd_clk, fifo_rst_n)
    begin
        if fifo_rst_n = '0' then
            current_read_state <= R_IDLE;
        elsif rising_edge(rd_clk) then
            current_read_state <= next_read_state;
        end if;
    end process;

    -- 2) Logique de transition
    process (current_read_state, rcnt)
    begin
        case current_read_state is
            when R_IDLE =>
                if unsigned(rcnt) = 59 then
                    next_read_state <= R_FIFO;
                else
                    next_read_state <= R_IDLE;
                end if;
            when others => -- R_FIFO
                next_read_state <= R_FIFO;
        end case;
    end process;

    -- 3) Compteur rcnt (séquentiel)
    process (rd_clk, fifo_rst_n)
    begin
        if fifo_rst_n = '0' then
            rcnt <= (others => '0');
        elsif rising_edge(rd_clk) then
            if current_read_state = R_IDLE then
                rcnt <= std_logic_vector(unsigned(rcnt) + 1);
            else
                rcnt <= (others => '0');
            end if;
        end if;
    end process;

    -- 4) Génération du rd_en
    rd_en <= '1' when (current_read_state = R_FIFO and empty = '0') else '0';

    --------------------------------------------------------------------
    -- ILA pour debug in-system
    --------------------------------------------------------------------
    empty_vec(0) <= empty;
    rd_en_vec(0) <= rd_en;
    full_vec(0)  <= full;
    wr_en_vec(0) <= wr_en;

    ila_wfifo : ila_0
        port map (
            clk    => wr_clk,
            probe0 => w_data,
            probe1 => wr_en_vec,
            probe2 => full_vec,
            probe3 => wr_data_count
        );

    ila_rfifo : ila_0
        port map (
            clk    => rd_clk,
            probe0 => r_data,
            probe1 => rd_en_vec,
            probe2 => empty_vec,
            probe3 => rd_data_count
        );

end architecture Behavioral;

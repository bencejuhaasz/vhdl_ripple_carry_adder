library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_rca is
end tb_rca;

architecture behavior of tb_rca is

    component RCA
        port (
            A      : in  std_logic_vector(3 downto 0);
            B      : in  std_logic_vector(3 downto 0);
            C_in   : in  std_logic;
            S      : out std_logic_vector(3 downto 0);
            C_out  : out std_logic
        );
    end component;

    signal A, B     : std_logic_vector(3 downto 0) := (others => '0');
    signal C_in     : std_logic := '0';
    signal S        : std_logic_vector(3 downto 0);
    signal C_out    : std_logic;

begin

    uut: RCA
        port map (
            A     => A,
            B     => B,
            C_in  => C_in,
            S     => S,
            C_out => C_out
        );

    stim_proc: process
    begin
        -- 0 + 0
        A <= "0000"; B <= "0000"; C_in <= '0'; wait for 10 ns;
        -- 1 + 1
        A <= "0001"; B <= "0001"; C_in <= '0'; wait for 10 ns;
        -- 3 + 5
        A <= "0011"; B <= "0101"; C_in <= '0'; wait for 10 ns;
        -- 7 + 8
        A <= "0111"; B <= "1000"; C_in <= '0'; wait for 10 ns;
        -- 15 + 1
        A <= "1111"; B <= "0001"; C_in <= '0'; wait for 10 ns;
        -- 15 + 15 + 1 (teszteljük C_out-ot is)
        A <= "1111"; B <= "1111"; C_in <= '1'; wait for 10 ns;

        wait;
    end process;

end behavior;

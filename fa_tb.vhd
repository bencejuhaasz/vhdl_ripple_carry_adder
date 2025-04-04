library ieee;
use ieee.std_logic_1164.all;

entity tb_fa is
end tb_fa;

architecture behavior of tb_fa is

    component fa
        port (
            A    : in  std_logic;
            B    : in  std_logic;
            Cin  : in  std_logic;
            Cout : out std_logic;
            S    : out std_logic
        );
    end component;

    signal A, B, Cin : std_logic := '0';
    signal S, Cout   : std_logic;

begin

    uut: fa
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            S    => S,
            Cout => Cout
        );

    stim_proc: process
    begin
        -- Teszt 0 + 0 + 0
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        -- Teszt 0 + 0 + 1
        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        -- Teszt 0 + 1 + 0
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        -- Teszt 0 + 1 + 1
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        -- Teszt 1 + 0 + 0
        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        -- Teszt 1 + 0 + 1
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        -- Teszt 1 + 1 + 0
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        -- Teszt 1 + 1 + 1
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;

        wait;
    end process;

end behavior;

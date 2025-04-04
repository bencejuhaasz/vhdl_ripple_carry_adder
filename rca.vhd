library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCA is
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
B : in STD_LOGIC_VECTOR (3 downto 0);
C_in : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (3 downto 0);
C_out : out STD_LOGIC);
end RCA;

architecture Components of RCA is
component FA
        port (
            A    : in  std_logic;
            B    : in  std_logic;
            Cin  : in  std_logic;
            S  : out std_logic;
            Cout : out std_logic
        );
    end component;


signal c1,c2,c3, c4, c5: STD_LOGIC;

begin


FA1: FA port map( A(0), B(0), C_in, S(0), c1);
FA2: FA port map( A(1), B(1), c1, S(1), c2);
FA3: FA port map( A(2), B(2), c2, S(2), c3);
FA4: FA port map( A(3), B(3), c3, S(3), C_out);

end Components;

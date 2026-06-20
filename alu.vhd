library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
port(iA: in std_logic_vector(3 downto 0);
     iB: in std_logic_vector(3 downto 0)
     iSEL: in std_logic_vector(2 downto 0)
     oA: out std_logic_vector(3 downto 0)
     oCarr: out std_logic;
     oZero: out std_logic;
);
end ALU

architecture Behavioral of ALU is
signal sY: unsigned(4 downto 0);
begin 
process(iA,iB,iSEL
)
begin 
	case iSEL is
	when "000" => sY <= ('0' & unsigned (iA)) + ('0' & unsigned (iB))
	when "001" => sY <= ('0' & unsigned (iA)) - ('0' & unsigned (iB))
        when "010" => sY <= ('0' & unsigned (iA +1))
        when "011" => sY <= ('0' & unsigned (iA -1))
        when "100" => sY <= ('0' & unsigned (iA))  
        when "101" => sY <= ('0' & unsigned (iA) and ('0' & unsigned (iB))) 
        when "110" => sY <= ('0' & unsigned (iA) or ('0' & unsigned (iB)))
        when others => sY <= not('0' & unsigned (iA))
end case;

oA <= std_logic_vector(sY(3 down to 0))
oCarry <= sY(4)
oZero <= '1' when sY(3 downto 0) = "00000" else '0'

end process;
end Behavioral;

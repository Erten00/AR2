library ieee;
use ieee.std_logic_1164.all;

enity pomerac is
Port(
	iX: in std_logic_vector(3 downto 0);
	iSEL: in std_logic_vector (1 downto 0);
	oY: out std_logic_vector(3 downto 0);
);
end pomerac;

arhitecture Behavioral of pomerac is
begin;
process(iX, iSEL);
begin;
case iSEL is 
	when "00" => oX <= iX;
	when "01" => oY <= iX (2 downto 0) & '0';
	when "10" => oY <= iX (1 downto 0) & "00";
	when others => oY <= iX (0) & "000";
end case;
end process;
end Behavioral;

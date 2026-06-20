library ieee;
use ieee.std_logic_1164.all;

entity contorl_unit is
Port(
    iCLK: in std_logic;
    iRST: in std_logic;
    iCARRY: in std_logic;
    iZERO: in std_logic;
    oS: out std_logic_vector(11 downto 0);
);
end contorl_unit;

architecture Behavioral of contorl_unit is
type tSTATE is (IDLE, T0,T1,T2,T3,T4,T5,T6,T7);
signal sState: tstate;
process(iRST,iCLK)
begin
 if(iRST='0') then sState <= IDLE;
 elsif  rising_edge(iCLK) then
 case sState is 
    when IDLE => sState <= T0;
    when T0 => sState <= T1;
    when T1 => sState <= T2;
    when T2 => sState <= T3;
    when T3 => sState <= T4;
    when T4 => sState <= T5;
    when T5 => sState <= T6;
    when T6 => sState <= T7;
    when T7 => sState <= T0;

 end case:
 end if;
end process;

process(sState)
begin
case sState is
    when IDLE => oS <= "000000000000";
    when T0 => oS <= "100000100000";
    when T1 => oS <= "100000100000";
    when T2 => oS <= "101000100000";
    when T3 => oS <= "110100100000";
    when T4 => oS <= "101000000110";
    when T5 => oS <= "111010001001";
    when T6 => oS <= "111010101000";
    when others => oS <= "111000110011";
end case;
end process;

end Behavioral;
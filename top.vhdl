library ieee;
use ieee.std_logic_1164.all;

entity ALU is 
    Port (
        iA : in std_logic;
        iB : in std_logic
    
    )

REG0: entity work.reg
    port map(
        iCLK=>iCLK,
        iRST=>iRST,
        iD=>sG,
        iWE=>sWE(0),
        oQ=>sR(0)
    )
REG1:
REG2:

MUX0:

MUX1:

ALU: entity work.ALU
    port map(
        iA=sA,
        iB=>sB,
        isel=>sS(4 downto 2),
        oA=>sF,
        oCarry=>sCarry,
        oZero=>sZero
    );

Pomerac: entity work.Pomerac
    port map(
        ix=xF,
        isel=>sS(1 downto 0),
        oY=>sG
    );

contorl_unit: entity work.contorl_unit
    port map(
        iCLK=>iCLK;
        inRST=>iRST,
        iCARRY=>sCarry;
        iZERO=>oZero;
        oS=>sS
    );

end Behavioral
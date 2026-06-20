library ieee;
use ieee.std_logic_1164.all;

entity hello is
end hello;

architecture sim of hello is
begin
  process
  begin
    report "Hello, VHDL!";
    wait;
  end process;


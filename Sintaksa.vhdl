### Entity ###
entity entity_name is 
   port ( 
   port_name : mode  data_type;  
   port_name : mode  data_type;  
   port_name : mode  data_type 
      );  
end entity_name;

Modovi: in | out | inout | buffer

### Architecture ###

architecture arch_name of entity_name is
    -- deklaracije signala, komponenti, tipova...
begin
    -- concurrent statements
end arch_name;

### Signals ###

signal signal_name : std_logic;
signal signal_name : std_logic := '0';          -- sa početnom vrednošću
signal signal_name : std_logic_vector(7 downto 0);
signal signal_name : integer range 0 to 255 := 0;

### Processes ###

label: process(sensitivity_list)
    variable var_name : integer := 0;   -- opcionalno
begin
    -- sequential statements
end process label;

### Concurrent statements ###

🔲 Concurrent Signal Assignment

vhdltarget <= expression;
F <= A AND B;
F <= NOT (A OR B);

🔲 Conditional Signal Assignment

vhdltarget <= expression when condition else
          expression when condition else
          expression;

F <= '1' when (A = '1' AND B = '0') else
     '1' when (A = '0' AND B = '1') else
     '0';

🔲 Selected Signal Assignment
vhdlwith chooser_expression select
    target <= expression when choice,
              expression when choice,
              expression when others;

with SEL select
    MUX_OUT <= A when "00",
               B when "01",
               C when "10",
               D when "11",
               '0' when others;
               
### If ###

if (condition) then
    -- statements
elsif (condition) then
    -- statements
else
    -- statements
end if;

### Case ###

case (expression) is
    when choice =>
        -- statements
    when choice | choice =>       -- više izbora
        -- statements
    when others =>
        -- statements
end case;

### Loops ###

🔲FOR LOOP

vhdllabel: for index in 0 to 7 loop
    -- statements
end loop label;

-- ili sa downto:
label: for index in 7 downto 0 loop
    -- statements
end loop label;

🔲 WHILE LOOP

vhdllabel: while (condition) loop
    -- statements
end loop label;

🔲 LOOP KONTROLA

vhdlnext;                    -- preskoči ostatak iteracije
next when (condition);   -- preskoči ako je uslov ispunjen

exit;                    -- izađi iz petlje
exit when (condition);   -- izađi ako je uslov ispunjen

### Packages ###


Vežbaj male projekte

Redom:

AND gate
OR gate
Multiplexer
Decoder
Encoder
D Flip-Flop
4-bit Register
4-bit Counter
Traffic Light FSM
UART Transmitter
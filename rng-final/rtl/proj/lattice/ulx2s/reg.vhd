library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

USE IEEE.numeric_std.ALL;

 
entity reg_file is
    generic (
    C_data_width: integer := 8
    );
    port (
    btn: in std_logic;
    


    w: inout std_logic_vector((C_data_width - 1) downto 0);
    q: out std_logic_vector((C_data_width - 1) downto 0)
    );
end reg_file;
 
architecture reg of reg_file is
begin
    process(btn)
    begin
       
        if btn'event and btn = '1' then
                q <= w;
        end if;
        end process;
    
end reg;
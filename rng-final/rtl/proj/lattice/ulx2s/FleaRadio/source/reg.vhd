library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
 
 
entity reg_file is
    generic (
    C_data_width: integer := 8
    );
    port (
    btn_up, btn_down: in std_logic;
    clk: in std_logic;
    led: out std_logic_vector(7 downto 0);
-- na kraju samo u ovaj w pridruzimo signal od fm recievera i promjenimo w na INOUT umjesto IN
    w: inout std_logic_vector((C_data_width - 1) downto 0);
    q: inout std_logic_vector((C_data_width - 1) downto 0)
    );
end reg_file;
 
architecture reg of reg_file is
begin
    process(btn_up)
    begin
	    
        if rising_edge(btn_up) then
                q <= w;
        end if;
        end process;
    led(7 downto 0) <= q;
end reg;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nie13
-- 
-- Create Date: 10/23/2017 06:33:36 PM
-- Design Name: 
-- Module Name: find_ndnddn - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- post timing start from 0 and behavior start from 1
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity find_ndnddn is
  Port (RESET: in std_logic;
        DATA: in std_logic;
        VALID: out std_logic;
        clk: in std_logic ;
        lot: out std_logic_vector ( 4 downto 0);
        bol: out std_logic_vector (5 downto 0);
        cntt: out std_logic_vector ( 2 downto 0));
end find_ndnddn;

architecture Behavioral of find_ndnddn is
signal cnt_5 : std_logic_vector (2 downto 0) := "000";
signal letter: std_logic_vector (4 downto 0) := "11110";
signal bool_6: std_logic_vector(5 downto 0) := "000000";
signal valval: std_logic;

begin

lot <= letter;
bol <= bool_6;
cntt <= cnt_5;
VALID <= valval;

CLOCK: PROCESS(clk, RESET)
    BEGIN
        if (RESET = '1') then
            valval <= '0';
        elsif (clk 'EVENT and clk = '1') then
            if (cnt_5 = "100")then
                cnt_5 <= "000";
                letter (4 downto 0) <= letter(3 downto 0) & DATA;
--                if (bool_6 = "000000" and letter (4 downto 0) = "01101" and DATA = '1') then
--                    bool_6 <= "000001";
--                    letter <= letter( 3 downto 0) & DATA;
--                elsif (bool_6 = "000001" and  letter (4 downto 0) = "00011" and DATA = '1') then
--                    bool_6 <= "000011";
--                    letter <= letter( 3 downto 0) & DATA;
--                 elsif (bool_6 = "000011" and letter (4 downto 0) = "01101" and DATA = '1') then
--                    bool_6 <= "000111";
--                    letter <= letter( 3 downto 0) & DATA;
--                 elsif (bool_6 = "000111" and letter (4 downto 0) = "00011" and DATA = '1') then
--                    bool_6 <= "001111";
--                    letter <= letter( 3 downto 0) & DATA;
--                 elsif (bool_6 = "001111" and letter (4 downto 0) = "00011" and DATA = '1') then
--                    bool_6 <= "011111";
--                    letter <= letter( 3 downto 0) & DATA;
--                  elsif (bool_6 = "011111" and letter (4 downto 0) = "01101" and DATA = '1') then
--                    bool_6 <= "000001";
--                    VALID <= '1';
--                    letter <= letter( 3 downto 0) & DATA;
--                  else
--                    bool_6 <= "000000";
--                    letter <= letter( 3 downto 0) & DATA;
                               
--                end if; 
                
            elsif (cnt_5 = "000") then
                cnt_5 <= "001";
                letter <= letter(3 downto 0) & DATA;
--                VALID <= '0';
--                if (bool_6 = "000000" and letter (4 downto 0) = "01101" ) then
--                                    bool_6 <= "000001";
--                                    letter <= letter( 3 downto 0) & DATA;
--                                elsif (bool_6 = "000001" and  letter (4 downto 0) = "00011" ) then
--                                    bool_6 <= "000011";
--                                    letter <= letter( 3 downto 0) & DATA;
--                                 elsif (bool_6 = "000011" and letter (4 downto 0) = "01101" ) then
--                                    bool_6 <= "000111";
--                                    letter <= letter( 3 downto 0) & DATA;
--                                 elsif (bool_6 = "000111" and letter (4 downto 0) = "00011" ) then
--                                    bool_6 <= "001111";
--                                    letter <= letter( 3 downto 0) & DATA;
--                                 elsif (bool_6 = "001111" and letter (4 downto 0) = "00011" ) then
--                                    bool_6 <= "011111";
--                                    letter <= letter( 3 downto 0) & DATA;
--                                  elsif (bool_6 = "011111" and letter (4 downto 0) = "01101" ) then
--                                    bool_6 <= "000001";
--                                    VALID <= '1';
--                                    letter <= letter( 3 downto 0) & DATA;
--                                  else
--                                    bool_6 <= "000000";
--                                    letter <= letter( 3 downto 0) & DATA;
                                               
--                                end if;
--                if (bool_6 = "000000" and letter (4 downto 0) = "01101" ) then
--                    bool_6 <= "000001";
--                    letter <= "1111" & DATA;
--                elsif (bool_6 = "000001" and  letter (4 downto 0) = "00011" ) then
--                    bool_6 <= "000011";
--                    letter <= "1111" & DATA;
--                 elsif (bool_6 = "000011" and letter (4 downto 0) = "01101" ) then
--                    bool_6 <= "000111";
--                    letter <= "1111" & DATA;
--                 elsif (bool_6 = "000111" and letter (4 downto 0) = "00011" ) then
--                    bool_6 <= "001111";
--                   letter <= "1111" & DATA;
--                 elsif (bool_6 = "001111" and letter (4 downto 0) = "00011" ) then
--                    bool_6 <= "011111";
--                    letter <= "1111" & DATA;
--                  elsif (bool_6 = "011111" and letter (4 downto 0) = "01101") then
--                    bool_6 <= "000001";
--                    VALID <= '1';
--                    letter <= "1111" & DATA;
--                  else
--                    bool_6 <= "000000";
--                    letter <= "1111" & DATA;
                             
--                end if; 
                    
                               
            else
                cnt_5 <= cnt_5 + "001";
                letter (4 downto 0) <= letter (3 downto 0) & DATA;
--                VALID <= '0';
                
            end if;         
        end if;
END PROCESS;

COMPUTE: PROCESS (cnt_5)
BEGIN
if (cnt_5 = "000") then
if (letter (4 downto 0) = "01101") then
    if(bool_6 = "000000" ) then
        bool_6 <= "000001";
    elsif (bool_6 = "000011") then
        bool_6 <= "000111";
    elsif (bool_6 = "011111") then
        valval <= '1';
        bool_6 <= "000001";    
    end if;
elsif (letter = "00011" ) then
    if(bool_6 = "000001" ) then
        bool_6 <= "000011";
        valval <= '0';
    elsif (bool_6 = "000111") then
        bool_6 <= "001111";
    elsif (bool_6 = "001111") then
        bool_6 <= "011111";        
    end if;
else
    bool_6 <= "000000";
    valval <= '0';
end if;
end if;
END PROCESS;

end Behavioral;

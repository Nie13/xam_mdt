----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nie13
-- 
-- Create Date: 10/23/2017 07:19:45 PM
-- Design Name: 
-- Module Name: find_ndnddn_tb - Behavioral
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
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity find_ndnddn_tb is
--  Port ( );
end find_ndnddn_tb;

architecture Behavioral of find_ndnddn_tb is
signal RESET:  std_logic;
signal DATA: std_logic;
signal VALID: std_logic;
signal clk: std_logic;
signal lot: std_logic_vector (4 downto 0);
signal bol: std_logic_vector (5 downto 0);
signal cntt: std_logic_vector (2 downto 0);

component find_ndnddn
port(
RESET: in std_logic;
DATA: in std_logic;
VALID: out std_logic;
clk: in std_logic;
lot: out std_logic_vector ( 4 downto 0);
bol: out std_logic_vector (5 downto 0);
cntt: out std_logic_vector (2 downto 0));
end component;

begin

DUT: find_ndnddn port map (RESET, DATA, VALID, clk, lot, bol, cntt);

clock: process
begin

clk <= '0';
wait for 50ns;
clk <= '1';
wait for 50ns;
end process;

test: process
begin
RESET <= '0';
DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;

DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;

DATA <= '1'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '0'; wait for 100ns;

DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;

DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '1'; wait for 100ns;

DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;

DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '1'; wait for 100ns;

DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '1'; wait for 100ns;

DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait for 100ns;

DATA <= '1'; wait for 100ns;
DATA <= '1'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '0'; wait for 100ns;
DATA <= '1'; wait;

end process;



end Behavioral;

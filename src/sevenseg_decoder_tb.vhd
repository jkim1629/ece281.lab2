----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 02:58:31 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is

component sevenseg_decoder is 
    port (
    i_Hex : in std_logic_vector (3 downto 0);
    o_seg_n : out std_logic_vector(6 downto 0)
    );
    end component;
    
   signal tb_i_Hex : std_logic_vector(3 downto 0) := (others => '0');
   signal tb_o_seg_n : std_logic_vector(6 downto 0);
   
begin
    DUT: sevenseg_decoder
        port map (
            i_Hex => tb_i_Hex,
            o_seg_n => tb_o_seg_n
        );
assert_statements : process
    begin
    tb_i_Hex <= "0000";
    wait for 10 ns;
    assert tb_o_seg_n = "1000000"
        report "0 expected from 1000000"
        severity error;

    tb_i_Hex <= "0001";
    wait for 10 ns;
    assert tb_o_seg_n = "1111001"
        report "1 expected from 1111001"
        severity error;

    tb_i_Hex <= "0010";
    wait for 10 ns;
    assert tb_o_seg_n = "0100100"
        report "2 expected from 0100100"
        severity error;

    tb_i_Hex <= "0011";
    wait for 10 ns;
    assert tb_o_seg_n = "0110000"
        report "3 expected from 0110000"
        severity error;

    tb_i_Hex <= "0100";
    wait for 10 ns;
    assert tb_o_seg_n = "0011001"
        report "4 expected from 0011001"
        severity error;

    tb_i_Hex <= "0101";
    wait for 10 ns;
    assert tb_o_seg_n = "0010010"
        report "5 expected from 0010010"
        severity error;

    tb_i_Hex <= "0110";
    wait for 10 ns;
    assert tb_o_seg_n = "0000010"
        report "6 expected from 0000010"
        severity error;

    tb_i_Hex <= "0111";
    wait for 10 ns;
    assert tb_o_seg_n = "1111000"
        report "7 expected from 1111000"
        severity error;

    tb_i_Hex <= "1000";
    wait for 10 ns;
    assert tb_o_seg_n = "0000000"
        report "8 expected from 0000000"
        severity error;

    tb_i_Hex <= "1001";
    wait for 10 ns;
    assert tb_o_seg_n = "0010000"
        report "9 expected from 0010000"
        severity error;

    tb_i_Hex <= "1010";
    wait for 10 ns;
    assert tb_o_seg_n = "0001000"
        report "A expected from 0001000"
        severity error;

    tb_i_Hex <= "1011";
    wait for 10 ns;
    assert tb_o_seg_n = "0000011"
        report "b expected from 0000011"
        severity error;

    tb_i_Hex <= "1100";
    wait for 10 ns;
    assert tb_o_seg_n = "1000110"
        report "C expected from 1000110"
        severity error;

    tb_i_Hex <= "1101";
    wait for 10 ns;
    assert tb_o_seg_n = "0100001"
        report "d expected from 0100001"
        severity error;

    tb_i_Hex <= "1110";
    wait for 10 ns;
    assert tb_o_seg_n = "0000110"
        report "E expected from 0000110"
        severity error;

    tb_i_Hex <= "1111";
    wait for 10 ns;
    assert tb_o_seg_n = "0001110"
        report "F expected from 0001110"
        severity error;
            
        report "All test cases passed" severity note;
        wait;
        end process;
        
end test_bench;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY memoriaInst IS
    PORT (
        clock : IN std_logic;
        portIN : IN std_logic_vector(7 DOWNTO 0);
        portOUT : OUT std_logic_vector(7 DOWNTO 0)
    );
END memoriaInst;

ARCHITECTURE behavior OF memoriaInst IS
    TYPE memoria_Isnt IS ARRAY (0 TO 255) OF std_logic_vector(7 DOWNTO 0);
    CONSTANT rom : memoria_Isnt := (
    
	 --teste load_ime, add_ime, adicionar, subtrair, sub_ime, multiplicar
	 
    --0 => "01010010", -- load_ime S0 2 -- s0 = 2
    --1 => "00110111", -- add_ime S1 3 -- s1 = 3
	 --2 => "00000001", -- adicionar S0 S1 -- S0 = 5
	 --3 => "01010101", -- load_ime S1 1 -- s1 = 1
	 --4 => "00010001", -- subtrair s0 s1 -- s0 = 4
	 --5 => "01000010", -- sub_ime s0 2 -- s0 = 2
	 --6 => "01010111", -- load_ime S1 2 -- s1 = 3
	 --7 => "00100001", -- multiplicar s0 s1 -- s0 = 6
	 
	 -- Teste storew e loadw
    0 => "01010011", -- load_ime S0 3 -- S0 == 3
    1 => "01110000", -- storew S0 ram(00)
    2 => "01010110", -- load_ime S1 2 -- S1 == 2
    3 => "01110101", -- storew S1 ram(01)
    4 => "01010000", -- load_ime S0 0 -- s0 = 0
    5 => "01010101", -- load_ime S1 1 -- s1 = 1
    6 => "01100000", -- loadw S0 ram(00)
    7 => "01100101", -- loadw S1 ram(01)
    8 => "00000001", -- adicionar S0 S1 -- S0 == 5
	 OTHERS => "00000000");
	 
BEGIN
    PROCESS (clock)
    BEGIN
        portOUT <= rom(conv_integer(unsigned(portIN)));
    END PROCESS;
END behavior;
-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/11/2021 18:03:18"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador_mason IS
    PORT (
	clock : IN std_logic;
	out_out_pc : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_rom : BUFFER std_logic_vector(7 DOWNTO 0);
	out_opcode : BUFFER std_logic_vector(3 DOWNTO 0);
	out_rs : BUFFER std_logic_vector(1 DOWNTO 0);
	out_rt : BUFFER std_logic_vector(1 DOWNTO 0);
	out_endereco : BUFFER std_logic_vector(3 DOWNTO 0);
	out_out_br_reg_A : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_br_reg_B : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_ula_result : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_overflow : BUFFER std_logic;
	out_out_memAdress : BUFFER std_logic_vector(7 DOWNTO 0);
	out_out_mul_2X1_memAdress_ula : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END processador_mason;

ARCHITECTURE structure OF processador_mason IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_out_out_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_rom : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_rs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_rt : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_endereco : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out_out_br_reg_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_br_reg_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_ula_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_overflow : std_logic;
SIGNAL ww_out_out_memAdress : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_out_mul_2X1_memAdress_ula : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \out_out_pc[0]~output_o\ : std_logic;
SIGNAL \out_out_pc[1]~output_o\ : std_logic;
SIGNAL \out_out_pc[2]~output_o\ : std_logic;
SIGNAL \out_out_pc[3]~output_o\ : std_logic;
SIGNAL \out_out_pc[4]~output_o\ : std_logic;
SIGNAL \out_out_pc[5]~output_o\ : std_logic;
SIGNAL \out_out_pc[6]~output_o\ : std_logic;
SIGNAL \out_out_pc[7]~output_o\ : std_logic;
SIGNAL \out_out_rom[0]~output_o\ : std_logic;
SIGNAL \out_out_rom[1]~output_o\ : std_logic;
SIGNAL \out_out_rom[2]~output_o\ : std_logic;
SIGNAL \out_out_rom[3]~output_o\ : std_logic;
SIGNAL \out_out_rom[4]~output_o\ : std_logic;
SIGNAL \out_out_rom[5]~output_o\ : std_logic;
SIGNAL \out_out_rom[6]~output_o\ : std_logic;
SIGNAL \out_out_rom[7]~output_o\ : std_logic;
SIGNAL \out_opcode[0]~output_o\ : std_logic;
SIGNAL \out_opcode[1]~output_o\ : std_logic;
SIGNAL \out_opcode[2]~output_o\ : std_logic;
SIGNAL \out_opcode[3]~output_o\ : std_logic;
SIGNAL \out_rs[0]~output_o\ : std_logic;
SIGNAL \out_rs[1]~output_o\ : std_logic;
SIGNAL \out_rt[0]~output_o\ : std_logic;
SIGNAL \out_rt[1]~output_o\ : std_logic;
SIGNAL \out_endereco[0]~output_o\ : std_logic;
SIGNAL \out_endereco[1]~output_o\ : std_logic;
SIGNAL \out_endereco[2]~output_o\ : std_logic;
SIGNAL \out_endereco[3]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[0]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[1]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[2]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[3]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[4]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[5]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[6]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_A[7]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[0]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[1]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[2]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[3]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[4]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[5]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[6]~output_o\ : std_logic;
SIGNAL \out_out_br_reg_B[7]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[0]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[1]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[2]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[3]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[4]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[5]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[6]~output_o\ : std_logic;
SIGNAL \out_out_ula_result[7]~output_o\ : std_logic;
SIGNAL \out_out_overflow~output_o\ : std_logic;
SIGNAL \out_out_memAdress[0]~output_o\ : std_logic;
SIGNAL \out_out_memAdress[1]~output_o\ : std_logic;
SIGNAL \out_out_memAdress[2]~output_o\ : std_logic;
SIGNAL \out_out_memAdress[3]~output_o\ : std_logic;
SIGNAL \out_out_memAdress[4]~output_o\ : std_logic;
SIGNAL \out_out_memAdress[5]~output_o\ : std_logic;
SIGNAL \out_out_memAdress[6]~output_o\ : std_logic;
SIGNAL \out_out_memAdress[7]~output_o\ : std_logic;
SIGNAL \out_out_mul_2X1_memAdress_ula[0]~output_o\ : std_logic;
SIGNAL \out_out_mul_2X1_memAdress_ula[1]~output_o\ : std_logic;
SIGNAL \out_out_mul_2X1_memAdress_ula[2]~output_o\ : std_logic;
SIGNAL \out_out_mul_2X1_memAdress_ula[3]~output_o\ : std_logic;
SIGNAL \out_out_mul_2X1_memAdress_ula[4]~output_o\ : std_logic;
SIGNAL \out_out_mul_2X1_memAdress_ula[5]~output_o\ : std_logic;
SIGNAL \out_out_mul_2X1_memAdress_ula[6]~output_o\ : std_logic;
SIGNAL \out_out_mul_2X1_memAdress_ula[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \port_map_addPC|Add0~2\ : std_logic;
SIGNAL \port_map_addPC|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|portOUT[1]~2_combout\ : std_logic;
SIGNAL \port_map_addPC|Add0~6\ : std_logic;
SIGNAL \port_map_addPC|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|portOUT[2]~3_combout\ : std_logic;
SIGNAL \port_map_addPC|Add0~10\ : std_logic;
SIGNAL \port_map_addPC|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|portOUT[3]~4_combout\ : std_logic;
SIGNAL \port_map_addPC|Add0~14\ : std_logic;
SIGNAL \port_map_addPC|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|portOUT[4]~5_combout\ : std_logic;
SIGNAL \port_map_addPC|Add0~18\ : std_logic;
SIGNAL \port_map_addPC|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|portOUT[5]~6_combout\ : std_logic;
SIGNAL \port_map_addPC|Add0~22\ : std_logic;
SIGNAL \port_map_addPC|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|portOUT[6]~7_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux6~1_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux3~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux2~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux1~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux0~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux0~1_combout\ : std_logic;
SIGNAL \port_map_controle|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_controle|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_controle|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_controle|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~73_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~24_q\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux5~1_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~65_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~48_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~74_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~15_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~61_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~63_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~47_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~14_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~58_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~60_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~46_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~13_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~55_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~57_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~45_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~12_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~44_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~52_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~54_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~11_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~43_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux6~3_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~34_cout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_ual|Mux10~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_ual|Mux10~1_combout\ : std_logic;
SIGNAL \port_map_ual|Mux10~2_combout\ : std_logic;
SIGNAL \port_map_controle|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_controle|Mux3~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux6~2_wirecell_combout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[0]~0_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~19_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~51_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~2\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~2\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~30_cout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~1_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~1_sumout\ : std_logic;
SIGNAL \port_map_ual|Mux9~0_combout\ : std_logic;
SIGNAL \port_map_ual|Mux9~1_combout\ : std_logic;
SIGNAL \port_map_ual|Mux9~2_combout\ : std_logic;
SIGNAL \port_map_ual|Mux9~3_combout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[1]~1_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~20_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~53_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~6\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~6\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_ual|Mux8~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~26_cout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[2]~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[2]~1_combout\ : std_logic;
SIGNAL \port_map_ual|Mux8~1_combout\ : std_logic;
SIGNAL \port_map_ual|Mux8~2_combout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[2]~2_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~21_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~56_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~10\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~10\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_ual|Mux7~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~2_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~2_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~22_cout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[3]~2_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[3]~3_combout\ : std_logic;
SIGNAL \port_map_ual|Mux7~1_combout\ : std_logic;
SIGNAL \port_map_ual|Mux7~2_combout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[3]~3_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~22_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~59_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~14\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~14\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_ual|Mux6~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~3_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~4_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~4_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~5_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~18_cout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[4]~12_combout\ : std_logic;
SIGNAL \port_map_ual|Mux6~1_combout\ : std_logic;
SIGNAL \port_map_ual|Mux6~2_combout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[4]~4_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~23_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~62_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~18\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~18\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_ual|Mux5~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~3_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~5_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~6_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~7_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~8_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~9_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~6_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~14_cout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[5]~4_combout\ : std_logic;
SIGNAL \port_map_ual|Mux5~2_combout\ : std_logic;
SIGNAL \port_map_ual|Mux5~1_combout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[5]~5_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~16_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~64_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~66_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~17_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~67_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~68_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~69_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~7_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~8_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~10_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~11_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~12_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~13_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~14_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[6]~5_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~10_cout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[6]~6_combout\ : std_logic;
SIGNAL \port_map_ual|Mux1~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~22\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~22\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~25_sumout\ : std_logic;
SIGNAL \port_map_ual|Mux4~0_combout\ : std_logic;
SIGNAL \port_map_ual|Mux4~2_combout\ : std_logic;
SIGNAL \port_map_ual|Mux4~1_combout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[6]~6_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~25_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~49_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~18_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~70_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~71_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~72_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|process_0~9_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~15_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~16_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~17_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~18_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~19_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~20_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~6_cout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[7]~7_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[7]~8_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~26\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~26\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_ual|Mux3~0_combout\ : std_logic;
SIGNAL \port_map_ual|Mux3~2_combout\ : std_logic;
SIGNAL \port_map_ual|Mux3~1_combout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[7]~7_combout\ : std_logic;
SIGNAL \port_map_registradores|registrador~26_q\ : std_logic;
SIGNAL \port_map_registradores|registrador~50_combout\ : std_logic;
SIGNAL \port_map_ual|Equal0~0_combout\ : std_logic;
SIGNAL \port_map_ual|Equal0~1_combout\ : std_logic;
SIGNAL \port_map_ual|Equal0~2_combout\ : std_logic;
SIGNAL \port_map_ual|Equal0~3_combout\ : std_logic;
SIGNAL \port_map_ual|Mux11~0_combout\ : std_logic;
SIGNAL \port_map_ual|in_tempZero~combout\ : std_logic;
SIGNAL \port_map_ual|Mux12~0_combout\ : std_logic;
SIGNAL \port_map_ual|Mux13~0_combout\ : std_logic;
SIGNAL \port_map_ual|zero~combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ : std_logic;
SIGNAL \port_map_addPC|Add0~26\ : std_logic;
SIGNAL \port_map_addPC|Add0~29_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|portOUT[7]~8_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|Mux6~2_combout\ : std_logic;
SIGNAL \port_map_addPC|Add0~1_sumout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|portOUT[0]~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add1~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add2~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~21_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~34\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~22_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add3~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add4~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~32_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~34\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~23_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~37_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add5~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add6~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~33_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~34\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~24_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~29_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~38_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add7~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add8~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~44_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~34\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~25_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~27_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~30_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~45_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add9~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add10~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~34_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~35_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~43_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~34\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~26_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~28_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~31_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~39_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~40_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~42_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~36_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~41_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~26\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[13]~9_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~2\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~6\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~17_sumout\ : std_logic;
SIGNAL \port_map_ual|process_0~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~25_sumout\ : std_logic;
SIGNAL \port_map_ual|process_0~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~14\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~18\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add12~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[14]~10_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add11~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|portOUT[14]~11_combout\ : std_logic;
SIGNAL \port_map_ual|process_0~2_combout\ : std_logic;
SIGNAL \port_map_ual|process_0~3_combout\ : std_logic;
SIGNAL \port_map_ual|process_0~4_combout\ : std_logic;
SIGNAL \port_map_ual|process_0~5_combout\ : std_logic;
SIGNAL \port_map_ual|process_0~6_combout\ : std_logic;
SIGNAL \port_map_ual|process_0~7_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|produto~46_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~22\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~30\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add13~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~10\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~34\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|Add14~33_sumout\ : std_logic;
SIGNAL \port_map_ual|process_0~8_combout\ : std_logic;
SIGNAL \port_map_ual|process_0~9_combout\ : std_logic;
SIGNAL \port_map_ual|overflow~combout\ : std_logic;
SIGNAL \port_map_pc|portOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add12~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add13~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add14~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add14~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add13~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add13~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add14~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add14~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add13~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add13~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add14~9_sumout\ : std_logic;
SIGNAL \port_map_addPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \port_map_addPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \port_map_addPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \port_map_addPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \port_map_addPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \port_map_addPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \port_map_addPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \port_map_addPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ : std_logic;
SIGNAL \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add13~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add14~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_adicionador|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_subtrair|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[3]~3_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[3]~2_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~2_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[2]~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[2]~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~0_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\ : std_logic;
SIGNAL \port_map_controle|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\ : std_logic;
SIGNAL \port_map_controle|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \port_map_controle|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~72_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~71_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~70_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~69_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~68_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~67_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~66_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~65_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~64_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~63_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~62_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~61_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~60_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~59_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~58_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~57_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~56_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~55_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~54_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~53_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~52_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~51_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~50_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~49_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~48_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~47_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~46_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~45_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~44_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~43_combout\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \port_map_registradores|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \port_map_pc|ALT_INV_portOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[4]~12_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add14~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add14~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add13~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add13~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add10~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add8~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add6~33_sumout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_in_tempZero~combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_zero~combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_overflow~combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~46_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~45_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~44_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~43_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~42_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~41_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~40_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~39_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~38_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~37_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~36_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~35_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~34_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~33_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~32_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~31_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~30_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~29_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~28_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~27_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~26_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[14]~11_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[14]~10_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~25_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~24_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~23_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~22_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~21_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[13]~9_combout\ : std_logic;
SIGNAL \port_map_memoriaInst|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \port_map_controle|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\ : std_logic;
SIGNAL \port_map_controle|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[7]~8_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~20_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~19_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~18_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~17_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~16_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~15_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[7]~7_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[6]~6_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~14_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~13_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~12_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~11_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~10_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[6]~5_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[5]~4_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~9_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~8_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~7_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~6_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \port_map_ual|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~5_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~4_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_produto~3_combout\ : std_logic;
SIGNAL \port_map_ual|portMap_multiplexador|ALT_INV_process_0~4_combout\ : std_logic;

BEGIN

ww_clock <= clock;
out_out_pc <= ww_out_out_pc;
out_out_rom <= ww_out_out_rom;
out_opcode <= ww_out_opcode;
out_rs <= ww_out_rs;
out_rt <= ww_out_rt;
out_endereco <= ww_out_endereco;
out_out_br_reg_A <= ww_out_out_br_reg_A;
out_out_br_reg_B <= ww_out_out_br_reg_B;
out_out_ula_result <= ww_out_out_ula_result;
out_out_overflow <= ww_out_out_overflow;
out_out_memAdress <= ww_out_out_memAdress;
out_out_mul_2X1_memAdress_ula <= ww_out_out_mul_2X1_memAdress_ula;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \port_map_ual|Mux10~2_combout\;

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \port_map_ual|Mux9~3_combout\;

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \port_map_ual|Mux8~2_combout\;

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \port_map_ual|Mux7~2_combout\;

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \port_map_ual|Mux6~2_combout\;

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \port_map_ual|Mux5~1_combout\;

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \port_map_ual|Mux4~1_combout\;

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \port_map_ual|Mux3~1_combout\;

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\port_map_memoriaInst|Mux5~1_combout\ & \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);
\port_map_ual|portMap_multiplexador|ALT_INV_Add7~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add7~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add12~33_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add12~33_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add7~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add7~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add8~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add8~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add6~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add6~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add4~33_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add4~33_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add3~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add3~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add5~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add5~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add10~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add10~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add9~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add9~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add12~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add12~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add12~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add12~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add10~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add10~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add8~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add8~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add7~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add7~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add9~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add9~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add12~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add12~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add10~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add10~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add9~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add9~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add12~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add12~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add11~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add11~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add12~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add12~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add10~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add10~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add8~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add8~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add6~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add6~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add4~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add4~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add2~33_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add2~33_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add1~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add1~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add3~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add3~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add5~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add5~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add7~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add7~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add9~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add9~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add13~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add13~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add14~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add14~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add14~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add14~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add13~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add13~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add13~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add13~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add14~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add14~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add14~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add14~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add13~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add13~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add13~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add13~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add14~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add14~9_sumout\;
\port_map_addPC|ALT_INV_Add0~29_sumout\ <= NOT \port_map_addPC|Add0~29_sumout\;
\port_map_addPC|ALT_INV_Add0~25_sumout\ <= NOT \port_map_addPC|Add0~25_sumout\;
\port_map_addPC|ALT_INV_Add0~21_sumout\ <= NOT \port_map_addPC|Add0~21_sumout\;
\port_map_addPC|ALT_INV_Add0~17_sumout\ <= NOT \port_map_addPC|Add0~17_sumout\;
\port_map_addPC|ALT_INV_Add0~13_sumout\ <= NOT \port_map_addPC|Add0~13_sumout\;
\port_map_addPC|ALT_INV_Add0~9_sumout\ <= NOT \port_map_addPC|Add0~9_sumout\;
\port_map_addPC|ALT_INV_Add0~5_sumout\ <= NOT \port_map_addPC|Add0~5_sumout\;
\port_map_addPC|ALT_INV_Add0~1_sumout\ <= NOT \port_map_addPC|Add0~1_sumout\;
\port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\ <= NOT \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\;
\port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\ <= NOT \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\;
\port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\ <= NOT \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\;
\port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\ <= NOT \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\;
\port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\ <= NOT \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\;
\port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\ <= NOT \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\;
\port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\ <= NOT \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\;
\port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\;
\port_map_ual|portMap_subtrair|ALT_INV_Add0~29_sumout\ <= NOT \port_map_ual|portMap_subtrair|Add0~29_sumout\;
\port_map_ual|portMap_adicionador|ALT_INV_Add0~29_sumout\ <= NOT \port_map_ual|portMap_adicionador|Add0~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add13~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add13~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add11~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add11~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add12~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add12~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add10~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add10~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add8~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add8~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add6~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add6~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add4~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add4~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add2~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add2~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add0~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add0~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add1~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add1~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add3~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add3~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add5~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add5~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add7~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add7~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add9~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add9~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add14~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add14~1_sumout\;
\port_map_ual|portMap_subtrair|ALT_INV_Add0~25_sumout\ <= NOT \port_map_ual|portMap_subtrair|Add0~25_sumout\;
\port_map_ual|portMap_adicionador|ALT_INV_Add0~25_sumout\ <= NOT \port_map_ual|portMap_adicionador|Add0~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add12~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add12~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add9~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add9~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add10~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add10~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add8~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add8~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add6~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add6~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add4~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add4~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add2~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add2~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add0~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add0~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add1~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add1~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add3~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add3~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add5~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add5~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add7~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add7~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add11~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add11~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add10~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add10~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add7~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add7~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add8~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add8~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add6~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add6~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add4~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add4~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add2~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add2~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add0~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add0~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add1~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add1~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add3~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add3~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add5~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add5~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add9~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add9~1_sumout\;
\port_map_ual|portMap_adicionador|ALT_INV_Add0~21_sumout\ <= NOT \port_map_ual|portMap_adicionador|Add0~21_sumout\;
\port_map_ual|portMap_subtrair|ALT_INV_Add0~21_sumout\ <= NOT \port_map_ual|portMap_subtrair|Add0~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add5~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add5~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add6~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add6~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add4~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add4~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add2~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add2~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add0~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add0~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add1~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add1~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add3~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add3~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add8~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add8~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add7~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add7~1_sumout\;
\port_map_ual|portMap_adicionador|ALT_INV_Add0~17_sumout\ <= NOT \port_map_ual|portMap_adicionador|Add0~17_sumout\;
\port_map_ual|portMap_subtrair|ALT_INV_Add0~17_sumout\ <= NOT \port_map_ual|portMap_subtrair|Add0~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add4~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add4~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add2~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add2~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add0~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add0~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add1~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add1~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add3~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add3~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add6~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add6~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add5~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add5~1_sumout\;
\port_map_ual|portMap_adicionador|ALT_INV_Add0~13_sumout\ <= NOT \port_map_ual|portMap_adicionador|Add0~13_sumout\;
\port_map_ual|portMap_subtrair|ALT_INV_Add0~13_sumout\ <= NOT \port_map_ual|portMap_subtrair|Add0~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add2~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add2~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add0~9_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add0~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add1~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add1~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add4~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add4~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add3~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add3~1_sumout\;
\port_map_ual|portMap_adicionador|ALT_INV_Add0~9_sumout\ <= NOT \port_map_ual|portMap_adicionador|Add0~9_sumout\;
\port_map_ual|portMap_subtrair|ALT_INV_Add0~9_sumout\ <= NOT \port_map_ual|portMap_subtrair|Add0~9_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add1~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add1~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add2~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add2~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add0~5_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add0~5_sumout\;
\port_map_ual|portMap_subtrair|ALT_INV_Add0~5_sumout\ <= NOT \port_map_ual|portMap_subtrair|Add0~5_sumout\;
\port_map_ual|portMap_adicionador|ALT_INV_Add0~5_sumout\ <= NOT \port_map_ual|portMap_adicionador|Add0~5_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add0~1_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add0~1_sumout\;
\port_map_ual|portMap_adicionador|ALT_INV_Add0~1_sumout\ <= NOT \port_map_ual|portMap_adicionador|Add0~1_sumout\;
\port_map_ual|portMap_subtrair|ALT_INV_Add0~1_sumout\ <= NOT \port_map_ual|portMap_subtrair|Add0~1_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~3_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~3_combout\;
\port_map_ual|ALT_INV_Mux6~0_combout\ <= NOT \port_map_ual|Mux6~0_combout\;
\port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\ <= NOT \port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\;
\port_map_ual|ALT_INV_Mux7~2_combout\ <= NOT \port_map_ual|Mux7~2_combout\;
\port_map_ual|ALT_INV_Mux7~1_combout\ <= NOT \port_map_ual|Mux7~1_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[3]~3_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[3]~3_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[3]~2_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[3]~2_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~2_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~2_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~1_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~1_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~2_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~2_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~1_combout\;
\port_map_ual|ALT_INV_Mux7~0_combout\ <= NOT \port_map_ual|Mux7~0_combout\;
\port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\ <= NOT \port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\;
\port_map_ual|ALT_INV_Mux8~2_combout\ <= NOT \port_map_ual|Mux8~2_combout\;
\port_map_ual|ALT_INV_Mux8~1_combout\ <= NOT \port_map_ual|Mux8~1_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[2]~1_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[2]~1_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[2]~0_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[2]~0_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~0_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~0_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~0_combout\;
\port_map_ual|ALT_INV_Mux8~0_combout\ <= NOT \port_map_ual|Mux8~0_combout\;
\port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\ <= NOT \port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\;
\port_map_ual|ALT_INV_Mux9~3_combout\ <= NOT \port_map_ual|Mux9~3_combout\;
\port_map_ual|ALT_INV_Mux9~2_combout\ <= NOT \port_map_ual|Mux9~2_combout\;
\port_map_ual|ALT_INV_Mux9~1_combout\ <= NOT \port_map_ual|Mux9~1_combout\;
\port_map_ual|ALT_INV_Mux9~0_combout\ <= NOT \port_map_ual|Mux9~0_combout\;
\port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\ <= NOT \port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\;
\port_map_controle|ALT_INV_Mux4~0_combout\ <= NOT \port_map_controle|Mux4~0_combout\;
\port_map_ual|ALT_INV_Mux10~2_combout\ <= NOT \port_map_ual|Mux10~2_combout\;
\port_map_ual|ALT_INV_Mux10~1_combout\ <= NOT \port_map_ual|Mux10~1_combout\;
\port_map_ual|ALT_INV_Mux10~0_combout\ <= NOT \port_map_ual|Mux10~0_combout\;
\port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\ <= NOT \port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\;
\port_map_controle|ALT_INV_Mux7~0_combout\ <= NOT \port_map_controle|Mux7~0_combout\;
\port_map_controle|ALT_INV_Mux5~0_combout\ <= NOT \port_map_controle|Mux5~0_combout\;
\port_map_registradores|ALT_INV_registrador~72_combout\ <= NOT \port_map_registradores|registrador~72_combout\;
\port_map_registradores|ALT_INV_registrador~71_combout\ <= NOT \port_map_registradores|registrador~71_combout\;
\port_map_registradores|ALT_INV_registrador~70_combout\ <= NOT \port_map_registradores|registrador~70_combout\;
\port_map_registradores|ALT_INV_registrador~69_combout\ <= NOT \port_map_registradores|registrador~69_combout\;
\port_map_registradores|ALT_INV_registrador~68_combout\ <= NOT \port_map_registradores|registrador~68_combout\;
\port_map_registradores|ALT_INV_registrador~67_combout\ <= NOT \port_map_registradores|registrador~67_combout\;
\port_map_registradores|ALT_INV_registrador~66_combout\ <= NOT \port_map_registradores|registrador~66_combout\;
\port_map_registradores|ALT_INV_registrador~65_combout\ <= NOT \port_map_registradores|registrador~65_combout\;
\port_map_registradores|ALT_INV_registrador~64_combout\ <= NOT \port_map_registradores|registrador~64_combout\;
\port_map_registradores|ALT_INV_registrador~63_combout\ <= NOT \port_map_registradores|registrador~63_combout\;
\port_map_registradores|ALT_INV_registrador~62_combout\ <= NOT \port_map_registradores|registrador~62_combout\;
\port_map_registradores|ALT_INV_registrador~61_combout\ <= NOT \port_map_registradores|registrador~61_combout\;
\port_map_registradores|ALT_INV_registrador~60_combout\ <= NOT \port_map_registradores|registrador~60_combout\;
\port_map_registradores|ALT_INV_registrador~59_combout\ <= NOT \port_map_registradores|registrador~59_combout\;
\port_map_registradores|ALT_INV_registrador~58_combout\ <= NOT \port_map_registradores|registrador~58_combout\;
\port_map_registradores|ALT_INV_registrador~57_combout\ <= NOT \port_map_registradores|registrador~57_combout\;
\port_map_registradores|ALT_INV_registrador~56_combout\ <= NOT \port_map_registradores|registrador~56_combout\;
\port_map_registradores|ALT_INV_registrador~55_combout\ <= NOT \port_map_registradores|registrador~55_combout\;
\port_map_registradores|ALT_INV_registrador~54_combout\ <= NOT \port_map_registradores|registrador~54_combout\;
\port_map_registradores|ALT_INV_registrador~53_combout\ <= NOT \port_map_registradores|registrador~53_combout\;
\port_map_registradores|ALT_INV_registrador~52_combout\ <= NOT \port_map_registradores|registrador~52_combout\;
\port_map_registradores|ALT_INV_registrador~51_combout\ <= NOT \port_map_registradores|registrador~51_combout\;
\port_map_registradores|ALT_INV_registrador~50_combout\ <= NOT \port_map_registradores|registrador~50_combout\;
\port_map_registradores|ALT_INV_registrador~18_q\ <= NOT \port_map_registradores|registrador~18_q\;
\port_map_registradores|ALT_INV_registrador~26_q\ <= NOT \port_map_registradores|registrador~26_q\;
\port_map_registradores|ALT_INV_registrador~49_combout\ <= NOT \port_map_registradores|registrador~49_combout\;
\port_map_registradores|ALT_INV_registrador~17_q\ <= NOT \port_map_registradores|registrador~17_q\;
\port_map_registradores|ALT_INV_registrador~25_q\ <= NOT \port_map_registradores|registrador~25_q\;
\port_map_registradores|ALT_INV_registrador~48_combout\ <= NOT \port_map_registradores|registrador~48_combout\;
\port_map_registradores|ALT_INV_registrador~16_q\ <= NOT \port_map_registradores|registrador~16_q\;
\port_map_registradores|ALT_INV_registrador~24_q\ <= NOT \port_map_registradores|registrador~24_q\;
\port_map_registradores|ALT_INV_registrador~47_combout\ <= NOT \port_map_registradores|registrador~47_combout\;
\port_map_registradores|ALT_INV_registrador~15_q\ <= NOT \port_map_registradores|registrador~15_q\;
\port_map_registradores|ALT_INV_registrador~23_q\ <= NOT \port_map_registradores|registrador~23_q\;
\port_map_registradores|ALT_INV_registrador~46_combout\ <= NOT \port_map_registradores|registrador~46_combout\;
\port_map_registradores|ALT_INV_registrador~14_q\ <= NOT \port_map_registradores|registrador~14_q\;
\port_map_registradores|ALT_INV_registrador~22_q\ <= NOT \port_map_registradores|registrador~22_q\;
\port_map_registradores|ALT_INV_registrador~45_combout\ <= NOT \port_map_registradores|registrador~45_combout\;
\port_map_registradores|ALT_INV_registrador~13_q\ <= NOT \port_map_registradores|registrador~13_q\;
\port_map_registradores|ALT_INV_registrador~21_q\ <= NOT \port_map_registradores|registrador~21_q\;
\port_map_registradores|ALT_INV_registrador~44_combout\ <= NOT \port_map_registradores|registrador~44_combout\;
\port_map_registradores|ALT_INV_registrador~12_q\ <= NOT \port_map_registradores|registrador~12_q\;
\port_map_registradores|ALT_INV_registrador~20_q\ <= NOT \port_map_registradores|registrador~20_q\;
\port_map_registradores|ALT_INV_registrador~43_combout\ <= NOT \port_map_registradores|registrador~43_combout\;
\port_map_registradores|ALT_INV_registrador~11_q\ <= NOT \port_map_registradores|registrador~11_q\;
\port_map_registradores|ALT_INV_registrador~19_q\ <= NOT \port_map_registradores|registrador~19_q\;
\port_map_memoriaInst|ALT_INV_Mux0~1_combout\ <= NOT \port_map_memoriaInst|Mux0~1_combout\;
\port_map_memoriaInst|ALT_INV_Mux4~0_combout\ <= NOT \port_map_memoriaInst|Mux4~0_combout\;
\port_map_memoriaInst|ALT_INV_Mux0~0_combout\ <= NOT \port_map_memoriaInst|Mux0~0_combout\;
\port_map_memoriaInst|ALT_INV_Mux5~1_combout\ <= NOT \port_map_memoriaInst|Mux5~1_combout\;
\port_map_memoriaInst|ALT_INV_Mux5~0_combout\ <= NOT \port_map_memoriaInst|Mux5~0_combout\;
\port_map_memoriaInst|ALT_INV_Mux6~2_combout\ <= NOT \port_map_memoriaInst|Mux6~2_combout\;
\port_map_memoriaInst|ALT_INV_Mux6~1_combout\ <= NOT \port_map_memoriaInst|Mux6~1_combout\;
\port_map_memoriaInst|ALT_INV_Mux6~0_combout\ <= NOT \port_map_memoriaInst|Mux6~0_combout\;
\port_map_pc|ALT_INV_portOUT\(7) <= NOT \port_map_pc|portOUT\(7);
\port_map_pc|ALT_INV_portOUT\(6) <= NOT \port_map_pc|portOUT\(6);
\port_map_pc|ALT_INV_portOUT\(5) <= NOT \port_map_pc|portOUT\(5);
\port_map_pc|ALT_INV_portOUT\(4) <= NOT \port_map_pc|portOUT\(4);
\port_map_pc|ALT_INV_portOUT\(3) <= NOT \port_map_pc|portOUT\(3);
\port_map_pc|ALT_INV_portOUT\(2) <= NOT \port_map_pc|portOUT\(2);
\port_map_pc|ALT_INV_portOUT\(1) <= NOT \port_map_pc|portOUT\(1);
\port_map_pc|ALT_INV_portOUT\(0) <= NOT \port_map_pc|portOUT\(0);
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[4]~12_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[4]~12_combout\;
\port_map_ual|ALT_INV_Mux5~2_combout\ <= NOT \port_map_ual|Mux5~2_combout\;
\port_map_ual|ALT_INV_Mux4~2_combout\ <= NOT \port_map_ual|Mux4~2_combout\;
\port_map_ual|ALT_INV_Mux3~2_combout\ <= NOT \port_map_ual|Mux3~2_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add14~33_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add14~33_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add14~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add14~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add13~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add13~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add13~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add13~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add11~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add11~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add11~25_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add11~25_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add11~21_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add11~21_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add11~17_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add11~17_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add11~13_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add11~13_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add9~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add9~29_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add10~33_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add10~33_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add8~33_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add8~33_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add6~33_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add6~33_sumout\;
\port_map_ual|portMap_multiplexador|ALT_INV_Add5~29_sumout\ <= NOT \port_map_ual|portMap_multiplexador|Add5~29_sumout\;
\port_map_ual|ALT_INV_in_tempZero~combout\ <= NOT \port_map_ual|in_tempZero~combout\;
\port_map_ual|ALT_INV_zero~combout\ <= NOT \port_map_ual|zero~combout\;
\port_map_ual|ALT_INV_overflow~combout\ <= NOT \port_map_ual|overflow~combout\;
\port_map_memoriaInst|ALT_INV_Mux3~0_combout\ <= NOT \port_map_memoriaInst|Mux3~0_combout\;
\port_map_memoriaInst|ALT_INV_Mux2~0_combout\ <= NOT \port_map_memoriaInst|Mux2~0_combout\;
\port_map_memoriaInst|ALT_INV_Mux1~0_combout\ <= NOT \port_map_memoriaInst|Mux1~0_combout\;
\port_map_ual|ALT_INV_Mux11~0_combout\ <= NOT \port_map_ual|Mux11~0_combout\;
\port_map_ual|ALT_INV_Equal0~3_combout\ <= NOT \port_map_ual|Equal0~3_combout\;
\port_map_ual|ALT_INV_Equal0~2_combout\ <= NOT \port_map_ual|Equal0~2_combout\;
\port_map_ual|ALT_INV_Equal0~1_combout\ <= NOT \port_map_ual|Equal0~1_combout\;
\port_map_ual|ALT_INV_Equal0~0_combout\ <= NOT \port_map_ual|Equal0~0_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~46_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~46_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~45_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~45_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~44_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~44_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~43_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~43_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~42_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~42_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~41_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~41_combout\;
\port_map_ual|ALT_INV_Mux13~0_combout\ <= NOT \port_map_ual|Mux13~0_combout\;
\port_map_ual|ALT_INV_Mux12~0_combout\ <= NOT \port_map_ual|Mux12~0_combout\;
\port_map_ual|ALT_INV_process_0~9_combout\ <= NOT \port_map_ual|process_0~9_combout\;
\port_map_ual|ALT_INV_process_0~8_combout\ <= NOT \port_map_ual|process_0~8_combout\;
\port_map_ual|ALT_INV_process_0~7_combout\ <= NOT \port_map_ual|process_0~7_combout\;
\port_map_ual|ALT_INV_process_0~6_combout\ <= NOT \port_map_ual|process_0~6_combout\;
\port_map_ual|ALT_INV_process_0~5_combout\ <= NOT \port_map_ual|process_0~5_combout\;
\port_map_ual|ALT_INV_process_0~4_combout\ <= NOT \port_map_ual|process_0~4_combout\;
\port_map_ual|ALT_INV_process_0~3_combout\ <= NOT \port_map_ual|process_0~3_combout\;
\port_map_ual|ALT_INV_process_0~2_combout\ <= NOT \port_map_ual|process_0~2_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~40_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~40_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~39_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~39_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~38_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~38_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~37_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~37_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~36_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~36_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~35_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~35_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~34_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~34_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~33_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~33_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~32_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~32_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~31_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~31_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~30_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~30_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~29_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~29_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~28_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~28_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~27_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~27_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~26_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~26_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[14]~11_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[14]~11_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[14]~10_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[14]~10_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~25_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~25_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~24_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~24_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~23_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~23_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~22_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~22_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~21_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~21_combout\;
\port_map_ual|ALT_INV_process_0~1_combout\ <= NOT \port_map_ual|process_0~1_combout\;
\port_map_ual|ALT_INV_process_0~0_combout\ <= NOT \port_map_ual|process_0~0_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[13]~9_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[13]~9_combout\;
\port_map_memoriaInst|ALT_INV_Mux6~3_combout\ <= NOT \port_map_memoriaInst|Mux6~3_combout\;
\port_map_controle|ALT_INV_Mux8~0_combout\ <= NOT \port_map_controle|Mux8~0_combout\;
\port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\ <= NOT \port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\;
\port_map_controle|ALT_INV_Mux3~0_combout\ <= NOT \port_map_controle|Mux3~0_combout\;
\port_map_ual|ALT_INV_Mux3~0_combout\ <= NOT \port_map_ual|Mux3~0_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[7]~8_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[7]~8_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~20_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~20_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~19_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~19_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~18_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~18_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~17_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~17_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~16_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~16_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~15_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~15_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~9_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[7]~7_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[7]~7_combout\;
\port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\ <= NOT \port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\;
\port_map_ual|ALT_INV_Mux4~0_combout\ <= NOT \port_map_ual|Mux4~0_combout\;
\port_map_ual|ALT_INV_Mux1~0_combout\ <= NOT \port_map_ual|Mux1~0_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[6]~6_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[6]~6_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~14_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~14_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~13_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~13_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~12_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~12_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~11_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~11_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~10_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~10_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~8_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~8_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~7_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~7_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[6]~5_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[6]~5_combout\;
\port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\ <= NOT \port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_portOUT[5]~4_combout\ <= NOT \port_map_ual|portMap_multiplexador|portOUT[5]~4_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~9_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~9_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~8_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~8_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~7_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~7_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~6_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~6_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~6_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~6_combout\;
\port_map_ual|ALT_INV_Mux5~0_combout\ <= NOT \port_map_ual|Mux5~0_combout\;
\port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\ <= NOT \port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\;
\port_map_ual|ALT_INV_Mux6~2_combout\ <= NOT \port_map_ual|Mux6~2_combout\;
\port_map_ual|ALT_INV_Mux6~1_combout\ <= NOT \port_map_ual|Mux6~1_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~5_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~5_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~5_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~5_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~4_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~4_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_produto~3_combout\ <= NOT \port_map_ual|portMap_multiplexador|produto~3_combout\;
\port_map_ual|portMap_multiplexador|ALT_INV_process_0~4_combout\ <= NOT \port_map_ual|portMap_multiplexador|process_0~4_combout\;

\out_out_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|portOUT\(0),
	devoe => ww_devoe,
	o => \out_out_pc[0]~output_o\);

\out_out_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|portOUT\(1),
	devoe => ww_devoe,
	o => \out_out_pc[1]~output_o\);

\out_out_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|portOUT\(2),
	devoe => ww_devoe,
	o => \out_out_pc[2]~output_o\);

\out_out_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|portOUT\(3),
	devoe => ww_devoe,
	o => \out_out_pc[3]~output_o\);

\out_out_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|portOUT\(4),
	devoe => ww_devoe,
	o => \out_out_pc[4]~output_o\);

\out_out_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|portOUT\(5),
	devoe => ww_devoe,
	o => \out_out_pc[5]~output_o\);

\out_out_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|portOUT\(6),
	devoe => ww_devoe,
	o => \out_out_pc[6]~output_o\);

\out_out_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_pc|portOUT\(7),
	devoe => ww_devoe,
	o => \out_out_pc[7]~output_o\);

\out_out_rom[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[0]~output_o\);

\out_out_rom[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[1]~output_o\);

\out_out_rom[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[2]~output_o\);

\out_out_rom[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_out_rom[3]~output_o\);

\out_out_rom[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[4]~output_o\);

\out_out_rom[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[5]~output_o\);

\out_out_rom[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[6]~output_o\);

\out_out_rom[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \out_out_rom[7]~output_o\);

\out_opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \out_opcode[0]~output_o\);

\out_opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \out_opcode[1]~output_o\);

\out_opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \out_opcode[2]~output_o\);

\out_opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \out_opcode[3]~output_o\);

\out_rs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \out_rs[0]~output_o\);

\out_rs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_rs[1]~output_o\);

\out_rt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	devoe => ww_devoe,
	o => \out_rt[0]~output_o\);

\out_rt[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \out_rt[1]~output_o\);

\out_endereco[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	devoe => ww_devoe,
	o => \out_endereco[0]~output_o\);

\out_endereco[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \out_endereco[1]~output_o\);

\out_endereco[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaInst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \out_endereco[2]~output_o\);

\out_endereco[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_endereco[3]~output_o\);

\out_out_br_reg_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~43_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[0]~output_o\);

\out_out_br_reg_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~44_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[1]~output_o\);

\out_out_br_reg_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~45_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[2]~output_o\);

\out_out_br_reg_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~46_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[3]~output_o\);

\out_out_br_reg_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~47_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[4]~output_o\);

\out_out_br_reg_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~48_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[5]~output_o\);

\out_out_br_reg_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~49_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[6]~output_o\);

\out_out_br_reg_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~50_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_A[7]~output_o\);

\out_out_br_reg_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~51_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[0]~output_o\);

\out_out_br_reg_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~54_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[1]~output_o\);

\out_out_br_reg_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~57_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[2]~output_o\);

\out_out_br_reg_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~60_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[3]~output_o\);

\out_out_br_reg_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~63_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[4]~output_o\);

\out_out_br_reg_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~66_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[5]~output_o\);

\out_out_br_reg_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~69_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[6]~output_o\);

\out_out_br_reg_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_registradores|registrador~72_combout\,
	devoe => ww_devoe,
	o => \out_out_br_reg_B[7]~output_o\);

\out_out_ula_result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ual|Mux10~2_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[0]~output_o\);

\out_out_ula_result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ual|Mux9~3_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[1]~output_o\);

\out_out_ula_result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ual|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[2]~output_o\);

\out_out_ula_result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ual|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[3]~output_o\);

\out_out_ula_result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ual|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[4]~output_o\);

\out_out_ula_result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ual|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[5]~output_o\);

\out_out_ula_result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ual|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[6]~output_o\);

\out_out_ula_result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ual|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \out_out_ula_result[7]~output_o\);

\out_out_overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_ual|overflow~combout\,
	devoe => ww_devoe,
	o => \out_out_overflow~output_o\);

\out_out_memAdress[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \out_out_memAdress[0]~output_o\);

\out_out_memAdress[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	devoe => ww_devoe,
	o => \out_out_memAdress[1]~output_o\);

\out_out_memAdress[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	devoe => ww_devoe,
	o => \out_out_memAdress[2]~output_o\);

\out_out_memAdress[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	devoe => ww_devoe,
	o => \out_out_memAdress[3]~output_o\);

\out_out_memAdress[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	devoe => ww_devoe,
	o => \out_out_memAdress[4]~output_o\);

\out_out_memAdress[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	devoe => ww_devoe,
	o => \out_out_memAdress[5]~output_o\);

\out_out_memAdress[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	devoe => ww_devoe,
	o => \out_out_memAdress[6]~output_o\);

\out_out_memAdress[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	devoe => ww_devoe,
	o => \out_out_memAdress[7]~output_o\);

\out_out_mul_2X1_memAdress_ula[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2X1_memAdress_ula[0]~output_o\);

\out_out_mul_2X1_memAdress_ula[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[1]~1_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2X1_memAdress_ula[1]~output_o\);

\out_out_mul_2X1_memAdress_ula[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2X1_memAdress_ula[2]~output_o\);

\out_out_mul_2X1_memAdress_ula[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2X1_memAdress_ula[3]~output_o\);

\out_out_mul_2X1_memAdress_ula[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2X1_memAdress_ula[4]~output_o\);

\out_out_mul_2X1_memAdress_ula[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[5]~5_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2X1_memAdress_ula[5]~output_o\);

\out_out_mul_2X1_memAdress_ula[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[6]~6_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2X1_memAdress_ula[6]~output_o\);

\out_out_mul_2X1_memAdress_ula[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[7]~7_combout\,
	devoe => ww_devoe,
	o => \out_out_mul_2X1_memAdress_ula[7]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\port_map_addPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addPC|Add0~1_sumout\ = SUM(( \port_map_pc|portOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \port_map_addPC|Add0~2\ = CARRY(( \port_map_pc|portOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_portOUT\(0),
	cin => GND,
	sumout => \port_map_addPC|Add0~1_sumout\,
	cout => \port_map_addPC|Add0~2\);

\port_map_addPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addPC|Add0~5_sumout\ = SUM(( \port_map_pc|portOUT\(1) ) + ( GND ) + ( \port_map_addPC|Add0~2\ ))
-- \port_map_addPC|Add0~6\ = CARRY(( \port_map_pc|portOUT\(1) ) + ( GND ) + ( \port_map_addPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_portOUT\(1),
	cin => \port_map_addPC|Add0~2\,
	sumout => \port_map_addPC|Add0~5_sumout\,
	cout => \port_map_addPC|Add0~6\);

\port_map_multiplexador_2X1_8bits_jump|portOUT[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_jump|portOUT[1]~2_combout\ = (!\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ & \port_map_addPC|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\,
	datab => \port_map_addPC|ALT_INV_Add0~5_sumout\,
	combout => \port_map_multiplexador_2X1_8bits_jump|portOUT[1]~2_combout\);

\port_map_pc|portOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_jump|portOUT[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|portOUT\(1));

\port_map_addPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addPC|Add0~9_sumout\ = SUM(( \port_map_pc|portOUT\(2) ) + ( GND ) + ( \port_map_addPC|Add0~6\ ))
-- \port_map_addPC|Add0~10\ = CARRY(( \port_map_pc|portOUT\(2) ) + ( GND ) + ( \port_map_addPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_portOUT\(2),
	cin => \port_map_addPC|Add0~6\,
	sumout => \port_map_addPC|Add0~9_sumout\,
	cout => \port_map_addPC|Add0~10\);

\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_jump|portOUT[2]~3_combout\ = (!\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ & \port_map_addPC|Add0~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\,
	datab => \port_map_addPC|ALT_INV_Add0~9_sumout\,
	combout => \port_map_multiplexador_2X1_8bits_jump|portOUT[2]~3_combout\);

\port_map_pc|portOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_jump|portOUT[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|portOUT\(2));

\port_map_addPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addPC|Add0~13_sumout\ = SUM(( \port_map_pc|portOUT\(3) ) + ( GND ) + ( \port_map_addPC|Add0~10\ ))
-- \port_map_addPC|Add0~14\ = CARRY(( \port_map_pc|portOUT\(3) ) + ( GND ) + ( \port_map_addPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_portOUT\(3),
	cin => \port_map_addPC|Add0~10\,
	sumout => \port_map_addPC|Add0~13_sumout\,
	cout => \port_map_addPC|Add0~14\);

\port_map_multiplexador_2X1_8bits_jump|portOUT[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_jump|portOUT[3]~4_combout\ = (!\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ & \port_map_addPC|Add0~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\,
	datab => \port_map_addPC|ALT_INV_Add0~13_sumout\,
	combout => \port_map_multiplexador_2X1_8bits_jump|portOUT[3]~4_combout\);

\port_map_pc|portOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_jump|portOUT[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|portOUT\(3));

\port_map_addPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addPC|Add0~17_sumout\ = SUM(( \port_map_pc|portOUT\(4) ) + ( GND ) + ( \port_map_addPC|Add0~14\ ))
-- \port_map_addPC|Add0~18\ = CARRY(( \port_map_pc|portOUT\(4) ) + ( GND ) + ( \port_map_addPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_portOUT\(4),
	cin => \port_map_addPC|Add0~14\,
	sumout => \port_map_addPC|Add0~17_sumout\,
	cout => \port_map_addPC|Add0~18\);

\port_map_multiplexador_2X1_8bits_jump|portOUT[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_jump|portOUT[4]~5_combout\ = (!\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ & \port_map_addPC|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\,
	datab => \port_map_addPC|ALT_INV_Add0~17_sumout\,
	combout => \port_map_multiplexador_2X1_8bits_jump|portOUT[4]~5_combout\);

\port_map_pc|portOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_jump|portOUT[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|portOUT\(4));

\port_map_addPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addPC|Add0~21_sumout\ = SUM(( \port_map_pc|portOUT\(5) ) + ( GND ) + ( \port_map_addPC|Add0~18\ ))
-- \port_map_addPC|Add0~22\ = CARRY(( \port_map_pc|portOUT\(5) ) + ( GND ) + ( \port_map_addPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_portOUT\(5),
	cin => \port_map_addPC|Add0~18\,
	sumout => \port_map_addPC|Add0~21_sumout\,
	cout => \port_map_addPC|Add0~22\);

\port_map_multiplexador_2X1_8bits_jump|portOUT[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_jump|portOUT[5]~6_combout\ = (!\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ & \port_map_addPC|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\,
	datab => \port_map_addPC|ALT_INV_Add0~21_sumout\,
	combout => \port_map_multiplexador_2X1_8bits_jump|portOUT[5]~6_combout\);

\port_map_pc|portOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_jump|portOUT[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|portOUT\(5));

\port_map_addPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addPC|Add0~25_sumout\ = SUM(( \port_map_pc|portOUT\(6) ) + ( GND ) + ( \port_map_addPC|Add0~22\ ))
-- \port_map_addPC|Add0~26\ = CARRY(( \port_map_pc|portOUT\(6) ) + ( GND ) + ( \port_map_addPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_portOUT\(6),
	cin => \port_map_addPC|Add0~22\,
	sumout => \port_map_addPC|Add0~25_sumout\,
	cout => \port_map_addPC|Add0~26\);

\port_map_multiplexador_2X1_8bits_jump|portOUT[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_jump|portOUT[6]~7_combout\ = (!\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ & \port_map_addPC|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\,
	datab => \port_map_addPC|ALT_INV_Add0~25_sumout\,
	combout => \port_map_multiplexador_2X1_8bits_jump|portOUT[6]~7_combout\);

\port_map_pc|portOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_jump|portOUT[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|portOUT\(6));

\port_map_memoriaInst|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux6~1_combout\ = (!\port_map_pc|portOUT\(4) & (!\port_map_pc|portOUT\(5) & !\port_map_pc|portOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(4),
	datab => \port_map_pc|ALT_INV_portOUT\(5),
	datac => \port_map_pc|ALT_INV_portOUT\(6),
	combout => \port_map_memoriaInst|Mux6~1_combout\);

\port_map_memoriaInst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux3~0_combout\ = ( \port_map_memoriaInst|Mux6~1_combout\ & ( !\port_map_pc|portOUT\(7) & ( (!\port_map_pc|portOUT\(3) & ((!\port_map_pc|portOUT\(2)) # (!\port_map_pc|portOUT\(1) $ (\port_map_pc|portOUT\(0))))) # 
-- (\port_map_pc|portOUT\(3) & (!\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(1) & !\port_map_pc|portOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010001000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(3),
	datab => \port_map_pc|ALT_INV_portOUT\(2),
	datac => \port_map_pc|ALT_INV_portOUT\(1),
	datad => \port_map_pc|ALT_INV_portOUT\(0),
	datae => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	dataf => \port_map_pc|ALT_INV_portOUT\(7),
	combout => \port_map_memoriaInst|Mux3~0_combout\);

\port_map_memoriaInst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux2~0_combout\ = ( \port_map_memoriaInst|Mux6~1_combout\ & ( !\port_map_pc|portOUT\(7) & ( (!\port_map_pc|portOUT\(3) & (((\port_map_pc|portOUT\(0))))) # (\port_map_pc|portOUT\(3) & (!\port_map_pc|portOUT\(2) & 
-- (!\port_map_pc|portOUT\(1) & !\port_map_pc|portOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(3),
	datab => \port_map_pc|ALT_INV_portOUT\(2),
	datac => \port_map_pc|ALT_INV_portOUT\(1),
	datad => \port_map_pc|ALT_INV_portOUT\(0),
	datae => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	dataf => \port_map_pc|ALT_INV_portOUT\(7),
	combout => \port_map_memoriaInst|Mux2~0_combout\);

\port_map_memoriaInst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux1~0_combout\ = ( \port_map_memoriaInst|Mux6~1_combout\ & ( !\port_map_pc|portOUT\(7) & ( (!\port_map_pc|portOUT\(3) & ((!\port_map_pc|portOUT\(2)) # ((!\port_map_pc|portOUT\(1)) # (\port_map_pc|portOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(3),
	datab => \port_map_pc|ALT_INV_portOUT\(2),
	datac => \port_map_pc|ALT_INV_portOUT\(1),
	datad => \port_map_pc|ALT_INV_portOUT\(0),
	datae => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	dataf => \port_map_pc|ALT_INV_portOUT\(7),
	combout => \port_map_memoriaInst|Mux1~0_combout\);

\port_map_memoriaInst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux0~0_combout\ = ( !\port_map_pc|portOUT\(6) & ( !\port_map_pc|portOUT\(7) & ( (!\port_map_pc|portOUT\(0) & (!\port_map_pc|portOUT\(1) & (!\port_map_pc|portOUT\(4) & !\port_map_pc|portOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(0),
	datab => \port_map_pc|ALT_INV_portOUT\(1),
	datac => \port_map_pc|ALT_INV_portOUT\(4),
	datad => \port_map_pc|ALT_INV_portOUT\(5),
	datae => \port_map_pc|ALT_INV_portOUT\(6),
	dataf => \port_map_pc|ALT_INV_portOUT\(7),
	combout => \port_map_memoriaInst|Mux0~0_combout\);

\port_map_memoriaInst|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux0~1_combout\ = (!\port_map_pc|portOUT\(2) & (\port_map_pc|portOUT\(3) & \port_map_memoriaInst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	combout => \port_map_memoriaInst|Mux0~1_combout\);

\port_map_controle|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_controle|Mux5~0_combout\ = (!\port_map_memoriaInst|Mux0~1_combout\ & (\port_map_memoriaInst|Mux3~0_combout\)) # (\port_map_memoriaInst|Mux0~1_combout\ & (((\port_map_memoriaInst|Mux3~0_combout\ & !\port_map_memoriaInst|Mux2~0_combout\)) # 
-- (\port_map_memoriaInst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101001111010101010100111101010101010011110101010101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux3~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	combout => \port_map_controle|Mux5~0_combout\);

\port_map_controle|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_controle|Mux4~0_combout\ = (!\port_map_memoriaInst|Mux2~0_combout\ & ((!\port_map_memoriaInst|Mux1~0_combout\) # (!\port_map_memoriaInst|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	combout => \port_map_controle|Mux4~0_combout\);

\port_map_controle|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_controle|Mux7~0_combout\ = (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_memoriaInst|Mux2~0_combout\ & ((\port_map_memoriaInst|Mux1~0_combout\))) # (\port_map_memoriaInst|Mux2~0_combout\ & (\port_map_memoriaInst|Mux3~0_combout\ & 
-- !\port_map_memoriaInst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000000000000111000000000000011100000000000001110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux3~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	combout => \port_map_controle|Mux7~0_combout\);

\port_map_memoriaInst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux4~0_combout\ = (\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(3) & \port_map_memoriaInst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	combout => \port_map_memoriaInst|Mux4~0_combout\);

\port_map_controle|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_controle|Mux8~0_combout\ = (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_memoriaInst|Mux3~0_combout\) # ((!\port_map_memoriaInst|Mux2~0_combout\) # (!\port_map_memoriaInst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux3~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	combout => \port_map_controle|Mux8~0_combout\);

\port_map_registradores|registrador~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~73_combout\ = (\port_map_memoriaInst|Mux4~0_combout\ & \port_map_controle|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux8~0_combout\,
	combout => \port_map_registradores|registrador~73_combout\);

\port_map_registradores|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[5]~5_combout\,
	ena => \port_map_registradores|registrador~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~24_q\);

\port_map_memoriaInst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux5~0_combout\ = (!\port_map_pc|portOUT\(2) & !\port_map_pc|portOUT\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	combout => \port_map_memoriaInst|Mux5~0_combout\);

\port_map_memoriaInst|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux5~1_combout\ = (!\port_map_pc|portOUT\(0) & (!\port_map_pc|portOUT\(7) & (\port_map_memoriaInst|Mux6~1_combout\ & \port_map_memoriaInst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(0),
	datab => \port_map_pc|ALT_INV_portOUT\(7),
	datac => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux5~0_combout\,
	combout => \port_map_memoriaInst|Mux5~1_combout\);

\port_map_registradores|registrador~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~65_combout\ = (!\port_map_memoriaInst|Mux6~2_combout\ & (\port_map_registradores|registrador~24_q\ & !\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~24_q\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	combout => \port_map_registradores|registrador~65_combout\);

\port_map_registradores|registrador~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~48_combout\ = ( \port_map_registradores|registrador~16_q\ & ( (!\port_map_pc|portOUT\(2)) # (((!\port_map_memoriaInst|Mux0~0_combout\) # (\port_map_registradores|registrador~24_q\)) # (\port_map_pc|portOUT\(3))) ) ) # ( 
-- !\port_map_registradores|registrador~16_q\ & ( (\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(3) & (\port_map_memoriaInst|Mux0~0_combout\ & \port_map_registradores|registrador~24_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~24_q\,
	datae => \port_map_registradores|ALT_INV_registrador~16_q\,
	combout => \port_map_registradores|registrador~48_combout\);

\port_map_registradores|registrador~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~74_combout\ = (!\port_map_memoriaInst|Mux4~0_combout\ & \port_map_controle|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux8~0_combout\,
	combout => \port_map_registradores|registrador~74_combout\);

\port_map_registradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[4]~4_combout\,
	ena => \port_map_registradores|registrador~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~15_q\);

\port_map_registradores|registrador~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~61_combout\ = (\port_map_memoriaInst|Mux6~2_combout\ & (\port_map_registradores|registrador~15_q\ & !\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~15_q\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	combout => \port_map_registradores|registrador~61_combout\);

\port_map_registradores|registrador~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~63_combout\ = (\port_map_registradores|registrador~62_combout\) # (\port_map_registradores|registrador~61_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~61_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~62_combout\,
	combout => \port_map_registradores|registrador~63_combout\);

\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ = (\port_map_registradores|registrador~63_combout\ & !\port_map_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~63_combout\,
	datab => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\);

\port_map_registradores|registrador~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~47_combout\ = ( \port_map_registradores|registrador~15_q\ & ( (!\port_map_pc|portOUT\(2)) # (((!\port_map_memoriaInst|Mux0~0_combout\) # (\port_map_registradores|registrador~23_q\)) # (\port_map_pc|portOUT\(3))) ) ) # ( 
-- !\port_map_registradores|registrador~15_q\ & ( (\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(3) & (\port_map_memoriaInst|Mux0~0_combout\ & \port_map_registradores|registrador~23_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~23_q\,
	datae => \port_map_registradores|ALT_INV_registrador~15_q\,
	combout => \port_map_registradores|registrador~47_combout\);

\port_map_memoriaInst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux6~0_combout\ = (!\port_map_pc|portOUT\(3) & (!\port_map_pc|portOUT\(0) $ (((\port_map_pc|portOUT\(1) & !\port_map_pc|portOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101000000000100110100000000010011010000000001001101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(0),
	datab => \port_map_pc|ALT_INV_portOUT\(1),
	datac => \port_map_pc|ALT_INV_portOUT\(2),
	datad => \port_map_pc|ALT_INV_portOUT\(3),
	combout => \port_map_memoriaInst|Mux6~0_combout\);

\port_map_registradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[3]~3_combout\,
	ena => \port_map_registradores|registrador~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~14_q\);

\port_map_registradores|registrador~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~58_combout\ = ( \port_map_registradores|registrador~14_q\ & ( \port_map_memoriaInst|Mux5~0_combout\ & ( ((!\port_map_memoriaInst|Mux6~1_combout\) # ((\port_map_pc|portOUT\(0) & !\port_map_memoriaInst|Mux6~0_combout\))) 
-- # (\port_map_pc|portOUT\(7)) ) ) ) # ( \port_map_registradores|registrador~14_q\ & ( !\port_map_memoriaInst|Mux5~0_combout\ & ( ((!\port_map_memoriaInst|Mux6~0_combout\) # (!\port_map_memoriaInst|Mux6~1_combout\)) # (\port_map_pc|portOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111001100000000000000001111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(0),
	datab => \port_map_pc|ALT_INV_portOUT\(7),
	datac => \port_map_memoriaInst|ALT_INV_Mux6~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	datae => \port_map_registradores|ALT_INV_registrador~14_q\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux5~0_combout\,
	combout => \port_map_registradores|registrador~58_combout\);

\port_map_registradores|registrador~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~60_combout\ = (\port_map_registradores|registrador~59_combout\) # (\port_map_registradores|registrador~58_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~58_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~59_combout\,
	combout => \port_map_registradores|registrador~60_combout\);

\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ = (\port_map_registradores|registrador~60_combout\ & !\port_map_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~60_combout\,
	datab => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\);

\port_map_registradores|registrador~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~46_combout\ = ( \port_map_registradores|registrador~14_q\ & ( (!\port_map_pc|portOUT\(2)) # (((!\port_map_memoriaInst|Mux0~0_combout\) # (\port_map_registradores|registrador~22_q\)) # (\port_map_pc|portOUT\(3))) ) ) # ( 
-- !\port_map_registradores|registrador~14_q\ & ( (\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(3) & (\port_map_memoriaInst|Mux0~0_combout\ & \port_map_registradores|registrador~22_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~22_q\,
	datae => \port_map_registradores|ALT_INV_registrador~14_q\,
	combout => \port_map_registradores|registrador~46_combout\);

\port_map_registradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[2]~2_combout\,
	ena => \port_map_registradores|registrador~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~13_q\);

\port_map_registradores|registrador~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~55_combout\ = ( \port_map_registradores|registrador~13_q\ & ( \port_map_memoriaInst|Mux5~0_combout\ & ( ((!\port_map_memoriaInst|Mux6~1_combout\) # ((\port_map_pc|portOUT\(0) & !\port_map_memoriaInst|Mux6~0_combout\))) 
-- # (\port_map_pc|portOUT\(7)) ) ) ) # ( \port_map_registradores|registrador~13_q\ & ( !\port_map_memoriaInst|Mux5~0_combout\ & ( ((!\port_map_memoriaInst|Mux6~0_combout\) # (!\port_map_memoriaInst|Mux6~1_combout\)) # (\port_map_pc|portOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111001100000000000000001111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(0),
	datab => \port_map_pc|ALT_INV_portOUT\(7),
	datac => \port_map_memoriaInst|ALT_INV_Mux6~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	datae => \port_map_registradores|ALT_INV_registrador~13_q\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux5~0_combout\,
	combout => \port_map_registradores|registrador~55_combout\);

\port_map_registradores|registrador~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~57_combout\ = (\port_map_registradores|registrador~56_combout\) # (\port_map_registradores|registrador~55_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~55_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~56_combout\,
	combout => \port_map_registradores|registrador~57_combout\);

\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ = (\port_map_registradores|registrador~57_combout\ & !\port_map_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~57_combout\,
	datab => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\);

\port_map_registradores|registrador~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~45_combout\ = ( \port_map_registradores|registrador~13_q\ & ( (!\port_map_pc|portOUT\(2)) # (((!\port_map_memoriaInst|Mux0~0_combout\) # (\port_map_registradores|registrador~21_q\)) # (\port_map_pc|portOUT\(3))) ) ) # ( 
-- !\port_map_registradores|registrador~13_q\ & ( (\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(3) & (\port_map_memoriaInst|Mux0~0_combout\ & \port_map_registradores|registrador~21_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~21_q\,
	datae => \port_map_registradores|ALT_INV_registrador~13_q\,
	combout => \port_map_registradores|registrador~45_combout\);

\port_map_registradores|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[1]~1_combout\,
	ena => \port_map_registradores|registrador~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~12_q\);

\port_map_registradores|registrador~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~44_combout\ = ( \port_map_registradores|registrador~12_q\ & ( (!\port_map_pc|portOUT\(2)) # (((!\port_map_memoriaInst|Mux0~0_combout\) # (\port_map_registradores|registrador~20_q\)) # (\port_map_pc|portOUT\(3))) ) ) # ( 
-- !\port_map_registradores|registrador~12_q\ & ( (\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(3) & (\port_map_memoriaInst|Mux0~0_combout\ & \port_map_registradores|registrador~20_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~20_q\,
	datae => \port_map_registradores|ALT_INV_registrador~12_q\,
	combout => \port_map_registradores|registrador~44_combout\);

\port_map_registradores|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~52_combout\ = ( \port_map_registradores|registrador~12_q\ & ( \port_map_memoriaInst|Mux5~0_combout\ & ( ((!\port_map_memoriaInst|Mux6~1_combout\) # ((\port_map_pc|portOUT\(0) & !\port_map_memoriaInst|Mux6~0_combout\))) 
-- # (\port_map_pc|portOUT\(7)) ) ) ) # ( \port_map_registradores|registrador~12_q\ & ( !\port_map_memoriaInst|Mux5~0_combout\ & ( ((!\port_map_memoriaInst|Mux6~0_combout\) # (!\port_map_memoriaInst|Mux6~1_combout\)) # (\port_map_pc|portOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111001100000000000000001111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(0),
	datab => \port_map_pc|ALT_INV_portOUT\(7),
	datac => \port_map_memoriaInst|ALT_INV_Mux6~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	datae => \port_map_registradores|ALT_INV_registrador~12_q\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux5~0_combout\,
	combout => \port_map_registradores|registrador~52_combout\);

\port_map_registradores|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~54_combout\ = (\port_map_registradores|registrador~53_combout\) # (\port_map_registradores|registrador~52_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~52_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~53_combout\,
	combout => \port_map_registradores|registrador~54_combout\);

\port_map_registradores|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[0]~0_combout\,
	ena => \port_map_registradores|registrador~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~11_q\);

\port_map_registradores|registrador~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~43_combout\ = ( \port_map_registradores|registrador~11_q\ & ( (!\port_map_pc|portOUT\(2)) # (((!\port_map_memoriaInst|Mux0~0_combout\) # (\port_map_registradores|registrador~19_q\)) # (\port_map_pc|portOUT\(3))) ) ) # ( 
-- !\port_map_registradores|registrador~11_q\ & ( (\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(3) & (\port_map_memoriaInst|Mux0~0_combout\ & \port_map_registradores|registrador~19_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~19_q\,
	datae => \port_map_registradores|ALT_INV_registrador~11_q\,
	combout => \port_map_registradores|registrador~43_combout\);

\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ = (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~51_combout\))) # (\port_map_controle|Mux7~0_combout\ & (!\port_map_memoriaInst|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010001110100011101000111010001110100011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\);

\port_map_memoriaInst|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux6~3_combout\ = (!\port_map_memoriaInst|Mux6~0_combout\) # (!\port_map_memoriaInst|Mux6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoriaInst|Mux6~3_combout\);

\port_map_ual|portMap_subtrair|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_subtrair|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ual|portMap_subtrair|Add0~34_cout\);

\port_map_ual|portMap_subtrair|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_subtrair|Add0~1_sumout\ = SUM(( \port_map_registradores|registrador~43_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & (!\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & 
-- (((\port_map_memoriaInst|Mux6~3_combout\) # (\port_map_pc|portOUT\(7))))) ) + ( \port_map_ual|portMap_subtrair|Add0~34_cout\ ))
-- \port_map_ual|portMap_subtrair|Add0~2\ = CARRY(( \port_map_registradores|registrador~43_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & (!\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & 
-- (((\port_map_memoriaInst|Mux6~3_combout\) # (\port_map_pc|portOUT\(7))))) ) + ( \port_map_ual|portMap_subtrair|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100100010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_pc|ALT_INV_portOUT\(7),
	datad => \port_map_registradores|ALT_INV_registrador~43_combout\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux6~3_combout\,
	cin => \port_map_ual|portMap_subtrair|Add0~34_cout\,
	sumout => \port_map_ual|portMap_subtrair|Add0~1_sumout\,
	cout => \port_map_ual|portMap_subtrair|Add0~2\);

\port_map_ual|portMap_adicionador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_adicionador|Add0~1_sumout\ = SUM(( \port_map_registradores|registrador~43_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & 
-- (((!\port_map_pc|portOUT\(7) & !\port_map_memoriaInst|Mux6~3_combout\)))) ) + ( !VCC ))
-- \port_map_ual|portMap_adicionador|Add0~2\ = CARRY(( \port_map_registradores|registrador~43_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & 
-- (((!\port_map_pc|portOUT\(7) & !\port_map_memoriaInst|Mux6~3_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011011101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_pc|ALT_INV_portOUT\(7),
	datad => \port_map_registradores|ALT_INV_registrador~43_combout\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux6~3_combout\,
	cin => GND,
	sumout => \port_map_ual|portMap_adicionador|Add0~1_sumout\,
	cout => \port_map_ual|portMap_adicionador|Add0~2\);

\port_map_ual|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux10~0_combout\ = ( \port_map_ual|portMap_adicionador|Add0~1_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\) # ((\port_map_ual|portMap_subtrair|Add0~1_sumout\)))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~1_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\)))) ) ) # ( 
-- !\port_map_ual|portMap_adicionador|Add0~1_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~1_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & 
-- ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~1_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101100111100010011110111100000001011001111000100111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datad => \port_map_ual|portMap_subtrair|ALT_INV_Add0~1_sumout\,
	datae => \port_map_ual|portMap_adicionador|ALT_INV_Add0~1_sumout\,
	combout => \port_map_ual|Mux10~0_combout\);

\port_map_ual|portMap_multiplexador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add0~1_sumout\ = SUM(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~11_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~19_q\)) ) + ( VCC ) + ( 
-- !VCC ))
-- \port_map_ual|portMap_multiplexador|Add0~2\ = CARRY(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~11_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~19_q\)) ) + ( VCC ) + ( !VCC 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~19_q\,
	datad => \port_map_registradores|ALT_INV_registrador~11_q\,
	cin => GND,
	sumout => \port_map_ual|portMap_multiplexador|Add0~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add0~2\);

\port_map_ual|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux10~1_combout\ = (!\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & ((\port_map_ual|portMap_multiplexador|Add0~1_sumout\)))) # (\port_map_controle|Mux5~0_combout\ & 
-- (((\port_map_ual|portMap_adicionador|Add0~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datac => \port_map_ual|portMap_adicionador|ALT_INV_Add0~1_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~1_sumout\,
	combout => \port_map_ual|Mux10~1_combout\);

\port_map_ual|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux10~2_combout\ = ( \port_map_ual|Mux10~0_combout\ & ( \port_map_ual|Mux10~1_combout\ & ( (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_memoriaInst|Mux2~0_combout\) # ((!\port_map_memoriaInst|Mux1~0_combout\) # 
-- (\port_map_registradores|registrador~43_combout\)))) ) ) ) # ( !\port_map_ual|Mux10~0_combout\ & ( \port_map_ual|Mux10~1_combout\ & ( (\port_map_memoriaInst|Mux2~0_combout\ & (!\port_map_memoriaInst|Mux0~1_combout\ & 
-- ((!\port_map_memoriaInst|Mux1~0_combout\) # (\port_map_registradores|registrador~43_combout\)))) ) ) ) # ( \port_map_ual|Mux10~0_combout\ & ( !\port_map_ual|Mux10~1_combout\ & ( (!\port_map_memoriaInst|Mux0~1_combout\ & 
-- ((!\port_map_memoriaInst|Mux2~0_combout\) # ((\port_map_memoriaInst|Mux1~0_combout\ & \port_map_registradores|registrador~43_combout\)))) ) ) ) # ( !\port_map_ual|Mux10~0_combout\ & ( !\port_map_ual|Mux10~1_combout\ & ( 
-- (\port_map_memoriaInst|Mux2~0_combout\ & (\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_registradores|registrador~43_combout\ & !\port_map_memoriaInst|Mux0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000101010110000000001000101000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~43_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datae => \port_map_ual|ALT_INV_Mux10~0_combout\,
	dataf => \port_map_ual|ALT_INV_Mux10~1_combout\,
	combout => \port_map_ual|Mux10~2_combout\);

\port_map_controle|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_controle|Mux6~0_combout\ = (\port_map_memoriaInst|Mux3~0_combout\ & (\port_map_memoriaInst|Mux2~0_combout\ & (\port_map_memoriaInst|Mux1~0_combout\ & !\port_map_memoriaInst|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux3~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	combout => \port_map_controle|Mux6~0_combout\);

\port_map_controle|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_controle|Mux3~0_combout\ = (!\port_map_memoriaInst|Mux3~0_combout\ & (\port_map_memoriaInst|Mux2~0_combout\ & (\port_map_memoriaInst|Mux1~0_combout\ & !\port_map_memoriaInst|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux3~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	combout => \port_map_controle|Mux3~0_combout\);

\port_map_memoriaInst|Mux6~2_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux6~2_wirecell_combout\ = !\port_map_memoriaInst|Mux6~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	combout => \port_map_memoriaInst|Mux6~2_wirecell_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador_mason.ram0_memoriaAdress_e716e8fa.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoriaAdress:port_map_memoriaAdress|altsyncram:ram_rtl_0|altsyncram_c502:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_controle|Mux6~0_combout\,
	portbre => \port_map_controle|Mux3~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[0]~0_combout\ = (!\port_map_controle|Mux3~0_combout\ & (\port_map_ual|Mux10~2_combout\)) # (\port_map_controle|Mux3~0_combout\ & 
-- ((\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|ALT_INV_Mux10~2_combout\,
	datab => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	datac => \port_map_controle|ALT_INV_Mux3~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[0]~0_combout\);

\port_map_registradores|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[0]~0_combout\,
	ena => \port_map_registradores|registrador~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~19_q\);

\port_map_registradores|registrador~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~51_combout\ = (!\port_map_memoriaInst|Mux5~1_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\ & (\port_map_registradores|registrador~19_q\)) # (\port_map_memoriaInst|Mux6~2_combout\ & 
-- ((\port_map_registradores|registrador~11_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001110000000000100111000000000010011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~19_q\,
	datac => \port_map_registradores|ALT_INV_registrador~11_q\,
	datad => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	combout => \port_map_registradores|registrador~51_combout\);

\port_map_ual|portMap_adicionador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_adicionador|Add0~5_sumout\ = SUM(( \port_map_registradores|registrador~44_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~54_combout\))) # (\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_memoriaInst|Mux5~1_combout\)) ) + ( \port_map_ual|portMap_adicionador|Add0~2\ ))
-- \port_map_ual|portMap_adicionador|Add0~6\ = CARRY(( \port_map_registradores|registrador~44_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~54_combout\))) # (\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_memoriaInst|Mux5~1_combout\)) ) + ( \port_map_ual|portMap_adicionador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~44_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~54_combout\,
	cin => \port_map_ual|portMap_adicionador|Add0~2\,
	sumout => \port_map_ual|portMap_adicionador|Add0~5_sumout\,
	cout => \port_map_ual|portMap_adicionador|Add0~6\);

\port_map_ual|portMap_subtrair|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_subtrair|Add0~5_sumout\ = SUM(( \port_map_registradores|registrador~44_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & (!\port_map_registradores|registrador~53_combout\ & ((!\port_map_registradores|registrador~52_combout\)))) # 
-- (\port_map_controle|Mux7~0_combout\ & (((!\port_map_memoriaInst|Mux5~1_combout\)))) ) + ( \port_map_ual|portMap_subtrair|Add0~2\ ))
-- \port_map_ual|portMap_subtrair|Add0~6\ = CARRY(( \port_map_registradores|registrador~44_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & (!\port_map_registradores|registrador~53_combout\ & ((!\port_map_registradores|registrador~52_combout\)))) # 
-- (\port_map_controle|Mux7~0_combout\ & (((!\port_map_memoriaInst|Mux5~1_combout\)))) ) + ( \port_map_ual|portMap_subtrair|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001111010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~53_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~44_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~52_combout\,
	cin => \port_map_ual|portMap_subtrair|Add0~2\,
	sumout => \port_map_ual|portMap_subtrair|Add0~5_sumout\,
	cout => \port_map_ual|portMap_subtrair|Add0~6\);

\port_map_ual|portMap_multiplexador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add0~5_sumout\ = SUM(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~12_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~20_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~2\ ))
-- \port_map_ual|portMap_multiplexador|Add0~6\ = CARRY(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~12_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~20_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~20_q\,
	datad => \port_map_registradores|ALT_INV_registrador~12_q\,
	cin => \port_map_ual|portMap_multiplexador|Add0~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add0~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add0~6\);

\port_map_ual|portMap_multiplexador|Add2~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add2~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ual|portMap_multiplexador|Add2~30_cout\);

\port_map_ual|portMap_multiplexador|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add2~1_sumout\ = SUM(( !\port_map_registradores|registrador~43_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~5_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~30_cout\ ))
-- \port_map_ual|portMap_multiplexador|Add2~2\ = CARRY(( !\port_map_registradores|registrador~43_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~5_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) # 
-- (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~43_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~5_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add2~30_cout\,
	sumout => \port_map_ual|portMap_multiplexador|Add2~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add2~2\);

\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ = (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~54_combout\))) # (\port_map_controle|Mux7~0_combout\ & (\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~54_combout\,
	datac => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\);

\port_map_ual|portMap_multiplexador|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add1~1_sumout\ = SUM(( \port_map_registradores|registrador~43_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~5_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( !VCC ))
-- \port_map_ual|portMap_multiplexador|Add1~2\ = CARRY(( \port_map_registradores|registrador~43_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~5_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) # 
-- (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~43_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~5_sumout\,
	cin => GND,
	sumout => \port_map_ual|portMap_multiplexador|Add1~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add1~2\);

\port_map_ual|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux9~0_combout\ = ( \port_map_ual|portMap_multiplexador|Add1~1_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|Add2~1_sumout\ & 
-- \port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\)) # 
-- (\port_map_ual|portMap_multiplexador|Add0~5_sumout\))) ) ) # ( !\port_map_ual|portMap_multiplexador|Add1~1_sumout\ & ( (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|Add2~1_sumout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (\port_map_ual|portMap_multiplexador|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011010101010001101100000000000110110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~5_sumout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add2~1_sumout\,
	datad => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~1_sumout\,
	combout => \port_map_ual|Mux9~0_combout\);

\port_map_ual|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux9~1_combout\ = ( \port_map_ual|Mux9~0_combout\ & ( (!\port_map_controle|Mux4~0_combout\ & ((!\port_map_controle|Mux5~0_combout\) # ((\port_map_ual|portMap_adicionador|Add0~5_sumout\)))) # (\port_map_controle|Mux4~0_combout\ & 
-- ((!\port_map_controle|Mux5~0_combout\ & (\port_map_ual|portMap_adicionador|Add0~5_sumout\)) # (\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~5_sumout\))))) ) ) # ( !\port_map_ual|Mux9~0_combout\ & ( 
-- (!\port_map_controle|Mux4~0_combout\ & (\port_map_controle|Mux5~0_combout\ & (\port_map_ual|portMap_adicionador|Add0~5_sumout\))) # (\port_map_controle|Mux4~0_combout\ & ((!\port_map_controle|Mux5~0_combout\ & 
-- (\port_map_ual|portMap_adicionador|Add0~5_sumout\)) # (\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~5_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000010111100011101001111100000110000101111000111010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux4~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_ual|portMap_adicionador|ALT_INV_Add0~5_sumout\,
	datad => \port_map_ual|portMap_subtrair|ALT_INV_Add0~5_sumout\,
	datae => \port_map_ual|ALT_INV_Mux9~0_combout\,
	combout => \port_map_ual|Mux9~1_combout\);

\port_map_ual|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux9~2_combout\ = ( \port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ( (!\port_map_controle|Mux4~0_combout\ & (\port_map_registradores|registrador~44_combout\)) # (\port_map_controle|Mux4~0_combout\ & 
-- (((\port_map_ual|portMap_subtrair|Add0~5_sumout\) # (\port_map_controle|Mux5~0_combout\)))) ) ) # ( !\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ( (!\port_map_controle|Mux4~0_combout\ & 
-- (\port_map_registradores|registrador~44_combout\)) # (\port_map_controle|Mux4~0_combout\ & (((!\port_map_controle|Mux5~0_combout\ & \port_map_ual|portMap_subtrair|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001110111011101000100011101000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~44_combout\,
	datab => \port_map_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_ual|portMap_subtrair|ALT_INV_Add0~5_sumout\,
	datae => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	combout => \port_map_ual|Mux9~2_combout\);

\port_map_ual|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux9~3_combout\ = (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_ual|Mux9~1_combout\)) # (\port_map_memoriaInst|Mux1~0_combout\ & ((\port_map_ual|Mux9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datac => \port_map_ual|ALT_INV_Mux9~1_combout\,
	datad => \port_map_ual|ALT_INV_Mux9~2_combout\,
	combout => \port_map_ual|Mux9~3_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador_mason.ram0_memoriaAdress_e716e8fa.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoriaAdress:port_map_memoriaAdress|altsyncram:ram_rtl_0|altsyncram_c502:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_controle|Mux6~0_combout\,
	portbre => \port_map_controle|Mux3~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[1]~1_combout\ = (!\port_map_controle|Mux3~0_combout\ & (\port_map_ual|Mux9~3_combout\)) # (\port_map_controle|Mux3~0_combout\ & 
-- ((\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|ALT_INV_Mux9~3_combout\,
	datab => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a1~portbdataout\,
	datac => \port_map_controle|ALT_INV_Mux3~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[1]~1_combout\);

\port_map_registradores|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[1]~1_combout\,
	ena => \port_map_registradores|registrador~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~20_q\);

\port_map_registradores|registrador~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~53_combout\ = ( \port_map_registradores|registrador~20_q\ & ( \port_map_memoriaInst|Mux5~0_combout\ & ( (\port_map_pc|portOUT\(0) & (!\port_map_pc|portOUT\(7) & (\port_map_memoriaInst|Mux6~0_combout\ & 
-- \port_map_memoriaInst|Mux6~1_combout\))) ) ) ) # ( \port_map_registradores|registrador~20_q\ & ( !\port_map_memoriaInst|Mux5~0_combout\ & ( (!\port_map_pc|portOUT\(7) & (\port_map_memoriaInst|Mux6~0_combout\ & \port_map_memoriaInst|Mux6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(0),
	datab => \port_map_pc|ALT_INV_portOUT\(7),
	datac => \port_map_memoriaInst|ALT_INV_Mux6~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	datae => \port_map_registradores|ALT_INV_registrador~20_q\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux5~0_combout\,
	combout => \port_map_registradores|registrador~53_combout\);

\port_map_ual|portMap_subtrair|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_subtrair|Add0~9_sumout\ = SUM(( \port_map_registradores|registrador~45_combout\ ) + ( ((!\port_map_registradores|registrador~56_combout\ & !\port_map_registradores|registrador~55_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + 
-- ( \port_map_ual|portMap_subtrair|Add0~6\ ))
-- \port_map_ual|portMap_subtrair|Add0~10\ = CARRY(( \port_map_registradores|registrador~45_combout\ ) + ( ((!\port_map_registradores|registrador~56_combout\ & !\port_map_registradores|registrador~55_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + ( 
-- \port_map_ual|portMap_subtrair|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~56_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~45_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~55_combout\,
	cin => \port_map_ual|portMap_subtrair|Add0~6\,
	sumout => \port_map_ual|portMap_subtrair|Add0~9_sumout\,
	cout => \port_map_ual|portMap_subtrair|Add0~10\);

\port_map_ual|portMap_adicionador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_adicionador|Add0~9_sumout\ = SUM(( \port_map_registradores|registrador~45_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~55_combout\) # (\port_map_registradores|registrador~56_combout\))) 
-- ) + ( \port_map_ual|portMap_adicionador|Add0~6\ ))
-- \port_map_ual|portMap_adicionador|Add0~10\ = CARRY(( \port_map_registradores|registrador~45_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~55_combout\) # (\port_map_registradores|registrador~56_combout\))) ) + 
-- ( \port_map_ual|portMap_adicionador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~56_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~45_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~55_combout\,
	cin => \port_map_ual|portMap_adicionador|Add0~6\,
	sumout => \port_map_ual|portMap_adicionador|Add0~9_sumout\,
	cout => \port_map_ual|portMap_adicionador|Add0~10\);

\port_map_ual|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux8~0_combout\ = ( \port_map_ual|portMap_adicionador|Add0~9_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\) # ((\port_map_ual|portMap_subtrair|Add0~9_sumout\)))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~9_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\)))) ) ) # ( 
-- !\port_map_ual|portMap_adicionador|Add0~9_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~9_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & 
-- ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~9_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101100111100010011110111100000001011001111000100111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datad => \port_map_ual|portMap_subtrair|ALT_INV_Add0~9_sumout\,
	datae => \port_map_ual|portMap_adicionador|ALT_INV_Add0~9_sumout\,
	combout => \port_map_ual|Mux8~0_combout\);

\port_map_ual|portMap_multiplexador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add0~9_sumout\ = SUM(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~13_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~21_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~6\ ))
-- \port_map_ual|portMap_multiplexador|Add0~10\ = CARRY(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~13_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~21_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~21_q\,
	datad => \port_map_registradores|ALT_INV_registrador~13_q\,
	cin => \port_map_ual|portMap_multiplexador|Add0~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add0~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add0~10\);

\port_map_ual|portMap_multiplexador|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add1~5_sumout\ = SUM(( \port_map_registradores|registrador~44_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~9_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~2\ ))
-- \port_map_ual|portMap_multiplexador|Add1~6\ = CARRY(( \port_map_registradores|registrador~44_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~9_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) # 
-- (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~44_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~9_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add1~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add1~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add1~6\);

\port_map_ual|portMap_multiplexador|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add2~5_sumout\ = SUM(( !\port_map_registradores|registrador~44_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~9_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~2\ ))
-- \port_map_ual|portMap_multiplexador|Add2~6\ = CARRY(( !\port_map_registradores|registrador~44_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~9_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) # 
-- (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~44_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~9_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add2~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add2~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add2~6\);

\port_map_ual|portMap_multiplexador|produto~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~0_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|Add2~5_sumout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|Add0~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add2~5_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~0_combout\);

\port_map_ual|portMap_multiplexador|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add3~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~0_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~5_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~0_combout\))))) ) + 
-- ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))
-- \port_map_ual|portMap_multiplexador|Add3~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~0_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~5_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~0_combout\))))) ) + 
-- ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~5_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~0_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => GND,
	sumout => \port_map_ual|portMap_multiplexador|Add3~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add3~2\);

\port_map_ual|portMap_multiplexador|Add4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add4~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ual|portMap_multiplexador|Add4~26_cout\);

\port_map_ual|portMap_multiplexador|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add4~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~0_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~5_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~0_combout\))))) ) + 
-- ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~26_cout\ ))
-- \port_map_ual|portMap_multiplexador|Add4~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~0_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~5_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~0_combout\))))) ) + 
-- ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~5_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~0_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add4~26_cout\,
	sumout => \port_map_ual|portMap_multiplexador|Add4~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add4~2\);

\port_map_ual|portMap_multiplexador|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~0_combout\ = ( \port_map_controle|Mux7~0_combout\ & ( (!\port_map_memoriaInst|Mux6~2_combout\ & !\port_map_memoriaInst|Mux5~1_combout\) ) ) # ( !\port_map_controle|Mux7~0_combout\ & ( 
-- (\port_map_registradores|registrador~51_combout\ & !\port_map_registradores|registrador~54_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000100010001000100000001111000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~54_combout\,
	datae => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~0_combout\);

\port_map_ual|portMap_multiplexador|portOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[2]~0_combout\ = (!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~0_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add1~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~5_sumout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_produto~0_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[2]~0_combout\);

\port_map_ual|portMap_multiplexador|portOUT[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[2]~1_combout\ = ( \port_map_ual|portMap_multiplexador|portOUT[2]~0_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\) # ((\port_map_ual|portMap_multiplexador|Add4~1_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|Add3~1_sumout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\))) ) ) # ( !\port_map_ual|portMap_multiplexador|portOUT[2]~0_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|Add4~1_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ 
-- & (\port_map_ual|portMap_multiplexador|Add3~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~1_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add4~1_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[2]~0_combout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[2]~1_combout\);

\port_map_ual|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux8~1_combout\ = ( \port_map_ual|portMap_multiplexador|portOUT[2]~1_combout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (((!\port_map_controle|Mux5~0_combout\) # (\port_map_ual|portMap_adicionador|Add0~9_sumout\)))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_registradores|registrador~45_combout\)) ) ) # ( !\port_map_ual|portMap_multiplexador|portOUT[2]~1_combout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (((\port_map_controle|Mux5~0_combout\ & 
-- \port_map_ual|portMap_adicionador|Add0~9_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_registradores|registrador~45_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011101100011011101100010001000110111011000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~45_combout\,
	datac => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_ual|portMap_adicionador|ALT_INV_Add0~9_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[2]~1_combout\,
	combout => \port_map_ual|Mux8~1_combout\);

\port_map_ual|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux8~2_combout\ = (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_controle|Mux4~0_combout\ & ((\port_map_ual|Mux8~1_combout\))) # (\port_map_controle|Mux4~0_combout\ & (\port_map_ual|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datab => \port_map_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_ual|ALT_INV_Mux8~0_combout\,
	datad => \port_map_ual|ALT_INV_Mux8~1_combout\,
	combout => \port_map_ual|Mux8~2_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador_mason.ram0_memoriaAdress_e716e8fa.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoriaAdress:port_map_memoriaAdress|altsyncram:ram_rtl_0|altsyncram_c502:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_controle|Mux6~0_combout\,
	portbre => \port_map_controle|Mux3~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[2]~2_combout\ = (!\port_map_controle|Mux3~0_combout\ & (\port_map_ual|Mux8~2_combout\)) # (\port_map_controle|Mux3~0_combout\ & 
-- ((\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|ALT_INV_Mux8~2_combout\,
	datab => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a2~portbdataout\,
	datac => \port_map_controle|ALT_INV_Mux3~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[2]~2_combout\);

\port_map_registradores|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[2]~2_combout\,
	ena => \port_map_registradores|registrador~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~21_q\);

\port_map_registradores|registrador~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~56_combout\ = ( \port_map_registradores|registrador~21_q\ & ( \port_map_memoriaInst|Mux5~0_combout\ & ( (\port_map_pc|portOUT\(0) & (!\port_map_pc|portOUT\(7) & (\port_map_memoriaInst|Mux6~0_combout\ & 
-- \port_map_memoriaInst|Mux6~1_combout\))) ) ) ) # ( \port_map_registradores|registrador~21_q\ & ( !\port_map_memoriaInst|Mux5~0_combout\ & ( (!\port_map_pc|portOUT\(7) & (\port_map_memoriaInst|Mux6~0_combout\ & \port_map_memoriaInst|Mux6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(0),
	datab => \port_map_pc|ALT_INV_portOUT\(7),
	datac => \port_map_memoriaInst|ALT_INV_Mux6~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	datae => \port_map_registradores|ALT_INV_registrador~21_q\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux5~0_combout\,
	combout => \port_map_registradores|registrador~56_combout\);

\port_map_ual|portMap_subtrair|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_subtrair|Add0~13_sumout\ = SUM(( \port_map_registradores|registrador~46_combout\ ) + ( ((!\port_map_registradores|registrador~59_combout\ & !\port_map_registradores|registrador~58_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + 
-- ( \port_map_ual|portMap_subtrair|Add0~10\ ))
-- \port_map_ual|portMap_subtrair|Add0~14\ = CARRY(( \port_map_registradores|registrador~46_combout\ ) + ( ((!\port_map_registradores|registrador~59_combout\ & !\port_map_registradores|registrador~58_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + ( 
-- \port_map_ual|portMap_subtrair|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~59_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~46_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~58_combout\,
	cin => \port_map_ual|portMap_subtrair|Add0~10\,
	sumout => \port_map_ual|portMap_subtrair|Add0~13_sumout\,
	cout => \port_map_ual|portMap_subtrair|Add0~14\);

\port_map_ual|portMap_adicionador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_adicionador|Add0~13_sumout\ = SUM(( \port_map_registradores|registrador~46_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~58_combout\) # (\port_map_registradores|registrador~59_combout\))) 
-- ) + ( \port_map_ual|portMap_adicionador|Add0~10\ ))
-- \port_map_ual|portMap_adicionador|Add0~14\ = CARRY(( \port_map_registradores|registrador~46_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~58_combout\) # (\port_map_registradores|registrador~59_combout\))) ) + 
-- ( \port_map_ual|portMap_adicionador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~59_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~46_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~58_combout\,
	cin => \port_map_ual|portMap_adicionador|Add0~10\,
	sumout => \port_map_ual|portMap_adicionador|Add0~13_sumout\,
	cout => \port_map_ual|portMap_adicionador|Add0~14\);

\port_map_ual|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux7~0_combout\ = ( \port_map_ual|portMap_adicionador|Add0~13_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\) # ((\port_map_ual|portMap_subtrair|Add0~13_sumout\)))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~13_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\)))) ) ) # ( 
-- !\port_map_ual|portMap_adicionador|Add0~13_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~13_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & 
-- ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~13_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101100111100010011110111100000001011001111000100111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datad => \port_map_ual|portMap_subtrair|ALT_INV_Add0~13_sumout\,
	datae => \port_map_ual|portMap_adicionador|ALT_INV_Add0~13_sumout\,
	combout => \port_map_ual|Mux7~0_combout\);

\port_map_ual|portMap_multiplexador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add0~13_sumout\ = SUM(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~14_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~22_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~10\ ))
-- \port_map_ual|portMap_multiplexador|Add0~14\ = CARRY(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~14_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~22_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~22_q\,
	datad => \port_map_registradores|ALT_INV_registrador~14_q\,
	cin => \port_map_ual|portMap_multiplexador|Add0~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add0~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add0~14\);

\port_map_ual|portMap_multiplexador|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add1~9_sumout\ = SUM(( \port_map_registradores|registrador~45_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~13_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~6\ ))
-- \port_map_ual|portMap_multiplexador|Add1~10\ = CARRY(( \port_map_registradores|registrador~45_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~13_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~45_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~13_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add1~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add1~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add1~10\);

\port_map_ual|portMap_multiplexador|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add2~9_sumout\ = SUM(( !\port_map_registradores|registrador~45_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~13_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~6\ ))
-- \port_map_ual|portMap_multiplexador|Add2~10\ = CARRY(( !\port_map_registradores|registrador~45_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~13_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~45_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~13_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add2~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add2~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add2~10\);

\port_map_ual|portMap_multiplexador|produto~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~1_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|Add2~9_sumout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|Add0~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add2~9_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~1_combout\);

\port_map_ual|portMap_multiplexador|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add3~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~1_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~9_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~1_combout\))))) ) + 
-- ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~2\ ))
-- \port_map_ual|portMap_multiplexador|Add3~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~1_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~9_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~1_combout\))))) ) + 
-- ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~1_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add3~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add3~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add3~6\);

\port_map_ual|portMap_multiplexador|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~2_combout\ = (!\port_map_registradores|registrador~54_combout\ & (\port_map_registradores|registrador~57_combout\ & !\port_map_controle|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \port_map_registradores|ALT_INV_registrador~54_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~57_combout\,
	datad => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~2_combout\);

\port_map_ual|portMap_multiplexador|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add4~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~1_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~9_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~1_combout\))))) ) + 
-- ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~2\ ))
-- \port_map_ual|portMap_multiplexador|Add4~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~1_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~9_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~1_combout\))))) ) + 
-- ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~1_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add4~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add4~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add4~6\);

\port_map_ual|portMap_multiplexador|produto~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~2_combout\ = ( \port_map_ual|portMap_multiplexador|Add4~5_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~1_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & (\port_map_ual|portMap_multiplexador|Add1~9_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~2_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add4~5_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~2_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~1_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add1~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~2_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~1_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add4~5_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~2_combout\);

\port_map_ual|portMap_multiplexador|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add5~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~2_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~5_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~2_combout\))))) ) + 
-- ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))
-- \port_map_ual|portMap_multiplexador|Add5~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~2_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~5_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~2_combout\))))) ) + 
-- ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~5_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~2_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => GND,
	sumout => \port_map_ual|portMap_multiplexador|Add5~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add5~2\);

\port_map_ual|portMap_multiplexador|Add6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add6~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ual|portMap_multiplexador|Add6~22_cout\);

\port_map_ual|portMap_multiplexador|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add6~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~2_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~5_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~2_combout\))))) ) + 
-- ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~22_cout\ ))
-- \port_map_ual|portMap_multiplexador|Add6~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~2_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~5_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~2_combout\))))) ) + 
-- ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~5_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~2_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add6~22_cout\,
	sumout => \port_map_ual|portMap_multiplexador|Add6~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add6~2\);

\port_map_ual|portMap_multiplexador|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~1_combout\ = (!\port_map_controle|Mux7~0_combout\ & (((\port_map_registradores|registrador~54_combout\ & !\port_map_registradores|registrador~57_combout\)))) # (\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010101001100000101010100110000010101010011000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~54_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~57_combout\,
	datad => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~1_combout\);

\port_map_ual|portMap_multiplexador|portOUT[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[3]~2_combout\ = (!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~2_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add3~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~5_sumout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~2_combout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[3]~2_combout\);

\port_map_ual|portMap_multiplexador|portOUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[3]~3_combout\ = ( \port_map_ual|portMap_multiplexador|portOUT[3]~2_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\) # ((\port_map_ual|portMap_multiplexador|Add6~1_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (((\port_map_ual|portMap_multiplexador|Add5~1_sumout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\))) ) ) # ( !\port_map_ual|portMap_multiplexador|portOUT[3]~2_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|Add6~1_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ 
-- & (\port_map_ual|portMap_multiplexador|Add5~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100111011011111100000100001001101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~1_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add6~1_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[3]~2_combout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[3]~3_combout\);

\port_map_ual|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux7~1_combout\ = ( \port_map_ual|portMap_multiplexador|portOUT[3]~3_combout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (((!\port_map_controle|Mux5~0_combout\) # (\port_map_ual|portMap_adicionador|Add0~13_sumout\)))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_registradores|registrador~46_combout\)) ) ) # ( !\port_map_ual|portMap_multiplexador|portOUT[3]~3_combout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (((\port_map_controle|Mux5~0_combout\ & 
-- \port_map_ual|portMap_adicionador|Add0~13_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_registradores|registrador~46_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011101100011011101100010001000110111011000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~46_combout\,
	datac => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_ual|portMap_adicionador|ALT_INV_Add0~13_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[3]~3_combout\,
	combout => \port_map_ual|Mux7~1_combout\);

\port_map_ual|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux7~2_combout\ = (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_controle|Mux4~0_combout\ & ((\port_map_ual|Mux7~1_combout\))) # (\port_map_controle|Mux4~0_combout\ & (\port_map_ual|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datab => \port_map_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_ual|ALT_INV_Mux7~0_combout\,
	datad => \port_map_ual|ALT_INV_Mux7~1_combout\,
	combout => \port_map_ual|Mux7~2_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador_mason.ram0_memoriaAdress_e716e8fa.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoriaAdress:port_map_memoriaAdress|altsyncram:ram_rtl_0|altsyncram_c502:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_controle|Mux6~0_combout\,
	portbre => \port_map_controle|Mux3~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[3]~3_combout\ = (!\port_map_controle|Mux3~0_combout\ & (\port_map_ual|Mux7~2_combout\)) # (\port_map_controle|Mux3~0_combout\ & 
-- ((\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|ALT_INV_Mux7~2_combout\,
	datab => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a3~portbdataout\,
	datac => \port_map_controle|ALT_INV_Mux3~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[3]~3_combout\);

\port_map_registradores|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[3]~3_combout\,
	ena => \port_map_registradores|registrador~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~22_q\);

\port_map_registradores|registrador~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~59_combout\ = ( \port_map_registradores|registrador~22_q\ & ( \port_map_memoriaInst|Mux5~0_combout\ & ( (\port_map_pc|portOUT\(0) & (!\port_map_pc|portOUT\(7) & (\port_map_memoriaInst|Mux6~0_combout\ & 
-- \port_map_memoriaInst|Mux6~1_combout\))) ) ) ) # ( \port_map_registradores|registrador~22_q\ & ( !\port_map_memoriaInst|Mux5~0_combout\ & ( (!\port_map_pc|portOUT\(7) & (\port_map_memoriaInst|Mux6~0_combout\ & \port_map_memoriaInst|Mux6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(0),
	datab => \port_map_pc|ALT_INV_portOUT\(7),
	datac => \port_map_memoriaInst|ALT_INV_Mux6~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	datae => \port_map_registradores|ALT_INV_registrador~22_q\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux5~0_combout\,
	combout => \port_map_registradores|registrador~59_combout\);

\port_map_ual|portMap_subtrair|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_subtrair|Add0~17_sumout\ = SUM(( \port_map_registradores|registrador~47_combout\ ) + ( ((!\port_map_registradores|registrador~62_combout\ & !\port_map_registradores|registrador~61_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + 
-- ( \port_map_ual|portMap_subtrair|Add0~14\ ))
-- \port_map_ual|portMap_subtrair|Add0~18\ = CARRY(( \port_map_registradores|registrador~47_combout\ ) + ( ((!\port_map_registradores|registrador~62_combout\ & !\port_map_registradores|registrador~61_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + ( 
-- \port_map_ual|portMap_subtrair|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~62_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~47_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~61_combout\,
	cin => \port_map_ual|portMap_subtrair|Add0~14\,
	sumout => \port_map_ual|portMap_subtrair|Add0~17_sumout\,
	cout => \port_map_ual|portMap_subtrair|Add0~18\);

\port_map_ual|portMap_adicionador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_adicionador|Add0~17_sumout\ = SUM(( \port_map_registradores|registrador~47_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~61_combout\) # (\port_map_registradores|registrador~62_combout\))) 
-- ) + ( \port_map_ual|portMap_adicionador|Add0~14\ ))
-- \port_map_ual|portMap_adicionador|Add0~18\ = CARRY(( \port_map_registradores|registrador~47_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~61_combout\) # (\port_map_registradores|registrador~62_combout\))) ) + 
-- ( \port_map_ual|portMap_adicionador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~62_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~47_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~61_combout\,
	cin => \port_map_ual|portMap_adicionador|Add0~14\,
	sumout => \port_map_ual|portMap_adicionador|Add0~17_sumout\,
	cout => \port_map_ual|portMap_adicionador|Add0~18\);

\port_map_ual|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux6~0_combout\ = ( \port_map_ual|portMap_adicionador|Add0~17_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\) # ((\port_map_ual|portMap_subtrair|Add0~17_sumout\)))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~17_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\)))) ) ) # ( 
-- !\port_map_ual|portMap_adicionador|Add0~17_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~17_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & 
-- ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~17_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101100111100010011110111100000001011001111000100111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datad => \port_map_ual|portMap_subtrair|ALT_INV_Add0~17_sumout\,
	datae => \port_map_ual|portMap_adicionador|ALT_INV_Add0~17_sumout\,
	combout => \port_map_ual|Mux6~0_combout\);

\port_map_ual|portMap_multiplexador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add0~17_sumout\ = SUM(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~15_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~23_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~14\ ))
-- \port_map_ual|portMap_multiplexador|Add0~18\ = CARRY(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~15_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~23_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~23_q\,
	datad => \port_map_registradores|ALT_INV_registrador~15_q\,
	cin => \port_map_ual|portMap_multiplexador|Add0~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add0~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add0~18\);

\port_map_ual|portMap_multiplexador|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add1~13_sumout\ = SUM(( \port_map_registradores|registrador~46_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~17_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~10\ ))
-- \port_map_ual|portMap_multiplexador|Add1~14\ = CARRY(( \port_map_registradores|registrador~46_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~17_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~46_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~17_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add1~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add1~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add1~14\);

\port_map_ual|portMap_multiplexador|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add2~13_sumout\ = SUM(( !\port_map_registradores|registrador~46_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~17_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~10\ ))
-- \port_map_ual|portMap_multiplexador|Add2~14\ = CARRY(( !\port_map_registradores|registrador~46_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~17_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~46_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~17_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add2~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add2~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add2~14\);

\port_map_ual|portMap_multiplexador|produto~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~3_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|Add2~13_sumout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|Add0~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add2~13_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~3_combout\);

\port_map_ual|portMap_multiplexador|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add3~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~3_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~13_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~3_combout\))))) ) 
-- + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~6\ ))
-- \port_map_ual|portMap_multiplexador|Add3~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~3_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~13_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~3_combout\))))) ) 
-- + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~3_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add3~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add3~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add3~10\);

\port_map_ual|portMap_multiplexador|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add4~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~3_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~13_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~3_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~6\ ))
-- \port_map_ual|portMap_multiplexador|Add4~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~3_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~13_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~3_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~3_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add4~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add4~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add4~10\);

\port_map_ual|portMap_multiplexador|produto~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~4_combout\ = ( \port_map_ual|portMap_multiplexador|Add4~9_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~3_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & (\port_map_ual|portMap_multiplexador|Add1~13_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~2_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add4~9_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~2_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~3_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add1~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~2_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~3_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add4~9_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~4_combout\);

\port_map_ual|portMap_multiplexador|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add5~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~4_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~9_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~4_combout\))))) ) + 
-- ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~2\ ))
-- \port_map_ual|portMap_multiplexador|Add5~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~4_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~9_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~4_combout\))))) ) + 
-- ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~4_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add5~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add5~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add5~6\);

\port_map_ual|portMap_multiplexador|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~4_combout\ = (!\port_map_registradores|registrador~57_combout\ & (\port_map_registradores|registrador~60_combout\ & !\port_map_controle|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~57_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~60_combout\,
	datac => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~4_combout\);

\port_map_ual|portMap_multiplexador|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add6~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~4_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~9_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~4_combout\))))) ) + 
-- ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~2\ ))
-- \port_map_ual|portMap_multiplexador|Add6~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~4_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~9_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~4_combout\))))) ) + 
-- ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~4_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add6~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add6~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add6~6\);

\port_map_ual|portMap_multiplexador|produto~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~5_combout\ = ( \port_map_ual|portMap_multiplexador|Add6~5_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~4_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & (\port_map_ual|portMap_multiplexador|Add3~9_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~4_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add6~5_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~4_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~4_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add3~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~4_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add6~5_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~5_combout\);

\port_map_ual|portMap_multiplexador|Add8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add8~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ual|portMap_multiplexador|Add8~18_cout\);

\port_map_ual|portMap_multiplexador|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add8~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|produto~5_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|Add5~5_sumout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|produto~5_combout\)))) ) + 
-- ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~18_cout\ ))
-- \port_map_ual|portMap_multiplexador|Add8~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|produto~5_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|Add5~5_sumout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|produto~5_combout\)))) ) + 
-- ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000010011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_produto~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~5_sumout\,
	datad => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add8~18_cout\,
	sumout => \port_map_ual|portMap_multiplexador|Add8~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add8~2\);

\port_map_ual|portMap_multiplexador|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add7~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|produto~5_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|Add5~5_sumout\))))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~5_combout\)))) ) 
-- + ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))
-- \port_map_ual|portMap_multiplexador|Add7~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|produto~5_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|Add5~5_sumout\))))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~5_combout\)))) ) 
-- + ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~5_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~5_sumout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => GND,
	sumout => \port_map_ual|portMap_multiplexador|Add7~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add7~2\);

\port_map_ual|portMap_multiplexador|portOUT[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[4]~12_combout\ = ( !\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (((\port_map_ual|portMap_multiplexador|produto~5_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~5_sumout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((((\port_map_ual|portMap_multiplexador|Add7~1_sumout\))))) ) ) # ( \port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ( 
-- (((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add8~1_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~5_combout\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000110111011000011110000111100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~5_sumout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add8~1_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~5_combout\,
	datae => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	dataf => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datag => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~1_sumout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[4]~12_combout\);

\port_map_ual|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux6~1_combout\ = ( \port_map_ual|portMap_multiplexador|portOUT[4]~12_combout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (((!\port_map_controle|Mux5~0_combout\) # (\port_map_ual|portMap_adicionador|Add0~17_sumout\)))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_registradores|registrador~47_combout\)) ) ) # ( !\port_map_ual|portMap_multiplexador|portOUT[4]~12_combout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (((\port_map_controle|Mux5~0_combout\ & 
-- \port_map_ual|portMap_adicionador|Add0~17_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_registradores|registrador~47_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011101100011011101100010001000110111011000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~47_combout\,
	datac => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datad => \port_map_ual|portMap_adicionador|ALT_INV_Add0~17_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[4]~12_combout\,
	combout => \port_map_ual|Mux6~1_combout\);

\port_map_ual|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux6~2_combout\ = (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_controle|Mux4~0_combout\ & ((\port_map_ual|Mux6~1_combout\))) # (\port_map_controle|Mux4~0_combout\ & (\port_map_ual|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datab => \port_map_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_ual|ALT_INV_Mux6~0_combout\,
	datad => \port_map_ual|ALT_INV_Mux6~1_combout\,
	combout => \port_map_ual|Mux6~2_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador_mason.ram0_memoriaAdress_e716e8fa.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoriaAdress:port_map_memoriaAdress|altsyncram:ram_rtl_0|altsyncram_c502:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_controle|Mux6~0_combout\,
	portbre => \port_map_controle|Mux3~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[4]~4_combout\ = (!\port_map_controle|Mux3~0_combout\ & (\port_map_ual|Mux6~2_combout\)) # (\port_map_controle|Mux3~0_combout\ & 
-- ((\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|ALT_INV_Mux6~2_combout\,
	datab => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a4~portbdataout\,
	datac => \port_map_controle|ALT_INV_Mux3~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[4]~4_combout\);

\port_map_registradores|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[4]~4_combout\,
	ena => \port_map_registradores|registrador~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~23_q\);

\port_map_registradores|registrador~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~62_combout\ = (!\port_map_memoriaInst|Mux6~2_combout\ & (\port_map_registradores|registrador~23_q\ & !\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~23_q\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	combout => \port_map_registradores|registrador~62_combout\);

\port_map_ual|portMap_subtrair|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_subtrair|Add0~21_sumout\ = SUM(( \port_map_registradores|registrador~48_combout\ ) + ( ((!\port_map_registradores|registrador~65_combout\ & !\port_map_registradores|registrador~64_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + 
-- ( \port_map_ual|portMap_subtrair|Add0~18\ ))
-- \port_map_ual|portMap_subtrair|Add0~22\ = CARRY(( \port_map_registradores|registrador~48_combout\ ) + ( ((!\port_map_registradores|registrador~65_combout\ & !\port_map_registradores|registrador~64_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + ( 
-- \port_map_ual|portMap_subtrair|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~65_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~48_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~64_combout\,
	cin => \port_map_ual|portMap_subtrair|Add0~18\,
	sumout => \port_map_ual|portMap_subtrair|Add0~21_sumout\,
	cout => \port_map_ual|portMap_subtrair|Add0~22\);

\port_map_ual|portMap_adicionador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_adicionador|Add0~21_sumout\ = SUM(( \port_map_registradores|registrador~48_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~64_combout\) # (\port_map_registradores|registrador~65_combout\))) 
-- ) + ( \port_map_ual|portMap_adicionador|Add0~18\ ))
-- \port_map_ual|portMap_adicionador|Add0~22\ = CARRY(( \port_map_registradores|registrador~48_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~64_combout\) # (\port_map_registradores|registrador~65_combout\))) ) + 
-- ( \port_map_ual|portMap_adicionador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~65_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~48_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~64_combout\,
	cin => \port_map_ual|portMap_adicionador|Add0~18\,
	sumout => \port_map_ual|portMap_adicionador|Add0~21_sumout\,
	cout => \port_map_ual|portMap_adicionador|Add0~22\);

\port_map_ual|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux5~0_combout\ = ( \port_map_ual|portMap_adicionador|Add0~21_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\) # ((\port_map_ual|portMap_subtrair|Add0~21_sumout\)))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~21_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)))) ) ) # ( 
-- !\port_map_ual|portMap_adicionador|Add0~21_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~21_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & 
-- ((!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_subtrair|Add0~21_sumout\))) # (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101100111100010011110111100000001011001111000100111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datad => \port_map_ual|portMap_subtrair|ALT_INV_Add0~21_sumout\,
	datae => \port_map_ual|portMap_adicionador|ALT_INV_Add0~21_sumout\,
	combout => \port_map_ual|Mux5~0_combout\);

\port_map_ual|portMap_multiplexador|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~3_combout\ = (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & !\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~3_combout\);

\port_map_ual|portMap_multiplexador|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~5_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & \port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~5_combout\);

\port_map_ual|portMap_multiplexador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add0~21_sumout\ = SUM(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~16_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~24_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~18\ ))
-- \port_map_ual|portMap_multiplexador|Add0~22\ = CARRY(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~16_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~24_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~24_q\,
	datad => \port_map_registradores|ALT_INV_registrador~16_q\,
	cin => \port_map_ual|portMap_multiplexador|Add0~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add0~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add0~22\);

\port_map_ual|portMap_multiplexador|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add1~17_sumout\ = SUM(( \port_map_registradores|registrador~47_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~21_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~14\ ))
-- \port_map_ual|portMap_multiplexador|Add1~18\ = CARRY(( \port_map_registradores|registrador~47_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~21_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~47_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~21_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add1~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add1~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add1~18\);

\port_map_ual|portMap_multiplexador|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add2~17_sumout\ = SUM(( !\port_map_registradores|registrador~47_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~21_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~14\ ))
-- \port_map_ual|portMap_multiplexador|Add2~18\ = CARRY(( !\port_map_registradores|registrador~47_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~21_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~47_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~21_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add2~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add2~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add2~18\);

\port_map_ual|portMap_multiplexador|produto~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~6_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|Add2~17_sumout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|Add0~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add2~17_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~6_combout\);

\port_map_ual|portMap_multiplexador|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add3~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~6_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~17_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~6_combout\))))) 
-- ) + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~10\ ))
-- \port_map_ual|portMap_multiplexador|Add3~14\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~6_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~17_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~6_combout\))))) ) 
-- + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~6_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add3~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add3~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add3~14\);

\port_map_ual|portMap_multiplexador|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add4~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~6_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~17_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~6_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~10\ ))
-- \port_map_ual|portMap_multiplexador|Add4~14\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~6_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~17_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~6_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~6_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add4~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add4~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add4~14\);

\port_map_ual|portMap_multiplexador|produto~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~7_combout\ = ( \port_map_ual|portMap_multiplexador|Add4~13_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~6_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & (\port_map_ual|portMap_multiplexador|Add1~17_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~2_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add4~13_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~2_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~6_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add1~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~2_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~6_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add4~13_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~7_combout\);

\port_map_ual|portMap_multiplexador|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add5~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~7_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~13_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~7_combout\))))) ) 
-- + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~6\ ))
-- \port_map_ual|portMap_multiplexador|Add5~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~7_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~13_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~7_combout\))))) ) 
-- + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~7_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add5~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add5~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add5~10\);

\port_map_ual|portMap_multiplexador|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add6~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~7_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~13_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~7_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~6\ ))
-- \port_map_ual|portMap_multiplexador|Add6~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~7_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~13_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~7_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~7_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add6~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add6~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add6~10\);

\port_map_ual|portMap_multiplexador|produto~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~8_combout\ = ( \port_map_ual|portMap_multiplexador|Add6~9_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~7_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & (\port_map_ual|portMap_multiplexador|Add3~13_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~4_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add6~9_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~4_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~7_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add3~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~7_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add6~9_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~8_combout\);

\port_map_ual|portMap_multiplexador|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add8~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~8_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~8_combout\)))) ) + 
-- ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~2\ ))
-- \port_map_ual|portMap_multiplexador|Add8~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~8_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~8_combout\)))) ) + 
-- ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~8_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add8~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add8~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add8~6\);

\port_map_ual|portMap_multiplexador|produto~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~9_combout\ = ( \port_map_ual|portMap_multiplexador|Add8~5_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~8_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & (\port_map_ual|portMap_multiplexador|Add5~9_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~5_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add8~5_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~5_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~8_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add5~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~3_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~8_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add8~5_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~9_combout\);

\port_map_ual|portMap_multiplexador|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add7~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~8_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~8_combout\)))) ) + 
-- ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~2\ ))
-- \port_map_ual|portMap_multiplexador|Add7~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~8_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~8_combout\)))) ) + 
-- ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~8_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add7~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add7~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add7~6\);

\port_map_ual|portMap_multiplexador|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add9~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|produto~9_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|Add7~5_sumout\))))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~9_combout\)))) ) 
-- + ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))
-- \port_map_ual|portMap_multiplexador|Add9~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|produto~9_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|Add7~5_sumout\))))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~9_combout\)))) ) 
-- + ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~9_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~5_sumout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => GND,
	sumout => \port_map_ual|portMap_multiplexador|Add9~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add9~2\);

\port_map_ual|portMap_multiplexador|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~6_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~6_combout\);

\port_map_ual|portMap_multiplexador|Add10~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add10~14_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ual|portMap_multiplexador|Add10~14_cout\);

\port_map_ual|portMap_multiplexador|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add10~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|produto~9_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|Add7~5_sumout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|produto~9_combout\)))) ) + 
-- ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~14_cout\ ))
-- \port_map_ual|portMap_multiplexador|Add10~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|produto~9_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|Add7~5_sumout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|produto~9_combout\)))) ) + 
-- ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000010011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_produto~9_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~5_sumout\,
	datad => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add10~14_cout\,
	sumout => \port_map_ual|portMap_multiplexador|Add10~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add10~2\);

\port_map_ual|portMap_multiplexador|portOUT[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[5]~4_combout\ = ( \port_map_ual|portMap_multiplexador|Add7~5_sumout\ & ( \port_map_ual|portMap_multiplexador|Add10~1_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~9_combout\) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & \port_map_ual|portMap_multiplexador|produto~9_combout\)))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|Add7~5_sumout\ 
-- & ( \port_map_ual|portMap_multiplexador|Add10~1_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & \port_map_ual|portMap_multiplexador|produto~9_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- \port_map_ual|portMap_multiplexador|produto~9_combout\)))) ) ) ) # ( \port_map_ual|portMap_multiplexador|Add7~5_sumout\ & ( !\port_map_ual|portMap_multiplexador|Add10~1_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~9_combout\) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & \port_map_ual|portMap_multiplexador|produto~9_combout\)))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|Add7~5_sumout\ 
-- & ( !\port_map_ual|portMap_multiplexador|Add10~1_sumout\ & ( (\port_map_ual|portMap_multiplexador|produto~9_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- !\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000011010000001100001100001100100011110100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~9_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~5_sumout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~1_sumout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[5]~4_combout\);

\port_map_ual|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux5~2_combout\ = ( !\port_map_controle|Mux5~0_combout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (((\port_map_ual|portMap_multiplexador|Add9~1_sumout\ & (!\port_map_ual|portMap_multiplexador|process_0~6_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|portOUT[5]~4_combout\))) # (\port_map_memoriaInst|Mux1~0_combout\ & ((((\port_map_registradores|registrador~48_combout\))))) ) ) # ( \port_map_controle|Mux5~0_combout\ & ( (((!\port_map_memoriaInst|Mux1~0_combout\ & 
-- (\port_map_ual|portMap_adicionador|Add0~21_sumout\)) # (\port_map_memoriaInst|Mux1~0_combout\ & ((\port_map_registradores|registrador~48_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100111101001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~1_sumout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~6_combout\,
	datac => \port_map_ual|portMap_adicionador|ALT_INV_Add0~21_sumout\,
	datad => \port_map_registradores|ALT_INV_registrador~48_combout\,
	datae => \port_map_controle|ALT_INV_Mux5~0_combout\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datag => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[5]~4_combout\,
	combout => \port_map_ual|Mux5~2_combout\);

\port_map_ual|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux5~1_combout\ = (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_controle|Mux4~0_combout\ & ((\port_map_ual|Mux5~2_combout\))) # (\port_map_controle|Mux4~0_combout\ & (\port_map_ual|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datab => \port_map_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_ual|ALT_INV_Mux5~0_combout\,
	datad => \port_map_ual|ALT_INV_Mux5~2_combout\,
	combout => \port_map_ual|Mux5~1_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador_mason.ram0_memoriaAdress_e716e8fa.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoriaAdress:port_map_memoriaAdress|altsyncram:ram_rtl_0|altsyncram_c502:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_controle|Mux6~0_combout\,
	portbre => \port_map_controle|Mux3~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[5]~5_combout\ = ( \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ & ( \port_map_controle|Mux3~0_combout\ ) ) # ( 
-- \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ & ( !\port_map_controle|Mux3~0_combout\ & ( (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_controle|Mux4~0_combout\ & ((\port_map_ual|Mux5~2_combout\))) # 
-- (\port_map_controle|Mux4~0_combout\ & (\port_map_ual|Mux5~0_combout\)))) ) ) ) # ( !\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ & ( !\port_map_controle|Mux3~0_combout\ & ( (!\port_map_memoriaInst|Mux0~1_combout\ & 
-- ((!\port_map_controle|Mux4~0_combout\ & ((\port_map_ual|Mux5~2_combout\))) # (\port_map_controle|Mux4~0_combout\ & (\port_map_ual|Mux5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datab => \port_map_controle|ALT_INV_Mux4~0_combout\,
	datac => \port_map_ual|ALT_INV_Mux5~0_combout\,
	datad => \port_map_ual|ALT_INV_Mux5~2_combout\,
	datae => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a5~portbdataout\,
	dataf => \port_map_controle|ALT_INV_Mux3~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[5]~5_combout\);

\port_map_registradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[5]~5_combout\,
	ena => \port_map_registradores|registrador~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~16_q\);

\port_map_registradores|registrador~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~64_combout\ = (\port_map_memoriaInst|Mux6~2_combout\ & (\port_map_registradores|registrador~16_q\ & !\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~16_q\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	combout => \port_map_registradores|registrador~64_combout\);

\port_map_registradores|registrador~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~66_combout\ = (\port_map_registradores|registrador~65_combout\) # (\port_map_registradores|registrador~64_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~64_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~65_combout\,
	combout => \port_map_registradores|registrador~66_combout\);

\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ = (\port_map_registradores|registrador~66_combout\ & !\port_map_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~66_combout\,
	datab => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\);

\port_map_registradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[6]~6_combout\,
	ena => \port_map_registradores|registrador~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~17_q\);

\port_map_registradores|registrador~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~67_combout\ = (\port_map_memoriaInst|Mux6~2_combout\ & (\port_map_registradores|registrador~17_q\ & !\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~17_q\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	combout => \port_map_registradores|registrador~67_combout\);

\port_map_registradores|registrador~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~68_combout\ = (!\port_map_memoriaInst|Mux6~2_combout\ & (\port_map_registradores|registrador~25_q\ & !\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~25_q\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	combout => \port_map_registradores|registrador~68_combout\);

\port_map_registradores|registrador~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~69_combout\ = (\port_map_registradores|registrador~68_combout\) # (\port_map_registradores|registrador~67_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~67_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~68_combout\,
	combout => \port_map_registradores|registrador~69_combout\);

\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ = (\port_map_registradores|registrador~69_combout\ & !\port_map_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~69_combout\,
	datab => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\);

\port_map_ual|portMap_multiplexador|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~7_combout\ = (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & !\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~7_combout\);

\port_map_ual|portMap_multiplexador|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~8_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & \port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~8_combout\);

\port_map_ual|portMap_multiplexador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add0~25_sumout\ = SUM(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~17_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~25_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~22\ ))
-- \port_map_ual|portMap_multiplexador|Add0~26\ = CARRY(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~17_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~25_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~25_q\,
	datad => \port_map_registradores|ALT_INV_registrador~17_q\,
	cin => \port_map_ual|portMap_multiplexador|Add0~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add0~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add0~26\);

\port_map_ual|portMap_multiplexador|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add1~21_sumout\ = SUM(( \port_map_registradores|registrador~48_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~25_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~18\ ))
-- \port_map_ual|portMap_multiplexador|Add1~22\ = CARRY(( \port_map_registradores|registrador~48_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~25_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~48_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~25_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add1~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add1~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add1~22\);

\port_map_ual|portMap_multiplexador|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add2~21_sumout\ = SUM(( !\port_map_registradores|registrador~48_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~25_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~18\ ))
-- \port_map_ual|portMap_multiplexador|Add2~22\ = CARRY(( !\port_map_registradores|registrador~48_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~25_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~48_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~25_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add2~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add2~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add2~22\);

\port_map_ual|portMap_multiplexador|produto~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~10_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|Add2~21_sumout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|Add0~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add2~21_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~10_combout\);

\port_map_ual|portMap_multiplexador|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add3~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~10_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~21_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~10_combout\))))) 
-- ) + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~14\ ))
-- \port_map_ual|portMap_multiplexador|Add3~18\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~10_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~21_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~10_combout\))))) ) 
-- + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~10_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add3~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add3~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add3~18\);

\port_map_ual|portMap_multiplexador|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add4~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~10_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~21_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~10_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~14\ ))
-- \port_map_ual|portMap_multiplexador|Add4~18\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~10_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~21_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~10_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~10_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add4~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add4~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add4~18\);

\port_map_ual|portMap_multiplexador|produto~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~11_combout\ = ( \port_map_ual|portMap_multiplexador|Add4~17_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~10_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & (\port_map_ual|portMap_multiplexador|Add1~21_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~2_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add4~17_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~2_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~10_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add1~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~2_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~10_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add4~17_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~11_combout\);

\port_map_ual|portMap_multiplexador|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add5~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~11_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~17_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~11_combout\))))) 
-- ) + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~10\ ))
-- \port_map_ual|portMap_multiplexador|Add5~14\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~11_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~17_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~11_combout\))))) ) 
-- + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~11_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add5~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add5~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add5~14\);

\port_map_ual|portMap_multiplexador|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add6~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~11_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~17_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~11_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~10\ ))
-- \port_map_ual|portMap_multiplexador|Add6~14\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~11_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~17_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~11_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~11_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add6~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add6~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add6~14\);

\port_map_ual|portMap_multiplexador|produto~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~12_combout\ = ( \port_map_ual|portMap_multiplexador|Add6~13_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~11_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & (\port_map_ual|portMap_multiplexador|Add3~17_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~4_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add6~13_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~4_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~11_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add3~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~11_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add6~13_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~12_combout\);

\port_map_ual|portMap_multiplexador|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add7~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~12_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~12_combout\)))) 
-- ) + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~6\ ))
-- \port_map_ual|portMap_multiplexador|Add7~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~12_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~12_combout\)))) ) 
-- + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~12_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add7~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add7~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add7~10\);

\port_map_ual|portMap_multiplexador|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add8~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~12_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~12_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~6\ ))
-- \port_map_ual|portMap_multiplexador|Add8~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~12_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~12_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~12_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add8~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add8~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add8~10\);

\port_map_ual|portMap_multiplexador|produto~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~13_combout\ = ( \port_map_ual|portMap_multiplexador|Add8~9_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~12_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & (\port_map_ual|portMap_multiplexador|Add5~13_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~5_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add8~9_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~5_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~12_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add5~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~3_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~12_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add8~9_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~13_combout\);

\port_map_ual|portMap_multiplexador|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add10~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~13_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~13_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~2\ ))
-- \port_map_ual|portMap_multiplexador|Add10~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~13_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~13_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~13_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add10~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add10~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add10~6\);

\port_map_ual|portMap_multiplexador|produto~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~14_combout\ = ( \port_map_ual|portMap_multiplexador|Add10~5_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~13_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & (\port_map_ual|portMap_multiplexador|Add7~9_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~8_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add10~5_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~8_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~13_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add7~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~7_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~8_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~13_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~5_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~14_combout\);

\port_map_ual|portMap_multiplexador|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add9~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~13_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~13_combout\)))) 
-- ) + ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~2\ ))
-- \port_map_ual|portMap_multiplexador|Add9~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~13_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~13_combout\)))) ) 
-- + ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~13_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add9~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add9~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add9~6\);

\port_map_ual|portMap_multiplexador|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add11~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|produto~14_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|Add9~5_sumout\))))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~14_combout\)))) 
-- ) + ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))
-- \port_map_ual|portMap_multiplexador|Add11~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|produto~14_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|Add9~5_sumout\))))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~14_combout\)))) 
-- ) + ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~14_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~5_sumout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => GND,
	sumout => \port_map_ual|portMap_multiplexador|Add11~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add11~2\);

\port_map_ual|portMap_multiplexador|portOUT[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[6]~5_combout\ = (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & \port_map_ual|portMap_multiplexador|Add11~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~1_sumout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[6]~5_combout\);

\port_map_ual|portMap_multiplexador|Add12~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add12~10_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ual|portMap_multiplexador|Add12~10_cout\);

\port_map_ual|portMap_multiplexador|Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add12~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|produto~14_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|Add9~5_sumout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|produto~14_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~10_cout\ ))
-- \port_map_ual|portMap_multiplexador|Add12~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|produto~14_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|Add9~5_sumout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|produto~14_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000010011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_produto~14_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~5_sumout\,
	datad => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add12~10_cout\,
	sumout => \port_map_ual|portMap_multiplexador|Add12~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add12~2\);

\port_map_ual|portMap_multiplexador|portOUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[6]~6_combout\ = ( \port_map_ual|portMap_multiplexador|Add9~5_sumout\ & ( \port_map_ual|portMap_multiplexador|Add12~1_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~14_combout\) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & \port_map_ual|portMap_multiplexador|produto~14_combout\)))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|Add9~5_sumout\ 
-- & ( \port_map_ual|portMap_multiplexador|Add12~1_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & \port_map_ual|portMap_multiplexador|produto~14_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- \port_map_ual|portMap_multiplexador|produto~14_combout\)))) ) ) ) # ( \port_map_ual|portMap_multiplexador|Add9~5_sumout\ & ( !\port_map_ual|portMap_multiplexador|Add12~1_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((\port_map_ual|portMap_multiplexador|produto~14_combout\) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & \port_map_ual|portMap_multiplexador|produto~14_combout\)))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|Add9~5_sumout\ 
-- & ( !\port_map_ual|portMap_multiplexador|Add12~1_sumout\ & ( (\port_map_ual|portMap_multiplexador|produto~14_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- !\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000011010000001100001100001100100011110100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~14_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~5_sumout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~1_sumout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[6]~6_combout\);

\port_map_ual|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux1~0_combout\ = (\port_map_memoriaInst|Mux2~0_combout\ & (!\port_map_memoriaInst|Mux1~0_combout\ & (!\port_map_memoriaInst|Mux0~1_combout\ & !\port_map_controle|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datad => \port_map_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ual|Mux1~0_combout\);

\port_map_ual|portMap_adicionador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_adicionador|Add0~25_sumout\ = SUM(( \port_map_registradores|registrador~49_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~67_combout\) # (\port_map_registradores|registrador~68_combout\))) 
-- ) + ( \port_map_ual|portMap_adicionador|Add0~22\ ))
-- \port_map_ual|portMap_adicionador|Add0~26\ = CARRY(( \port_map_registradores|registrador~49_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~67_combout\) # (\port_map_registradores|registrador~68_combout\))) ) + 
-- ( \port_map_ual|portMap_adicionador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~68_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~49_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~67_combout\,
	cin => \port_map_ual|portMap_adicionador|Add0~22\,
	sumout => \port_map_ual|portMap_adicionador|Add0~25_sumout\,
	cout => \port_map_ual|portMap_adicionador|Add0~26\);

\port_map_ual|portMap_subtrair|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_subtrair|Add0~25_sumout\ = SUM(( \port_map_registradores|registrador~49_combout\ ) + ( ((!\port_map_registradores|registrador~68_combout\ & !\port_map_registradores|registrador~67_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + 
-- ( \port_map_ual|portMap_subtrair|Add0~22\ ))
-- \port_map_ual|portMap_subtrair|Add0~26\ = CARRY(( \port_map_registradores|registrador~49_combout\ ) + ( ((!\port_map_registradores|registrador~68_combout\ & !\port_map_registradores|registrador~67_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + ( 
-- \port_map_ual|portMap_subtrair|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~68_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~49_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~67_combout\,
	cin => \port_map_ual|portMap_subtrair|Add0~22\,
	sumout => \port_map_ual|portMap_subtrair|Add0~25_sumout\,
	cout => \port_map_ual|portMap_subtrair|Add0~26\);

\port_map_ual|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux4~0_combout\ = ( \port_map_ual|portMap_subtrair|Add0~25_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (((\port_map_ual|portMap_adicionador|Add0~25_sumout\)) # (\port_map_controle|Mux5~0_combout\))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\) # ((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\)))) ) ) # ( !\port_map_ual|portMap_subtrair|Add0~25_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & 
-- (!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_adicionador|Add0~25_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001011001111110111100000001100010010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datad => \port_map_ual|portMap_adicionador|ALT_INV_Add0~25_sumout\,
	datae => \port_map_ual|portMap_subtrair|ALT_INV_Add0~25_sumout\,
	combout => \port_map_ual|Mux4~0_combout\);

\port_map_ual|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux4~2_combout\ = ( !\port_map_memoriaInst|Mux1~0_combout\ & ( (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_memoriaInst|Mux2~0_combout\ & (((\port_map_ual|Mux4~0_combout\)))) # (\port_map_memoriaInst|Mux2~0_combout\ & 
-- (\port_map_memoriaInst|Mux3~0_combout\ & (\port_map_ual|portMap_adicionador|Add0~25_sumout\))))) ) ) # ( \port_map_memoriaInst|Mux1~0_combout\ & ( ((!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_memoriaInst|Mux2~0_combout\ & 
-- ((\port_map_ual|Mux4~0_combout\))) # (\port_map_memoriaInst|Mux2~0_combout\ & (\port_map_registradores|registrador~49_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000111001101000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux3~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~49_combout\,
	datad => \port_map_ual|ALT_INV_Mux4~0_combout\,
	datae => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datag => \port_map_ual|portMap_adicionador|ALT_INV_Add0~25_sumout\,
	combout => \port_map_ual|Mux4~2_combout\);

\port_map_ual|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux4~1_combout\ = ((\port_map_ual|Mux1~0_combout\ & ((\port_map_ual|portMap_multiplexador|portOUT[6]~6_combout\) # (\port_map_ual|portMap_multiplexador|portOUT[6]~5_combout\)))) # (\port_map_ual|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111111000001111111111100000111111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[6]~5_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[6]~6_combout\,
	datac => \port_map_ual|ALT_INV_Mux1~0_combout\,
	datad => \port_map_ual|ALT_INV_Mux4~2_combout\,
	combout => \port_map_ual|Mux4~1_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador_mason.ram0_memoriaAdress_e716e8fa.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoriaAdress:port_map_memoriaAdress|altsyncram:ram_rtl_0|altsyncram_c502:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_controle|Mux6~0_combout\,
	portbre => \port_map_controle|Mux3~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[6]~6_combout\ = ( \port_map_controle|Mux3~0_combout\ & ( \port_map_ual|Mux4~2_combout\ & ( \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ ) ) ) # ( 
-- !\port_map_controle|Mux3~0_combout\ & ( \port_map_ual|Mux4~2_combout\ ) ) # ( \port_map_controle|Mux3~0_combout\ & ( !\port_map_ual|Mux4~2_combout\ & ( \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ ) ) ) # ( 
-- !\port_map_controle|Mux3~0_combout\ & ( !\port_map_ual|Mux4~2_combout\ & ( (\port_map_ual|Mux1~0_combout\ & ((\port_map_ual|portMap_multiplexador|portOUT[6]~6_combout\) # (\port_map_ual|portMap_multiplexador|portOUT[6]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[6]~5_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[6]~6_combout\,
	datac => \port_map_ual|ALT_INV_Mux1~0_combout\,
	datad => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a6~portbdataout\,
	datae => \port_map_controle|ALT_INV_Mux3~0_combout\,
	dataf => \port_map_ual|ALT_INV_Mux4~2_combout\,
	combout => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[6]~6_combout\);

\port_map_registradores|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[6]~6_combout\,
	ena => \port_map_registradores|registrador~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~25_q\);

\port_map_registradores|registrador~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~49_combout\ = ( \port_map_registradores|registrador~17_q\ & ( (!\port_map_pc|portOUT\(2)) # (((!\port_map_memoriaInst|Mux0~0_combout\) # (\port_map_registradores|registrador~25_q\)) # (\port_map_pc|portOUT\(3))) ) ) # ( 
-- !\port_map_registradores|registrador~17_q\ & ( (\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(3) & (\port_map_memoriaInst|Mux0~0_combout\ & \port_map_registradores|registrador~25_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~25_q\,
	datae => \port_map_registradores|ALT_INV_registrador~17_q\,
	combout => \port_map_registradores|registrador~49_combout\);

\port_map_registradores|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[7]~7_combout\,
	ena => \port_map_registradores|registrador~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~18_q\);

\port_map_registradores|registrador~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~70_combout\ = (\port_map_memoriaInst|Mux6~2_combout\ & (\port_map_registradores|registrador~18_q\ & !\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~18_q\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	combout => \port_map_registradores|registrador~70_combout\);

\port_map_registradores|registrador~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~71_combout\ = (!\port_map_memoriaInst|Mux6~2_combout\ & (\port_map_registradores|registrador~26_q\ & !\port_map_memoriaInst|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~26_q\,
	datac => \port_map_memoriaInst|ALT_INV_Mux5~1_combout\,
	combout => \port_map_registradores|registrador~71_combout\);

\port_map_registradores|registrador~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~72_combout\ = (\port_map_registradores|registrador~71_combout\) # (\port_map_registradores|registrador~70_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~70_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~71_combout\,
	combout => \port_map_registradores|registrador~72_combout\);

\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ = (\port_map_registradores|registrador~72_combout\ & !\port_map_controle|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~72_combout\,
	datab => \port_map_controle|ALT_INV_Mux7~0_combout\,
	combout => \port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\);

\port_map_ual|portMap_multiplexador|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|process_0~9_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & \port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	combout => \port_map_ual|portMap_multiplexador|process_0~9_combout\);

\port_map_ual|portMap_multiplexador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add0~29_sumout\ = SUM(( (!\port_map_memoriaInst|Mux4~0_combout\ & ((!\port_map_registradores|registrador~18_q\))) # (\port_map_memoriaInst|Mux4~0_combout\ & (!\port_map_registradores|registrador~26_q\)) ) + ( GND ) + ( 
-- \port_map_ual|portMap_multiplexador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux4~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~26_q\,
	datad => \port_map_registradores|ALT_INV_registrador~18_q\,
	cin => \port_map_ual|portMap_multiplexador|Add0~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add0~29_sumout\);

\port_map_ual|portMap_multiplexador|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add1~25_sumout\ = SUM(( \port_map_registradores|registrador~49_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~29_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~22\ ))
-- \port_map_ual|portMap_multiplexador|Add1~26\ = CARRY(( \port_map_registradores|registrador~49_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~29_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~29_sumout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~49_combout\,
	dataf => \port_map_controle|ALT_INV_Mux7~0_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add1~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add1~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add1~26\);

\port_map_ual|portMap_multiplexador|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add2~25_sumout\ = SUM(( !\port_map_registradores|registrador~49_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~29_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~22\ ))
-- \port_map_ual|portMap_multiplexador|Add2~26\ = CARRY(( !\port_map_registradores|registrador~49_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~29_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & (\port_map_registradores|registrador~51_combout\)) 
-- # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~49_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~29_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add2~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add2~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add2~26\);

\port_map_ual|portMap_multiplexador|produto~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~15_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|Add2~25_sumout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|Add0~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add2~25_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~15_combout\);

\port_map_ual|portMap_multiplexador|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add3~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~15_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~15_combout\))))) 
-- ) + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~18\ ))
-- \port_map_ual|portMap_multiplexador|Add3~22\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~15_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~15_combout\))))) ) 
-- + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~15_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add3~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add3~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add3~22\);

\port_map_ual|portMap_multiplexador|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add4~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~15_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~15_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~18\ ))
-- \port_map_ual|portMap_multiplexador|Add4~22\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~15_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~15_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~15_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add4~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add4~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add4~22\);

\port_map_ual|portMap_multiplexador|produto~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~16_combout\ = ( \port_map_ual|portMap_multiplexador|Add4~21_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~15_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & (\port_map_ual|portMap_multiplexador|Add1~25_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~2_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add4~21_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~2_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~15_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~2_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~15_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add4~21_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~16_combout\);

\port_map_ual|portMap_multiplexador|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add5~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~16_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~21_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~16_combout\))))) 
-- ) + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~14\ ))
-- \port_map_ual|portMap_multiplexador|Add5~18\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~16_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~21_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~16_combout\))))) ) 
-- + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~16_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add5~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add5~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add5~18\);

\port_map_ual|portMap_multiplexador|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add6~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~16_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~21_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~16_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~14\ ))
-- \port_map_ual|portMap_multiplexador|Add6~18\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~16_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~21_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~16_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~16_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add6~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add6~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add6~18\);

\port_map_ual|portMap_multiplexador|produto~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~17_combout\ = ( \port_map_ual|portMap_multiplexador|Add6~17_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~16_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & (\port_map_ual|portMap_multiplexador|Add3~21_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~4_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add6~17_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~4_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~16_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add3~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~16_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add6~17_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~17_combout\);

\port_map_ual|portMap_multiplexador|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add7~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~17_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~17_combout\)))) 
-- ) + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~10\ ))
-- \port_map_ual|portMap_multiplexador|Add7~14\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~17_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~17_combout\)))) ) 
-- + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~17_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add7~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add7~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add7~14\);

\port_map_ual|portMap_multiplexador|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add8~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~17_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~17_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~10\ ))
-- \port_map_ual|portMap_multiplexador|Add8~14\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~17_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~17_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~17_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add8~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add8~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add8~14\);

\port_map_ual|portMap_multiplexador|produto~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~18_combout\ = ( \port_map_ual|portMap_multiplexador|Add8~13_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~17_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & (\port_map_ual|portMap_multiplexador|Add5~17_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~5_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add8~13_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~5_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~17_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add5~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~3_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~17_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add8~13_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~18_combout\);

\port_map_ual|portMap_multiplexador|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add9~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~18_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~18_combout\)))) 
-- ) + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~6\ ))
-- \port_map_ual|portMap_multiplexador|Add9~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~18_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~18_combout\)))) ) 
-- + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~18_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add9~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add9~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add9~10\);

\port_map_ual|portMap_multiplexador|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add10~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~18_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~18_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~6\ ))
-- \port_map_ual|portMap_multiplexador|Add10~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~18_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~18_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~18_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add10~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add10~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add10~10\);

\port_map_ual|portMap_multiplexador|produto~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~19_combout\ = ( \port_map_ual|portMap_multiplexador|Add10~9_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~18_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & (\port_map_ual|portMap_multiplexador|Add7~13_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~8_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add10~9_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~8_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~18_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add7~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~7_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~8_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~18_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~9_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~19_combout\);

\port_map_ual|portMap_multiplexador|Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add12~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~19_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~19_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~2\ ))
-- \port_map_ual|portMap_multiplexador|Add12~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~19_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~19_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~19_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add12~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add12~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add12~6\);

\port_map_ual|portMap_multiplexador|produto~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~20_combout\ = ( \port_map_ual|portMap_multiplexador|Add12~5_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~9_sumout\)) # 
-- (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & ((\port_map_ual|portMap_multiplexador|produto~19_combout\)))) # (\port_map_ual|portMap_multiplexador|process_0~9_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add12~5_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~9_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~9_sumout\)) # (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001110110111111100001000010011000011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~6_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~19_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~5_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~20_combout\);

\port_map_ual|portMap_multiplexador|Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add11~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~19_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~19_combout\)))) 
-- ) + ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~2\ ))
-- \port_map_ual|portMap_multiplexador|Add11~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~19_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~19_combout\)))) ) 
-- + ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~19_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add11~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add11~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add11~6\);

\port_map_ual|portMap_multiplexador|Add14~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add14~6_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \port_map_ual|portMap_multiplexador|Add14~6_cout\);

\port_map_ual|portMap_multiplexador|Add14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add14~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|produto~20_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((\port_map_ual|portMap_multiplexador|Add11~5_sumout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (\port_map_ual|portMap_multiplexador|produto~20_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~6_cout\ ))
-- \port_map_ual|portMap_multiplexador|Add14~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|produto~20_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((\port_map_ual|portMap_multiplexador|Add11~5_sumout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (\port_map_ual|portMap_multiplexador|produto~20_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~43_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000010011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_produto~20_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~5_sumout\,
	datad => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add14~6_cout\,
	sumout => \port_map_ual|portMap_multiplexador|Add14~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add14~2\);

\port_map_ual|portMap_multiplexador|portOUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[7]~7_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & \port_map_ual|portMap_multiplexador|Add14~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add14~1_sumout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[7]~7_combout\);

\port_map_ual|portMap_multiplexador|Add13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add13~1_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|produto~20_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|Add11~5_sumout\))))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~20_combout\)))) 
-- ) + ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))
-- \port_map_ual|portMap_multiplexador|Add13~2\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|produto~20_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|Add11~5_sumout\))))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~20_combout\)))) 
-- ) + ( \port_map_registradores|registrador~43_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~20_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~5_sumout\,
	dataf => \port_map_registradores|ALT_INV_registrador~43_combout\,
	cin => GND,
	sumout => \port_map_ual|portMap_multiplexador|Add13~1_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add13~2\);

\port_map_ual|portMap_multiplexador|portOUT[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[7]~8_combout\ = ( \port_map_ual|portMap_multiplexador|Add11~5_sumout\ & ( \port_map_ual|portMap_multiplexador|Add13~1_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~20_combout\) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\) # (\port_map_ual|portMap_multiplexador|produto~20_combout\)))) ) ) ) # ( 
-- !\port_map_ual|portMap_multiplexador|Add11~5_sumout\ & ( \port_map_ual|portMap_multiplexador|Add13~1_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & \port_map_ual|portMap_multiplexador|produto~20_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\) # (\port_map_ual|portMap_multiplexador|produto~20_combout\)))) ) ) ) # ( \port_map_ual|portMap_multiplexador|Add11~5_sumout\ & ( !\port_map_ual|portMap_multiplexador|Add13~1_sumout\ & ( 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~20_combout\) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & 
-- \port_map_ual|portMap_multiplexador|produto~20_combout\)))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|Add11~5_sumout\ & ( !\port_map_ual|portMap_multiplexador|Add13~1_sumout\ & ( (\port_map_ual|portMap_multiplexador|produto~20_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & !\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000011010000001100001100110000101100110111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~20_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~5_sumout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add13~1_sumout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[7]~8_combout\);

\port_map_ual|portMap_adicionador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_adicionador|Add0~29_sumout\ = SUM(( \port_map_registradores|registrador~50_combout\ ) + ( (!\port_map_controle|Mux7~0_combout\ & ((\port_map_registradores|registrador~70_combout\) # (\port_map_registradores|registrador~71_combout\))) 
-- ) + ( \port_map_ual|portMap_adicionador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~71_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~50_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~70_combout\,
	cin => \port_map_ual|portMap_adicionador|Add0~26\,
	sumout => \port_map_ual|portMap_adicionador|Add0~29_sumout\);

\port_map_ual|portMap_subtrair|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_subtrair|Add0~29_sumout\ = SUM(( \port_map_registradores|registrador~50_combout\ ) + ( ((!\port_map_registradores|registrador~71_combout\ & !\port_map_registradores|registrador~70_combout\)) # (\port_map_controle|Mux7~0_combout\) ) + 
-- ( \port_map_ual|portMap_subtrair|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~71_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~50_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~70_combout\,
	cin => \port_map_ual|portMap_subtrair|Add0~26\,
	sumout => \port_map_ual|portMap_subtrair|Add0~29_sumout\);

\port_map_ual|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux3~0_combout\ = ( \port_map_ual|portMap_subtrair|Add0~29_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (((\port_map_ual|portMap_adicionador|Add0~29_sumout\)) # (\port_map_controle|Mux5~0_combout\))) # 
-- (\port_map_memoriaInst|Mux1~0_combout\ & ((!\port_map_controle|Mux5~0_combout\) # ((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)))) ) ) # ( !\port_map_ual|portMap_subtrair|Add0~29_sumout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & 
-- (!\port_map_controle|Mux5~0_combout\ & ((\port_map_ual|portMap_adicionador|Add0~29_sumout\)))) # (\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_controle|Mux5~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001011001111110111100000001100010010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datab => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	datad => \port_map_ual|portMap_adicionador|ALT_INV_Add0~29_sumout\,
	datae => \port_map_ual|portMap_subtrair|ALT_INV_Add0~29_sumout\,
	combout => \port_map_ual|Mux3~0_combout\);

\port_map_ual|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux3~2_combout\ = ( !\port_map_memoriaInst|Mux1~0_combout\ & ( (!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_memoriaInst|Mux2~0_combout\ & (((\port_map_ual|Mux3~0_combout\)))) # (\port_map_memoriaInst|Mux2~0_combout\ & 
-- (\port_map_memoriaInst|Mux3~0_combout\ & (\port_map_ual|portMap_adicionador|Add0~29_sumout\))))) ) ) # ( \port_map_memoriaInst|Mux1~0_combout\ & ( ((!\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_memoriaInst|Mux2~0_combout\ & 
-- ((\port_map_ual|Mux3~0_combout\))) # (\port_map_memoriaInst|Mux2~0_combout\ & (\port_map_registradores|registrador~50_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000111001101000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux3~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datac => \port_map_registradores|ALT_INV_registrador~50_combout\,
	datad => \port_map_ual|ALT_INV_Mux3~0_combout\,
	datae => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	dataf => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datag => \port_map_ual|portMap_adicionador|ALT_INV_Add0~29_sumout\,
	combout => \port_map_ual|Mux3~2_combout\);

\port_map_ual|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux3~1_combout\ = ((\port_map_ual|Mux1~0_combout\ & ((\port_map_ual|portMap_multiplexador|portOUT[7]~8_combout\) # (\port_map_ual|portMap_multiplexador|portOUT[7]~7_combout\)))) # (\port_map_ual|Mux3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000101011111111100010101111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|ALT_INV_Mux1~0_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[7]~7_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[7]~8_combout\,
	datad => \port_map_ual|ALT_INV_Mux3~2_combout\,
	combout => \port_map_ual|Mux3~1_combout\);

\port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/processador_mason.ram0_memoriaAdress_e716e8fa.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoriaAdress:port_map_memoriaAdress|altsyncram:ram_rtl_0|altsyncram_c502:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \port_map_controle|Mux6~0_combout\,
	portbre => \port_map_controle|Mux3~0_combout\,
	clk0 => \clock~input_o\,
	portadatain => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[7]~7_combout\ = ( \port_map_controle|Mux3~0_combout\ & ( \port_map_ual|Mux3~2_combout\ & ( \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ ) ) ) # ( 
-- !\port_map_controle|Mux3~0_combout\ & ( \port_map_ual|Mux3~2_combout\ ) ) # ( \port_map_controle|Mux3~0_combout\ & ( !\port_map_ual|Mux3~2_combout\ & ( \port_map_memoriaAdress|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ ) ) ) # ( 
-- !\port_map_controle|Mux3~0_combout\ & ( !\port_map_ual|Mux3~2_combout\ & ( (\port_map_ual|Mux1~0_combout\ & ((\port_map_ual|portMap_multiplexador|portOUT[7]~8_combout\) # (\port_map_ual|portMap_multiplexador|portOUT[7]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|ALT_INV_Mux1~0_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[7]~7_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[7]~8_combout\,
	datad => \port_map_memoriaAdress|ram_rtl_0|auto_generated|ALT_INV_ram_block1a7~portbdataout\,
	datae => \port_map_controle|ALT_INV_Mux3~0_combout\,
	dataf => \port_map_ual|ALT_INV_Mux3~2_combout\,
	combout => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[7]~7_combout\);

\port_map_registradores|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_memAdress_ula|portOUT[7]~7_combout\,
	ena => \port_map_registradores|registrador~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_registradores|registrador~26_q\);

\port_map_registradores|registrador~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_registradores|registrador~50_combout\ = ( \port_map_registradores|registrador~18_q\ & ( (!\port_map_pc|portOUT\(2)) # (((!\port_map_memoriaInst|Mux0~0_combout\) # (\port_map_registradores|registrador~26_q\)) # (\port_map_pc|portOUT\(3))) ) ) # ( 
-- !\port_map_registradores|registrador~18_q\ & ( (\port_map_pc|portOUT\(2) & (!\port_map_pc|portOUT\(3) & (\port_map_memoriaInst|Mux0~0_combout\ & \port_map_registradores|registrador~26_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111110111111111100000000000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(2),
	datab => \port_map_pc|ALT_INV_portOUT\(3),
	datac => \port_map_memoriaInst|ALT_INV_Mux0~0_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~26_q\,
	datae => \port_map_registradores|ALT_INV_registrador~18_q\,
	combout => \port_map_registradores|registrador~50_combout\);

\port_map_ual|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Equal0~0_combout\ = (!\port_map_registradores|registrador~43_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (!\port_map_registradores|registrador~45_combout\ $ 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\)))) # (\port_map_registradores|registrador~43_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (!\port_map_registradores|registrador~45_combout\ $ 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000110000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~43_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~45_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datad => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	combout => \port_map_ual|Equal0~0_combout\);

\port_map_ual|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Equal0~1_combout\ = ( \port_map_ual|Equal0~0_combout\ & ( (!\port_map_registradores|registrador~44_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (!\port_map_registradores|registrador~46_combout\ $ 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\)))) # (\port_map_registradores|registrador~44_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (!\port_map_registradores|registrador~46_combout\ $ 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001000010000100000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~44_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~46_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datad => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datae => \port_map_ual|ALT_INV_Equal0~0_combout\,
	combout => \port_map_ual|Equal0~1_combout\);

\port_map_ual|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Equal0~2_combout\ = ( \port_map_ual|Equal0~1_combout\ & ( (!\port_map_registradores|registrador~47_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (!\port_map_registradores|registrador~48_combout\ $ 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)))) # (\port_map_registradores|registrador~47_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (!\port_map_registradores|registrador~48_combout\ $ 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001000010000100000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~47_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~48_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datad => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datae => \port_map_ual|ALT_INV_Equal0~1_combout\,
	combout => \port_map_ual|Equal0~2_combout\);

\port_map_ual|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Equal0~3_combout\ = ( \port_map_ual|Equal0~2_combout\ & ( (!\port_map_registradores|registrador~49_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_registradores|registrador~50_combout\ $ 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)))) # (\port_map_registradores|registrador~49_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_registradores|registrador~50_combout\ $ 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001000010000100000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_registradores|ALT_INV_registrador~49_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~50_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datad => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	datae => \port_map_ual|ALT_INV_Equal0~2_combout\,
	combout => \port_map_ual|Equal0~3_combout\);

\port_map_ual|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux11~0_combout\ = (\port_map_memoriaInst|Mux2~0_combout\ & (!\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_memoriaInst|Mux0~1_combout\ & !\port_map_controle|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datad => \port_map_controle|ALT_INV_Mux5~0_combout\,
	combout => \port_map_ual|Mux11~0_combout\);

\port_map_ual|in_tempZero\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|in_tempZero~combout\ = ( \port_map_ual|in_tempZero~combout\ & ( \port_map_ual|Mux11~0_combout\ & ( \port_map_ual|Equal0~3_combout\ ) ) ) # ( !\port_map_ual|in_tempZero~combout\ & ( \port_map_ual|Mux11~0_combout\ & ( 
-- \port_map_ual|Equal0~3_combout\ ) ) ) # ( \port_map_ual|in_tempZero~combout\ & ( !\port_map_ual|Mux11~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ual|ALT_INV_Equal0~3_combout\,
	datae => \port_map_ual|ALT_INV_in_tempZero~combout\,
	dataf => \port_map_ual|ALT_INV_Mux11~0_combout\,
	combout => \port_map_ual|in_tempZero~combout\);

\port_map_ual|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux12~0_combout\ = !\port_map_controle|Mux5~0_combout\ $ (!\port_map_ual|in_tempZero~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux5~0_combout\,
	datab => \port_map_ual|ALT_INV_in_tempZero~combout\,
	combout => \port_map_ual|Mux12~0_combout\);

\port_map_ual|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|Mux13~0_combout\ = (!\port_map_memoriaInst|Mux2~0_combout\ & (!\port_map_memoriaInst|Mux1~0_combout\ & \port_map_memoriaInst|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	combout => \port_map_ual|Mux13~0_combout\);

\port_map_ual|zero\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|zero~combout\ = ( \port_map_ual|zero~combout\ & ( \port_map_ual|Mux13~0_combout\ & ( \port_map_ual|Mux12~0_combout\ ) ) ) # ( !\port_map_ual|zero~combout\ & ( \port_map_ual|Mux13~0_combout\ & ( \port_map_ual|Mux12~0_combout\ ) ) ) # ( 
-- \port_map_ual|zero~combout\ & ( !\port_map_ual|Mux13~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ual|ALT_INV_Mux12~0_combout\,
	datae => \port_map_ual|ALT_INV_zero~combout\,
	dataf => \port_map_ual|ALT_INV_Mux13~0_combout\,
	combout => \port_map_ual|zero~combout\);

\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ = ( \port_map_ual|zero~combout\ & ( (!\port_map_memoriaInst|Mux1~0_combout\ & (\port_map_memoriaInst|Mux0~1_combout\ & ((!\port_map_memoriaInst|Mux2~0_combout\) # 
-- (\port_map_memoriaInst|Mux3~0_combout\)))) ) ) # ( !\port_map_ual|zero~combout\ & ( (\port_map_memoriaInst|Mux3~0_combout\ & (\port_map_memoriaInst|Mux2~0_combout\ & (!\port_map_memoriaInst|Mux1~0_combout\ & \port_map_memoriaInst|Mux0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000001101000000000000000100000000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux3~0_combout\,
	datab => \port_map_memoriaInst|ALT_INV_Mux2~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux1~0_combout\,
	datad => \port_map_memoriaInst|ALT_INV_Mux0~1_combout\,
	datae => \port_map_ual|ALT_INV_zero~combout\,
	combout => \port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\);

\port_map_addPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_addPC|Add0~29_sumout\ = SUM(( \port_map_pc|portOUT\(7) ) + ( GND ) + ( \port_map_addPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_pc|ALT_INV_portOUT\(7),
	cin => \port_map_addPC|Add0~26\,
	sumout => \port_map_addPC|Add0~29_sumout\);

\port_map_multiplexador_2X1_8bits_jump|portOUT[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_jump|portOUT[7]~8_combout\ = (!\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ & \port_map_addPC|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\,
	datab => \port_map_addPC|ALT_INV_Add0~29_sumout\,
	combout => \port_map_multiplexador_2X1_8bits_jump|portOUT[7]~8_combout\);

\port_map_pc|portOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_jump|portOUT[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|portOUT\(7));

\port_map_memoriaInst|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_memoriaInst|Mux6~2_combout\ = ((!\port_map_memoriaInst|Mux6~0_combout\) # (!\port_map_memoriaInst|Mux6~1_combout\)) # (\port_map_pc|portOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_pc|ALT_INV_portOUT\(7),
	datab => \port_map_memoriaInst|ALT_INV_Mux6~0_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~1_combout\,
	combout => \port_map_memoriaInst|Mux6~2_combout\);

\port_map_multiplexador_2X1_8bits_jump|portOUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_multiplexador_2X1_8bits_jump|portOUT[0]~1_combout\ = (!\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ & ((\port_map_addPC|Add0~1_sumout\))) # (\port_map_multiplexador_2X1_8bits_jump|portOUT[2]~0_combout\ & 
-- (!\port_map_memoriaInst|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datab => \port_map_multiplexador_2X1_8bits_jump|ALT_INV_portOUT[2]~0_combout\,
	datac => \port_map_addPC|ALT_INV_Add0~1_sumout\,
	combout => \port_map_multiplexador_2X1_8bits_jump|portOUT[0]~1_combout\);

\port_map_pc|portOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \port_map_multiplexador_2X1_8bits_jump|portOUT[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_map_pc|portOUT\(0));

\port_map_ual|portMap_multiplexador|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add1~29_sumout\ = SUM(( \port_map_registradores|registrador~50_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~29_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011101010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~29_sumout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~50_combout\,
	dataf => \port_map_controle|ALT_INV_Mux7~0_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add1~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add1~29_sumout\);

\port_map_ual|portMap_multiplexador|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add2~33_sumout\ = SUM(( !\port_map_registradores|registrador~50_combout\ ) + ( (\port_map_ual|portMap_multiplexador|Add0~29_sumout\ & ((!\port_map_controle|Mux7~0_combout\ & 
-- (\port_map_registradores|registrador~51_combout\)) # (\port_map_controle|Mux7~0_combout\ & ((!\port_map_memoriaInst|Mux6~2_combout\))))) ) + ( \port_map_ual|portMap_multiplexador|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_controle|ALT_INV_Mux7~0_combout\,
	datab => \port_map_registradores|ALT_INV_registrador~51_combout\,
	datac => \port_map_memoriaInst|ALT_INV_Mux6~2_combout\,
	datad => \port_map_registradores|ALT_INV_registrador~50_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~29_sumout\,
	cin => \port_map_ual|portMap_multiplexador|Add2~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add2~33_sumout\);

\port_map_ual|portMap_multiplexador|produto~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~21_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|Add2~33_sumout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|Add0~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100000101001001110000010100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add0~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add2~33_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~21_combout\);

\port_map_ual|portMap_multiplexador|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add3~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~21_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))))) 
-- ) + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~22\ ))
-- \port_map_ual|portMap_multiplexador|Add3~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~21_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))))) ) 
-- + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~21_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add3~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add3~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add3~30\);

\port_map_ual|portMap_multiplexador|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add3~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~21_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))))) 
-- ) + ( \port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~21_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add3~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add3~25_sumout\);

\port_map_ual|portMap_multiplexador|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add4~33_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~21_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~22\ ))
-- \port_map_ual|portMap_multiplexador|Add4~34\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~21_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~21_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add4~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add4~33_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add4~34\);

\port_map_ual|portMap_multiplexador|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add4~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ & (((\port_map_ual|portMap_multiplexador|produto~21_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[0]~0_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (\port_map_ual|portMap_multiplexador|Add1~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[0]~0_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~21_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add4~34\,
	sumout => \port_map_ual|portMap_multiplexador|Add4~29_sumout\);

\port_map_ual|portMap_multiplexador|produto~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~22_combout\ = ( \port_map_ual|portMap_multiplexador|Add4~29_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & (\port_map_ual|portMap_multiplexador|Add1~29_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~2_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add4~29_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~2_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add1~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~2_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~21_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add4~29_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~22_combout\);

\port_map_ual|portMap_multiplexador|produto~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~32_combout\ = ( \port_map_ual|portMap_multiplexador|Add4~33_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & (\port_map_ual|portMap_multiplexador|Add1~29_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~2_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add4~33_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~2_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~0_combout\ & ((\port_map_ual|portMap_multiplexador|produto~21_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~0_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add1~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~2_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~0_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add1~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~21_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add4~33_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~32_combout\);

\port_map_ual|portMap_multiplexador|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add5~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~32_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~32_combout\))))) 
-- ) + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~18\ ))
-- \port_map_ual|portMap_multiplexador|Add5~26\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~32_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~32_combout\))))) ) 
-- + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~32_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add5~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add5~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add5~26\);

\port_map_ual|portMap_multiplexador|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add5~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~22_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))))) 
-- ) + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~26\ ))
-- \port_map_ual|portMap_multiplexador|Add5~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~22_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))))) ) 
-- + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~22_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add5~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add5~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add5~30\);

\port_map_ual|portMap_multiplexador|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add5~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~22_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))))) 
-- ) + ( \port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~22_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add5~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add5~21_sumout\);

\port_map_ual|portMap_multiplexador|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add6~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~32_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~32_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~18\ ))
-- \port_map_ual|portMap_multiplexador|Add6~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~32_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~32_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~32_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add6~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add6~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add6~30\);

\port_map_ual|portMap_multiplexador|Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add6~33_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~22_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~30\ ))
-- \port_map_ual|portMap_multiplexador|Add6~34\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~22_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))))) ) 
-- + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~22_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add6~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add6~33_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add6~34\);

\port_map_ual|portMap_multiplexador|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add6~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ & (((\port_map_ual|portMap_multiplexador|produto~22_combout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[1]~1_combout\ 
-- & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add3~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))))) 
-- ) + ( !\port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[1]~1_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~22_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add6~34\,
	sumout => \port_map_ual|portMap_multiplexador|Add6~25_sumout\);

\port_map_ual|portMap_multiplexador|produto~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~23_combout\ = ( \port_map_ual|portMap_multiplexador|Add6~25_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & (\port_map_ual|portMap_multiplexador|Add3~25_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~4_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add6~25_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~4_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add3~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~22_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add6~25_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~23_combout\);

\port_map_ual|portMap_multiplexador|produto~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~37_combout\ = ( \port_map_ual|portMap_multiplexador|Add6~33_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & (\port_map_ual|portMap_multiplexador|Add3~25_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~4_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add6~33_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~4_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~22_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add3~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~22_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add6~33_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~37_combout\);

\port_map_ual|portMap_multiplexador|produto~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~33_combout\ = ( \port_map_ual|portMap_multiplexador|Add6~29_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~32_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & (\port_map_ual|portMap_multiplexador|Add3~29_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~4_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add6~29_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~4_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~1_combout\ & ((\port_map_ual|portMap_multiplexador|produto~32_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~1_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add3~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~1_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add3~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~32_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add6~29_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~33_combout\);

\port_map_ual|portMap_multiplexador|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add7~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~33_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~33_combout\)))) 
-- ) + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~14\ ))
-- \port_map_ual|portMap_multiplexador|Add7~26\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~33_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~33_combout\)))) ) 
-- + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~33_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add7~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add7~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add7~26\);

\port_map_ual|portMap_multiplexador|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add7~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~37_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~37_combout\)))) 
-- ) + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~26\ ))
-- \port_map_ual|portMap_multiplexador|Add7~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~37_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~37_combout\)))) ) 
-- + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~37_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add7~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add7~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add7~30\);

\port_map_ual|portMap_multiplexador|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add7~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~23_combout\)))) 
-- ) + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~30\ ))
-- \port_map_ual|portMap_multiplexador|Add7~22\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~23_combout\)))) ) 
-- + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~23_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add7~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add7~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add7~22\);

\port_map_ual|portMap_multiplexador|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add7~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~23_combout\)))) 
-- ) + ( \port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~23_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add7~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add7~17_sumout\);

\port_map_ual|portMap_multiplexador|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add8~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~33_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~33_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~14\ ))
-- \port_map_ual|portMap_multiplexador|Add8~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~33_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~33_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~33_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add8~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add8~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add8~30\);

\port_map_ual|portMap_multiplexador|Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add8~33_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~37_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~37_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~30\ ))
-- \port_map_ual|portMap_multiplexador|Add8~34\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~37_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~37_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~37_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add8~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add8~33_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add8~34\);

\port_map_ual|portMap_multiplexador|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add8~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~23_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~34\ ))
-- \port_map_ual|portMap_multiplexador|Add8~26\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~23_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~23_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add8~34\,
	sumout => \port_map_ual|portMap_multiplexador|Add8~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add8~26\);

\port_map_ual|portMap_multiplexador|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add8~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (\port_map_ual|portMap_multiplexador|Add5~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_ual|portMap_multiplexador|produto~23_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~23_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add8~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add8~21_sumout\);

\port_map_ual|portMap_multiplexador|produto~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~24_combout\ = ( \port_map_ual|portMap_multiplexador|Add8~21_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & (\port_map_ual|portMap_multiplexador|Add5~21_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~5_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add8~21_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~5_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add5~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~3_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~23_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add8~21_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~24_combout\);

\port_map_ual|portMap_multiplexador|produto~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~29_combout\ = ( \port_map_ual|portMap_multiplexador|Add8~25_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & (\port_map_ual|portMap_multiplexador|Add5~21_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~5_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add8~25_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~5_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~23_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add5~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~3_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~23_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add8~25_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~29_combout\);

\port_map_ual|portMap_multiplexador|produto~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~38_combout\ = ( \port_map_ual|portMap_multiplexador|Add8~33_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~37_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & (\port_map_ual|portMap_multiplexador|Add5~29_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~5_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add8~33_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~5_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~37_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add5~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~3_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~37_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add8~33_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~38_combout\);

\port_map_ual|portMap_multiplexador|produto~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~44_combout\ = ( \port_map_ual|portMap_multiplexador|Add8~29_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~33_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & (\port_map_ual|portMap_multiplexador|Add5~25_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~5_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add8~29_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~5_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~33_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~3_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add5~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~3_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~33_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add8~29_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~44_combout\);

\port_map_ual|portMap_multiplexador|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add9~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~44_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~44_combout\)))) 
-- ) + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~10\ ))
-- \port_map_ual|portMap_multiplexador|Add9~26\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~44_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~44_combout\)))) ) 
-- + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~44_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add9~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add9~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add9~26\);

\port_map_ual|portMap_multiplexador|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add9~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~38_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~38_combout\)))) 
-- ) + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~26\ ))
-- \port_map_ual|portMap_multiplexador|Add9~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~38_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~38_combout\)))) ) 
-- + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~38_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add9~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add9~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add9~30\);

\port_map_ual|portMap_multiplexador|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add9~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~29_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~29_combout\)))) 
-- ) + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~30\ ))
-- \port_map_ual|portMap_multiplexador|Add9~22\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~29_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~29_combout\)))) ) 
-- + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~29_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add9~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add9~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add9~22\);

\port_map_ual|portMap_multiplexador|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add9~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~24_combout\)))) 
-- ) + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~22\ ))
-- \port_map_ual|portMap_multiplexador|Add9~18\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~24_combout\)))) ) 
-- + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~24_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add9~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add9~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add9~18\);

\port_map_ual|portMap_multiplexador|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add9~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~24_combout\)))) 
-- ) + ( \port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~24_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add9~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add9~13_sumout\);

\port_map_ual|portMap_multiplexador|Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add10~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~44_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~44_combout\)))) ) + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~10\ ))
-- \port_map_ual|portMap_multiplexador|Add10~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~44_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~44_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~44_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add10~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add10~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add10~30\);

\port_map_ual|portMap_multiplexador|Add10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add10~33_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~38_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~38_combout\)))) ) + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~30\ ))
-- \port_map_ual|portMap_multiplexador|Add10~34\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~38_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~38_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~38_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add10~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add10~33_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add10~34\);

\port_map_ual|portMap_multiplexador|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add10~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~29_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~29_combout\)))) ) + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~34\ ))
-- \port_map_ual|portMap_multiplexador|Add10~26\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~29_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~29_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~29_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add10~34\,
	sumout => \port_map_ual|portMap_multiplexador|Add10~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add10~26\);

\port_map_ual|portMap_multiplexador|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add10~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~24_combout\)))) ) + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~26\ ))
-- \port_map_ual|portMap_multiplexador|Add10~22\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_ual|portMap_multiplexador|produto~24_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~24_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add10~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add10~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add10~22\);

\port_map_ual|portMap_multiplexador|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add10~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (\port_map_ual|portMap_multiplexador|Add7~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~24_combout\)))) ) + ( !\port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~24_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add10~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add10~17_sumout\);

\port_map_ual|portMap_multiplexador|produto~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~25_combout\ = ( \port_map_ual|portMap_multiplexador|Add10~17_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & (\port_map_ual|portMap_multiplexador|Add7~17_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~8_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add10~17_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~8_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add7~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~7_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~8_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~24_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~17_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~25_combout\);

\port_map_ual|portMap_multiplexador|produto~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~27_combout\ = ( \port_map_ual|portMap_multiplexador|Add10~21_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & (\port_map_ual|portMap_multiplexador|Add7~17_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~8_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add10~21_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~8_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~24_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add7~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~7_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~8_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~24_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~21_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~27_combout\);

\port_map_ual|portMap_multiplexador|produto~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~30_combout\ = ( \port_map_ual|portMap_multiplexador|Add10~25_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~29_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & (\port_map_ual|portMap_multiplexador|Add7~21_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~8_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add10~25_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~8_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~29_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add7~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~7_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~8_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~29_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~25_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~30_combout\);

\port_map_ual|portMap_multiplexador|produto~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~45_combout\ = ( \port_map_ual|portMap_multiplexador|Add10~33_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~38_combout\))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & (\port_map_ual|portMap_multiplexador|Add7~29_sumout\))) # (\port_map_ual|portMap_multiplexador|process_0~8_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add10~33_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~8_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~7_combout\ & ((\port_map_ual|portMap_multiplexador|produto~38_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add7~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~7_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~8_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~38_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~33_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~45_combout\);

\port_map_ual|portMap_multiplexador|produto~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~34_combout\ = ( \port_map_ual|portMap_multiplexador|produto~33_combout\ & ( \port_map_ual|portMap_multiplexador|Add8~29_sumout\ & ( ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\) # (\port_map_ual|portMap_multiplexador|Add5~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\) ) ) ) # ( 
-- !\port_map_ual|portMap_multiplexador|produto~33_combout\ & ( \port_map_ual|portMap_multiplexador|Add8~29_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & 
-- \port_map_ual|portMap_multiplexador|Add5~25_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\))) ) ) ) # ( \port_map_ual|portMap_multiplexador|produto~33_combout\ & ( !\port_map_ual|portMap_multiplexador|Add8~29_sumout\ & ( 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\) # 
-- (\port_map_ual|portMap_multiplexador|Add5~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\)))) ) ) ) # ( 
-- !\port_map_ual|portMap_multiplexador|produto~33_combout\ & ( !\port_map_ual|portMap_multiplexador|Add8~29_sumout\ & ( (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[2]~2_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & \port_map_ual|portMap_multiplexador|Add5~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[2]~2_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add5~25_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_produto~33_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add8~29_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~34_combout\);

\port_map_ual|portMap_multiplexador|produto~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~35_combout\ = (\port_map_ual|portMap_multiplexador|process_0~7_combout\ & \port_map_ual|portMap_multiplexador|Add7~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~7_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~25_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~35_combout\);

\port_map_ual|portMap_multiplexador|produto~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~43_combout\ = (!\port_map_ual|portMap_multiplexador|process_0~8_combout\ & (((\port_map_ual|portMap_multiplexador|produto~35_combout\) # (\port_map_ual|portMap_multiplexador|produto~34_combout\)))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~8_combout\ & (\port_map_ual|portMap_multiplexador|Add10~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~8_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~29_sumout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~34_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~35_combout\,
	combout => \port_map_ual|portMap_multiplexador|produto~43_combout\);

\port_map_ual|portMap_multiplexador|Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add11~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~43_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~43_combout\)))) ) + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~6\ ))
-- \port_map_ual|portMap_multiplexador|Add11~14\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~43_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~43_combout\)))) ) 
-- + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~43_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add11~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add11~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add11~14\);

\port_map_ual|portMap_multiplexador|Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add11~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~45_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~45_combout\)))) ) + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~14\ ))
-- \port_map_ual|portMap_multiplexador|Add11~18\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~45_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~45_combout\)))) ) 
-- + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~45_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add11~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add11~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add11~18\);

\port_map_ual|portMap_multiplexador|Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add11~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~30_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~30_combout\)))) ) + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~18\ ))
-- \port_map_ual|portMap_multiplexador|Add11~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~30_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~30_combout\)))) ) 
-- + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~30_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add11~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add11~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add11~30\);

\port_map_ual|portMap_multiplexador|Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add11~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~27_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~27_combout\)))) ) + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~30\ ))
-- \port_map_ual|portMap_multiplexador|Add11~26\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~27_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~27_combout\)))) ) 
-- + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~27_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add11~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add11~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add11~26\);

\port_map_ual|portMap_multiplexador|Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add11~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~25_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~25_combout\)))) ) + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~26\ ))
-- \port_map_ual|portMap_multiplexador|Add11~22\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~25_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~25_combout\)))) ) 
-- + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~25_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add11~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add11~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add11~22\);

\port_map_ual|portMap_multiplexador|Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add12~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~43_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~43_combout\)))) ) + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~6\ ))
-- \port_map_ual|portMap_multiplexador|Add12~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~43_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~43_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~43_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add12~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add12~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add12~30\);

\port_map_ual|portMap_multiplexador|Add12~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add12~33_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~45_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~45_combout\)))) ) + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~30\ ))
-- \port_map_ual|portMap_multiplexador|Add12~34\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~45_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~45_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~45_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add12~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add12~33_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add12~34\);

\port_map_ual|portMap_multiplexador|Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add12~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~30_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~30_combout\)))) ) + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~34\ ))
-- \port_map_ual|portMap_multiplexador|Add12~26\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~30_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~30_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~30_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add12~34\,
	sumout => \port_map_ual|portMap_multiplexador|Add12~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add12~26\);

\port_map_ual|portMap_multiplexador|Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add12~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~27_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~27_combout\)))) ) + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~26\ ))
-- \port_map_ual|portMap_multiplexador|Add12~22\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~27_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~27_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~27_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add12~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add12~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add12~22\);

\port_map_ual|portMap_multiplexador|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add12~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~25_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~25_combout\)))) ) + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~22\ ))
-- \port_map_ual|portMap_multiplexador|Add12~18\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~25_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~25_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~25_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add12~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add12~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add12~18\);

\port_map_ual|portMap_multiplexador|produto~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~26_combout\ = ( \port_map_ual|portMap_multiplexador|Add12~17_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)) # 
-- (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & ((\port_map_ual|portMap_multiplexador|produto~25_combout\)))) # (\port_map_ual|portMap_multiplexador|process_0~9_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add12~17_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~9_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)) # (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001110110111111100001000010011000011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~6_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~25_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~17_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~26_combout\);

\port_map_ual|portMap_multiplexador|produto~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~28_combout\ = ( \port_map_ual|portMap_multiplexador|Add12~21_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~17_sumout\)) # 
-- (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & ((\port_map_ual|portMap_multiplexador|produto~27_combout\)))) # (\port_map_ual|portMap_multiplexador|process_0~9_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add12~21_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~9_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~17_sumout\)) # (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~27_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001110110111111100001000010011000011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~6_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~27_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~21_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~28_combout\);

\port_map_ual|portMap_multiplexador|produto~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~31_combout\ = ( \port_map_ual|portMap_multiplexador|Add12~25_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~21_sumout\)) # 
-- (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & ((\port_map_ual|portMap_multiplexador|produto~30_combout\)))) # (\port_map_ual|portMap_multiplexador|process_0~9_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add12~25_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~9_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~21_sumout\)) # (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~30_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001110110111111100001000010011000011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~6_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~30_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~25_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~31_combout\);

\port_map_ual|portMap_multiplexador|produto~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~39_combout\ = ( \port_map_ual|portMap_multiplexador|produto~38_combout\ & ( \port_map_ual|portMap_multiplexador|Add10~33_sumout\ & ( ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\) # (\port_map_ual|portMap_multiplexador|Add7~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\) ) ) ) # ( 
-- !\port_map_ual|portMap_multiplexador|produto~38_combout\ & ( \port_map_ual|portMap_multiplexador|Add10~33_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & 
-- \port_map_ual|portMap_multiplexador|Add7~29_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\))) ) ) ) # ( \port_map_ual|portMap_multiplexador|produto~38_combout\ & ( !\port_map_ual|portMap_multiplexador|Add10~33_sumout\ & ( 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\) # 
-- (\port_map_ual|portMap_multiplexador|Add7~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\)))) ) ) ) # ( 
-- !\port_map_ual|portMap_multiplexador|produto~38_combout\ & ( !\port_map_ual|portMap_multiplexador|Add10~33_sumout\ & ( (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[3]~3_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & \port_map_ual|portMap_multiplexador|Add7~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[3]~3_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add7~29_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_produto~38_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~33_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~39_combout\);

\port_map_ual|portMap_multiplexador|produto~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~40_combout\ = (!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & \port_map_ual|portMap_multiplexador|Add9~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~6_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~29_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~40_combout\);

\port_map_ual|portMap_multiplexador|produto~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~42_combout\ = (!\port_map_ual|portMap_multiplexador|process_0~9_combout\ & (((\port_map_ual|portMap_multiplexador|produto~40_combout\) # (\port_map_ual|portMap_multiplexador|produto~39_combout\)))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~9_combout\ & (\port_map_ual|portMap_multiplexador|Add12~33_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101110111011000110111011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~33_sumout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~39_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~40_combout\,
	combout => \port_map_ual|portMap_multiplexador|produto~42_combout\);

\port_map_ual|portMap_multiplexador|produto~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~36_combout\ = ( \port_map_ual|portMap_multiplexador|produto~34_combout\ & ( \port_map_ual|portMap_multiplexador|produto~35_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_ual|portMap_multiplexador|Add10~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (!\port_map_ual|portMap_multiplexador|Add9~25_sumout\))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|produto~34_combout\ & ( \port_map_ual|portMap_multiplexador|produto~35_combout\ & ( 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_ual|portMap_multiplexador|Add10~29_sumout\)))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (!\port_map_ual|portMap_multiplexador|Add9~25_sumout\))) ) ) ) # ( \port_map_ual|portMap_multiplexador|produto~34_combout\ 
-- & ( !\port_map_ual|portMap_multiplexador|produto~35_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((!\port_map_ual|portMap_multiplexador|Add10~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (!\port_map_ual|portMap_multiplexador|Add9~25_sumout\))) ) ) 
-- ) # ( !\port_map_ual|portMap_multiplexador|produto~34_combout\ & ( !\port_map_ual|portMap_multiplexador|produto~35_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\) # ((!\port_map_ual|portMap_multiplexador|Add10~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (((!\port_map_ual|portMap_multiplexador|Add9~25_sumout\)) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111011001011000100100000001100010010000000110001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add10~29_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_produto~34_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_produto~35_combout\,
	combout => \port_map_ual|portMap_multiplexador|produto~36_combout\);

\port_map_ual|portMap_multiplexador|produto~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~41_combout\ = (!\port_map_ual|portMap_multiplexador|process_0~9_combout\ & ((!\port_map_ual|portMap_multiplexador|produto~36_combout\))) # (\port_map_ual|portMap_multiplexador|process_0~9_combout\ & 
-- (\port_map_ual|portMap_multiplexador|Add12~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~29_sumout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~36_combout\,
	combout => \port_map_ual|portMap_multiplexador|produto~41_combout\);

\port_map_ual|portMap_multiplexador|Add14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add14~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~41_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~41_combout\)))) ) + ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~2\ ))
-- \port_map_ual|portMap_multiplexador|Add14~14\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~41_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~41_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~41_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add14~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add14~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add14~14\);

\port_map_ual|portMap_multiplexador|Add14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add14~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~42_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~42_combout\)))) ) + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~14\ ))
-- \port_map_ual|portMap_multiplexador|Add14~18\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~42_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~42_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~42_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add14~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add14~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add14~18\);

\port_map_ual|portMap_multiplexador|Add14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add14~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~31_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~31_combout\)))) ) + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~18\ ))
-- \port_map_ual|portMap_multiplexador|Add14~26\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~31_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~31_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~31_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add14~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add14~25_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add14~26\);

\port_map_ual|portMap_multiplexador|Add14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add14~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~28_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~28_combout\)))) ) + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~26\ ))
-- \port_map_ual|portMap_multiplexador|Add14~22\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~28_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~28_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~28_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add14~26\,
	sumout => \port_map_ual|portMap_multiplexador|Add14~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add14~22\);

\port_map_ual|portMap_multiplexador|Add14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add14~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~26_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~26_combout\)))) ) + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~22\ ))
-- \port_map_ual|portMap_multiplexador|Add14~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~26_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~26_combout\)))) 
-- ) + ( !\port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~26_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add14~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add14~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add14~10\);

\port_map_ual|portMap_multiplexador|portOUT[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[13]~9_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & \port_map_ual|portMap_multiplexador|Add14~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add14~9_sumout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[13]~9_combout\);

\port_map_ual|portMap_multiplexador|Add13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add13~5_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~41_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~41_combout\)))) ) + ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~2\ ))
-- \port_map_ual|portMap_multiplexador|Add13~6\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~41_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~41_combout\)))) 
-- ) + ( \port_map_registradores|registrador~44_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~41_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~44_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add13~2\,
	sumout => \port_map_ual|portMap_multiplexador|Add13~5_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add13~6\);

\port_map_ual|portMap_multiplexador|Add13~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add13~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~42_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~42_combout\)))) ) + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~6\ ))
-- \port_map_ual|portMap_multiplexador|Add13~10\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~42_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~17_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~42_combout\)))) 
-- ) + ( \port_map_registradores|registrador~45_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~17_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~42_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~45_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add13~6\,
	sumout => \port_map_ual|portMap_multiplexador|Add13~9_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add13~10\);

\port_map_ual|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~0_combout\ = ( \port_map_ual|portMap_multiplexador|Add14~13_sumout\ & ( \port_map_ual|portMap_multiplexador|Add14~17_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|Add13~9_sumout\) 
-- # (\port_map_ual|portMap_multiplexador|Add13~5_sumout\)))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|Add14~13_sumout\ & ( \port_map_ual|portMap_multiplexador|Add14~17_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|Add13~9_sumout\) 
-- # (\port_map_ual|portMap_multiplexador|Add13~5_sumout\)))) ) ) ) # ( \port_map_ual|portMap_multiplexador|Add14~13_sumout\ & ( !\port_map_ual|portMap_multiplexador|Add14~17_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|Add13~9_sumout\) 
-- # (\port_map_ual|portMap_multiplexador|Add13~5_sumout\)))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|Add14~13_sumout\ & ( !\port_map_ual|portMap_multiplexador|Add14~17_sumout\ & ( (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|Add13~9_sumout\) # (\port_map_ual|portMap_multiplexador|Add13~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100001001100110011000100110011001100010011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add13~5_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add13~9_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add14~13_sumout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add14~17_sumout\,
	combout => \port_map_ual|process_0~0_combout\);

\port_map_ual|portMap_multiplexador|Add13~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add13~17_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~31_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~31_combout\)))) ) + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~10\ ))
-- \port_map_ual|portMap_multiplexador|Add13~18\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~31_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~29_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~31_combout\)))) 
-- ) + ( \port_map_registradores|registrador~46_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~29_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~31_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~46_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add13~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add13~17_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add13~18\);

\port_map_ual|portMap_multiplexador|Add13~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add13~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~28_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~28_combout\)))) ) + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~18\ ))
-- \port_map_ual|portMap_multiplexador|Add13~14\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~28_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~25_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~28_combout\)))) 
-- ) + ( \port_map_registradores|registrador~47_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~28_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~47_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add13~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add13~13_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add13~14\);

\port_map_ual|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~1_combout\ = ( \port_map_ual|portMap_multiplexador|Add14~21_sumout\ & ( \port_map_ual|portMap_multiplexador|Add14~25_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|Add13~17_sumout\) # (\port_map_ual|portMap_multiplexador|Add13~13_sumout\)))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|Add14~21_sumout\ & ( \port_map_ual|portMap_multiplexador|Add14~25_sumout\ & ( 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|Add13~17_sumout\) # (\port_map_ual|portMap_multiplexador|Add13~13_sumout\)))) ) ) ) # ( \port_map_ual|portMap_multiplexador|Add14~21_sumout\ & ( 
-- !\port_map_ual|portMap_multiplexador|Add14~25_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|Add13~17_sumout\) # (\port_map_ual|portMap_multiplexador|Add13~13_sumout\)))) ) ) ) 
-- # ( !\port_map_ual|portMap_multiplexador|Add14~21_sumout\ & ( !\port_map_ual|portMap_multiplexador|Add14~25_sumout\ & ( (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|Add13~17_sumout\) # (\port_map_ual|portMap_multiplexador|Add13~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100001001100110011000100110011001100010011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add13~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add13~17_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add14~21_sumout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add14~25_sumout\,
	combout => \port_map_ual|process_0~1_combout\);

\port_map_ual|portMap_multiplexador|Add13~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add13~21_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~26_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~26_combout\)))) ) + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~14\ ))
-- \port_map_ual|portMap_multiplexador|Add13~22\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~26_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~21_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~26_combout\)))) 
-- ) + ( \port_map_registradores|registrador~48_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~26_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~48_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add13~14\,
	sumout => \port_map_ual|portMap_multiplexador|Add13~21_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add13~22\);

\port_map_ual|portMap_multiplexador|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add12~13_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~25_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~25_combout\)))) ) + ( !\port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~25_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add12~18\,
	sumout => \port_map_ual|portMap_multiplexador|Add12~13_sumout\);

\port_map_ual|portMap_multiplexador|portOUT[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[14]~10_combout\ = ( \port_map_ual|portMap_multiplexador|produto~25_combout\ & ( \port_map_ual|portMap_multiplexador|Add12~13_sumout\ & ( ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\) # (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\) ) ) ) # ( 
-- !\port_map_ual|portMap_multiplexador|produto~25_combout\ & ( \port_map_ual|portMap_multiplexador|Add12~13_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & 
-- \port_map_ual|portMap_multiplexador|Add9~13_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\))) ) ) ) # ( \port_map_ual|portMap_multiplexador|produto~25_combout\ & ( !\port_map_ual|portMap_multiplexador|Add12~13_sumout\ & ( 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\) # 
-- (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\)))) ) ) ) # ( 
-- !\port_map_ual|portMap_multiplexador|produto~25_combout\ & ( !\port_map_ual|portMap_multiplexador|Add12~13_sumout\ & ( (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & \port_map_ual|portMap_multiplexador|Add9~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000100000111100001100001100010011001000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~13_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_produto~25_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~13_sumout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[14]~10_combout\);

\port_map_ual|portMap_multiplexador|Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add11~9_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & ((\port_map_ual|portMap_multiplexador|produto~25_combout\))) 
-- # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[4]~4_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (((\port_map_ual|portMap_multiplexador|produto~25_combout\)))) 
-- ) + ( \port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[4]~4_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~25_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add11~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add11~9_sumout\);

\port_map_ual|portMap_multiplexador|portOUT[14]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|portOUT[14]~11_combout\ = (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & \port_map_ual|portMap_multiplexador|Add11~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~9_sumout\,
	combout => \port_map_ual|portMap_multiplexador|portOUT[14]~11_combout\);

\port_map_ual|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~2_combout\ = ( \port_map_ual|portMap_multiplexador|produto~39_combout\ & ( \port_map_ual|portMap_multiplexador|produto~40_combout\ & ( (\port_map_ual|portMap_multiplexador|process_0~9_combout\ & 
-- (!\port_map_ual|portMap_multiplexador|Add12~29_sumout\ & !\port_map_ual|portMap_multiplexador|Add12~33_sumout\)) ) ) ) # ( !\port_map_ual|portMap_multiplexador|produto~39_combout\ & ( \port_map_ual|portMap_multiplexador|produto~40_combout\ & ( 
-- (\port_map_ual|portMap_multiplexador|process_0~9_combout\ & (!\port_map_ual|portMap_multiplexador|Add12~29_sumout\ & !\port_map_ual|portMap_multiplexador|Add12~33_sumout\)) ) ) ) # ( \port_map_ual|portMap_multiplexador|produto~39_combout\ & ( 
-- !\port_map_ual|portMap_multiplexador|produto~40_combout\ & ( (\port_map_ual|portMap_multiplexador|process_0~9_combout\ & (!\port_map_ual|portMap_multiplexador|Add12~29_sumout\ & !\port_map_ual|portMap_multiplexador|Add12~33_sumout\)) ) ) ) # ( 
-- !\port_map_ual|portMap_multiplexador|produto~39_combout\ & ( !\port_map_ual|portMap_multiplexador|produto~40_combout\ & ( (!\port_map_ual|portMap_multiplexador|process_0~9_combout\ & (((\port_map_ual|portMap_multiplexador|produto~36_combout\)))) # 
-- (\port_map_ual|portMap_multiplexador|process_0~9_combout\ & (!\port_map_ual|portMap_multiplexador|Add12~29_sumout\ & ((!\port_map_ual|portMap_multiplexador|Add12~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111000001010010001000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~29_sumout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~36_combout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~33_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_produto~39_combout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_produto~40_combout\,
	combout => \port_map_ual|process_0~2_combout\);

\port_map_ual|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~3_combout\ = (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & !\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110000011100000111000001110000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	combout => \port_map_ual|process_0~3_combout\);

\port_map_ual|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~4_combout\ = (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & !\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datac => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	combout => \port_map_ual|process_0~4_combout\);

\port_map_ual|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~5_combout\ = ( \port_map_ual|portMap_multiplexador|Add11~29_sumout\ & ( \port_map_ual|process_0~4_combout\ ) ) # ( !\port_map_ual|portMap_multiplexador|Add11~29_sumout\ & ( \port_map_ual|process_0~4_combout\ & ( 
-- (((\port_map_ual|portMap_multiplexador|Add11~25_sumout\) # (\port_map_ual|portMap_multiplexador|Add11~21_sumout\)) # (\port_map_ual|portMap_multiplexador|Add11~17_sumout\)) # (\port_map_ual|portMap_multiplexador|Add11~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~13_sumout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~17_sumout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~25_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~29_sumout\,
	dataf => \port_map_ual|ALT_INV_process_0~4_combout\,
	combout => \port_map_ual|process_0~5_combout\);

\port_map_ual|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~6_combout\ = ( \port_map_ual|process_0~3_combout\ & ( !\port_map_ual|process_0~5_combout\ & ( (!\port_map_ual|portMap_multiplexador|produto~26_combout\ & (!\port_map_ual|portMap_multiplexador|produto~28_combout\ & 
-- (!\port_map_ual|portMap_multiplexador|produto~31_combout\ & \port_map_ual|process_0~2_combout\))) ) ) ) # ( !\port_map_ual|process_0~3_combout\ & ( !\port_map_ual|process_0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_produto~26_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_produto~28_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_produto~31_combout\,
	datad => \port_map_ual|ALT_INV_process_0~2_combout\,
	datae => \port_map_ual|ALT_INV_process_0~3_combout\,
	dataf => \port_map_ual|ALT_INV_process_0~5_combout\,
	combout => \port_map_ual|process_0~6_combout\);

\port_map_ual|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~7_combout\ = ( \port_map_ual|portMap_multiplexador|portOUT[14]~11_combout\ & ( \port_map_ual|process_0~6_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & 
-- !\port_map_ual|portMap_multiplexador|Add13~21_sumout\)) ) ) ) # ( !\port_map_ual|portMap_multiplexador|portOUT[14]~11_combout\ & ( \port_map_ual|process_0~6_combout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((!\port_map_ual|portMap_multiplexador|portOUT[14]~10_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & (!\port_map_ual|portMap_multiplexador|Add13~21_sumout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & 
-- ((!\port_map_ual|portMap_multiplexador|portOUT[14]~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111011011000100110001001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add13~21_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[14]~10_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[14]~11_combout\,
	dataf => \port_map_ual|ALT_INV_process_0~6_combout\,
	combout => \port_map_ual|process_0~7_combout\);

\port_map_ual|portMap_multiplexador|produto~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|produto~46_combout\ = ( \port_map_ual|portMap_multiplexador|Add12~13_sumout\ & ( ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)) # 
-- (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & ((\port_map_ual|portMap_multiplexador|produto~25_combout\)))) # (\port_map_ual|portMap_multiplexador|process_0~9_combout\) ) ) # ( !\port_map_ual|portMap_multiplexador|Add12~13_sumout\ & ( 
-- (!\port_map_ual|portMap_multiplexador|process_0~9_combout\ & ((!\port_map_ual|portMap_multiplexador|process_0~6_combout\ & (\port_map_ual|portMap_multiplexador|Add9~13_sumout\)) # (\port_map_ual|portMap_multiplexador|process_0~6_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001110110111111100001000010011000011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~6_combout\,
	datab => \port_map_ual|portMap_multiplexador|ALT_INV_process_0~9_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add9~13_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~25_combout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add12~13_sumout\,
	combout => \port_map_ual|portMap_multiplexador|produto~46_combout\);

\port_map_ual|portMap_multiplexador|Add13~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add13~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~46_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~46_combout\)))) ) + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~22\ ))
-- \port_map_ual|portMap_multiplexador|Add13~30\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~46_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~46_combout\)))) ) 
-- + ( \port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~46_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add13~22\,
	sumout => \port_map_ual|portMap_multiplexador|Add13~29_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add13~30\);

\port_map_ual|portMap_multiplexador|Add13~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add13~25_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~46_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~46_combout\)))) ) + ( \port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add13~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~46_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add13~30\,
	sumout => \port_map_ual|portMap_multiplexador|Add13~25_sumout\);

\port_map_ual|portMap_multiplexador|Add14~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add14~33_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~46_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~46_combout\)))) ) + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~10\ ))
-- \port_map_ual|portMap_multiplexador|Add14~34\ = CARRY(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & ((\port_map_ual|portMap_multiplexador|produto~46_combout\))) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (((\port_map_ual|portMap_multiplexador|produto~46_combout\)))) ) 
-- + ( !\port_map_registradores|registrador~49_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~46_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~49_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add14~10\,
	sumout => \port_map_ual|portMap_multiplexador|Add14~33_sumout\,
	cout => \port_map_ual|portMap_multiplexador|Add14~34\);

\port_map_ual|portMap_multiplexador|Add14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|portMap_multiplexador|Add14~29_sumout\ = SUM(( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & ((!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|produto~46_combout\))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[5]~5_combout\ & (\port_map_ual|portMap_multiplexador|Add11~9_sumout\)))) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (((\port_map_ual|portMap_multiplexador|produto~46_combout\)))) ) + ( !\port_map_registradores|registrador~50_combout\ ) + ( \port_map_ual|portMap_multiplexador|Add14~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[5]~5_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add11~9_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_produto~46_combout\,
	dataf => \port_map_registradores|ALT_INV_registrador~50_combout\,
	cin => \port_map_ual|portMap_multiplexador|Add14~34\,
	sumout => \port_map_ual|portMap_multiplexador|Add14~29_sumout\);

\port_map_ual|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~8_combout\ = ( \port_map_ual|portMap_multiplexador|Add14~29_sumout\ & ( \port_map_ual|portMap_multiplexador|Add14~33_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|Add13~29_sumout\) # (\port_map_ual|portMap_multiplexador|Add13~25_sumout\)))) ) ) ) # ( !\port_map_ual|portMap_multiplexador|Add14~29_sumout\ & ( \port_map_ual|portMap_multiplexador|Add14~33_sumout\ & ( 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & 
-- (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|Add13~29_sumout\) # (\port_map_ual|portMap_multiplexador|Add13~25_sumout\)))) ) ) ) # ( \port_map_ual|portMap_multiplexador|Add14~29_sumout\ & ( 
-- !\port_map_ual|portMap_multiplexador|Add14~33_sumout\ & ( (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\)) # 
-- (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & ((\port_map_ual|portMap_multiplexador|Add13~29_sumout\) # (\port_map_ual|portMap_multiplexador|Add13~25_sumout\)))) ) ) ) 
-- # ( !\port_map_ual|portMap_multiplexador|Add14~29_sumout\ & ( !\port_map_ual|portMap_multiplexador|Add14~33_sumout\ & ( (\port_map_multiplexador_2X1_8bits_br_ula|portOUT[6]~6_combout\ & (!\port_map_multiplexador_2X1_8bits_br_ula|portOUT[7]~7_combout\ & 
-- ((\port_map_ual|portMap_multiplexador|Add13~29_sumout\) # (\port_map_ual|portMap_multiplexador|Add13~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100001001100110011000100110011001100010011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[6]~6_combout\,
	datab => \port_map_multiplexador_2X1_8bits_br_ula|ALT_INV_portOUT[7]~7_combout\,
	datac => \port_map_ual|portMap_multiplexador|ALT_INV_Add13~25_sumout\,
	datad => \port_map_ual|portMap_multiplexador|ALT_INV_Add13~29_sumout\,
	datae => \port_map_ual|portMap_multiplexador|ALT_INV_Add14~29_sumout\,
	dataf => \port_map_ual|portMap_multiplexador|ALT_INV_Add14~33_sumout\,
	combout => \port_map_ual|process_0~8_combout\);

\port_map_ual|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|process_0~9_combout\ = ( \port_map_ual|process_0~8_combout\ ) # ( !\port_map_ual|process_0~8_combout\ & ( (((!\port_map_ual|process_0~7_combout\) # (\port_map_ual|process_0~1_combout\)) # (\port_map_ual|process_0~0_combout\)) # 
-- (\port_map_ual|portMap_multiplexador|portOUT[13]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111111111111111111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \port_map_ual|portMap_multiplexador|ALT_INV_portOUT[13]~9_combout\,
	datab => \port_map_ual|ALT_INV_process_0~0_combout\,
	datac => \port_map_ual|ALT_INV_process_0~1_combout\,
	datad => \port_map_ual|ALT_INV_process_0~7_combout\,
	datae => \port_map_ual|ALT_INV_process_0~8_combout\,
	combout => \port_map_ual|process_0~9_combout\);

\port_map_ual|overflow\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_map_ual|overflow~combout\ = ( \port_map_ual|overflow~combout\ & ( \port_map_ual|Mux1~0_combout\ & ( \port_map_ual|process_0~9_combout\ ) ) ) # ( !\port_map_ual|overflow~combout\ & ( \port_map_ual|Mux1~0_combout\ & ( 
-- \port_map_ual|process_0~9_combout\ ) ) ) # ( \port_map_ual|overflow~combout\ & ( !\port_map_ual|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \port_map_ual|ALT_INV_process_0~9_combout\,
	datae => \port_map_ual|ALT_INV_overflow~combout\,
	dataf => \port_map_ual|ALT_INV_Mux1~0_combout\,
	combout => \port_map_ual|overflow~combout\);

ww_out_out_pc(0) <= \out_out_pc[0]~output_o\;

ww_out_out_pc(1) <= \out_out_pc[1]~output_o\;

ww_out_out_pc(2) <= \out_out_pc[2]~output_o\;

ww_out_out_pc(3) <= \out_out_pc[3]~output_o\;

ww_out_out_pc(4) <= \out_out_pc[4]~output_o\;

ww_out_out_pc(5) <= \out_out_pc[5]~output_o\;

ww_out_out_pc(6) <= \out_out_pc[6]~output_o\;

ww_out_out_pc(7) <= \out_out_pc[7]~output_o\;

ww_out_out_rom(0) <= \out_out_rom[0]~output_o\;

ww_out_out_rom(1) <= \out_out_rom[1]~output_o\;

ww_out_out_rom(2) <= \out_out_rom[2]~output_o\;

ww_out_out_rom(3) <= \out_out_rom[3]~output_o\;

ww_out_out_rom(4) <= \out_out_rom[4]~output_o\;

ww_out_out_rom(5) <= \out_out_rom[5]~output_o\;

ww_out_out_rom(6) <= \out_out_rom[6]~output_o\;

ww_out_out_rom(7) <= \out_out_rom[7]~output_o\;

ww_out_opcode(0) <= \out_opcode[0]~output_o\;

ww_out_opcode(1) <= \out_opcode[1]~output_o\;

ww_out_opcode(2) <= \out_opcode[2]~output_o\;

ww_out_opcode(3) <= \out_opcode[3]~output_o\;

ww_out_rs(0) <= \out_rs[0]~output_o\;

ww_out_rs(1) <= \out_rs[1]~output_o\;

ww_out_rt(0) <= \out_rt[0]~output_o\;

ww_out_rt(1) <= \out_rt[1]~output_o\;

ww_out_endereco(0) <= \out_endereco[0]~output_o\;

ww_out_endereco(1) <= \out_endereco[1]~output_o\;

ww_out_endereco(2) <= \out_endereco[2]~output_o\;

ww_out_endereco(3) <= \out_endereco[3]~output_o\;

ww_out_out_br_reg_A(0) <= \out_out_br_reg_A[0]~output_o\;

ww_out_out_br_reg_A(1) <= \out_out_br_reg_A[1]~output_o\;

ww_out_out_br_reg_A(2) <= \out_out_br_reg_A[2]~output_o\;

ww_out_out_br_reg_A(3) <= \out_out_br_reg_A[3]~output_o\;

ww_out_out_br_reg_A(4) <= \out_out_br_reg_A[4]~output_o\;

ww_out_out_br_reg_A(5) <= \out_out_br_reg_A[5]~output_o\;

ww_out_out_br_reg_A(6) <= \out_out_br_reg_A[6]~output_o\;

ww_out_out_br_reg_A(7) <= \out_out_br_reg_A[7]~output_o\;

ww_out_out_br_reg_B(0) <= \out_out_br_reg_B[0]~output_o\;

ww_out_out_br_reg_B(1) <= \out_out_br_reg_B[1]~output_o\;

ww_out_out_br_reg_B(2) <= \out_out_br_reg_B[2]~output_o\;

ww_out_out_br_reg_B(3) <= \out_out_br_reg_B[3]~output_o\;

ww_out_out_br_reg_B(4) <= \out_out_br_reg_B[4]~output_o\;

ww_out_out_br_reg_B(5) <= \out_out_br_reg_B[5]~output_o\;

ww_out_out_br_reg_B(6) <= \out_out_br_reg_B[6]~output_o\;

ww_out_out_br_reg_B(7) <= \out_out_br_reg_B[7]~output_o\;

ww_out_out_ula_result(0) <= \out_out_ula_result[0]~output_o\;

ww_out_out_ula_result(1) <= \out_out_ula_result[1]~output_o\;

ww_out_out_ula_result(2) <= \out_out_ula_result[2]~output_o\;

ww_out_out_ula_result(3) <= \out_out_ula_result[3]~output_o\;

ww_out_out_ula_result(4) <= \out_out_ula_result[4]~output_o\;

ww_out_out_ula_result(5) <= \out_out_ula_result[5]~output_o\;

ww_out_out_ula_result(6) <= \out_out_ula_result[6]~output_o\;

ww_out_out_ula_result(7) <= \out_out_ula_result[7]~output_o\;

ww_out_out_overflow <= \out_out_overflow~output_o\;

ww_out_out_memAdress(0) <= \out_out_memAdress[0]~output_o\;

ww_out_out_memAdress(1) <= \out_out_memAdress[1]~output_o\;

ww_out_out_memAdress(2) <= \out_out_memAdress[2]~output_o\;

ww_out_out_memAdress(3) <= \out_out_memAdress[3]~output_o\;

ww_out_out_memAdress(4) <= \out_out_memAdress[4]~output_o\;

ww_out_out_memAdress(5) <= \out_out_memAdress[5]~output_o\;

ww_out_out_memAdress(6) <= \out_out_memAdress[6]~output_o\;

ww_out_out_memAdress(7) <= \out_out_memAdress[7]~output_o\;

ww_out_out_mul_2X1_memAdress_ula(0) <= \out_out_mul_2X1_memAdress_ula[0]~output_o\;

ww_out_out_mul_2X1_memAdress_ula(1) <= \out_out_mul_2X1_memAdress_ula[1]~output_o\;

ww_out_out_mul_2X1_memAdress_ula(2) <= \out_out_mul_2X1_memAdress_ula[2]~output_o\;

ww_out_out_mul_2X1_memAdress_ula(3) <= \out_out_mul_2X1_memAdress_ula[3]~output_o\;

ww_out_out_mul_2X1_memAdress_ula(4) <= \out_out_mul_2X1_memAdress_ula[4]~output_o\;

ww_out_out_mul_2X1_memAdress_ula(5) <= \out_out_mul_2X1_memAdress_ula[5]~output_o\;

ww_out_out_mul_2X1_memAdress_ula(6) <= \out_out_mul_2X1_memAdress_ula[6]~output_o\;

ww_out_out_mul_2X1_memAdress_ula(7) <= \out_out_mul_2X1_memAdress_ula[7]~output_o\;
END structure;



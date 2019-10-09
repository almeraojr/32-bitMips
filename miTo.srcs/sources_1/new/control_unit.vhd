----------------------------------------------------------------------------------
-- Company: UERGS
-- Engineer: Newton Jr
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
library mito;
use mito.mito_pkg.all;

entity control_unit is
    Port ( 

        clk                 : in  std_logic;
        rst_n               : in  std_logic;
        adress_sel          : out std_logic;
        alu_b_ind           : out std_logic;
        pc_en               : out std_logic;
        ir_en               : out std_logic;
        data_en             : out std_logic;
        write_reg_en        : out std_logic;
        jmp_sel             : out std_logic;
        alu_mem_sel         : out std_logic;
        write_mem_en        : out std_logic;
        mem_write_sel       : out std_logic;
        alu_a_ind           : out std_logic;
        flag_z              : in  std_logic;
        flag_n              :  in std_logic;
        decoded_inst        : in  decoded_instruction_type;
        alu_op              : out std_logic_vector(5 downto 0)
       
    );
end control_unit;


architecture rtl of control_unit is

        -- uncomment the lines and write the states of your machine
        
        --type state_type is(--declaration of machine states);
        --signal current : state_type;    
        --signal nextstate : state_type;
        
begin

        -- enter with your state machine here

end rtl;

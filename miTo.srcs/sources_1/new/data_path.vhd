----------------------------------------------------------------------------------
-- Company: UERGS
-- Engineer: Newton Jr
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
library mito;
use mito.mito_pkg.all;

entity data_path is
  Port (
    clk                 : in  std_logic;
    rst_n               : in  std_logic;
    adress_sel          : in  std_logic;
    jmp_sel             : in  std_logic;
    alu_mem_sel         : in  std_logic;
    alu_b_ind           : in  std_logic;
    pc_en               : in  std_logic;
    ir_en               : in  std_logic;
    data_en             : in  std_logic;
    write_reg_en        : in  std_logic;
    alu_op              : in  std_logic_vector (5 downto 0);
    adress_pc           : out std_logic_vector (8 downto 0);
    decoded_inst        : out decoded_instruction_type;
    
    flag_z              : out std_logic;
    flag_n              : out std_logic;
    
    mem_write_sel       : in  std_logic;
    alu_a_ind           : in  std_logic;
    saida_memoria       : in  std_logic_vector (31 downto 0);       -- memory to instruction register and/or data register
    entrada_memoria     : out std_logic_vector (31 downto 0)        -- ula_out or reg_out to memory
    
  );
end data_path;

architecture rtl of data_path is


    signal data                 : std_logic_vector (15 downto 0);
    signal alu_or_mem_data      : std_logic_vector (15 downto 0);
    signal instruction          : std_logic_vector (31 downto 0); 
    signal mem_addr             : std_logic_vector (8  downto 0); 
    signal program_counter      : std_logic_vector (8  downto 0); 
    signal out_pc_mux           : std_logic_vector (8  downto 0); 
    signal b_alu                : std_logic_vector (15 downto 0);
    signal dr_to_reg            : std_logic_vector (15 downto 0);

    
    -- registers

     signal reg1                : std_logic_vector (15 downto 0);
     signal reg2                : std_logic_vector (15 downto 0);
     signal reg3                : std_logic_vector (15 downto 0);
     signal reg4                : std_logic_vector (15 downto 0);
     signal reg5                : std_logic_vector (15 downto 0);
     signal reg6                : std_logic_vector (15 downto 0);
     signal reg7                : std_logic_vector (15 downto 0);
     signal reg8                : std_logic_vector (15 downto 0);
     signal reg9                : std_logic_vector (15 downto 0);
     signal reg10               : std_logic_vector (15 downto 0);
     signal reg11               : std_logic_vector (15 downto 0);
     signal reg12               : std_logic_vector (15 downto 0);
     signal reg13               : std_logic_vector (15 downto 0);
     signal reg14               : std_logic_vector (15 downto 0);
     signal reg15               : std_logic_vector (15 downto 0);
     signal reg16               : std_logic_vector (15 downto 0);
     signal reg20               : std_logic_vector (15 downto 0);
     
     signal reg_inst_mem        : std_logic_vector (14 downto 0); 
     signal mem_data_reg        : std_logic_vector (15 downto 0);
     signal reg_a_ula           : std_logic_vector (15 downto 0);
     signal reg_b_ula           : std_logic_vector (15 downto 0);
     signal reg_ula_out         : std_logic_vector (31 downto 0);
     
         
    -- target register
      
    signal reg_dest     : std_logic_vector(4 downto 0);
    signal reg_dest_duo : std_logic_vector(4 downto 0);
    
    -- Reg A  
    signal reg_op_a     : std_logic_vector(4 downto 0);
    signal reg_a_alu_out: std_logic_vector(15 downto 0);
    
    -- Reg B  
    signal reg_op_b     : std_logic_vector(4 downto 0);
    signal reg_b_alu_out: std_logic_vector(15 downto 0);
      
   -- ALU signals
    signal a_operand    : STD_LOGIC_VECTOR (15 downto 0);      
    signal b_operand    : STD_LOGIC_VECTOR (15 downto 0);   
    signal ula_out      : STD_LOGIC_VECTOR (31 downto 0);
    
    -- FLAGS
    signal zero         : std_logic;
    signal neg          : std_logic; 
      
    begin
    
    -- enter your code here

end rtl;

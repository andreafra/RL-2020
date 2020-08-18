-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Aug 18 16:23:05 2020
-- Host        : PC-Andrea running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/andrea/Projects/project_reti_logiche/project_reti_logiche.sim/sim_1/synth/func/xsim/project_tb_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_2\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_3\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_4\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_5\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_6\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_7\ : STD_LOGIC;
  signal d_done : STD_LOGIC;
  signal d_get_addr : STD_LOGIC;
  signal d_wz_offset : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_done_OBUF : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \q_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \q_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \q_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \q_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \q_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal q_done_i_1_n_0 : STD_LOGIC;
  signal q_wz_bit : STD_LOGIC;
  signal q_wz_bit_i_1_n_0 : STD_LOGIC;
  signal \q_wz_num[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_wz_num[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_wz_num[2]_i_1_n_0\ : STD_LOGIC;
  signal \q_wz_num[2]_i_2_n_0\ : STD_LOGIC;
  signal q_wz_offset : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \q_wz_offset[0]_i_1_n_0\ : STD_LOGIC;
  signal \q_wz_offset[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_wz_offset[3]_i_4_n_0\ : STD_LOGIC;
  signal \q_wz_offset[3]_i_5_n_0\ : STD_LOGIC;
  signal \q_wz_offset[3]_i_6_n_0\ : STD_LOGIC;
  signal \q_wz_offset[3]_i_7_n_0\ : STD_LOGIC;
  signal \q_wz_offset_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \q_wz_offset_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \q_wz_offset_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \q_wz_offset_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \q_wz_offset_reg[3]_i_3_n_4\ : STD_LOGIC;
  signal \q_wz_offset_reg[3]_i_3_n_5\ : STD_LOGIC;
  signal \q_wz_offset_reg[3]_i_3_n_6\ : STD_LOGIC;
  signal \q_wz_offset_reg[3]_i_3_n_7\ : STD_LOGIC;
  signal \NLW_FSM_sequential_state_reg[1]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "mem_get:10,idle:00,mem_ask:01,encode:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "mem_get:10,idle:00,mem_ask:01,encode:11";
  attribute SOFT_HLUTNM of \o_address_OBUF[0]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_address_OBUF[1]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_address_OBUF[2]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_address_OBUF[3]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_data_OBUF[1]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_data_OBUF[3]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_data_OBUF[4]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_data_OBUF[5]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_data_OBUF[6]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_data_OBUF[7]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of o_we_OBUF_inst_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_addr[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_addr[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_addr[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_addr[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q_addr[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_addr[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_addr[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_addr[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of q_done_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of q_get_addr_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of q_wz_bit_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_wz_num[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_wz_num[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q_wz_num[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q_wz_num[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_wz_offset[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_wz_offset[2]_i_1\ : label is "soft_lutpair9";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D00"
    )
        port map (
      I0 => o_done_OBUF,
      I1 => d_done,
      I2 => o_en_OBUF,
      I3 => i_start_IBUF,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A20202000"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => p_0_in(3),
      I2 => d_done,
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      I5 => o_en_OBUF,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_i_4_n_5\,
      I1 => \FSM_sequential_state_reg[1]_i_4_n_7\,
      I2 => \q_wz_offset_reg[3]_i_3_n_5\,
      I3 => \q_wz_offset_reg[3]_i_3_n_4\,
      I4 => \FSM_sequential_state_reg[1]_i_4_n_6\,
      I5 => \FSM_sequential_state_reg[1]_i_4_n_4\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \q_addr_reg_n_0_[7]\,
      I1 => i_data_IBUF(7),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \q_addr_reg_n_0_[6]\,
      I1 => i_data_IBUF(6),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \q_addr_reg_n_0_[5]\,
      I1 => i_data_IBUF(5),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \q_addr_reg_n_0_[4]\,
      I1 => i_data_IBUF(4),
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => o_en_OBUF
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => d_done
    );
\FSM_sequential_state_reg[1]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_wz_offset_reg[3]_i_3_n_0\,
      CO(3) => \NLW_FSM_sequential_state_reg[1]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \FSM_sequential_state_reg[1]_i_4_n_1\,
      CO(1) => \FSM_sequential_state_reg[1]_i_4_n_2\,
      CO(0) => \FSM_sequential_state_reg[1]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \q_addr_reg_n_0_[6]\,
      DI(1) => \q_addr_reg_n_0_[5]\,
      DI(0) => \q_addr_reg_n_0_[4]\,
      O(3) => \FSM_sequential_state_reg[1]_i_4_n_4\,
      O(2) => \FSM_sequential_state_reg[1]_i_4_n_5\,
      O(1) => \FSM_sequential_state_reg[1]_i_4_n_6\,
      O(0) => \FSM_sequential_state_reg[1]_i_4_n_7\,
      S(3) => \FSM_sequential_state[1]_i_5_n_0\,
      S(2) => \FSM_sequential_state[1]_i_6_n_0\,
      S(1) => \FSM_sequential_state[1]_i_7_n_0\,
      S(0) => \FSM_sequential_state[1]_i_8_n_0\
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
\i_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(7),
      O => i_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => o_en_OBUF,
      I1 => d_done,
      I2 => p_0_in(0),
      O => o_address_OBUF(0)
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(15)
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in(1),
      I1 => o_en_OBUF,
      I2 => d_done,
      O => o_address_OBUF(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in(2),
      I1 => o_en_OBUF,
      I2 => d_done,
      O => o_address_OBUF(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => o_en_OBUF,
      I1 => d_done,
      I2 => p_0_in(3),
      O => o_address_OBUF(3)
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(9)
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(0),
      O => o_data(0)
    );
\o_data_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => d_done,
      I1 => o_en_OBUF,
      I2 => q_wz_offset(0),
      I3 => q_wz_bit,
      I4 => \q_addr_reg_n_0_[0]\,
      O => o_data_OBUF(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(1),
      O => o_data(1)
    );
\o_data_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => d_done,
      I1 => o_en_OBUF,
      I2 => q_wz_offset(1),
      I3 => q_wz_bit,
      I4 => \q_addr_reg_n_0_[1]\,
      O => o_data_OBUF(1)
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(2),
      O => o_data(2)
    );
\o_data_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => d_done,
      I1 => o_en_OBUF,
      I2 => q_wz_offset(2),
      I3 => q_wz_bit,
      I4 => \q_addr_reg_n_0_[2]\,
      O => o_data_OBUF(2)
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(3),
      O => o_data(3)
    );
\o_data_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => d_done,
      I1 => o_en_OBUF,
      I2 => q_wz_offset(3),
      I3 => q_wz_bit,
      I4 => \q_addr_reg_n_0_[3]\,
      O => o_data_OBUF(3)
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(4),
      O => o_data(4)
    );
\o_data_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => d_done,
      I1 => o_en_OBUF,
      I2 => p_0_in(0),
      I3 => q_wz_bit,
      I4 => \q_addr_reg_n_0_[4]\,
      O => o_data_OBUF(4)
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(5),
      O => o_data(5)
    );
\o_data_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => d_done,
      I1 => o_en_OBUF,
      I2 => p_0_in(1),
      I3 => q_wz_bit,
      I4 => \q_addr_reg_n_0_[5]\,
      O => o_data_OBUF(5)
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(6),
      O => o_data(6)
    );
\o_data_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => d_done,
      I1 => o_en_OBUF,
      I2 => p_0_in(2),
      I3 => q_wz_bit,
      I4 => \q_addr_reg_n_0_[6]\,
      O => o_data_OBUF(6)
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
\o_data_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => d_done,
      I1 => o_en_OBUF,
      I2 => q_wz_bit,
      O => o_data_OBUF(7)
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
o_we_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => o_en_OBUF,
      I1 => d_done,
      O => o_we_OBUF
    );
\q_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => d_done,
      I1 => i_data_IBUF(0),
      O => \q_addr[0]_i_1_n_0\
    );
\q_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => d_done,
      I1 => i_data_IBUF(1),
      O => \q_addr[1]_i_1_n_0\
    );
\q_addr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => d_done,
      I1 => i_data_IBUF(2),
      O => \q_addr[2]_i_1_n_0\
    );
\q_addr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => d_done,
      I1 => i_data_IBUF(3),
      O => \q_addr[3]_i_1_n_0\
    );
\q_addr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => d_done,
      I1 => i_data_IBUF(4),
      O => \q_addr[4]_i_1_n_0\
    );
\q_addr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => d_done,
      I1 => i_data_IBUF(5),
      O => \q_addr[5]_i_1_n_0\
    );
\q_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => d_done,
      I1 => i_data_IBUF(6),
      O => \q_addr[6]_i_1_n_0\
    );
\q_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => o_en_OBUF,
      I1 => p_0_in(3),
      I2 => d_done,
      O => \q_addr[7]_i_1_n_0\
    );
\q_addr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => d_done,
      I1 => i_data_IBUF(7),
      O => \q_addr[7]_i_2_n_0\
    );
\q_addr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_addr[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \q_addr[0]_i_1_n_0\,
      Q => \q_addr_reg_n_0_[0]\
    );
\q_addr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_addr[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \q_addr[1]_i_1_n_0\,
      Q => \q_addr_reg_n_0_[1]\
    );
\q_addr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_addr[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \q_addr[2]_i_1_n_0\,
      Q => \q_addr_reg_n_0_[2]\
    );
\q_addr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_addr[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \q_addr[3]_i_1_n_0\,
      Q => \q_addr_reg_n_0_[3]\
    );
\q_addr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_addr[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \q_addr[4]_i_1_n_0\,
      Q => \q_addr_reg_n_0_[4]\
    );
\q_addr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_addr[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \q_addr[5]_i_1_n_0\,
      Q => \q_addr_reg_n_0_[5]\
    );
\q_addr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_addr[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \q_addr[6]_i_1_n_0\,
      Q => \q_addr_reg_n_0_[6]\
    );
\q_addr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_addr[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \q_addr[7]_i_2_n_0\,
      Q => \q_addr_reg_n_0_[7]\
    );
q_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAE0"
    )
        port map (
      I0 => o_en_OBUF,
      I1 => i_start_IBUF,
      I2 => o_done_OBUF,
      I3 => d_done,
      O => q_done_i_1_n_0
    );
q_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => q_done_i_1_n_0,
      Q => o_done_OBUF
    );
q_get_addr_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => d_done,
      O => d_get_addr
    );
q_get_addr_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_addr[7]_i_1_n_0\,
      D => d_get_addr,
      PRE => i_rst_IBUF,
      Q => p_0_in(3)
    );
q_wz_bit_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECC0200"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => o_en_OBUF,
      I2 => p_0_in(3),
      I3 => d_done,
      I4 => q_wz_bit,
      O => q_wz_bit_i_1_n_0
    );
q_wz_bit_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => q_wz_bit_i_1_n_0,
      Q => q_wz_bit
    );
\q_wz_num[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => d_done,
      I1 => \q_wz_num[2]_i_2_n_0\,
      I2 => p_0_in(0),
      O => \q_wz_num[0]_i_1_n_0\
    );
\q_wz_num[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => d_done,
      I1 => p_0_in(0),
      I2 => \q_wz_num[2]_i_2_n_0\,
      I3 => p_0_in(1),
      O => \q_wz_num[1]_i_1_n_0\
    );
\q_wz_num[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => d_done,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => \q_wz_num[2]_i_2_n_0\,
      I4 => p_0_in(2),
      O => \q_wz_num[2]_i_1_n_0\
    );
\q_wz_num[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00015555"
    )
        port map (
      I0 => o_en_OBUF,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => p_0_in(3),
      I4 => d_done,
      O => \q_wz_num[2]_i_2_n_0\
    );
\q_wz_num_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \q_wz_num[0]_i_1_n_0\,
      Q => p_0_in(0)
    );
\q_wz_num_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \q_wz_num[1]_i_1_n_0\,
      Q => p_0_in(1)
    );
\q_wz_num_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \q_wz_num[2]_i_1_n_0\,
      Q => p_0_in(2)
    );
\q_wz_offset[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \q_wz_offset_reg[3]_i_3_n_7\,
      I1 => \q_wz_offset_reg[3]_i_3_n_6\,
      I2 => d_done,
      O => \q_wz_offset[0]_i_1_n_0\
    );
\q_wz_offset[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => d_done,
      I1 => \q_wz_offset_reg[3]_i_3_n_6\,
      I2 => \q_wz_offset_reg[3]_i_3_n_7\,
      O => d_wz_offset(1)
    );
\q_wz_offset[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => d_done,
      I1 => \q_wz_offset_reg[3]_i_3_n_7\,
      I2 => \q_wz_offset_reg[3]_i_3_n_6\,
      O => d_wz_offset(2)
    );
\q_wz_offset[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => o_en_OBUF,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => p_0_in(3),
      I3 => d_done,
      O => \q_wz_offset[3]_i_1_n_0\
    );
\q_wz_offset[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => d_done,
      I1 => \q_wz_offset_reg[3]_i_3_n_6\,
      I2 => \q_wz_offset_reg[3]_i_3_n_7\,
      O => d_wz_offset(3)
    );
\q_wz_offset[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \q_addr_reg_n_0_[3]\,
      I1 => i_data_IBUF(3),
      O => \q_wz_offset[3]_i_4_n_0\
    );
\q_wz_offset[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \q_addr_reg_n_0_[2]\,
      I1 => i_data_IBUF(2),
      O => \q_wz_offset[3]_i_5_n_0\
    );
\q_wz_offset[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \q_addr_reg_n_0_[1]\,
      I1 => i_data_IBUF(1),
      O => \q_wz_offset[3]_i_6_n_0\
    );
\q_wz_offset[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \q_addr_reg_n_0_[0]\,
      I1 => i_data_IBUF(0),
      O => \q_wz_offset[3]_i_7_n_0\
    );
\q_wz_offset_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_wz_offset[3]_i_1_n_0\,
      D => \q_wz_offset[0]_i_1_n_0\,
      PRE => i_rst_IBUF,
      Q => q_wz_offset(0)
    );
\q_wz_offset_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_wz_offset[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => d_wz_offset(1),
      Q => q_wz_offset(1)
    );
\q_wz_offset_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_wz_offset[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => d_wz_offset(2),
      Q => q_wz_offset(2)
    );
\q_wz_offset_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \q_wz_offset[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => d_wz_offset(3),
      Q => q_wz_offset(3)
    );
\q_wz_offset_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \q_wz_offset_reg[3]_i_3_n_0\,
      CO(2) => \q_wz_offset_reg[3]_i_3_n_1\,
      CO(1) => \q_wz_offset_reg[3]_i_3_n_2\,
      CO(0) => \q_wz_offset_reg[3]_i_3_n_3\,
      CYINIT => '1',
      DI(3) => \q_addr_reg_n_0_[3]\,
      DI(2) => \q_addr_reg_n_0_[2]\,
      DI(1) => \q_addr_reg_n_0_[1]\,
      DI(0) => \q_addr_reg_n_0_[0]\,
      O(3) => \q_wz_offset_reg[3]_i_3_n_4\,
      O(2) => \q_wz_offset_reg[3]_i_3_n_5\,
      O(1) => \q_wz_offset_reg[3]_i_3_n_6\,
      O(0) => \q_wz_offset_reg[3]_i_3_n_7\,
      S(3) => \q_wz_offset[3]_i_4_n_0\,
      S(2) => \q_wz_offset[3]_i_5_n_0\,
      S(1) => \q_wz_offset[3]_i_6_n_0\,
      S(0) => \q_wz_offset[3]_i_7_n_0\
    );
end STRUCTURE;

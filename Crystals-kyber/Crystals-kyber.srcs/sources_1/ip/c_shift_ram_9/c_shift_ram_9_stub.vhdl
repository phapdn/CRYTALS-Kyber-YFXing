-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Fri Jan  8 10:37:46 2021
-- Host        : XINGYF14 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/Vivado_projects/Crystals-kyber/Crystals-kyber.srcs/sources_1/ip/c_shift_ram_9/c_shift_ram_9_stub.vhdl
-- Design      : c_shift_ram_9
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a12tcpg238-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity c_shift_ram_9 is
  Port ( 
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end c_shift_ram_9;

architecture stub of c_shift_ram_9 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "D[11:0],CLK,Q[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_shift_ram_v12_0_11,Vivado 2017.3";
begin
end;
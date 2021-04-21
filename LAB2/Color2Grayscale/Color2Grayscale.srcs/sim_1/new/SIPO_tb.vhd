----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2021 10:48:38
-- Design Name: 
-- Module Name: SIPO_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SIPO_tb is
Generic (
		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 8
	);
end SIPO_tb;

architecture Behavioral of SIPO_tb is
signal S_AXIS_ACLK		:   STD_LOGIC := '0';                                                 
signal S_AXIS_ARESETN	:   STD_LOGIC := '0';                                               
signal S_AXIS_TREADY	:	STD_LOGIC;                                               
signal S_AXIS_TDATA	    :   STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (Others => '0');         
signal S_AXIS_TVALID	:   STD_LOGIC := '0';                                                                                                                              
signal ch0              :   STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0) ;           
signal ch1              :   STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0) ;           
signal ch2              :   STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0) ;           
signal valid            :   STD_LOGIC ;                                                

component SIPO is
Generic (
		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 8
	);
 Port (
 		----------------AXI4-Stream-----------------
		-- AXI4Stream sink: Clock
		S_AXIS_ACLK		: IN 	STD_LOGIC;
		-- AXI4Stream sink: Reset
		S_AXIS_ARESETN	: IN 	STD_LOGIC;
		-- Ready to accept data in
		S_AXIS_TREADY	: OUT 	STD_LOGIC;
		-- Data in
		S_AXIS_TDATA	: IN 	STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
		-- Data is in valid
		S_AXIS_TVALID	: IN 	STD_LOGIC;
		--------------------------------------------
		
		--------------------------------------------

        ch0 : out STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);
        ch1 : out STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);
        ch2 : out STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);
        valid : out STD_LOGIC
		--------------------------------------------
	);
end component;
begin

dut: SIPO
generic map(
    C_S_AXIS_TDATA_WIDTH	=> 8
)
port map(
		S_AXIS_ACLK		=>	S_AXIS_ACLK		,
		S_AXIS_ARESETN	=>	S_AXIS_ARESETN   ,
		S_AXIS_TREADY	=> 	S_AXIS_TREADY   ,
		S_AXIS_TDATA	=>	S_AXIS_TDATA	,
		S_AXIS_TVALID	=>	S_AXIS_TVALID   ,
		--------------------------------------------
        ch0   =>  ch0  ,
        ch1   =>  ch1  ,
        ch2   =>  ch2  ,
        valid =>  valid
);

  S_AXIS_ACLK <= not S_AXIS_ACLK after 5 ns;


sim1: process
begin
    S_AXIS_ARESETN <= '1';
    S_AXIS_TVALID <= '0';
    wait for 30 ns;
    S_AXIS_TDATA <= std_logic_vector(to_unsigned(0,8));
    S_AXIS_TVALID <= '1';
    wait for 10 ns;
    S_AXIS_TDATA <= std_logic_vector(to_unsigned(10,8));
    wait for 10 ns;
    S_AXIS_TDATA <= std_logic_vector(to_unsigned(20,8));
    wait for 10 ns;
    S_AXIS_TDATA <= std_logic_vector(to_unsigned(24,8));
    wait for 10 ns;
    S_AXIS_TVALID <= '0';
    
    wait;
end process;


end Behavioral;

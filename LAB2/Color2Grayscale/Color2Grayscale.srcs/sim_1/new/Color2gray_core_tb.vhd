----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2021 18:20:16
-- Design Name: 
-- Module Name: Color2gray_core_tb - Behavioral
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

entity Color2gray_core_tb is
	Generic (
		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 8
	);
--  Port ( );
end Color2gray_core_tb;

architecture Behavioral of Color2gray_core_tb is

signal  ch0 : STD_LOGIC_VECTOR (7 downto 0) := (Others => '0');
signal  ch1 : STD_LOGIC_VECTOR (7 downto 0) := (Others => '0');
signal  ch2 : STD_LOGIC_VECTOR (7 downto 0) := (Others => '0');
signal  valid :  STD_LOGIC := '0';

signal  M_AXIS_ACLK		:  	STD_LOGIC := '0';
signal  M_AXIS_ARESETN	:  	STD_LOGIC := '0';
signal  M_AXIS_TVALID	:   STD_LOGIC := '1';
signal  M_AXIS_TDATA	:   STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
signal  M_AXIS_TREADY	:  	STD_LOGIC := '1';

component Color2gray_core is
	Generic (
		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 8
	);
    Port ( 
        ch0 : in STD_LOGIC_VECTOR (7 downto 0);
        ch1 : in STD_LOGIC_VECTOR (7 downto 0);
        ch2 : in STD_LOGIC_VECTOR (7 downto 0);
        valid : in STD_LOGIC;
           
        ----------------AXI4-Stream-----------------
        -- AXI4Stream Clock
        M_AXIS_ACLK		: IN 	STD_LOGIC;
        -- AXI4Stream Reset
        M_AXIS_ARESETN	: IN 	STD_LOGIC;
        -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
        M_AXIS_TVALID	: OUT 	STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        M_AXIS_TDATA	: OUT 	STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        M_AXIS_TREADY	: IN 	STD_LOGIC
        --------------------------------------------
           
        );
end component;

begin

dut : Color2gray_core
	Generic map (
		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	=> 8
	)
    port map ( 
        ch0 => ch0,
        ch1 => ch1,
        ch2 => ch2,
        valid => valid,
        M_AXIS_ACLK		=> M_AXIS_ACLK,
        M_AXIS_ARESETN	=> M_AXIS_ARESETN,
        M_AXIS_TVALID	=> M_AXIS_TVALID,
        M_AXIS_TDATA	=> M_AXIS_TDATA,
        M_AXIS_TREADY	=> M_AXIS_TREADY	
      );


   M_AXIS_ACLK <= not M_AXIS_ACLK after 5 ns;

 
   
    channels : process
        begin
         M_AXIS_ARESETN <= '1';
         valid <= '0';
         wait for 30 ns;
         ch0 <= std_logic_vector(to_unsigned(0,8));
         ch1 <= std_logic_vector(to_unsigned(10,8));
         ch2 <= std_logic_vector(to_unsigned(20,8));
         valid <= '1';
         wait;
        end process;

end Behavioral;

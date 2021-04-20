----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2021 14:50:00
-- Design Name: 
-- Module Name: switch_controller - Behavioral
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

entity switch_controller is
	Generic (
		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 8
	);
    Port ( 
       switches : in STD_LOGIC_VECTOR (15 downto 0);
       trig : in STD_LOGIC;
       
            
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
end switch_controller;

architecture Behavioral of switch_controller is
signal M_AXIS_TVALID_sig : std_logic := '0';
signal M_AXIS_TREADY_sig : std_logic;


begin

switch_write : process (M_AXIS_ACLK,M_AXIS_ARESETN)
begin
if rising_edge(M_AXIS_ACLK) then
    if M_AXIS_ARESETN = '0' then
      
    else
      if trig = '1' and M_AXIS_TVALID_sig = '0' then
        if M_AXIS_TREADY = '1' then
            M_AXIS_TDATA <= switches(7 downto 0);
        end if;
        M_AXIS_TVALID_sig <= '1';
      elsif trig = '0' then
        M_AXIS_TVALID_sig <= '0';
      end if;
    end if;
    
end if;
end process;


M_AXIS_TVALID <= M_AXIS_TVALID_sig;

end Behavioral;

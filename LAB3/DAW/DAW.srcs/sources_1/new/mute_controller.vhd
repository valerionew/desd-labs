----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2021 23:18:56
-- Design Name: 
-- Module Name: mute_controller - Behavioral
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

entity mute_controller is
    Generic (
        C_AXIS_TDATA_WIDTH	: integer	:= 16
    );
    Port(
        CLK             :   in   STD_LOGIC;   
        ARESETN         :   in   STD_LOGIC;   
    
        ------------AXI4-Stream--slave-------------
        S_AXIS_TVALID	:   in   STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(C_AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        S_AXIS_TREADY	:   out  STD_LOGIC := '1';
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

         --------------AXI4-Stream--master----------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        -- Data in
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(C_AXIS_TDATA_WIDTH-1 DOWNTO 0)  := (Others =>'0');
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        M_AXIS_TLAST	:   out  STD_LOGIC;
        -- Data is in valid
        M_AXIS_TVALID	:   out  STD_LOGIC  := '0';
        --------------------------------------------

        MUTE_RIGHT      :   in   STD_LOGIC;
        MUTE_LEFT       :   in   STD_LOGIC
    );
end mute_controller;

architecture Behavioral of mute_controller is

begin
    data_receive: process (ARESETN, CLK)
    begin
        if ARESETN = '0' then
            M_AXIS_TDATA  <= (Others =>'0');
            M_AXIS_TVALID <= '0';
        elsif rising_edge(clk) then
            S_AXIS_TREADY <= M_AXIS_TREADY;
            
            if S_AXIS_TVALID = '1' then
            
                M_AXIS_TVALID <= '1';

                M_AXIS_TLAST <= S_AXIS_TLAST;
                if S_AXIS_TLAST = '0'  then
                    if MUTE_LEFT = '1' then
                        M_AXIS_TDATA <= (Others => '0');
                    else
                        M_AXIS_TDATA <= S_AXIS_TDATA;
                    end if;   
                else
                    if MUTE_RIGHT = '1' then
                        M_AXIS_TDATA <= (Others => '0');
                    else
                        M_AXIS_TDATA <= S_AXIS_TDATA;
                    end if;
                end if;
            else
                M_AXIS_TVALID <= '0';                
            end if;
            
        end if;
    end process;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2021 18:09:38
-- Design Name: 
-- Module Name: SIPO - Behavioral
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

entity SIPO is
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
end SIPO;

architecture Behavioral of SIPO is
type pixel_type is array (2 downto 0) of STD_LOGIC_VECTOR (C_S_AXIS_TDATA_WIDTH-1 downto 0);

signal pixel : pixel_type := (Others => (Others => '0'));

signal S_AXIS_TREADY_sig : std_logic := '0';
signal valid_sig : std_logic := '0';
signal index : integer := 0;


begin
sipo : process(S_AXIS_ACLK, S_AXIS_ARESETN)
begin
if rising_edge(S_AXIS_ACLK) then
  if S_AXIS_ARESETN = '0' then
      S_AXIS_TREADY_sig <= '0';
      pixel <= (Others => (Others => '0'));
      valid_sig <= '0';
  else 
  
    S_AXIS_TREADY_sig <= '1';
        
    if S_AXIS_TVALID = '1' and S_AXIS_TREADY_sig = '1' then
        pixel(index) <= S_AXIS_TDATA;
        if index = 2 then
          valid_sig <= '1';
          index <= 0;
        else
          valid_sig <= '0';
          index <= index + 1 ;
        end if;
        
    end if;
  
  end if;

end if;
end process;

valid <= valid_sig;
S_AXIS_TREADY <= S_AXIS_TREADY_sig;
ch0<=pixel(0);
ch1<=pixel(1);
ch2<=pixel(2);



end Behavioral;

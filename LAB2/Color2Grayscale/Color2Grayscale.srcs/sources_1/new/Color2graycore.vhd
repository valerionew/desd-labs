library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Color2graycore is
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
        M_AXIS_TVALID	: OUT 	STD_LOGIC := '0';
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        M_AXIS_TDATA	: OUT 	STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (Others => '0');
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        M_AXIS_TREADY	: IN 	STD_LOGIC
        --------------------------------------------
           
        );
end Color2graycore;

architecture Behavioral of Color2graycore is
-- Signal declaration
signal M_AXIS_TVALID_sig : std_logic := '0';
--signal sum_sig : integer range 0 to 1023  := 0; -- debug

begin

switch_write : process (M_AXIS_ACLK,M_AXIS_ARESETN)

-- Variable declaration
variable sum : integer range 0 to 1023 := 0;

begin
    if M_AXIS_ARESETN = '0' then
    
          M_AXIS_TVALID_sig <= '0';
          
    elsif rising_edge(M_AXIS_ACLK) then  
      -- When pixel data is available
      if valid = '1' then
      
        -- When AXIS is ready to receive converted signal
        if M_AXIS_TREADY = '1' then
            -- Sum the channels. Padding is by 2 bits because 3 bytes are summed
            sum :=  to_integer(('0'&'0'&unsigned(ch0)) + ('0'&'0'&unsigned(ch1)) + ('0'&'0'&unsigned(ch2)));
            -- sum_sig <= sum; -- debug 
            
            
            -- Literature for smart division by 3 (we're not that smart :C )
            -- Discover: https://www.embeddedrelated.com/showthread/comp.arch.embedded/26432-1.php
            -- Proof: https://www.youmath.it/forum/analisi-1/60110-somma-di-una-serie-a-segni-alterni.html    
            
            -- This could be also done by writing literal shifts of the variable sum, but a more elegant solution using integer is adopted.
            -- Vivado will see the integer division by a multiple of two. This way a complete ALU won't be implemented like what whould happen by writing sum/3
             M_AXIS_TDATA <= std_logic_vector(to_unsigned(sum/2 - sum/4 + sum/8 - sum/16 + sum/32 - sum/64 + sum/128 - sum/256 + sum/512,C_M_AXIS_TDATA_WIDTH));
            M_AXIS_TVALID_sig <= '1';
        end if;
        
      elsif valid = '0' then
          M_AXIS_TVALID_sig <= '0';
      end if;
    end if;
end process;

M_AXIS_TVALID <= M_AXIS_TVALID_sig;


end Behavioral;

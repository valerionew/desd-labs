
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity volume_pipeline_stadium is
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

        VOLUME_COUNT_IN :   IN   INTEGER;
        VOLUME_COUNT_OUT:   OUT   INTEGER

    );
end volume_pipeline_stadium;

architecture Behavioral of volume_pipeline_stadium is

begin
    pipelinestep: process (ARESETN, CLK)
    begin
        if ARESETN = '0' then
            M_AXIS_TDATA  <= (Others =>'0');
            M_AXIS_TVALID <= '0';
        elsif rising_edge(clk) then

            S_AXIS_TREADY <= M_AXIS_TREADY;
            M_AXIS_TVALID <= S_AXIS_TVALID;
            M_AXIS_TLAST <= S_AXIS_TLAST;

            if S_AXIS_TVALID = '1' then
                -- if we have to raise the volume
                IF VOLUME_COUNT_IN > 0 then
                    -- note that one step has been done
                    VOLUME_COUNT_OUT <= VOLUME_COUNT_IN - 1;
                    -- if msb is 1 we saturate by shifting left
                    if S_AXIS_TDATA(S_AXIS_TDATA'HIGH) = '1' then
                        --saturate
                        M_AXIS_TDATA <= (Others => '1');
                    else
                        -- not saturating
                        -- trailing 0 insertion
                        M_AXIS_TDATA <= S_AXIS_TDATA(C_AXIS_TDATA_WIDTH-2 DOWNTO 0) & '0';
                    end if;
                -- if we have to decrease the volume
                elsif VOLUME_COUNT_IN < 0 then
                    -- note that volume has been raised
                    VOLUME_COUNT_OUT <= VOLUME_COUNT_IN + 1;
                    -- copy msb
                    M_AXIS_TDATA <= S_AXIS_TDATA(S_AXIS_TDATA'HIGH) & S_AXIS_TDATA(C_AXIS_TDATA_WIDTH-1 DOWNTO 1);
                else
                    -- no change to volume
                    M_AXIS_TDATA <= S_AXIS_TDATA;
                end if;
            end if;
            
        end if;
    end process;

end Behavioral;

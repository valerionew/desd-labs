----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2021 23:39:15
-- Design Name: 
-- Module Name: mute_controller_tb - Behavioral
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

entity mute_controller_tb is
    Generic (
        C_AXIS_TDATA_WIDTH	: integer	:= 16
    );
end mute_controller_tb;

architecture Behavioral of mute_controller_tb is
    ------------------ CONSTANT DECLARATION -------------------------

    --------- Timing -----------
    constant    CLK_PERIOD     :    TIME    := 10 ns;
    constant    RESET_WND    :    TIME    := 4*CLK_PERIOD; 
    ----------------------------

    --- TB Initialiazations ---
    constant    TB_CLK_INIT              :       STD_LOGIC    := '0';
    constant    TB_RESET_INIT           :       STD_LOGIC    := '0';
    ----------------------------

    --------------------- SIGNALS DECLARATION -----------------------
    signal CLK              :   STD_LOGIC := '0';
    signal ARESETN          :   STD_LOGIC := '0';
    
    signal M_AXIS_TREADY    :   STD_LOGIC := '0';
    signal M_AXIS_TVALID    :   STD_LOGIC;
    signal M_AXIS_TDATA     :   STD_LOGIC_VECTOR(C_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    signal M_AXIS_TLAST     :   STD_LOGIC;

    signal S_AXIS_TREADY    :   STD_LOGIC := '0';
    signal S_AXIS_TDATA     :   STD_LOGIC_VECTOR(C_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    signal S_AXIS_TVALID    :   STD_LOGIC := '0';
    signal S_AXIS_TLAST     :   STD_LOGIC;
    
    signal  MUTE_RIGHT      :   STD_LOGIC := '0';
    signal  MUTE_LEFT       :   STD_LOGIC := '0';
    
component mute_controller is
    Generic (
        C_AXIS_TDATA_WIDTH	: integer	:= 16
    );
    Port(
        CLK             :   in   STD_LOGIC;   
        ARESETN         :   in   STD_LOGIC;   
    
        ------------AXI4-Stream--slave-------------
        S_AXIS_TVALID	:   in   STD_LOGIC;
        S_AXIS_TDATA	:   in 	 STD_LOGIC_VECTOR(C_AXIS_TDATA_WIDTH-1 DOWNTO 0);
        S_AXIS_TREADY	:   out  STD_LOGIC := '0';
        S_AXIS_TLAST	:   in   STD_LOGIC;
        --------------------------------------------

         --------------AXI4-Stream--master----------
        M_AXIS_TREADY	:   in 	 STD_LOGIC;
        M_AXIS_TDATA	:   out  STD_LOGIC_VECTOR(C_AXIS_TDATA_WIDTH-1 DOWNTO 0)  := (Others =>'0');
        M_AXIS_TLAST	:   out  STD_LOGIC;
        M_AXIS_TVALID	:   out  STD_LOGIC  := '0';
        --------------------------------------------

        MUTE_RIGHT      :   in   STD_LOGIC;
        MUTE_LEFT       :   in   STD_LOGIC
    );
end component;

begin
 dut: mute_controller
        Generic Map(
            C_AXIS_TDATA_WIDTH      => 16
        )
        Port Map(
            CLK => CLK,
            ARESETN => ARESETN,  
        
            ------------AXI4-Stream--master-------------
            -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
            M_AXIS_TVALID    =>  M_AXIS_TVALID,
            -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
            M_AXIS_TDATA    =>  M_AXIS_TDATA,
            -- TREADY indicates that the slave can accept a transfer in the current cycle.
            M_AXIS_TREADY    =>  M_AXIS_TREADY,
            -- AXI4Stream tLAST to distinguish between left and right ciannol
            M_AXIS_TLAST    =>   M_AXIS_TLAST,
            --------------------------------------------

            --------------AXI4-Stream--slave------------
            -- Ready to accept data in
            S_AXIS_TREADY    =>  S_AXIS_TREADY,
            -- Data in
            S_AXIS_TDATA    =>   S_AXIS_TDATA,
            -- Data is in valid
            S_AXIS_TVALID    =>  S_AXIS_TVALID,
            -- AXI4Stream tLAST to distinguish between left and right ciannol
            S_AXIS_TLAST    =>   S_AXIS_TLAST,
            --------------------------------------------
            MUTE_RIGHT      => MUTE_RIGHT,
            MUTE_LEFT       => MUTE_LEFT
        );
    ---------- clock ----------
    clk <= not clk after CLK_PERIOD/2;
    ----------------------------

    ----- Reset Process --------
    reset_wave :process
    begin
        ARESETN <= TB_RESET_INIT;
        wait for RESET_WND;
        
        ARESETN <= not ARESETN;
        wait;
    end process;    
    ----------------------------
    
    -- Axis packet drive process --
    axis_data_wave :process
    begin
        S_AXIS_TDATA <= (Others => '0');
        wait for RESET_WND;
        S_AXIS_TVALID <= '1';
        S_AXIS_TLAST <= '0';
        wait for CLK_PERIOD;
        for I in 0 to 16 loop
            S_AXIS_TDATA <= STD_LOGIC_VECTOR(to_UNSIGNED(I,8)) & STD_LOGIC_VECTOR(to_UNSIGNED(I+1,8));
            if (I mod 2) = 0 then
                S_AXIS_TLAST <= '0';
            else
                S_AXIS_TLAST <= '1';
            end if;
            wait for CLK_PERIOD;
        end loop;
        MUTE_RIGHT <= '1';
        for I in 0 to 16 loop
            S_AXIS_TDATA <= STD_LOGIC_VECTOR(to_UNSIGNED(I,8)) & STD_LOGIC_VECTOR(to_UNSIGNED(I+1,8));
            if (I mod 2) = 0 then
                S_AXIS_TLAST <= '0';
            else
                S_AXIS_TLAST <= '1';
            end if;
            wait for CLK_PERIOD;
        end loop;
        MUTE_RIGHT <= '0';
        MUTE_LEFT  <= '1';
        for I in 0 to 16 loop
            S_AXIS_TDATA <= STD_LOGIC_VECTOR(to_UNSIGNED(I,8)) & STD_LOGIC_VECTOR(to_UNSIGNED(I+1,8));
            if (I mod 2) = 0 then
                S_AXIS_TLAST <= '0';
            else
                S_AXIS_TLAST <= '1';
            end if;
            wait for CLK_PERIOD;
        end loop;
        MUTE_RIGHT <= '1';
        MUTE_LEFT  <= '1';
        for I in 0 to 16 loop
            S_AXIS_TDATA <= STD_LOGIC_VECTOR(to_UNSIGNED(I,8)) & STD_LOGIC_VECTOR(to_UNSIGNED(I+1,8));
            if (I mod 2) = 0 then
                S_AXIS_TLAST <= '0';
            else
                S_AXIS_TLAST <= '1';
            end if;
            wait for CLK_PERIOD;
        end loop;
        wait for CLK_PERIOD;
        S_AXIS_TVALID <= '0';
        -- wait for CLK_PERIOD;
        -- S_AXIS_TDATA <= HEADER;
        -- wait for CLK_PERIOD;
        -- for I in 0 to PACKET_LENGTH loop
        --     S_AXIS_TDATA <= STD_LOGIC_VECTOR(to_UNSIGNED(I,S_AXIS_TDATA'LENGTH));
        --     if I = 4 then
        --         M_AXIS_TREADY <= '0';
        --     else
        --         M_AXIS_TREADY <= '1';
        --     end if;
        --     wait for CLK_PERIOD;
        -- end loop;
        -- S_AXIS_TDATA <= FOOTER;
        -- wait for CLK_PERIOD;
        -- S_AXIS_TVALID <= '0';
        wait;
    end process;    

end Behavioral;

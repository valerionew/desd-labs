----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2021 12:17:51
-- Design Name: 
-- Module Name: packetdepacket_tb - Behavioral
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

entity packetdepacket_tb is
    Generic (
        HEADER : std_logic_vector(8-1 downto 0) := X"c0" ;
        FOOTER : std_logic_vector(8-1 downto 0) := X"51" ;
        PACKET_LENGTH : integer := 64;
        C_M_AXIS_TDATA_WIDTH        : integer    := 8;
        C_INT_AXIS_TDATA_WIDTH      : integer    := 16;
        C_S_AXIS_TDATA_WIDTH        : integer    := 8
    );
end packetdepacket_tb;

architecture Behavioral of packetdepacket_tb is
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

    signal      RESETN            :   STD_LOGIC   := TB_RESET_INIT;
    signal      clk               :   STD_LOGIC   := TB_CLK_INIT;
    ----------------------------
    signal      INT_AXIS_TREADY      :   STD_LOGIC;
    signal      INT_AXIS_ARESETN     :   STD_LOGIC;
    signal      INT_AXIS_ACLK        :   STD_LOGIC;
    signal      INT_AXIS_TVALID      :   STD_LOGIC;
    signal      INT_AXIS_TDATA       :   STD_LOGIC_VECTOR(C_INT_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    signal      INT_AXIS_TLAST       :   STD_LOGIC;
        
    signal      S_AXIS_ACLK          :   STD_LOGIC;
    signal      S_AXIS_ARESETN       :   STD_LOGIC;
    signal      S_AXIS_TREADY        :   STD_LOGIC   := '1';
    signal      S_AXIS_TDATA         :   STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    signal      S_AXIS_TVALID        :   STD_LOGIC;

    signal      M_AXIS_ACLK		     :   STD_LOGIC := '0';
    signal      M_AXIS_ARESETN	     :   STD_LOGIC := '0';
    signal      M_AXIS_TREADY        :   STD_LOGIC := '1';
    signal      M_AXIS_TDATA	     :   STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    signal      M_AXIS_TVALID	     :   STD_LOGIC  := '0';

Component packetizer
    Generic (
        HEADER : std_logic_vector(8-1 downto 0) := X"c0" ;
        FOOTER : std_logic_vector(8-1 downto 0) := X"51" ;
        PACKET_LENGTH : integer := 64;
        C_S_AXIS_TDATA_WIDTH	: integer	:= 16;
        C_M_AXIS_TDATA_WIDTH	: integer	:= 8
    );
    Port(
        CLK :  in STD_LOGIC;   
        
        RESETN :  in STD_LOGIC;   
    
        ------------AXI4-Stream--slave-------------
        -- AXI4Stream Clock
        S_AXIS_ACLK		:   in  	STD_LOGIC := '0';
        -- AXI4Stream Reset
        S_AXIS_ARESETN	:   in 	    STD_LOGIC := '0';
        -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
        S_AXIS_TVALID	:   in      STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        S_AXIS_TDATA	:   in 	    STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        S_AXIS_TREADY	:   out 	STD_LOGIC := '0';
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        S_AXIS_TLAST	:   in  	STD_LOGIC;
        --------------------------------------------

         --------------AXI4-Stream--master------------
        -- AXI4Stream: Clock
        M_AXIS_ACLK		:   in 	STD_LOGIC := '0';
        -- AXI4Stream: Reset
        M_AXIS_ARESETN	:   in 	STD_LOGIC := '0';
        -- Ready to accept data in
        M_AXIS_TREADY	:   in 	    STD_LOGIC;
        -- Data in
        M_AXIS_TDATA	:   out 	STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0)  := (Others =>'0');
        -- Data is in valid
        M_AXIS_TVALID	:   out 	STD_LOGIC  := '0'
        --------------------------------------------

    );
end component;

Component depacketizer
    Generic (
        HEADER : std_logic_vector(8-1 downto 0) := X"c0" ;
        FOOTER : std_logic_vector(8-1 downto 0) := X"51" ;
        PACKET_LENGTH : integer := 64;
        C_M_AXIS_TDATA_WIDTH    : integer    := 16;
        C_S_AXIS_TDATA_WIDTH    : integer    := 8
    );
    Port(
        clk :  IN STD_LOGIC;   
        
        RESETN :  IN STD_LOGIC;   
    
        ------------AXI4-Stream--master-------------
        -- AXI4Stream Clock
        M_AXIS_ACLK        : IN     STD_LOGIC;
        -- AXI4Stream Reset
        M_AXIS_ARESETN    : IN     STD_LOGIC;
        -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
        M_AXIS_TVALID    : OUT     STD_LOGIC;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        M_AXIS_TDATA    : OUT     STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        M_AXIS_TREADY    : IN     STD_LOGIC;
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        M_AXIS_TLAST    : OUT     STD_LOGIC;
        --------------------------------------------

        --------------AXI4-Stream--slave------------
        -- AXI4Stream sink: Clock
        S_AXIS_ACLK        : IN     STD_LOGIC;
        -- AXI4Stream sink: Reset
        S_AXIS_ARESETN    : IN     STD_LOGIC;
        -- Ready to accept data in
        S_AXIS_TREADY    : OUT     STD_LOGIC;
        -- Data in
        S_AXIS_TDATA    : IN     STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
        -- Data is in valid
        S_AXIS_TVALID    : IN     STD_LOGIC
        --------------------------------------------

    );
end component;

begin
depa: depacketizer
    Generic Map(
        HEADER                  => HEADER,
        FOOTER                  => FOOTER,
        PACKET_LENGTH           => PACKET_LENGTH,
        C_M_AXIS_TDATA_WIDTH    => C_INT_AXIS_TDATA_WIDTH,
        C_S_AXIS_TDATA_WIDTH    => C_S_AXIS_TDATA_WIDTH
    )
    Port Map(
        CLK => CLK,
        RESETN => RESETN,  
    
        ------------AXI4-Stream--master-------------
        -- AXI4Stream Clock
        M_AXIS_ACLK        =>  INT_AXIS_ACLK,           
        -- AXI4Stream Reset
        M_AXIS_ARESETN  =>  INT_AXIS_ARESETN,
        -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
        M_AXIS_TVALID    =>  INT_AXIS_TVALID,
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        M_AXIS_TDATA    =>  INT_AXIS_TDATA,
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        M_AXIS_TREADY    =>  INT_AXIS_TREADY,
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        M_AXIS_TLAST    =>   INT_AXIS_TLAST,
        --------------------------------------------

        --------------AXI4-Stream--slave------------
        -- AXI4Stream sink: Clock
        S_AXIS_ACLK        =>   S_AXIS_ACLK,
        -- AXI4Stream sink: Reset
        S_AXIS_ARESETN    => S_AXIS_ARESETN,
        -- Ready to accept data in
        S_AXIS_TREADY    =>  S_AXIS_TREADY,
        -- Data in
        S_AXIS_TDATA    =>   S_AXIS_TDATA,
        -- Data is in valid
        S_AXIS_TVALID    =>  S_AXIS_TVALID
        --------------------------------------------
);

pake: packetizer
    Generic Map(
        HEADER                  => HEADER,
        FOOTER                  => FOOTER,
        PACKET_LENGTH           => PACKET_LENGTH,
        C_M_AXIS_TDATA_WIDTH    => C_S_AXIS_TDATA_WIDTH,
        C_S_AXIS_TDATA_WIDTH    => C_INT_AXIS_TDATA_WIDTH
    )
    Port Map(
        CLK => CLK,
        
        RESETN => RESETN,  

        ------------AXI4-Stream--master-------------
        -- AXI4Stream Clock
        M_AXIS_ACLK        =>  M_AXIS_ACLK,           
        -- AXI4Stream Reset
        M_AXIS_ARESETN  =>  M_AXIS_ARESETN,
        -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
        M_AXIS_TVALID    =>  M_AXIS_TVALID,
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        M_AXIS_TDATA    =>  M_AXIS_TDATA,
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        M_AXIS_TREADY    =>  M_AXIS_TREADY,
        --------------------------------------------

        --------------AXI4-Stream--slave------------
        -- AXI4Stream sink: Clock
        S_AXIS_ACLK        =>   INT_AXIS_ACLK,
        -- AXI4Stream sink: Reset
        S_AXIS_ARESETN    => INT_AXIS_ARESETN,
        -- Ready to accept data in
        S_AXIS_TREADY    =>  INT_AXIS_TREADY,
        -- Data in
        S_AXIS_TDATA    =>   INT_AXIS_TDATA,
        -- Data is in valid
        S_AXIS_TVALID    =>  INT_AXIS_TVALID,
        -- AXI4Stream tLAST to distinguish between left and right ciannol
        S_AXIS_TLAST    =>   INT_AXIS_TLAST
        --------------------------------------------
);



    ---------- clock ----------
    clk <= not clk after CLK_PERIOD/2;
    ----------------------------
    S_AXIS_ACLK      <= CLK;
    S_AXIS_ARESETN   <= RESETN;
    ----------------------------
    M_AXIS_ACLK      <= CLK;
    M_AXIS_ARESETN   <= RESETN;
    ----------------------------
    INT_AXIS_ACLK    <= CLK;
    INT_AXIS_ARESETN <= RESETN;

    ----- Reset Process --------
    reset_wave :process
    begin
        RESETN <= TB_RESET_INIT;
        wait for RESET_WND;
        
        RESETN <= not RESETN;
        wait;
    end process;    
    ----------------------------
    
    -- Axis packet drive process --
    axis_data_wave :process
    begin
        S_AXIS_TVALID <= '0';
        S_AXIS_TDATA <= (Others => '0');
        wait for RESET_WND;
        S_AXIS_TVALID <= '1';
        S_AXIS_TDATA <= HEADER;
        wait for CLK_PERIOD;
        for I in 0 to PACKET_LENGTH-1 loop
            S_AXIS_TDATA <= STD_LOGIC_VECTOR(to_UNSIGNED(I,S_AXIS_TDATA'LENGTH));
            wait for CLK_PERIOD;
        end loop;
        S_AXIS_TDATA <= FOOTER;
        wait for CLK_PERIOD;
        S_AXIS_TVALID <= '0';
        wait for CLK_PERIOD;
        S_AXIS_TDATA <= HEADER;
        wait for CLK_PERIOD;
        for I in 0 to PACKET_LENGTH loop
            S_AXIS_TDATA <= STD_LOGIC_VECTOR(to_UNSIGNED(I,S_AXIS_TDATA'LENGTH));
            wait for CLK_PERIOD;
        end loop;
        S_AXIS_TDATA <= FOOTER;
        wait for CLK_PERIOD;
        S_AXIS_TVALID <= '0';
        wait;
    end process;    
    -----------------------------------


end Behavioral;

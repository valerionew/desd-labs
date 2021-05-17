library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity testbench_depa is
        Generic (
            HEADER : std_logic_vector(8-1 downto 0) := X"c0" ;
            FOOTER : std_logic_vector(8-1 downto 0) := X"51" ;
            PACKET_LENGTH : integer := 64;
            C_M_AXIS_TDATA_WIDTH    : integer    := 8;
            C_S_AXIS_TDATA_WIDTH    : integer    := 16
        );
end testbench_depa;

architecture Behavioral of testbench_depa is
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

    ------- Clock/Reset  -------
    signal    RESETN    :    STD_LOGIC    := TB_RESET_INIT;
    signal    clk        :    STD_LOGIC    := TB_CLK_INIT;
    ----------------------------
    signal M_AXIS_TREADY    :      STD_LOGIC := '1';

    signal M_AXIS_ARESETN   :   STD_LOGIC;
    signal M_AXIS_ACLK      :   STD_LOGIC;
    signal M_AXIS_TVALID    :   STD_LOGIC;
    signal M_AXIS_TDATA     :   STD_LOGIC_VECTOR(C_M_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    signal M_AXIS_TLAST     :   STD_LOGIC;

    -- AXI4Stream sink: Clock
    signal S_AXIS_ACLK        :      STD_LOGIC;
    -- AXI4Stream sink: Reset
    signal S_AXIS_ARESETN    :      STD_LOGIC;
    -- Ready to accept data in
    signal S_AXIS_TREADY    :      STD_LOGIC := '1';
    -- Data in
    signal S_AXIS_TDATA        :      STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 DOWNTO 0);
    -- Data is in valid
    signal S_AXIS_TVALID    :      STD_LOGIC := '1';




    Component depacketizer
        Generic (
            HEADER : std_logic_vector(8-1 downto 0) := X"c0" ;
            FOOTER : std_logic_vector(8-1 downto 0) := X"51" ;
            PACKET_LENGTH : integer := 64;
            C_M_AXIS_TDATA_WIDTH    : integer    := 8;
            C_S_AXIS_TDATA_WIDTH    : integer    := 16
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
    dut: depacketizer
        Generic Map(
            HEADER                  => X"c0" ,
            FOOTER                  => X"51" ,
            PACKET_LENGTH           => 64,
            C_M_AXIS_TDATA_WIDTH    => 8,
            C_S_AXIS_TDATA_WIDTH    => 16
        )
        Port Map(
            CLK => CLK  ,
            
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
            -- AXI4Stream tLAST to distinguish between left and right ciannol
            M_AXIS_TLAST    =>   M_AXIS_TLAST,
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



    ---------- clock ----------
    clk <= not clk after CLK_PERIOD/2;
    ----------------------------
    S_AXIS_ACLK <= CLK;
    S_AXIS_ARESETN <= RESETN;

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
        wait for RESET_WND;
        for I in 0 to PACKET_LENGTH-1 loop
            S_AXIS_TDATA <= STD_LOGIC_VECTOR(to_UNSIGNED(I,S_AXIS_TDATA'LENGTH));
            wait for CLK_PERIOD;
        end loop;
        wait;
    end process;    
    -----------------------------------

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity depacketizer is
	Generic (
		HEADER				: std_logic_vector(7 downto 0) := x"c0";
		FOOTER				: std_logic_vector(7 downto 0) := x"51";
		SAMPLES_PER_PACKET	: positive := 16
	);
	Port (
		aclk			: in std_logic;
		aresetn			: in std_logic;

		s_axis_tvalid	: in std_logic;
		s_axis_tdata	: in std_logic_vector(7 downto 0);
		s_axis_tready	: out std_logic;

		m_axis_tvalid	: out std_logic;
		m_axis_tdata	: out std_logic_vector(15 downto 0);
		m_axis_tlast	: out std_logic;
		m_axis_tready	: in std_logic
	);
end depacketizer;

architecture Behavioral of depacketizer is

	-- SAMPLES_PER_PACKET times 2 (bytes per sample) times 2 (channels)
	constant BYTES_PER_RX_PACKET	: integer := SAMPLES_PER_PACKET * 2 * 2;

	-- SAMPLES_PER_PACKET times 2 (channels)
	constant WORDS_PER_TX_PACKET	: integer := SAMPLES_PER_PACKET * 2;

	type state_type is (IDLE, WAIT_HEADER, RECEIVE_DATA, WAIT_FOOTER, SEND_DATA);
	signal state			: state_type;

	type data_sr_type is array(0 to WORDS_PER_TX_PACKET-1) of std_logic_vector(15 downto 0);
	signal data_sr			: data_sr_type;

	signal rx_bytes_counter	: integer range 0 to BYTES_PER_RX_PACKET - 1;
	signal tx_words_counter	: integer range 0 to WORDS_PER_TX_PACKET - 1;

	signal m_axis_tlast_int	: std_logic;

begin

	m_axis_tlast	<= m_axis_tlast_int;
	m_axis_tdata	<= data_sr(data_sr'high);

	with state select s_axis_tready <=
		'0' when IDLE,
		'1' when WAIT_HEADER,
		'1' when RECEIVE_DATA,
		'1' when WAIT_FOOTER,
		'0' when SEND_DATA;

	with state select m_axis_tvalid <=
		'0' when IDLE,
		'0' when WAIT_HEADER,
		'0' when RECEIVE_DATA,
		'0' when WAIT_FOOTER,
		'1' when SEND_DATA;

	process(aclk)
		variable new_word:	std_logic_vector(15 downto 0);
	begin

		if aresetn = '0' then

			state		<= IDLE;

		elsif rising_edge(aclk) then

			case state is


				when IDLE =>
					state	<= WAIT_HEADER;


				when WAIT_HEADER =>
					if s_axis_tvalid = '1' then
						if s_axis_tdata = HEADER then
							rx_bytes_counter	<= 0;
							state				<= RECEIVE_DATA;
						else
							-- We were expecting a header: ignore this byte
							-- and stay in this state
						end if;
					end if;


				when RECEIVE_DATA =>
					if s_axis_tvalid = '1' then

						if rx_bytes_counter mod 2 = 0 then
							new_word	:= (15 downto 8 => '-') & s_axis_tdata;
							data_sr		<= new_word & data_sr(0 to data_sr'high-1);
						else
							data_sr(0)(15 downto 8)	<= s_axis_tdata;
						end if;

						if rx_bytes_counter = BYTES_PER_RX_PACKET - 1 then
							state	<= WAIT_FOOTER;
						end if;

						rx_bytes_counter	<= rx_bytes_counter + 1;

					end if;


				when WAIT_FOOTER =>
					if s_axis_tvalid = '1' then
						if s_axis_tdata = FOOTER then
							tx_words_counter	<= 0;
							m_axis_tlast_int	<= '0';
							state				<= SEND_DATA;
						else
							-- We were expecting a footer: restart without
							-- sending the data
							state				<= WAIT_HEADER;
						end if;
					end if;


				when SEND_DATA =>
					if m_axis_tready = '1' then
						if tx_words_counter = WORDS_PER_TX_PACKET - 1 then
							state			<= WAIT_HEADER;
						end if;

						new_word			:= (others => '-');
						data_sr				<= new_word & data_sr(0 to data_sr'high-1);
						m_axis_tlast_int	<= not m_axis_tlast_int;
						tx_words_counter	<= tx_words_counter + 1;
					end if;

			end case;

		end if;

	end process;

end Behavioral;

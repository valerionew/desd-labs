library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity packetizer is
	Generic (
		HEADER				: std_logic_vector(7 downto 0) := x"c0";
		FOOTER				: std_logic_vector(7 downto 0) := x"51";
		SAMPLES_PER_PACKET	: positive := 16
	);
	Port (
		aclk			: in std_logic;
		aresetn			: in std_logic;

		s_axis_tvalid	: in std_logic;
		s_axis_tdata	: in std_logic_vector(15 downto 0);
		s_axis_tlast	: in std_logic;
		s_axis_tready	: out std_logic;

		m_axis_tvalid	: out std_logic;
		m_axis_tdata	: out std_logic_vector(7 downto 0);
		m_axis_tready	: in std_logic
	);
end packetizer;

architecture Behavioral of packetizer is

	type state_type is (IDLE, SEND_HEADER, CHECK_TLAST, SEND_LOW_BYTE, SEND_HIGH_BYTE, SEND_FOOTER);
	signal state			: state_type;

	signal high_byte		: std_logic_vector(7 downto 0);
	signal low_byte			: std_logic_vector(7 downto 0);
	signal words_counter	: integer range 0 to SAMPLES_PER_PACKET * 2 - 1;
	signal expected_tlast	: std_logic;

begin

	with state select s_axis_tready <=
		'0' when IDLE,
		'0' when SEND_HEADER,
		'1' when CHECK_TLAST,
		'0' when SEND_LOW_BYTE,
		'0' when SEND_HIGH_BYTE,
		'0' when SEND_FOOTER;

	with state select m_axis_tvalid <=
		'0' when IDLE,
		'1' when SEND_HEADER,
		'0' when CHECK_TLAST,
		'1' when SEND_LOW_BYTE,
		'1' when SEND_HIGH_BYTE,
		'1' when SEND_FOOTER;

	with state select m_axis_tdata <=
		(others => '-')	when IDLE,
		HEADER			when SEND_HEADER,
		(others => '-')	when CHECK_TLAST,
		low_byte		when SEND_LOW_BYTE,
		high_byte		when SEND_HIGH_BYTE,
		FOOTER			when SEND_FOOTER;

	process(aclk)
	begin

		if aresetn = '0' then

			state		<= IDLE;

		elsif rising_edge(aclk) then

			case state is


				when IDLE =>
					if s_axis_tvalid = '1' then
						state	<= SEND_HEADER;
					end if;


				when SEND_HEADER =>
					if m_axis_tready = '1' then
						state			<= CHECK_TLAST;
						expected_tlast	<= '0';
						words_counter	<= 0;
					end if;


				when CHECK_TLAST =>
					if s_axis_tvalid = '1' then

						high_byte		<= s_axis_tdata(15 downto 8);
						low_byte		<= s_axis_tdata(7 downto 0);

						if s_axis_tlast = expected_tlast then
							state			<= SEND_LOW_BYTE;
						else
							state			<= CHECK_TLAST;	-- Stay here, ignore the input word
						end if;
					end if;


				when SEND_LOW_BYTE =>
					if m_axis_tready = '1' then
						state	<= SEND_HIGH_BYTE;
					end if;


				when SEND_HIGH_BYTE =>
					if m_axis_tready = '1' then
						if words_counter = SAMPLES_PER_PACKET * 2 - 1 then
							state	<= SEND_FOOTER;
						else
							state			<= CHECK_TLAST;
						end if;

						words_counter	<= words_counter + 1;
						expected_tlast	<= not expected_tlast;
					end if;


				when SEND_FOOTER =>
					if m_axis_tready = '1' then
						state			<= IDLE;
					end if;


			end case;

		end if;

	end process;

end Behavioral;

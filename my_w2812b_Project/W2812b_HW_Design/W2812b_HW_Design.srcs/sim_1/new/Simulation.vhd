
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity Simulation is
--  Port ( );
end Simulation;

architecture Behavioral of Simulation is

component WS2812_controller is
	generic (clock_frequency : positive := 100_000_000; -- in Hz = 100 MHz -> T = 10ns
	           number_led_vector_size : integer := 16 ); -- 16 bits used to save the idx of a pixel
	
	port (
		clk : in std_logic;
		rst_n : in std_logic;  -- AXI_RESET is an active LOW-signal. 
		number_leds : in std_logic_vector(number_led_vector_size - 1  downto 0);
		led_index_in : in std_logic_vector(number_led_vector_size - 1 downto 0);
		color : in std_logic_vector(23 downto 0); 
		transfer_start : in std_logic;
		led_index_out : out std_logic_vector(number_led_vector_size - 1 downto 0);
		transfer_done : out std_logic_vector(1 downto 0);
		display_update_done : out std_logic;  
		serial : out std_logic
	);
end component WS2812_controller;

constant nbr_leds : integer := 4;
constant nbr_leds_size : integer := 16; 

type LED_ring is array (0 to nbr_leds-1) of std_logic_vector(23 downto 0);

-- mock data for testing
constant color_data0 : LED_ring := (x"000022", x"002200", x"000022", x"220000");  

--- init -- input-values 
signal clk : std_logic := '1'; 
signal rst : std_logic := '1';  -- AXI_RESET is an active LOW-signal.
signal update_start : std_logic := '1'; 
signal transfer_start : std_logic := '0';
signal color: std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(0, 24));
signal led_index_in :std_logic_vector(nbr_leds_size-1 downto 0) := std_logic_vector(to_unsigned(0, 16));

-- outputs
signal led_index_out :std_logic_vector(nbr_leds_size-1 downto 0);
signal transfer_done : std_logic_vector(1 downto 0);
signal update_complete : std_logic;
signal serial_out : std_logic;


begin
    test : process(clk)
        
        variable i : integer := 0;
  
    begin
        if rising_edge(clk) then
           if transfer_done = "11" and i < 4 then
              color <= color_data0(i);
              i := i+1; 
             
            end if;
     end if;
    end process;


ctr_led_0 : WS2812_controller
            --generic map( number_led_vector_size =>  )
            port map(
                    clk => clk,
                    rst_n => rst,
                    number_leds => std_logic_vector(to_unsigned(nbr_leds, 16)),
                    led_index_in => led_index_in,
                    color => color,
                    transfer_start=> transfer_start,
                    led_index_out => led_index_out,
                    transfer_done => transfer_done,
                    display_update_done => update_complete, 
                    serial => serial_out
                    );
 
 clock_pro: process(clk)
     begin
        clk <= not clk  after 5 ns;
     end process clock_pro;


end Behavioral;

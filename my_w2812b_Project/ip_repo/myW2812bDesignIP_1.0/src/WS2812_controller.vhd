library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WS2812_controller is
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
end entity WS2812_controller;

architecture arch of WS2812_controller is
    constant clock_period : integer := 1_000_000_000/clock_frequency; -- clock_period(ns) 
    
	-- "1", "0" and "RES" transfer timing. See "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf"
	constant T0H : integer := 400 / clock_period; 
	constant T0L : integer := 850 / clock_period;
	constant T1H : integer := 800 / clock_period;
	constant T1L : integer := 450 / clock_period;
	constant RES : integer := 50000 / clock_period;
	
	signal led_counter : std_logic_vector(number_led_vector_size - 1 downto 0);
	
	-- state machine to 
	type state_machine is (idle, load, parse, send_bit, next_led, show);

begin
	color_transfer : process(clk, rst_n)
		variable state : state_machine := idle;
		variable GRB : std_logic_vector(23 downto 0);
		variable delay_high_counter : integer := 0;
		variable delay_low_counter : integer := 0;
		variable bit_counter : integer := 0;

	begin

    -- AXI_RESET is an active LOW-signal.
     if rst_n = '0' then 
            state := idle;
       
	 elsif rising_edge(clk) then
	   
            case state is
                when idle =>
                    if transfer_start = '1' then
                        state := load;
                        transfer_done <= "01";  -- has started
                        display_update_done <= '0';
                    end if;
            
                when load =>
                            GRB(23 downto 0) := color(23 downto 0);
                            bit_counter := 24;
                            state := parse;
                when parse =>
                        if (bit_counter > 0) then
                            bit_counter := bit_counter - 1;
                            if GRB(bit_counter) = '1' then
                                delay_high_counter := T1H;
                                delay_low_counter := T1L;
                            else
                                delay_high_counter := T0H;
                                delay_low_counter := T0L;
                            end if;
                            state := send_bit;
                        else
                           delay_low_counter := RES;  -- ready to show the colors if i'm the last led on the line
                           state := next_led;
                        end if;
                when send_bit =>
                        if (delay_high_counter > 0) then
                            serial <= '1';
                            delay_high_counter := delay_high_counter - 1;
                        elsif (delay_low_counter > 0) then
                                serial <= '0';
                                delay_low_counter := delay_low_counter - 1;
                        else
                              state := parse;
                        end if;
                when next_led =>
                        led_index_out <= led_counter; 
                        if led_counter = number_leds then  -- show colors since i'm the last led
                            state := show;   
                        else
                             transfer_done <= "11";  -- the transfer for a pixel's completed
                             state := idle;
                        end if; 
                when show =>
                        if (delay_low_counter > 0) then
                            serial <= '0';
                            delay_low_counter := delay_low_counter - 1;
                        else
                            transfer_done <= "11";  -- completed
                            display_update_done <= '1';
                            state := idle;
                        end if;
                        
                when others => null;
            end case;
         led_counter <= std_logic_vector(unsigned(led_index_in)+1);  -- index start by 0. means 0 for led 1
	   end if;  -- for clk1
	end process color_transfer;
end arch;
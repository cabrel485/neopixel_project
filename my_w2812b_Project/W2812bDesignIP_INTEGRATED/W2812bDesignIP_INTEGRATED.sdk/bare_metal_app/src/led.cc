#include <xgpio.h>
#include "led.h"


/************************************************************************************************/
/*     The user have to manually trigger the colours transmission  on pixels using show().      */
/************************************************************************************************/

// Color Data Bit Format
// =====================
//
// NOTE: see datasheet for bit ordering:
//
// 24-bit data format
//
// MSB -- G8R8B8 -- LSB
//
// Bits 23-16 : green
// Bits 15-8  : red
// Bits 7-0   : blue



void ledControl::show(){
	// set 16.bit of reg1 of 1 to trigger the update
	uint32_t raw = 0;
	raw |= ((uint32_t) 1 & 0x00000001) << 0;
	// write 1 on reg2(0)
	Xil_Out32(LED0_BASE_ADDR+REG2_OFFSET, raw);

	read_write_flag = 1;
}

// this is the first function to be called concerning to set the number led to be controlled
void ledControl::set_number_led(int nbr_leds)
{
	// just the first 8 first bits(LSBs) are reserved for NUM_LEDS
	uint32_t raw = 0;
	raw |= ((uint32_t) nbr_leds & 0x000000FF) << 0;
    // write the number of led to reg1
	Xil_Out32(LED0_BASE_ADDR+REG1_OFFSET, raw);
}

void ledControl::init_leds(void)
{
    // Turn off all LEDs to start, by writing 0 NUM_LEDS  time
    for (uint8_t i = 0; i < NUM_LEDS; i++) {
    	led_set_color(i, 0);
    }
}


void ledControl::led_set_color(int idx, uint32_t color)
{	// write color to the register0 -> base address
	uint32_t raw = 0;

	raw |= ((uint32_t) idx & 0x000000FF) << 24;
	raw |= ((uint32_t) color & 0x00FFFFFF) << 0;
	Xil_Out32(LED0_BASE_ADDR, raw);
}

void ledControl::led_set_color_bytes(int idx, uint8_t r, uint8_t g, uint8_t b)
{
    uint32_t raw = 0;
    raw |= ((uint32_t) g & 0x000000FF) << 16;
    raw |= ((uint32_t) r & 0x000000FF) << 8;
    raw |= ((uint32_t) b & 0x000000FF) << 0;

    led_set_color(idx, raw);
}

int ledControl::get_update_state()
{
	// read the MSByte of reg3
	uint32_t raw = 0;
	if (read_write_flag) // if update was triggered from show()
	{
		// flag on 24. bit
		raw = Xil_In32(LED0_BASE_ADDR + REG3_OFFSET);
		raw =  raw >> 24;
		raw |= (uint32_t) 0x01 & raw;

		if(raw) read_write_flag = 0; // reset flag
	}

	return (int)raw;
}


uint32_t ledControl::Color(uint8_t r, uint8_t b, uint8_t g)
{
	uint32_t raw = 0;
	raw |= ((uint32_t) g & 0x000000FF) << 16;
	raw |= ((uint32_t) r & 0x000000FF) << 8;
	raw |= ((uint32_t) b & 0x000000FF) << 0;

	return raw;
}

uint32_t ledControl::led_set_color_echo()
{	// the written data by led_set_color() are returned here
	// could be helpful for debug purpose

	return Xil_In32(LED0_BASE_ADDR + REG2_OFFSET);
}

uint32_t ledControl::led_get_color(int idx)
{
	// NUM_LEDS and idx are using the same register in the PL. that is why writing
	//on register1( LED_BASE_ADDR+REG1_OFFSET) should always include the NUM_LEDS. If not the PL will
	// get the wrong number of leds to work with
	uint32_t raw = 0;
	raw |= ((uint32_t) idx & 0x000000FF) << 24;  // use the 8 last bits
	raw |= ((uint32_t) NUM_LEDS & 0x000000FF) << 0; // use the 8 first bits(LSBs)

	Xil_Out32(LED0_BASE_ADDR+REG1_OFFSET, raw);  // sent the idx of led we need data from
    return Xil_In32(LED0_BASE_ADDR + REG3_OFFSET);  // get the data
}

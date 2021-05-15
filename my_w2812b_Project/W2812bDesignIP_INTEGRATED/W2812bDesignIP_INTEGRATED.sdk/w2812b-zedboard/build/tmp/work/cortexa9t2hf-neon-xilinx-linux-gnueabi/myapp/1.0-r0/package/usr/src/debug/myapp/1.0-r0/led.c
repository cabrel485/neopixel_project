#include <arpa/inet.h>

#include "led.h"
#include <time.h>
#include <stdio.h>


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



void show(){
	uint32_t raw = 0;
	raw |= ((uint32_t) 1 & 0x0000000F) << 0;
	// write 1 on reg2(0)
	axi_slv2_write(raw);
	read_write_flag = 1;
}
int get_update_state()
{
	// read the MSByte of reg3
	// if update was triggered from show()
	uint32_t raw = 0;
	while (read_write_flag)
	{
		// flag on 24. bit
		raw = axi_slv3_read();
		raw =  raw >> 24;
		raw |= (uint32_t) 0x01 & raw;

		if(raw){
			read_write_flag = 0; // reset flag
			printf("update completed \n");
		}
	}

	return (int)raw;
}


// this is the first function to be called in order to set the number of led to be controlled
void set_number_led(int nbr_leds)
{
	// just the first 8 first bits(LSBs) are reserved for NUM_LEDS
	uint32_t raw = 0;
	raw |= ((uint32_t) nbr_leds & 0x000000FF) << 0;
    // write the number of led to reg1
	axi_slv1_write(raw);
}

void init_leds(void)
{
    // Turn off all LEDs to start, by writing 0 to all pixel
    for (int i = 0; i < num_leds; i++) {
    	led_set_color(i, 0);
    }
    show();
}


void led_set_color(int idx, uint32_t color)
{	// write color to the register0 -> base address
	uint32_t raw = 0;

	raw |= ((uint32_t) idx & 0x000000FF) << 24;
	raw |= ((uint32_t) color & 0x00FFFFFF) << 0;
	axi_slv0_write(raw);
}

void led_set_color_bytes(int idx, uint8_t g, uint8_t r, uint8_t b)
{
    uint32_t raw = 0;
    raw |= ((uint32_t) g & 0x000000FF) << 16;
    raw |= ((uint32_t) r & 0x000000FF) << 8;
    raw |= ((uint32_t) b & 0x000000FF) << 0;

    led_set_color(idx, raw);
}

uint32_t Color(uint8_t g, uint8_t r, uint8_t b)
{
	uint32_t raw = 0;
	raw |= ((uint32_t) g & 0x000000FF) << 16;
	raw |= ((uint32_t) r & 0x000000FF) << 8;
	raw |= ((uint32_t) b & 0x000000FF) << 0;

	return raw;
}

uint32_t led_set_color_echo()
{	// the written data by led_set_color() are returned here.
	// could be helpful for debug purpose

	return axi_slv2_read();
}

uint32_t led_get_color(int idx)
{
	// NUM_LEDS and idx are using the same register in the PL. that is why writing
	//on register1( LED_BASE_ADDR+REG1_OFFSET) should always include the NUM_LEDS. If not the PL will
	// get the wrong number of leds to work with
	uint32_t raw = 0;
	raw |= ((uint32_t) idx & 0x000000FF) << 24;  // use the 8 last bits
	raw |= ((uint32_t) num_leds & 0x000000FF) << 0; // use the 8 first bits(LSBs)

	axi_slv1_write(raw);  // sent the idx of led we need data from
    return axi_slv3_read();  // get the data
}



void axi_slv0_write(uint32_t pixel)
{
	*((uint32_t *)(mem_ptr+page_offset_led+REG0_OFFSET)) = pixel; // send pixel data
}

void axi_slv1_write(uint32_t pixel)
{
	*((uint32_t *)(mem_ptr+page_offset_led+REG1_OFFSET)) = pixel;
}
void axi_slv2_write(uint32_t pixel)
{
	*((uint32_t *)(mem_ptr+page_offset_led+REG2_OFFSET)) = pixel;
}
void axi_slv3_write(uint32_t pixel)
{
	*((uint32_t *)(mem_ptr+page_offset_led+REG3_OFFSET)) = pixel;
}

uint32_t axi_slv0_read()
{
	return (*((uint32_t *)(mem_ptr+page_offset_led+REG0_OFFSET)));
}
uint32_t axi_slv1_read()
{
	return (*((uint32_t *)(mem_ptr+page_offset_led+REG1_OFFSET)));
}
uint32_t axi_slv2_read()
{
	return (*((uint32_t *)(mem_ptr+page_offset_led+REG2_OFFSET)));
}
uint32_t axi_slv3_read()
{
	return (*((uint32_t *)(mem_ptr+page_offset_led+REG3_OFFSET)));
}

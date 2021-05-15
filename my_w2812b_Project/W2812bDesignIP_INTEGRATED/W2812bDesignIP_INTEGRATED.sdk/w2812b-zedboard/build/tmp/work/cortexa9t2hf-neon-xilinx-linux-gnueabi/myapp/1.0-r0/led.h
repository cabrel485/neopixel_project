#ifndef SRC_LED_H_
#define SRC_LED_H_

#include <arpa/inet.h>
#include <time.h>

#define REG0_OFFSET 0
#define REG1_OFFSET 4
#define REG2_OFFSET 8
#define REG3_OFFSET 12

int num_leds; // default value will be set by init
void *mem_ptr;
unsigned 	page_addr_led;
unsigned	page_offset_led;
unsigned 	page_size_led;

 int read_write_flag;

void show(void);
int get_update_state(void);
void set_number_led(int nbr_leds);
void init_leds(void);
void led_set_color(int idx, uint32_t color);
void led_set_color_bytes(int idx, uint8_t g, uint8_t r, uint8_t b);
void led_set_raw(int idx, uint32_t color);
uint32_t Color(uint8_t g, uint8_t r, uint8_t b);
uint32_t led_set_color_echo(void);
uint32_t led_get_color(int idx);

// read onto axi-slv-reg
uint32_t axi_slv0_read();
uint32_t axi_slv1_read();
uint32_t axi_slv2_read();
uint32_t axi_slv3_read();


// write onto axi-slv-reg
void axi_slv0_write(uint32_t pixel);  // idx(1 byte) and color(3 Bytes)
void axi_slv1_write(uint32_t pixel);
void axi_slv2_write(uint32_t pixel);
void axi_slv3_write(uint32_t pixel);
#endif /* SRC_LED_H_ */

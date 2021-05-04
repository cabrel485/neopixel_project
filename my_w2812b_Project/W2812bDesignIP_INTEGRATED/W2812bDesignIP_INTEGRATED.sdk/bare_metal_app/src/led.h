#ifndef SRC_LED_H_
#define SRC_LED_H_

#include <xgpio.h>
#include "initData.h"

class ledControl{

	int read_write_flag;

public:
	void set_number_led(int nbr_leds);
	void init_leds(void);

	void led_set_color(int idx, uint32_t color);
	void led_set_color_bytes(int idx, uint8_t r, uint8_t g, uint8_t b);
	void led_set_raw(int idx, uint32_t color);
	void show(void);
	int get_update_state(void);
	uint32_t Color(uint8_t r, uint8_t b, uint8_t g);
	uint32_t led_set_color_echo(void);
	uint32_t led_get_color(int idx);
};

#endif /* SRC_LED_H_ */

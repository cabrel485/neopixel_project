
#include "xparameters.h"
#include <sleep.h>
#include "xuartps.h"
#include <xil_io.h>
#include <stdio.h>

#include "initData.h"
#include "led.h"
#include "my_gpio.h"

int main(){

// classes
	 ledControl myLedControl;
	 gpioControl gpioController;

	xil_printf("let's start and see ...\n\r");

	gpioController.init_gpio();
	myLedControl.set_number_led(NUM_LEDS);
	usleep(2000);  // spend some clock to set the number of led
	myLedControl.init_leds();
	myLedControl.show();
    int button_data = 0;

    while(1){


	button_data = gpioController.getGpioBtn();

	//print message dependent on whether one or more buttons are pressed
		  if(button_data == 0b00000){} //do nothing

		  else if(button_data == 0b00001){
			  gpioController.debounce_btn(button_data);
			  xil_printf("button 0 pressed\n\r");
			  myLedControl.init_leds();
			  myLedControl.show();
		  }
		  else if(button_data == 0b00010){
			  gpioController.debounce_btn(button_data);
			  xil_printf("button 1 pressed\n\r");
			  for (uint8_t i = 0; i < NUM_LEDS; i++)
			  {
				  myLedControl.led_set_color(i, 0x22);
				  myLedControl.show();
			  }
		  }
		  else if(button_data == 0b00100){
			  gpioController.debounce_btn(button_data);
			  xil_printf("button 2 pressed\n\r");
			  for (uint8_t i = 0; i < NUM_LEDS; i++)
			  {
				  myLedControl.led_set_color(i, 0x2200);

			  }
			  myLedControl.show();
//
		  }
		  else if(button_data == 0b01000){
			  gpioController.debounce_btn(button_data);
			  xil_printf("button 3 pressed\n\r");
			  myLedControl.led_set_color(21, 0X00222200);
			  myLedControl.show();
		  }
		  else if(button_data == 0b10000){
			  gpioController.debounce_btn(button_data);
			  xil_printf("button 4 pressed\n\r");
			  myLedControl.led_set_color_bytes(60, 0X22, 0, 0);
			  myLedControl.show();
		  }

		  if (myLedControl.get_update_state()){
			  xil_printf("Update completed \n\r");
			  printf("Update completed \n");
		  }

    }
	return 0;
}

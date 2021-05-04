
#include <xgpio.h>
#include "my_gpio.h"

void gpioControl::debounce_btn(int btn){
	int button_data = btn;
	while(button_data == btn){button_data = XGpio_DiscreteRead(&input, 1);}
}

int gpioControl::getGpioSwitchs(void)
{
	return XGpio_DiscreteRead(&input, AXI_GPIO_0_SWTS);
}

int gpioControl::getGpioBtn(void)
{
	return XGpio_DiscreteRead(&input, AXI_GPIO_0_BTNS);
}


void gpioControl::init_gpio(void){
   XGpio_Initialize(&input, XPAR_AXI_GPIO_0_DEVICE_ID);	//initialize input XGpio variable

   XGpio_SetDataDirection(&input, AXI_GPIO_0_BTNS, 0xF);			//set first channel tristate buffer to input
   XGpio_SetDataDirection(&input, AXI_GPIO_0_SWTS, 0xF);			//set second channel tristate buffer to input
}


#ifndef SRC_MY_GPIO_H_
#define SRC_MY_GPIO_H_

class gpioControl{
private:
	XGpio input;

	// channels for the gpios
	const int AXI_GPIO_0_BTNS = 1;
	const int AXI_GPIO_0_SWTS = 2;


public:
	void init_gpio(void);
	void debounce_btn(int btn);
	int getGpioSwitchs(void);
	int getGpioBtn(void);
};


#endif /* SRC_MY_GPIO_H_ */


#ifndef SRC_INITDATA_H_
#define SRC_INITDATA_H_


// set the number of led to be control
#define HIGH  15
#define WIDTH 15

// modify  this parameter if you exactly know what you are doing
#define NUM_LEDS HIGH*WIDTH  // max is 255 (mapped on one byte). can be change in the PL part


/********************************************************* */
/*				don't modify this block begin */
/********************************************************* */

//Base address and offset of the four used register
#define LED0_BASE_ADDR XPAR_MYW2812BDESIGNIP_0_S00_AXI_BASEADDR
#define LED0_HIGH_ADDR XPAR_MYW2812BDESIGNIP_0_S00_AXI_HIGHADDR

#define LED1_BASE_ADDR XPAR_MYW2812BDESIGNIP_1_S00_AXI_BASEADDR
#define LED1_HIGH_ADDR XPAR_MYW2812BDESIGNIP_1_S00_AXI_HIGHADDR

#define LED2_BASE_ADDR XPAR_MYW2812BDESIGNIP_2_S00_AXI_BASEADDR
#define LED2_HIGH_ADDR XPAR_MYW2812BDESIGNIP_2_S00_AXI_HIGHADDR

#define LED3_BASE_ADDR XPAR_MYW2812BDESIGNIP_3_S00_AXI_BASEADDR
#define LED3_HIGH_ADDR XPAR_MYW2812BDESIGNIP_3_S00_AXI_HIGHADDR

#define LED2_HIGHADDR
#define REG0_OFFSET 0
#define REG1_OFFSET 4
#define REG2_OFFSET 8
#define REG3_OFFSET 12


#endif /* SRC_INITDATA_H_ */

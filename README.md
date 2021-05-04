# Project

## For Users
    1. boot the zedboard using a SD-card
        * copy the following files:  BOOT.BIN, image.ub, rootfs.cpio, rootfs.cpio.bz2, rootfs.cpio.gz and rootfs.cpio.gz.u-boot
        from "Project/my_w2812b_Project/W2812bDesignIP_INTEGRATED/W2812bDesignIP_INTEGRATED.sdk/w2812b-zedboard/images/" into a sd-card
        and insert the card into the board
        
        * set up the board to sd-card-mode or make sure it's done, in order to be able to boot from the sd-card
        
        * connect the Display to a Pmod-Pin (currently one from JA1, JA2, JB1 and JB2)
        
        * connect the board to a terminal via its uart interface (micro usb-port)
        
        * connect the board to a network using a ehternet cable
        
        * power supply the board  and turn it on using its ON/OFF-Switch
        
        * make sure the DONE-LED (blue-led) has turned on. This notify that the board has been booted successfully.
        
        * identify the enumerated com-port of the board and connect to it via a terminal
        
        * The Promt should be something like : ** root@w2812b-zedboard:~# **. Sometimes just **Zynq>** appears as promt. In this case 
        just Press the ** PS-RST **-button to reboot the board.
        
        * run the program with : **/usr/bin/myapp -d #1 -l #2 -p #3 ** . # stands for a value to be set for each option-argument.
        Or just run ** /usr/bin/myapp - - help** to get some help-text.
        
        * A message should promt to notify that the Server has been started successfully.
        
        
    2.   Start a poc-client to start the display-control
        * open one of the python-file from **/Project/poc-clients **
        
        * go back to the terminal and identify the ip-adress of the board using (ip config on window, ifconfig linux)
        
        * customize the program with the parameters given when starting the server (number of pixels, port and the servere-ip)
        
        * then start the program and enjoy
        
## For Developers

Refer to the project-structure at the end of the thesis-doc

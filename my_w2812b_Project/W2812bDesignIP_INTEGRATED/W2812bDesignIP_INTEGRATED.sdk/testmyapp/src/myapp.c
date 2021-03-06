/*****************************************************************************/
/*                         I N C L U D E   F I L E S                         */
/*****************************************************************************/
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <time.h>
#include <getopt.h>
#include <signal.h>

#include "led.h"

/*****************************************************************************/
/*                            D E F I N E S                                */
/* 			 !!!!!!!do not modify this block of definition!!!!!!                   */
/******************************sss***********************************************/

#define LED1_AXI_BASE_ADDR		0x43C00000
#define LED1_AXI_HIGH_ADDR		0x43C0FFFF

#define LED2_AXI_BASE_ADDR		0x43C10000
#define LED2_AXI_HIGH_ADDR		0x43C1FFFF

#define LED3_AXI_BASE_ADDR		0x43C20000
#define LED3_AXI_HIGH_ADDR		0x43C2FFFF

#define LED4_AXI_BASE_ADDR		0x43C30000
#define LED4_AXI_HIGH_ADDR		0x43C3FFFF

/*****************************************************************************/
/*                            D E F I N E S    END                           */
/*****************************************************************************/


static int LED_AXI_BASE_ADDR;
static int LED_AXI_HIGH_ADDR;
static int display = 0;
static int port = 0;
static int verbose_flag;
static char *pins[] = {"", "\"JA1\"" , "\"JA2\"" , "\"JB1\"" , "\"JB2\""};
static int optionParser (int argc, char **argv);
void error(char *msg);

/*****************************************************************************/
/*                                M A I N                                    */
/*****************************************************************************/
int main(int argc, char *argv[])
{
	/*****************************************************************************/
	/*                         parse the arguments and check                                   */
	/*****************************************************************************/
	optionParser (argc, argv);

	if(display == 1)
	{
		LED_AXI_BASE_ADDR = LED1_AXI_BASE_ADDR;
		LED_AXI_HIGH_ADDR = LED1_AXI_HIGH_ADDR;
	}
	else if(display == 2)
	{
		LED_AXI_BASE_ADDR = LED2_AXI_BASE_ADDR;
		LED_AXI_HIGH_ADDR = LED2_AXI_HIGH_ADDR;
	}
	else if(display == 3)
	{
		LED_AXI_BASE_ADDR = LED3_AXI_BASE_ADDR;
		LED_AXI_HIGH_ADDR = LED3_AXI_HIGH_ADDR;
	}
	else if(display == 4)
	{
		LED_AXI_BASE_ADDR = LED4_AXI_BASE_ADDR;
		LED_AXI_HIGH_ADDR = LED4_AXI_HIGH_ADDR;
	}
	else
	{
		fprintf(stderr, "wrong display number. run  \"%s --help\" \n", argv[0]);
		return -1;
	}
	if(port < 1024  || port > 65535)
	{
		fprintf(stderr, "wrong port number. run  \"%s --help\" \n", argv[0]);
		return -1;
	}
	if(num_leds < 1 || num_leds > 255)
	{
		fprintf(stderr, "wrong display length. run  \"%s --help\" \n", argv[0]);
		return -1;
	}



	/*****************************************************************************/
	/*                                declarations                                   */
	/*****************************************************************************/

	int listenfd = 0, connfd = 0, fd, recvlen, buflen, send_len;
	struct sockaddr_in serv_addr;
	char *recvBuff;
	char *buffer;
	char *response;
	long intval;
	int led_idx;

	/* fork() system-call to instantiate the parent-process to child-process by client connection
	 * so that the two processes can run concurrently  */
	pid_t pid;


	/*****************************************************************************/
	/*                                INIT                                   */
	/*****************************************************************************/


	page_size_led = sysconf(_SC_PAGESIZE);
	fd = open("/dev/mem",O_RDWR);
	page_addr_led	= (LED_AXI_BASE_ADDR & ~(page_size_led-1));
	page_offset_led	= LED_AXI_BASE_ADDR - page_addr_led;

	mem_ptr = mmap(NULL,page_size_led,PROT_READ|PROT_WRITE,MAP_SHARED,fd,(LED_AXI_BASE_ADDR & ~(page_size_led-1)));

	//Allocate memory
	recvBuff = (char*)malloc(1*sizeof(char));
	buffer = (char*)malloc(20*sizeof(char));
	response = (char*)malloc(100*sizeof(char));

	// set the default number of leds
	set_number_led(num_leds);
	usleep(20000);  // spend some clock to set the number of led
	// reset all leds
	init_leds();


	//fprintf(stdout,"End Init\n");

	/*****************************************************************************/
	/*                                Create the TCP socket                                   */
	/*****************************************************************************/

    if((listenfd = socket(AF_INET, SOCK_STREAM, 0)) < 0) error("Failed to create socket\n");
    memset(&serv_addr, '0', sizeof(serv_addr));


    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_addr.sin_port = htons(port);

    if((bind(listenfd, (struct sockaddr*)&serv_addr, sizeof(serv_addr))) < 0) error("Failed to bind socket\n");
    listen(listenfd, 1);

    fprintf(stdout, "Started on port %d and control %d pixels of LED %d connected on pin %s.\n", port, num_leds, display, pins[display]);
	while(1)
	{// parent process

		if((connfd = accept(listenfd, (struct sockaddr*)NULL, NULL)) < 0) fprintf(stdout,"Failed on accept \n");

		pid = fork();
		if (pid < 0)
		{// failed to create a child-process
			fprintf(stdout, "ERROR on fork \n");
		    close(connfd); // close child-socket in case fork() failed to create a child process
		}
		else if (pid == 0)
		{ // child process has started and is running

			pid_t child_pid = 0;
			sprintf(buffer, " "); // clear buffer, in oder for it not to contain invalid data
			while(1)
			{// child process

					memset(recvBuff, '0', 1);
					recvlen = read(connfd,recvBuff,1);
					if (recvlen > 0)
					{
						recvBuff[recvlen]='\0';
						read_write_flag = 0;

						// send response to client if "?" in recvBuff  :
						if(strncmp(recvBuff, ";",1)==0 || strncmp(recvBuff, "?",1)==0)
						{
//							fprintf(stdout,"client said: %s \n", buffer);
//							fprintf(stdout, " %d bytes \n", strlen(buffer));

							buflen = strlen(buffer);
							buffer[buflen] = '\0';

							if(strncmp(buffer, " show",4)==0)  // compare response with " show" and not "show" because buffer = " " + "show"
							{
//								fprintf(stdout,"shown \n");
								show();
							}
							else if(strncmp(buffer, " init",4)==0)
							{
//								fprintf(stdout,"initialised \n");
								init_leds();
							}
							else  // pixel data
							{
								intval = atol(buffer);
								led_idx = intval >> 24;
								if(led_idx>= 0 && led_idx < num_leds && led_idx < 256)  // support max 1 byte. defined in the hardware description
								{
//									fprintf(stdout,"send \n");
									axi_slv0_write(intval);
								}
								else
								{
									sprintf(response, "Error. idx out of range by %s. idx_max= %d\n", buffer, (num_leds-1));
									response[strlen(response)] = '\0';
									send_len = write(connfd, response, strlen(response));
									if (send_len < 1)
									{
										//close child-socket if connection get lost. And send signal to parent to kill this process
										child_pid = getpid();
										fprintf(stdout,"\nError by writing to client\n");
										close(connfd);
										fprintf(stdout,"client on process %d is disconnected\n", child_pid);
										kill(child_pid, SIGKILL);  // send signal to kill this process
									}
								}
							}

							// response to client if "?" comes and update completed
							if(strncmp(recvBuff, "?",1)==0)
							{
								if(get_update_state())
								{
									sprintf(response, "DONE");
									response[strlen(response)] = '\0';
									send_len = write(connfd, response, strlen(response));
									if (send_len < 1)
									{
										//close child-socket if connection get lost. And send signal to parent to kill this process
										child_pid = getpid();
										fprintf(stdout,"\nError by writing to client\n");
										close(connfd);
										fprintf(stdout,"client on process %d is disconnected\n", child_pid);
										kill(child_pid, SIGKILL);  // send signal to kill this process
									}
								}
							}

							sprintf(buffer, " ");
							continue;
						}

						strcat(buffer, recvBuff);  // add the byte into the buffer
					}
					else
					{
//						close child-socket if connection get lost. And send signal to parent to kill this process
						child_pid = getpid();
						fprintf(stdout,"\nclient not reachable\n");
						close(connfd);
						fprintf(stdout,"client on process %d is disconnected\n", child_pid);
						kill(child_pid, SIGKILL);  // send signal to kill this process
					}
				}
		}
	}
    munmap(mem_ptr, page_size_led);
    close(listenfd);

    return 0;
}


void error(char *msg)
{
    perror(msg);
    exit(1);
}

int optionParser (int argc, char **argv)
{
  int c;


  while (1)
    {
      static struct option long_options[] =
        {
          /* These options don???t set a flag.
             We distinguish them by their indices. */
          {"help"   ,  no_argument, 0, 'h'},
          {"display",  required_argument, 0, 'd'},
          {"port"   ,  required_argument, 0, 'p'},
          {"length" ,  required_argument, 0, 'l'},
          {"verbose",  no_argument      , 0, 'v'},
          {0, 0, 0, 0}
        };
      /* getopt_long stores the option index here. */
      int option_index = -1;

      c = getopt_long (argc, argv, "hd:p:l:v",
                       long_options, &option_index);

      /* Detect the end of the options. */
      if (c == -1)
        break;

      switch (c)
        {
        case 'h':
          fprintf(stdout,"\nthe program needs some arguments to start properly. Those argument are: \n"
                            "1. usage: -d / --display  value. desc: A display number from 1 up to 4. These number depend on which pin on the zedboard the display is connected.\n"
                            "    1 = > JA1 ; 2 = > JA2 ; 3 = > JB1 ; 4 => JB2 . Specified \n"
                            "2. usage: -l / --length  value. desc: a display length. This is the number of pixel(leds) that the display contains.\n"
                            "3. usage: -p / --port  value. desc: a socket port on wich the server will launch. This port have to be in range 1024 - 65535\n"
                            "4. (optional) usage: -v / --verbose. desc: this will allow the program to print all the socket-trafic  on the terminal.\n\n"

                            "Exemple : \"path/programName -d 1 -l 64 -p 8888\"\n\n");
        exit(0);

        case 'd':
			  display = atoi(optarg);
			  if(display != 0)  // also return 0 if a non-int is passed in
					  break;

			  fprintf(stderr, "wrong display number. run  \"%s --help\" \n", argv[0]);
			  return -1;

        case 'p':
			  port = atoi(optarg);
			  if(port != 0)  // also return 0 if a non-int is passed in
					  break;

			  fprintf(stderr, "wrong port number. run  \"%s --help\" \n", argv[0]);
			  return -1;

        case 'l':
        	num_leds = atoi(optarg);
        	if(num_leds != 0)  // also return 0 if a non-int is passed in
				  break;

        	fprintf(stderr, "wrong number of pixels(leds). run  \"%s --help\" \n", argv[0]);
        	return -1;

        case 'v':
          verbose_flag = 1;
          break;

        case ':': /* missing argument of a parameter */
			fprintf(stderr, "missing argument of a parametert.\n");
			return -1;

        case '?': /* unknown parameter */
          break;

        default:
        	break;
        }
    }

  return (0);
}

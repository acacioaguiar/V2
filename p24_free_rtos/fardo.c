#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "croutine.h"

#include "./USB/usb.h"
#include "./USB/usb_function_cdc.h"
#include "usb_config.h"
#include "USB/usb_device.h"
#include "USB/usb.h"
#include "usb_tty.h"

#include "TCPIP Stack/TCPIP.h"
#include "TCPIP Stack/WFConsole.h"

#include "uart_com.h"

#include "io_p77.h"
#include "lcd_ext.h"
#include "uart_com.h"
#include "p1503_com.h"

#include "rc.h"
#include "board.h"
#include "wifi_init.h"
#include "fardo.h"
#include "conex.h"


static void fardo_cria_usb(void);

static void fardo_cria_tcpip(void);
static void fardo_tcpip(void *pvParameters);
static void fardo_tcpip_console(void *pvParameters);

static void fardo_cria_uart_p77(void);
static void fardo_uart_p77(void *pvParameters);

extern xQueueHandle usb_buffer_queue;
extern USB_BUFFER usb_buffer;
extern xQueueHandle lcd_controle_queue;

unsigned portBASE_TYPE stack_uso_tcpip = 0;
unsigned portBASE_TYPE stack_uso_tcpip_console = 0;
unsigned portBASE_TYPE stack_uso_usb = 0;
unsigned portBASE_TYPE stack_uso_p77 = 0;

unsigned int sinal_inicializado = 0;

/*----------------------------------------------------------------------------*/
/* INICIA TUDO                                                                */
/*----------------------------------------------------------------------------*/

void fardo_inicia(void){
    fardo_cria_usb();
    fardo_cria_uart_p77();
    fardo_cria_tcpip();
    
    vTaskStartScheduler();
}

/*----------------------------------------------------------------------------*/
/* USB                                                                        */
/*----------------------------------------------------------------------------*/

static void fardo_cria_usb(void){
    usb_tty_init();
    
    xTaskCreate( usb_tty_task, ( signed char * ) "USB", STACK_MIN_SIZE_USB, NULL, FARDO_USB_PRIORIDADE, NULL );
}

/*----------------------------------------------------------------------------*/
/* TCP/IP                                                                     */
/*----------------------------------------------------------------------------*/

static void fardo_cria_tcpip(void){
    xTaskCreate( fardo_tcpip, ( signed char * ) "TCPIP", STACK_MIN_SIZE_TCPIP, NULL, FARDO_TCPIP_PRIORIDADE, NULL );
    xTaskCreate( fardo_tcpip_console, ( signed char * ) "CONS", STACK_MIN_SIZE_CONSOLE, NULL, FARDO_CONSOLE_PRIORIDADE, NULL );
}

static void fardo_tcpip(void *pvParameters){
    stack_uso_tcpip = uxTaskGetStackHighWaterMark( NULL );
       
    TickInit();
    wifi_init_appconfig();
    StackInit();

    /* estabelece comunicacao, usando a configuracao padrao
     * nome da rede ssid
     * senha
     * tipo (wep, wap)
     */
    wifi_conexao_padrao();

    /* inicia a memoria externa, cartao sd */
    board_mem_ini();

    conex_atualiza_redes();

    sinal_inicializado++;
    
    while(1){
        /* teste no desempenho */
        vTaskDelay(20/portTICK_RATE_MS);
        
        StackTask();
        StackApplications();

        con_monitora_conexao();

	    #if defined(STACK_USE_ANNOUNCE)
            /* ping da microchip, ver arquivo "TCP Discovery.jar" */
			AnnounceIP();
	    #endif

        LED0_IO = ~LED0_IO;

        if(sinal_inicializado == 4)
            LED4_IO = 0;

        stack_uso_tcpip = uxTaskGetStackHighWaterMark( NULL );
    }
}

static void fardo_tcpip_console(void *pvParameters){

    stack_uso_tcpip_console = uxTaskGetStackHighWaterMark( NULL );

    #if defined(WF_CONSOLE)
        WFConsoleInit();
    #endif

    sinal_inicializado++;
        
    while(1){        
        #if defined(WF_CONSOLE)
            /* utilizada tambem pelo sub_console, pertencente a wf console */
            WFConsoleProcess();
            WFConsoleProcessEpilogue();
        #endif

        stack_uso_tcpip_console = uxTaskGetStackHighWaterMark( NULL );
    }
}


/*----------------------------------------------------------------------------*/
/* COMUNICACAO COM O P16F77                                                   */
/*----------------------------------------------------------------------------*/

static void fardo_cria_uart_p77(void){
    /* queue para o envio de mensagens para o display */
    lcd_controle_queue = xQueueCreate(4, sizeof(LCD_QUEUE));
    xTaskCreate( fardo_uart_p77, ( signed char * ) "UART", STACK_MIN_SIZE_P77, NULL, FARDO_P77_PRIORIDADE, NULL );
}

static void fardo_uart_p77(void *pvParameters){
    stack_uso_p77 = uxTaskGetStackHighWaterMark( NULL );

    io_p77_init();
    p1503_init();
    uart_init();

    vTaskDelay(1000/portTICK_RATE_MS);

    sinal_inicializado++;

    while(1){
        uart_tarefa();
        vTaskDelay(1/portTICK_RATE_MS);
        stack_uso_p77 = uxTaskGetStackHighWaterMark( NULL );
    }
}

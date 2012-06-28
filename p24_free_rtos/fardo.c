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


#include "io_p77.h"
#include "lcd_ext.h"
#include "p1503_com.h"

#include "rc.h"
#include "board.h"
#include "wifi_init.h"
#include "fardo.h"
#include "conex.h"

#include "ua_com.h"


static void cria_usb(void);

static void cria_tcpip(void);
static void t_tcpip(void *pvParameters);

#if defined(WF_CONSOLE)
    static void t_tcpip_console(void *pvParameters);
    unsigned portBASE_TYPE stack_uso_tcpip_console;
#endif

unsigned portBASE_TYPE stack_uso_tcpip;
unsigned portBASE_TYPE stack_uso_usb;

#define QUA_TAREFAS 4

int sinal_inicializado = 0;

xTaskHandle h_usb;
xTaskHandle h_tcpip;
xTaskHandle h_conso;

int estado_inicilizacao(void) {
    if (sinal_inicializado == QUA_TAREFAS)
        return 1;
    else
        return 0;
}

void marca_inicializacao(void){
    sinal_inicializado++;
}

void fardo_inicia(void) {
    cria_usb();
    cria_tcpip();
    ua_com_init();

    vTaskStartScheduler();
}

static void cria_usb(void) {
    usb_tty_init();

    xTaskCreate(usb_tty_task, (signed char *) "USB", STACK_MIN_SIZE_USB, NULL, FARDO_USB_PRIORIDADE, &h_usb);
}

static void cria_tcpip(void) {
    xTaskCreate(t_tcpip, (signed char *) "TCPIP", STACK_MIN_SIZE_TCPIP, NULL, FARDO_TCPIP_PRIORIDADE, &h_tcpip);

#if defined(WF_CONSOLE)
    xTaskCreate(t_tcpip_console, (signed char *) "CONS", STACK_MIN_SIZE_CONSOLE, NULL, FARDO_CONSOLE_PRIORIDADE, &h_conso);
#else
    sinal_inicializado++;
#endif

}

static void t_tcpip(void *pvParameters) {
    stack_uso_tcpip = uxTaskGetStackHighWaterMark(NULL);

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

    con_atualiza_redes();

    marca_inicializacao();

    while (1) {
        vTaskDelay(25 / portTICK_RATE_MS);

        StackTask();
        StackApplications();

        con_monitora_conexao();

#if defined(STACK_USE_ANNOUNCE)
        /* ping da microchip, ver arquivo "TCP Discovery.jar" */
        AnnounceIP();
#endif

        LED0_IO = ~LED0_IO;

        if (sinal_inicializado == QUA_TAREFAS)
            LED4_IO = 0;

        stack_uso_tcpip = uxTaskGetStackHighWaterMark(NULL);
    }
}

#if defined(WF_CONSOLE)

static void t_tcpip_console(void *pvParameters) {

    stack_uso_tcpip_console = uxTaskGetStackHighWaterMark(NULL);

    WFConsoleInit();

    marca_inicializacao();

    while (1) {
        /* utilizada tambem pelo sub_console, pertencente a wf console */
        WFConsoleProcess();
        WFConsoleProcessEpilogue();

        stack_uso_tcpip_console = uxTaskGetStackHighWaterMark(NULL);
    }
}
#endif

#include <stdio.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "TCPIP Stack/TCPIP.h"
#include "TCPIP Stack/WFConsole.h"
#include "wifi_init.h"
#include "conex.h"

static void tcp_pilha(void *pvParameters);
static void tcp_console(void *pvParameters);

#define TCP_STACK               (configMINIMAL_STACK_SIZE * 4)
#define TCP_PRIORIDADE          (tskIDLE_PRIORITY + (unsigned portCHAR)0)
#define TCP_CONSOLE_STACK       (configMINIMAL_STACK_SIZE * 5)
#define TCP_CONSOLE_PRIORIDADE  (tskIDLE_PRIORITY + (unsigned portCHAR)0)

xTaskHandle tcpip_handle;
xTaskHandle console_handle;
unsigned portBASE_TYPE tcpip_stack;
unsigned portBASE_TYPE console_stack;

void tcp_init(void) {
    xTaskCreate(tcp_pilha, (signed char *) "TCPIP", TCP_STACK, NULL, TCP_PRIORIDADE, &tcpip_handle);
    xTaskCreate(tcp_console, (signed char *)"CONSOLE", TCP_CONSOLE_STACK, NULL, TCP_CONSOLE_PRIORIDADE, &console_handle);
}

static void tcp_pilha(void *pvParameters) {
    (void)pvParameters;

    tcpip_stack = uxTaskGetStackHighWaterMark(NULL);
    
    StackInit();
    wifi_conexao_padrao();
    while (1) {
        StackTask();
        StackApplications();
        con_monitora_conexao();

#if defined(STACK_USE_ANNOUNCE)
        /* ping da microchip, ver arquivo "TCP Discovery.jar" */
        AnnounceIP();
#endif

        tcpip_stack = uxTaskGetStackHighWaterMark(NULL);
    }
}

static void tcp_console(void *pvParameters) {
    (void)pvParameters;

    console_stack = uxTaskGetStackHighWaterMark(NULL);

    WFConsoleInit();
    while(1){
        WFConsoleProcess();
        WFConsoleProcessEpilogue();

        console_stack = uxTaskGetStackHighWaterMark(NULL);
    }
}

void tcp_supend(void){
    vTaskSuspend(tcpip_handle);
}

void tcp_resume(void){
    vTaskResume(tcpip_handle);
}

void console_suspend(void){
    vTaskSuspend(console_handle);
}

void console_resume(void){
    vTaskResume(console_handle);
}

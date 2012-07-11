#include <stdio.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "TCPIP Stack/TCPIP.h"
#include "TCPIP Stack/WFConsole.h"
#include "wifi_init.h"
#include "conex.h"
#include "tcp_com.h"

static void tcp_pilha(void *pvParameters);
static void tcp_console(void *pvParameters);

xTaskHandle tcpip_handle;
xTaskHandle console_handle;
unsigned portBASE_TYPE tcpip_stack;
unsigned portBASE_TYPE console_stack;

xSemaphoreHandle tcpip_httpserver;

void tcp_init(void) {
    vSemaphoreCreateBinary(tcpip_httpserver);
    xTaskCreate(tcp_pilha, (signed char *) "TCPIP", TCP_STACK, NULL, TCP_PRIORIDADE, &tcpip_handle);
    xTaskCreate(tcp_console, (signed char *)"CONSOLE", TCP_CONSOLE_STACK, NULL, TCP_CONSOLE_PRIORIDADE, &console_handle);
}

int tcpip_desabilita_httpserver(void){
    if(tcpip_httpserver != NULL){
        xSemaphoreTake(tcpip_httpserver, portMAX_DELAY);
        return 1; /* desabilitado  */
    } else {
        return 0; /* erro */
    }
}

int tcpip_habilita_httpserver(void){
    if(tcpip_httpserver != NULL){
        xSemaphoreGive(tcpip_httpserver);
        return 1; /* habilitado */
    } else {
        return 0; /* erro */
    }
}

static void tcp_pilha(void *pvParameters) {
    (void)pvParameters;

    tcpip_stack = uxTaskGetStackHighWaterMark(NULL);
    
    StackInit();
    wifi_conexao_padrao();
    
    while (1) {
        vTaskDelay(50 / portTICK_RATE_MS);

        StackTask();

        if(tcpip_httpserver != NULL){
            if(xSemaphoreTake(tcpip_httpserver, (portTickType)10) == pdTRUE){

                StackApplications();    /* http server */

                xSemaphoreGive(tcpip_httpserver);
            }
        }
        
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

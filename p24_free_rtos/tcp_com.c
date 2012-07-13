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

xTaskHandle tcpip_handle;
unsigned portBASE_TYPE tcpip_stack;
xSemaphoreHandle tcpip_httpserver;

void tcp_init(void) {
    vSemaphoreCreateBinary(tcpip_httpserver);
    xTaskCreate(tcp_pilha, (signed char *) "TCPIP", TCP_STACK, NULL, TCP_PRIORIDADE, &tcpip_handle);
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

void tcpip_inicia_console(void){
    WFConsoleInit();
}

void tcpip_console_loop(void){
    WFConsoleProcess();
    WFConsoleProcessEpilogue();
}

static void tcp_pilha(void *pvParameters) {
    (void)pvParameters;

    tcpip_stack = uxTaskGetStackHighWaterMark(NULL);
    
    StackInit();
    //WFConsoleInit();
    wifi_conexao_padrao();
    
    while (1) {
        vTaskDelay(20 / portTICK_RATE_MS);

        StackTask();

        if(tcpip_httpserver != NULL){
            if(xSemaphoreTake(tcpip_httpserver, (portTickType)10) == pdTRUE){

                StackApplications();    /* http server */

                xSemaphoreGive(tcpip_httpserver);
            }
        }

//        WFConsoleProcess();
//        WFConsoleProcessEpilogue();
        
        con_monitora_conexao();

#if defined(STACK_USE_ANNOUNCE)
        /* ping da microchip, ver arquivo "TCP Discovery.jar" */
        AnnounceIP();
#endif

        tcpip_stack = uxTaskGetStackHighWaterMark(NULL);
    }
}

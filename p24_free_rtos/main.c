#define P24_FREERTOS

#include <stdio.h>
#include "HardwareProfile.h"
#include "FreeRTOS.h"
#include "task.h"
#include "croutine.h"
#include "board.h"
#include "wifi_init.h"
#include "TCPIP Stack/TCPIP.h"
#include "conex.h"
#include "ua_com.h"

APP_CONFIG AppConfig;

int main(void){
    board_init();
    TickInit();
    board_mem_ini(); /* inicializa o cartao de memoria e o sistema de arquivos fat */
    con_atualiza_redes(); /* verifica o arquivo de inicializacao *ini */
    wifi_init_appconfig(); /* carrega o AppConfig com os valores padroes */
    usb_init(); /* inicia a tarefa da comunicacao usb */
    ua_com_init(); /* inicia a tarefa da comunicacao serial com o pic16f77 */
    tcp_init(); /* inicia a tarefa da pilha tcpip */

    LED0_IO = 0;

    vTaskStartScheduler();

    LED0_IO = 1;

    while (1) {
        /* nao foi possivel alocar memoria */
        DelayMs(100);
        LED1_IO = ~LED1_IO;
    }
}

void vApplicationIdleHook(void) {
    /* Schedule the co-routines from within the idle task hook. */
    vCoRoutineSchedule();
}

void vApplicationStackOverflowHook(void) {
    LED0_IO = 1;
    LED1_IO = 1;
    LED2_IO = 1;
    LED3_IO = 1;
    LED4_IO = 1;


    /* Look at pxCurrentTCB to see which task overflowed its stack. */
    while (1) {
        /* overflow */
        DelayMs(100);
        LED2_IO = ~LED2_IO;
    }
}

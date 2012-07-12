#define THIS_IS_STACK_APPLICATION

#include <stdio.h>
#include "HardwareProfile.h"
#include "FreeRTOS.h"
#include "task.h"
#include "board.h"
#include "wifi_init.h"
#include "TCPIP Stack/TCPIP.h"
#include "conex.h"
#include "ua_com.h"
#include "tcp_com.h"
#include "v2_main.h"
#include "usb_tty.h"

APP_CONFIG AppConfig;

int main(void) {
    v2_main_init();         /* inicia o loop principal do projeto v2 */
    vTaskStartScheduler();  /* faz o freertos gerenciar as tarefas */

    apaga_todos_leds();

    while (1) {
        /* nao foi possivel alocar memoria */
        DelayMs(100);
        led0_muda_estado();
    }
}

//void vApplicationIdleHook(void) {
//    /* Schedule the co-routines from within the idle task hook. */
//    //vCoRoutineSchedule();
//}

void vApplicationStackOverflowHook(void) {
    apaga_todos_leds();

    /* Look at pxCurrentTCB to see which task overflowed its stack. */
    while (1) {
        /* overflow */
        DelayMs(100);
        led1_muda_estado();
    }
}

void vApplicationMallocFailedHook(void){
    /* o malloc falhou */
    while(1){
        DelayMs(100);
        led2_muda_estado();
    }
}

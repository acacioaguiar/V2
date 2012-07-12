#define THIS_IS_STACK_APPLICATION

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
        LED1_IO = ~LED1_IO;
    }
}

void vApplicationIdleHook(void) {
    /* Schedule the co-routines from within the idle task hook. */
    vCoRoutineSchedule();
    //LED0_IO = ~LED0_IO;
}

void vApplicationStackOverflowHook(void) {
    apaga_todos_leds();

    /* Look at pxCurrentTCB to see which task overflowed its stack. */
    while (1) {
        /* overflow */
        DelayMs(100);
        LED2_IO = ~LED2_IO;
    }
}

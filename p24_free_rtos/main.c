#define THIS_IS_STACK_APPLICATION

#include <stdio.h>
#include "HardwareProfile.h"
#include "FreeRTOS.h"
#include "croutine.h"
#include "board.h"
#include "fardo.h"
#include "TCPIP Stack/TCPIP.h"

APP_CONFIG AppConfig;

int main(void) {
    board_init();

    LED0_IO = 0;
    
    fardo_inicia();

    LED0_IO = 1;

    while (1){
        /* nao foi possivel alocar memoria */
        DelayMs(100);
        LED1_IO = ~LED1_IO;
    }
}

void vApplicationIdleHook( void ){
	/* Schedule the co-routines from within the idle task hook. */
	vCoRoutineSchedule();
}

void vApplicationStackOverflowHook( void )
{
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

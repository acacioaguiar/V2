#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "lcd_ext.h"
#include "v2_main.h"

xTaskHandle v2_handle;

static void v2_loop(void *pvParameters);

void v2_main_init(void){
    xTaskCreate(v2_loop, (signed char *)"V2", V2_STACK, NULL, V2_PRIORIDADE, &v2_handle);
}

static void v2_loop(void *pvParameters){
    int i = 0;

    while(1){
        vTaskDelay(10/portTICK_RATE_MS);
        lcd_letreiro(1);
    }
}

#include <stdio.h>
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
#include "lcd_ext.h"
#include "v2_main.h"
#include "io_p77.h"
#include "p1503_com.h"

xTaskHandle v2_handle;

static void v2_loop(void *pvParameters);
static void v2_cria_tarefa(void);

void v2_main_init(void) {
    board_init();           /* inicia o clock, configura as portas...*/

    LED0_1();

    TickInit();             /* temporizador */
    board_mem_ini();        /* inicializa o cartao de memoria e o sistema de arquivos fat */
    con_atualiza_redes();   /* verifica o arquivo de inicializacao *ini */
    wifi_init_appconfig();  /* carrega o AppConfig com os valores padroes */
    usb_init();             /* inicia a tarefa da comunicacao usb */
    ua_com_init();          /* inicia a tarefa da comunicacao serial com o pic16f77 */
    tcp_init();             /* inicia a tarefa da pilha tcpip */
    v2_cria_tarefa();       /* cria a tarefa do loop principal do v2 */
}

static void v2_cria_tarefa(void) {
    xTaskCreate(v2_loop, (signed char *) "V2", V2_STACK, NULL, V2_PRIORIDADE, &v2_handle);
}

static void v2_loop(void *pvParameters) {
    while (1) {
        vTaskDelay(10 / portTICK_RATE_MS);

        lcd_letreiro(1);
        io_p77_loop();
        p1503_loop();
    }
}

#include <stdio.h>
#include <string.h>

#include "TCPIP Stack/TCPIP.h"
#include "TCPIP Stack/WFConsole.h"

#if defined(WF_CONSOLE)

#include "TCPIP Stack/WFConsole.h"
#include "TCPIP Stack/WFConsoleMsgs.h"
#include "TCPIP Stack/WFConsoleMsgHandler.h"
#include "MDD File System/FSIO.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "croutine.h"

#include "fardo.h"
#include "tempo.h"
#include "lcd_ext.h"

#include "util.h"
#include "rc.h"
#include "conex.h"

#define ARG_1   (char *)ARGV[1]
#define ARG_2   (char *)ARGV[2]
#define ARG_3   (char *)ARGV[3]
#define QUA_ARG (ARGC)

static void s_printf(void);
static void s_tty(void);
static void s_stack(void);
static void s_lcd(void);
static void s_erro_argumentos(void);
static void s_ip(void);
static void s_redes(void);

extern unsigned portBASE_TYPE stack_uso_tcpip;
extern unsigned portBASE_TYPE stack_uso_tcpip_console;
extern unsigned portBASE_TYPE stack_uso_usb;
//extern unsigned portBASE_TYPE stack_uso_usb_leds;
extern unsigned portBASE_TYPE stack_uso_p77;

extern xQueueHandle lcd_controle_queue;
extern APP_CONFIG AppConfig;
extern struct conex_lista_rede lista_rede;

static const char msg_inicio_printf[] = "\r\ninicio, printf()\r\n";
static const char msg_fim_printf[] = "\r\nfim, printf";
static const char msg_inicio_tty[] = "\r\ninicio, usb_tty_print()\r\n";
static const char msg_fim_tty[] = "\r\nfim, usb_tty_print";

static const char msg_linha[] = "\r\n---------------------------";
static const char msg_uso_stack[] = "\r\nuso do stack";
static const char msg_stack_livre_alocado[] = "\r\ntask  | livre | alocado |";

static const char msg_erro_argumento[] = "\nerro nos argumentos";

static const char msg_enviando_lcd[] = "\r\nenviando a mensagem p/ lcd";
static const char msg_fim_lcd[] = "\r\nfim do envio";

static const char *cmd[] = {"printf",
                            "usb_tty",
                            "stack",
                            "tempo",
                            "lcd",
                            "tcpip",
                            "rc",
                            "redes"};

/*----------------------------------------------------------------------------*/
/* FUNCAO PRINCIPAL                                                           */
/*----------------------------------------------------------------------------*/

void sconsole_sis(void){

    if((strcmppgm2ram(ARG_1, cmd[0]) == 0) && (QUA_ARG == 2)){
        
        s_printf();

    } else if((strcmppgm2ram(ARG_1, cmd[1]) == 0) && (QUA_ARG == 2)){

        s_tty();

    } else if((strcmppgm2ram(ARG_1, cmd[2]) == 0) && (QUA_ARG == 2)){

        s_stack();

    } else if((strcmppgm2ram(ARG_1, cmd[3]) == 0) && (QUA_ARG == 2)){

        tempo_hum();

    } else if(strcmppgm2ram(ARG_1, cmd[4]) == 0 && (QUA_ARG > 2)){

        s_lcd();

    } else if(strcmppgm2ram(ARG_1, cmd[5]) == 0 && (QUA_ARG == 2)){

        s_ip();

    } else if(strcmppgm2ram(ARG_1, cmd[6]) == 0 && (QUA_ARG == 2)){

        lcd_qmsg("rc_conf");
        rc_test();

    } else if(strcmppgm2ram(ARG_1, cmd[7]) == 0 && (QUA_ARG == 2)){

        s_redes();

    } else {

        s_erro_argumentos();
        
    }
}

static void s_printf(void){
    int i;
    char buf[512];

    printf("%s", msg_inicio_printf);
    for(i = 0; i < (sizeof(buf)/sizeof(char)); i++){
        buf[i] = '0' + (i%10);
    }
    printf(buf);
    printf(msg_fim_printf);
}

static void s_tty(void){
    int i;
    char buf[512];

    usb_tty_print((char *)msg_inicio_tty);
    for(i = 0; i < (sizeof(buf)/sizeof(char)); i++){
        buf[i] = '0' + (i%10);
    }
    usb_tty_print(buf);
    usb_tty_print((char *)msg_fim_tty);
}

static void s_stack(void){
    usb_tty_print((char *)msg_linha);
    usb_tty_print((char *)msg_uso_stack);
    usb_tty_print((char *)msg_linha);
    usb_tty_print((char *)msg_stack_livre_alocado);
    printf("\r\ntcpip | %03u   |  %03u    |", stack_uso_tcpip, STACK_MIN_SIZE_TCPIP);
    printf("\r\nconso | %03u   |  %03u    |", stack_uso_tcpip_console, STACK_MIN_SIZE_CONSOLE);
    printf("\r\nusb   | %03u   |  %03u    |", stack_uso_usb, STACK_MIN_SIZE_USB);
    printf("\r\np77   | %03u   |  %03u    |", stack_uso_p77, STACK_MIN_SIZE_P77);
}

static void s_lcd(void){
    LCD_QUEUE lcd_msg;
    int i = 0, j = 0, k = 0;

    usb_tty_print((char *)msg_enviando_lcd);

    printf("\r\n i: %u", QUA_ARG);

    j = 0;
    for(i = 2; i < QUA_ARG; i++){
        k = 0;
        while(ARGV[i][k] != '\0'){
            lcd_msg.buf[j] = ARGV[i][k];
            j++; k++;
        }
        lcd_msg.buf[j++] = ' ';
    }
    lcd_msg.buf[--j] = '\0';

    lcd_msg.linha = 0;
    lcd_msg.tempo = 4;

    printf("\r\nstring enviada: \"%s\"", lcd_msg.buf);

    xQueueSendToBack(lcd_controle_queue, &lcd_msg, 20/portTICK_RATE_MS);
    usb_tty_print((char *)msg_fim_lcd);
}

static void s_erro_argumentos(void){
    int i;
    
    usb_tty_print((char *)msg_erro_argumento);
    for(i = 0; i < QUA_ARG; i++){
        printf("\r\ne: \"%s\"", ARGV[i]);
    }

    printf("\r\ncomandos disponiveis:");
    for(i = 0; i < 8; i++){
        printf("\r\n%s", cmd[i]);
    }
}

static void s_ip(void){
    char buf[16];

    util_string_ip(AppConfig.MyIPAddr, buf);
    printf("\r\nip     : %s", buf);
    util_string_ip(AppConfig.MyGateway, buf);
    printf("\r\ngateway: %s", buf);
}

static void s_redes(void){
    int i;

    if(lista_rede.qua == 0){
        printf("\r\nerro: sem redes cadastradas");
        return;
    }

    for(i = 0; i < lista_rede.qua; i++){
        usb_tty_print((char *)msg_linha);
        printf("\r\ntipo  : %u", lista_rede.r[i].tipo);
        printf("\r\nssid  : %s", lista_rede.r[i].ssid);
        printf("\r\nsenha : %s", lista_rede.r[i].senh);
    }
}

#endif //#if defined(WF_CONSOLE)

#include <stdio.h>
#include <string.h>

#include "TCPIP Stack/TCPIP.h"
#include "TCPIP Stack/WFConsole.h"

/* se o console da microchip nao esta habilitado, nao compila o subconsole */
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

#include "ua_com.h"

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
static void s_prio(void);
static void s_ua(void);
static void s_lmsg(void);
static void s_letreiro(void);

extern unsigned portBASE_TYPE stack_uso_tcpip;
extern unsigned portBASE_TYPE stack_uso_tcpip_console;
extern unsigned portBASE_TYPE stack_uso_usb;
extern unsigned portBASE_TYPE stack_uso_ua_com;

extern APP_CONFIG AppConfig;
extern struct conex_lista_rede lista_rede;

/*
 * Coletanea de mensagem salvas na memoria flash
 */
static const char msg_inicio_printf[] = "\r\ninicio, printf()\r\n";
static const char msg_fim_printf[] = "\r\nfim, printf";
static const char msg_inicio_tty[] = "\r\ninicio, usb_print()\r\n";
static const char msg_fim_tty[] = "\r\nfim, usb_print";

static const char msg_linha[] = "\r\n---------------------------";
static const char msg_uso_stack[] = "\r\nuso do stack";
static const char msg_stack_livre_alocado[] = "\r\ntask  | livre | alocado |";

static const char msg_erro_argumento[] = "\nerro nos argumentos";

static const char msg_enviando_lcd[] = "\r\nenviando a mensagem p/ lcd";
static const char msg_fim_lcd[] = "\r\nfim do envio";

static const char msg_cmd_indisponiveis[] = "\r\ncomandos indisponiveis";
static const char msg_sem_redes_cadastradas[] = "\r\nsem redes cadastradas";

static const char msg_mudando[] = "\r\nmudando";
static const char msg_tcpip[]= "tcpip";
static const char msg_usb[] = "usb";
static const char msg_console[] = "console";
static const char msg_ua[] = "ua";

/* comandos cadastrados no sub console */
#define QUAN_COMDS 12
static const char *cmd[] = {"printf",
                            "usb_tty",
                            "stack",
                            "tempo",
                            "lcd",
                            "tcpip",
                            "rc",
                            "redes",
                            "prio",
                            "ua",
                            "lmsg",
                            "let"};


extern xTaskHandle h_tcpip;
extern xTaskHandle h_conso;
extern xTaskHandle ua_tarefa;
extern xTaskHandle usb_controle;

/*----------------------------------------------------------------------------*/
/* FUNCAO PRINCIPAL                                                           */
/*----------------------------------------------------------------------------*/

void sconsole_sis(void){

    if((strcmppgm2ram(ARG_1, cmd[0]) == 0) && (QUA_ARG == 2)){

        /* teste do printf */
        s_printf();

    } else if((strcmppgm2ram(ARG_1, cmd[1]) == 0) && (QUA_ARG == 2)){

        /* teste do usb_print, mais rapido que o printf */
        s_tty();

    } else if((strcmppgm2ram(ARG_1, cmd[2]) == 0) && (QUA_ARG == 2)){

        /* verifica a memoria stack utilizada pelas tarefas */
        s_stack();

    } else if((strcmppgm2ram(ARG_1, cmd[3]) == 0) && (QUA_ARG == 2)){

        /* tempo via ntp */
        tempo_hum();

    } else if(strcmppgm2ram(ARG_1, cmd[4]) == 0 && (QUA_ARG > 2)){

        /* imprime mensagem no lcd, sis lcd mensagem */
        s_lcd();

    } else if(strcmppgm2ram(ARG_1, cmd[5]) == 0 && (QUA_ARG == 2)){

        /* ver o endereco de ip, via AppConfig */
        s_ip();

    } else if(strcmppgm2ram(ARG_1, cmd[6]) == 0 && (QUA_ARG == 2)){

        /* teste do arquivo de configuracao */
        rc_test();

    } else if(strcmppgm2ram(ARG_1, cmd[7]) == 0 && (QUA_ARG == 2)){

        /* mostra as redes cadastradas */
        s_redes();

    } else if(strcmppgm2ram(ARG_1, cmd[8]) == 0 && (QUA_ARG >= 2)){

        /* verifica e muda as prioridades das tarefas
         * sis prio, apenas para ver
         * sis prio tarefa nivel, para ver a muda a prioridade
         */
        s_prio();

    } else if(strcmppgm2ram(ARG_1, cmd[9]) == 0 && (QUA_ARG == 2)){

        s_ua();

    } else if(strcmppgm2ram(ARG_1, cmd[10]) == 0 && (QUA_ARG == 3)){

        s_lmsg();

    } else if(strcmppgm2ram(ARG_1, cmd[11]) == 0 && (QUA_ARG == 3)){

        s_letreiro();

    } else {

        /* nenhum argumento valido */
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

    usb_print((char *)msg_inicio_tty);
    for(i = 0; i < (sizeof(buf)/sizeof(char)); i++){
        buf[i] = '0' + (i%10);
    }
    usb_print(buf);
    usb_print((char *)msg_fim_tty);
}

static void s_stack(void){
    usb_print((char *)msg_linha);
    usb_print((char *)msg_uso_stack);
    usb_print((char *)msg_linha);
    usb_print((char *)msg_stack_livre_alocado);
    printf("\r\ntcpip | %03u   |  %03u    |", stack_uso_tcpip, STACK_MIN_SIZE_TCPIP);
    printf("\r\nconso | %03u   |  %03u    |", stack_uso_tcpip_console, STACK_MIN_SIZE_CONSOLE);
    printf("\r\nusb   | %03u   |  %03u    |", stack_uso_usb, STACK_MIN_SIZE_USB);
    printf("\r\nuacom | %03u   |  %03u    |", stack_uso_ua_com, SIZE_STACK_UA_COM);

}

static void s_lcd(void){

}

static void s_erro_argumentos(void){
    int i;
    
    usb_print((char *)msg_erro_argumento);
    for(i = 0; i < QUA_ARG; i++){
        printf("\r\ne: \"%s\"", ARGV[i]);
    }

    usb_print((char *)msg_cmd_indisponiveis);
    for(i = 0; i < QUAN_COMDS; i++){
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
        usb_print((char *)msg_sem_redes_cadastradas);
        return;
    }

    for(i = 0; i < lista_rede.qua; i++){
        usb_print((char *)msg_linha);
        printf("\r\ntipo  : %u", lista_rede.r[i].tipo);
        printf("\r\nssid  : %s", lista_rede.r[i].ssid);
        printf("\r\nsenha : %s", lista_rede.r[i].senh);
    }
}

static void s_prio(void){

    if(QUA_ARG == 4){
        usb_print((char *)msg_mudando);
        if(strcmppgm2ram(ARG_2, "tcpip") == 0){

            usb_print((char *)msg_tcpip);
            vTaskPrioritySet(h_tcpip, atoi(ARG_3));

        } else if(strcmppgm2ram(ARG_2, "usb") == 0){

            usb_print((char *)msg_usb);
            vTaskPrioritySet(usb_controle, atoi(ARG_3));

        } else if(strcmppgm2ram(ARG_2, "uacom") == 0){
            usb_print((char *)msg_ua);
            vTaskPrioritySet(ua_tarefa, atoi(ARG_3));

        } else if(strcmppgm2ram(ARG_2, "conso") == 0){

            usb_print((char *)msg_console);
            vTaskPrioritySet(h_conso, atoi(ARG_3));

        }
    }

    printf("\r\nquantidade de tarefas: %u", uxTaskGetNumberOfTasks());
    printf("\r\nprioridades:");
    printf("\r\nusb  : %u", uxTaskPriorityGet(usb_controle));
    printf("\r\ntcpip: %u", uxTaskPriorityGet(h_tcpip));
    printf("\r\nconso: %u", uxTaskPriorityGet(h_conso));
    printf("\r\nuacom: %u", uxTaskPriorityGet(ua_tarefa));
}

static void s_ua(void){
    printf("\r\nua");
//    ua_queue_send_1byte((char)ARGV[2][0], (char)ARGV[3][0]);

    ua_msg_vector((char *)"aaaaaaaaaaaaaaaaf",(char *)"comando sis ua  f", 17);
    ua_msg_vector((char *)"bbbbbbbbbbbbbbbbf",(char *)"teste de escritaf", 17);
    ua_msg_vector((char *)"ccccccccccccccccf",(char *)"no lcd 16x4     f", 17);
    ua_msg_vector((char *)"ddddddddddddddddf",(char *)"sconsole.c      f", 17);
}

static void s_lmsg(void){
    lcd_ua_msg(ARG_2, 0);
}

static void s_letreiro(void){
    lcd_letreiro(atoi(ARG_2));
}

#endif //#if defined(WF_CONSOLE)

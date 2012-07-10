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

#define verifica_argumentos(argc, q)   if(argc != q){msg_erro_arg(); return;}

static void s_printf(int argc, char **argv);
static void s_tty(int argc, char **argv);
static void s_stack(int argc, char **argv);
static void s_ip(int argc, char **argv);
static void s_redes(int argc, char **argv);
static void s_prio(int argc, char **argv);
static void s_ua(int argc, char **argv);
static void s_lmsg(int argc, char **argv);
static void s_letreiro(int argc, char **argv);

int bash_read_null(char *s, int max);
int bash_read_null(char *s, int max);
static void b_edit_file(int argc, char **argv);

extern unsigned portBASE_TYPE stack_uso_tcpip;
extern unsigned portBASE_TYPE stack_uso_tcpip_console;
extern unsigned portBASE_TYPE stack_uso_usb;
extern unsigned portBASE_TYPE stack_uso_ua_com;

extern APP_CONFIG AppConfig;
extern struct conex_lista_rede lista_rede;

static const char msg_linha[] = "\r\n---------------------------";

extern xTaskHandle h_tcpip;
extern xTaskHandle h_conso;
extern xTaskHandle ua_tarefa;
extern xTaskHandle usb_controle;

typedef void(*b_cmd_manipula)(int argc, char **argv);

typedef struct {
    const char *cmd;
    b_cmd_manipula funcao;
} BASH_CMD;

/*
 * Comandos cadastrados, chamada de funcoes via ponteiro
 * Novos comandos sao cadastrados aqui!
 */
static const BASH_CMD bash_cmd[] = {
    {"printf", s_printf},
    {"usb_tty", s_tty},
    {"stack", s_stack},
    {"tcpip", s_ip},
    {"redes", s_redes},
    {"prio", s_prio},
    {"ua", s_ua},
    {"lmsg", s_lmsg},
    {"let", s_letreiro},
    {"edit", b_edit_file},
    {NULL, NULL}
};

void msg_erro_arg(void){
    printf("\r\nerro: nos argumentos");
}

void executa_cmd(int argc, char **argv) {
    int i = 0;
    const BASH_CMD* bc;

    #define offset 1

    while (1) {
        bc = bash_cmd + i;
        if (bc->cmd == NULL) {
            usb_print("\r\nerro: comando nao encontrado");
            for (i = 0; i < argc; i++)
                printf("\r\nargc %u : argv %s", i, argv[i]);

            break;
        }
        /* busca o comando, cadastrado em bash_cmd */
        if (!strcmp(bc->cmd, argv[offset])) {
            if (bc->funcao)
                bc->funcao(argc, argv);
            /* comando encontrado, processado e fim */
            break;
        }
        i++;
    }
}

static void s_printf(int argc, char **argv) {
    int i;
    char buf[512];

    verifica_argumentos(argc, 2);

    printf("%s", "\r\ninicio, printf()\r\n");
    for (i = 0; i < (sizeof (buf) / sizeof (char)); i++) {
        buf[i] = '0' + (i % 10);
    }
    printf(buf);
    printf("\r\nfim, printf");
}

static void s_tty(int argc, char **argv) {
    int i;
    char buf[512];

    verifica_argumentos(argc, 2);

    usb_print("\r\ninicio, usb_print()\r\n");
    for (i = 0; i < (sizeof (buf) / sizeof (char)); i++) {
        buf[i] = '0' + (i % 10);
    }
    usb_print(buf);
    usb_print("\r\nfim, usb_print");
}

static void s_stack(int argc, char **argv) {
    verifica_argumentos(argc, 2);

    usb_print((char *) msg_linha);
    usb_print("\r\nuso do stack");
    usb_print((char *) msg_linha);
    usb_print((char *) "\r\ntask  | livre | alocado |");
    printf("\r\ntcpip | %03u   |  %03u    |", stack_uso_tcpip, 0);
    printf("\r\nconso | %03u   |  %03u    |", stack_uso_tcpip_console, 0);
    printf("\r\nusb   | %03u   |  %03u    |", stack_uso_usb, 0);
    printf("\r\nuacom | %03u   |  %03u    |", stack_uso_ua_com, 0);

}

static void s_ip(int argc, char **argv) {
    char buf[16];

    verifica_argumentos(argc, 2);

    util_string_ip(AppConfig.MyIPAddr, buf);
    printf("\r\nip     : %s", buf);
    util_string_ip(AppConfig.MyGateway, buf);
    printf("\r\ngateway: %s", buf);
}

static void s_redes(int argc, char **argv) {
    int i;

    verifica_argumentos(argc, 2);

    if (lista_rede.qua == 0) {
        usb_print("\r\nsem redes cadastradas");
        return;
    }

    for (i = 0; i < lista_rede.qua; i++) {
        usb_print((char *) msg_linha);
        printf("\r\ntipo  : %u", lista_rede.r[i].tipo);
        printf("\r\nssid  : %s", lista_rede.r[i].ssid);
        printf("\r\nsenha : %s", lista_rede.r[i].senh);
    }
}

static void s_prio(int argc, char **argv) {

    if (argc == 4) {
        usb_print("\r\nmudando ");
        if (strcmppgm2ram(argv[2], "tcpip") == 0) {

            usb_print("tcpip");
            vTaskPrioritySet(h_tcpip, atoi(argv[3]));

        } else if (strcmppgm2ram(argv[2], "usb") == 0) {

            usb_print("usb");
            vTaskPrioritySet(usb_controle, atoi(argv[3]));

        } else if (strcmppgm2ram(argv[2], "uacom") == 0) {
            usb_print("uart");
            vTaskPrioritySet(ua_tarefa, atoi(argv[3]));

        } else if (strcmppgm2ram(argv[2], "conso") == 0) {

            usb_print("console");
            vTaskPrioritySet(h_conso, atoi(argv[3]));

        }
    }

    printf("\r\nquantidade de tarefas: %u", uxTaskGetNumberOfTasks());
    printf("\r\nprioridades:");
    printf("\r\nusb  : %u", uxTaskPriorityGet(usb_controle));
    printf("\r\ntcpip: %u", uxTaskPriorityGet(h_tcpip));
    printf("\r\nconso: %u", uxTaskPriorityGet(h_conso));
    printf("\r\nuacom: %u", uxTaskPriorityGet(ua_tarefa));
}

static void s_ua(int argc, char **argv) {
    verifica_argumentos(argc, 2);

    printf("\r\nua");

    ua_msg_vector((char *) "aaaaaaaaaaaaaaaaf", (char *) "comando sis ua  f", 17);
    ua_msg_vector((char *) "bbbbbbbbbbbbbbbbf", (char *) "teste de escritaf", 17);
    ua_msg_vector((char *) "ccccccccccccccccf", (char *) "no lcd 16x4     f", 17);
    ua_msg_vector((char *) "ddddddddddddddddf", (char *) "sconsole.c      f", 17);
}

static void s_lmsg(int argc, char **argv) {
    verifica_argumentos(argc, 3);
    lcd_ua_msg(argv[2], 0);
}

static void s_letreiro(int argc, char **argv) {
    verifica_argumentos(argc, 3);
    lcd_letreiro(atoi(argv[2]));
}

/* leitura de uma string, ENTER para terminar ou limite do buffer */
void bash_read(char *s, int max) {
    int i = 0;
    char c;

    while (1) {
        while (usb_estado_rx() == 0) {
            vTaskDelay(1 / portTICK_RATE_MS);
        }

        c = usb_buffer_rx();

        if (i >= (max - 1)) {
            *(s + i) = '\0';
            return;
        }

        /* BACKSPACE */
        if (c == 127) {
            if (i > 0) {
                i--;
                /* sem nenhum configuracao no putty, fica legal */
                usb_tx_1byte(127);
            }
            continue;
        }

        /* ENTER */
        if (c == 13) {
            *(s + i) = '\0';
            return;
        }

        *(s + i) = c;
        usb_tx_1byte(c);
        i++;
    }
}

int bash_read_null(char *s, int max) {
    int i = 0;
    char c;
    while (1) {
        while (usb_estado_rx() == 0);
        c = usb_buffer_rx();

        if (i >= (max - 1)) {
            *(s + i) = '\0';
            return 0;
        }

        /* NULL */
        if (c == 0) {
            *(s + i) = '\0';
            return 1;
        }

        *(s + i) = c;
        i++;
    }
}

static void b_edit_file(int argc, char **argv) {
    FSFILE *file;
    char buf[9];
    int retorno;

    verifica_argumentos(argc, 3);

    file = FSfopen(argv[2], "w");
    if (file == NULL) {
        usb_print("\r\nerro: nao foi possivel criar o arquivo");
        return;
    } else {
        usb_print("\r\narquivo criado");
    }

    //    usb_print("\r\ndigite: ");
    //    bash_read_null(buf, sizeof(buf)/sizeof(char));
    //    usb_print("\r\nrecebi: ");
    //    for(retorno = 0; retorno < sizeof(buf)/sizeof(char); retorno++){
    //        usb_tx_1byte(buf[retorno]);
    //    }

    while (1) {
        retorno = bash_read_null(buf, sizeof (buf) / sizeof (char));

        if (FSfwrite(buf, 1, strlen(buf), file) != strlen(buf)) {
            usb_print("\r\nerro: na escrita");
            goto fecha_arquivo;
        } else {
            usb_print("s");
        }

        if (retorno == 1)
            break;
    }

    usb_print("\r\nfinalizado");
fecha_arquivo:
    if (FSfclose(file) != NULL) {
        usb_print("\r\nerro: nao foi possivel fechar o arquivo");
    }
}


#endif //#if defined(WF_CONSOLE)

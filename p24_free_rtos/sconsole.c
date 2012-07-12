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
#include "tcp_com.h"
#include "sconsole.h"
#include "dump_heap_info.h"

#define verifica_argumentos(argc, q)   if(argc != q){msg_erro_arg(); return;}

static void msg_erro_arg(void);

static void b_versao(int argc, char **argv);
static void s_help(int argc, char **argv);
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
static void b_ls(int argc, char **argv);
static void b_cat(int argc, char **argv);
static void b_cwd(int argc, char **argv);
static void b_remove_arq(int argc, char **argv);
static void b_muda_diretorio(int argc, char **argv);
static void b_cria_pasta(int argc, char **argv);
static void b_deleta_pasta(int argc, char **argv);
static void b_mal(int argc, char **argv);

extern unsigned portBASE_TYPE stack_uso_usb;
extern unsigned portBASE_TYPE stack_uso_ua_com;

extern xTaskHandle tcpip_handle;
//extern xTaskHandle console_handle;

extern unsigned portBASE_TYPE tcpip_stack;
//extern unsigned portBASE_TYPE console_stack;

extern APP_CONFIG AppConfig;
extern struct conex_lista_rede lista_rede;

extern xTaskHandle ua_tarefa;
extern xTaskHandle usb_controle;

extern xSemaphoreHandle tcpip_httpserver;

static const char msg_linha[] = "\r\n---------------------------";
static const char msg_help[] =
        "\r\ncomandos disponiveis no sub console:"
        "\r\n- help : mensagem de ajuda"
        "\r\n- stack : stack usado pelas tarefas"
        "\r\n- printf : testa o printf"
        "\r\n- usb_tty : testa o usb_tty"
        "\r\n- tcpip : informa endereco de ip"
        "\r\n- redes : informa as redes cadastradas"
        "\r\n- prio : mostra a prioridade das tarefas"
        "\r\n- ua : testa a comunicacao uart"
        "\r\n- lsmg <mensagem> : envia uma mensagem para o lcd"
        "\r\n- let <n> : mostra o letreiro"
        "\r\n- edit : especial "
        "\r\n- ls : exibe o conteudo do diretorio atual"
        "\r\n- cat : exibe o conteudo de um arquivo"
        "\r\n- cwd : mostra o diretorio atual"
        "\r\n- cd : muda o diretorio"
        "\r\n- mkdir : cria uma pasta"
        "\r\n- rmdir : remove uma pasta"
        "\r\n- ver : versao";

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
    {"help", s_help},
    {"printf", s_printf},
    {"usb_tty", s_tty},
    {"stack", s_stack},
    {"tcpip", s_ip},
    {"redes", s_redes},
    {"prio", s_prio},
    {"ua", s_ua},
    {"mal", b_mal},
    {"lmsg", s_lmsg},
    {"let", s_letreiro},
    {"edit", b_edit_file},
    {"ls", b_ls},
    {"cat", b_cat},
    {"cwd", b_cwd},
    {"ver", b_versao},
    {"rm", b_remove_arq},
    {"cd", b_muda_diretorio},
    {"mkdir", b_cria_pasta},
    {"rmdir", b_deleta_pasta},
    {NULL, NULL}
};

static void msg_erro_arg(void) {
    printf("\r\nerro: nos argumentos");
}

static void b_versao(int argc, char **argv) {
    (void) argc;
    (void) argv;
    usb_print("\r\n");
    usb_print(VERSAO_V2);
}

void executa_cmd(int argc, char **argv) {
    int i = 0;
    const BASH_CMD* bc;

#define offset 1

    while (1) {
        bc = bash_cmd + i;
        if (bc->cmd == NULL) {
            usb_print("\r\nerro: comando nao encontrado");
            s_help(argc, argv);

            break;
        }
        /* busca o comando, cadastrado em bash_cmd */
        if (!strcmp(bc->cmd, argv[offset])) {
            if (bc->funcao)
                bc->funcao(argc - offset, argv + offset);
            /* comando encontrado, processado e fim */
            break;
        }
        i++;
    }
}

static void s_help(int argc, char **argv) {
    (void) argc;
    (void) argv;
    usb_print((char *) msg_help);
}

static void s_printf(int argc, char **argv) {
    int i;
    char buf[512];

    verifica_argumentos(argc, 1);

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

    verifica_argumentos(argc, 1);

    usb_print("\r\ninicio, usb_print()\r\n");
    for (i = 0; i < (sizeof (buf) / sizeof (char)); i++) {
        buf[i] = '0' + (i % 10);
    }
    usb_print(buf);
    usb_print("\r\nfim, usb_print");
}

static void s_stack(int argc, char **argv) {
    verifica_argumentos(argc, 1);

    usb_print((char *) msg_linha);
    usb_print("\r\nuso do stack");
    usb_print((char *) msg_linha);
    usb_print((char *) "\r\ntask  | livre | alocado |");
    printf("\r\ntcpip | %03u   |  %03u    |", tcpip_stack, TCP_STACK);
    //printf("\r\nconso | %03u   |  %03u    |", console_stack, TCP_CONSOLE_STACK);
    printf("\r\nusb   | %03u   |  %03u    |", stack_uso_usb, USB_STACK);
    printf("\r\nuacom | %03u   |  %03u    |", stack_uso_ua_com, SIZE_STACK_UA_COM);

    printf("\r\ntotal alocado: %u", TCP_STACK  + USB_STACK + SIZE_STACK_UA_COM);
}

static void s_ip(int argc, char **argv) {
    char buf[16];

    verifica_argumentos(argc, 1);

    util_string_ip(AppConfig.MyIPAddr, buf);
    printf("\r\nip     : %s", buf);
    util_string_ip(AppConfig.MyGateway, buf);
    printf("\r\ngateway: %s", buf);
}

static void s_redes(int argc, char **argv) {
    int i;

    verifica_argumentos(argc, 1);

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

    if (argc == 3) {
        usb_print("\r\nmudando ");
        if (strcmppgm2ram(argv[1], "tcpip") == 0) {

            usb_print("tcpip");
            vTaskPrioritySet(tcpip_handle, atoi(argv[2]));

        } else if (strcmppgm2ram(argv[1], "usb") == 0) {

            usb_print("usb");
            vTaskPrioritySet(usb_controle, atoi(argv[2]));

        } else if (strcmppgm2ram(argv[1], "uacom") == 0) {
            usb_print("uart");
            vTaskPrioritySet(ua_tarefa, atoi(argv[2]));

        } else if (strcmppgm2ram(argv[1], "conso") == 0) {

            usb_print("console");
            //vTaskPrioritySet(console_handle, atoi(argv[2]));

        }
    }

    printf("\r\nquantidade de tarefas: %u", uxTaskGetNumberOfTasks());
    printf("\r\nprioridades:");
    printf("\r\nusb  : %u", uxTaskPriorityGet(usb_controle));
    printf("\r\ntcpip: %u", uxTaskPriorityGet(tcpip_handle));
    //printf("\r\nconso: %u", uxTaskPriorityGet(console_handle));
    printf("\r\nuacom: %u", uxTaskPriorityGet(ua_tarefa));
}

static void s_ua(int argc, char **argv) {
    verifica_argumentos(argc, 1);

    printf("\r\nua");

    ua_msg_vector((char *) "aaaaaaaaaaaaaaaaf", (char *) "comando sis ua  f", 17);
    ua_msg_vector((char *) "bbbbbbbbbbbbbbbbf", (char *) "teste de escritaf", 17);
    ua_msg_vector((char *) "ccccccccccccccccf", (char *) "no lcd 16x4     f", 17);
    ua_msg_vector((char *) "ddddddddddddddddf", (char *) "sconsole.c      f", 17);
}

static void s_lmsg(int argc, char **argv) {
    verifica_argumentos(argc, 2);
    lcd_ua_msg(argv[1], 0);
}

static void s_letreiro(int argc, char **argv) {
    verifica_argumentos(argc, 2);
    lcd_letreiro(atoi(argv[1]));
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

    verifica_argumentos(argc, 2);

    if(tcpip_desabilita_httpserver() == 0){
        usb_print("\r\nerro: nao foi possivel desabilita o httpserver");
        return;
    }

    file = FSfopen(argv[1], "w");
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

static void b_ls(int argc, char **argv) {
    /* arquivos ocultos, pastas, sistema */
    unsigned int atributos = ATTR_ARCHIVE | ATTR_HIDDEN | ATTR_DIRECTORY | ATTR_SYSTEM;
    int i = 0;
    SearchRec busca;

    (void) argc;
    (void) argv;

    /* procura todos os arquivos, pastas... */
    if (!FindFirst("*.*", atributos, &busca)) {
        printf("\r\n%02u - %03lu  %s - %u", i++, busca.filesize, busca.filename, busca.attributes);
        while (!FindNext(&busca)) {
            printf("\r\n%02i - %03lu  %s - %u", i++, busca.filesize, busca.filename, busca.attributes);
        }
    }
}

/* cat <nome_do_arquivo>, nao e' permitido espacos no nome */
static void b_cat(int argc, char **argv) {
    char retorno[16];
    FSFILE *file;
    char l;

    verifica_argumentos(argc, 2);

    file = FSfopen(argv[1], "r");

    if (strlen(argv[1]) == 0)
        return;

    if (file == NULL) {
        printf("\r\nerro: nao foi possivel abrir %s", argv[1]);
        return;
    }

    usb_print("\r\n");

    while (!FSfeof(file)) {
        l = FSfread(retorno, 1, 16, file);
        usb_print_len(retorno, l);
    }

    FSfclose(file);
}

static void b_cwd(int argc, char **argv) {
    char s[16];
    int c;
    char *dir_atual;

    verifica_argumentos(argc, 1);

    dir_atual = FSgetcwd(s, c);
    if (dir_atual != s) {
        usb_print("\r\nerro: diretorio atual");
    }

    printf("\r\n%s", dir_atual);
}

static void b_remove_arq(int argc, char **argv) {
    verifica_argumentos(argc, 2);

    if (FSremove(argv[1])) {
        usb_print("\r\nerro: na remocao do arquivo");
    } else {
        usb_print("\r\nsucesso na remocao de: ");
        usb_print(argv[1]);
    }
}

static void b_muda_diretorio(int argc, char **argv) {
    verifica_argumentos(argc, 2);

    if (FSchdir(argv[1])) {
        usb_print("\r\nerro: nao foi possivel mudar o diretorio");
        return;
    }
}

static void b_cria_pasta(int argc, char **argv) {
    verifica_argumentos(argc, 2);

    if (FSmkdir(argv[1])) {
        usb_print("\r\nerro: nao foi possivel criar a pasta");
    } else {
        printf("\r\npasta %s criada", argv[1]);
    }
}

static void b_deleta_pasta(int argc, char **argv) {
    verifica_argumentos(argc, 2);

    if (FSrmdir(argv[1], 1)) {
        usb_print("\r\nerro: nao foi possivel deletar a pasta");
    } else {
        printf("\r\npasta %s deletada", argv[1]);
    }
}

static void b_mal(int argc, char **argv){
    _dump_heap_info();
}
#endif //#if defined(WF_CONSOLE)

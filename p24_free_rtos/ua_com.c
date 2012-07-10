#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "croutine.h"

#include "comandos.h"
#include "ua_com.h"

//#include "fardo.h"

#include "debug_conf.h"

#if _DEBUG_UA
    #define _debug_printf(...)  printf(__VA_ARGS__)
#else
    #define _debug_printf(...)
#endif

struct ua_struct_tx{
    char cmd[24];   /* buffer para o comando */
    char arg[24];   /* buffer para o argumento */
    int qua;        /* tamanho */
};

char ua_retorno = 0;

/* mensagens para a transmissao de dados */
xQueueHandle uart_queue;
xTaskHandle ua_tarefa;

/* uso de memoria */
unsigned portBASE_TYPE stack_uso_ua_com;

/* monitora e limpa os erros */
static void erros(void);
/* sincronismo do p77 com o p24 */
static void sincroniza(void);
/* envia um byte */
static void u2tx(char a);
/* aguarda e recebe um byte */
static char u2rx(void);

static void sincroniza(void){
    erros();

    /* o CMD_NENHUM informa para o p77 que é necessario sincronismo */
    u2tx(CMD_NENHUM);

    vTaskDelay(10/portTICK_RATE_MS);

    /* repete */
    u2tx(CMD_NENHUM);

    vTaskDelay(10/portTICK_RATE_MS);

    /* limpa o lcd, nao e' obrigatorio para o sincronismo */
    u2tx(CMD_LIMPA_LCD);    // comando
    u2tx(CMD_LIMPA_LCD);    // argumento
}

static void u2tx(char a){
    /* carrega e envia */
    U2TXREG = a;
    while(U2STAbits.TRMT == 0);
}

static char u2rx(void){
    char c;

    /* espera alguma coisa! */
    while(U2STAbits.URXDA == 0); //while(IFS1bits.U2RXIF == 0);
    c = U2RXREG;
    IFS1bits.U2RXIF = 0;
    
    return c;
}

/*
 * Tarefa da comunicacao, transmissao, recepcao, controle dos erros
 * OBS:
 * Todo envio de dados deve ser feita via queue
 */
void ua_loop(void *pvParameters){
    struct ua_struct_tx buf;
    char c;
    int i;

    /* inicia a marcacao */
    stack_uso_ua_com = uxTaskGetStackHighWaterMark(NULL);

    sincroniza();

    uart_queue = xQueueCreate(QUA_QUEUE_UA, sizeof(struct ua_struct_tx));

//    /* sinaliza para o fardo.c que ua_loop foi iniciada e se encontra no loop */
//    marca_inicializacao();
    
    while(1){
        /* trata os erros de overflow e frame */
        erros();

        /* oops!! um dado nao esperado!! */
        if(IFS1bits.U2RXIF == 1){
            printf("%c", U2RXREG);
            IFS1bits.U2RXIF = 0;
        }
        
        if(uart_queue != 0){
            if(xQueueReceive(uart_queue, &buf, (portTickType)10)){

                /* aqui é um ponto critico ? rummm */
                portENTER_CRITICAL();

                for(i = 0; i < buf.qua; i++){
                    
                    u2tx(buf.cmd[i]);
                    c = u2rx();

                    _debug_printf("\r\n%c : %c", buf.cmd[i], c);

                    u2tx(buf.arg[i]);
                    c = u2rx();

                    _debug_printf("\r\n%c : %c", buf.arg[i], c);

                    ua_retorno = c;
                }

                portEXIT_CRITICAL();
            }
        }

        /* salva o ponto mais alto de consumo do stack */
        stack_uso_ua_com = uxTaskGetStackHighWaterMark(NULL);
    }
}

/*
 * Envia apenas 2 byte(comando e argumento) pela comunicacao
 */
void ua_msg_2byte(char cmd, char arg){
    struct ua_struct_tx buf;

    if(uart_queue == 0)
        return;

    buf.cmd[0] = cmd;
    buf.arg[0] = arg;

    buf.qua = 1;

    xQueueSendToBack(uart_queue, &buf, portMAX_DELAY);
}

/*
 * Envia um vetor de comandos e argumentos pela comunicacao, com
 * tamanho definido
 */
void ua_msg_vector(char *cmd, char *arg, int l){
    struct ua_struct_tx buf;
    int i;

    if(uart_queue == 0) 
        return;

    buf.qua = l;
    
    for(i = 0; i < l; i++){
        buf.cmd[i] = *cmd++;
        buf.arg[i] = *arg++;
    }

    xQueueSendToBack(uart_queue, &buf, portMAX_DELAY);
}

/*
 * Inicia a uart e a sua tarefa no freertos
 */
void ua_com_init(void){
    UARTTX_TRIS = 0;
    UARTRX_TRIS = 1;
    U2MODE = 0x8000;
    U2STA = 0x0400;
    IFS1bits.U2RXIF = 0;
    U2BRG = ((GetPeripheralClock()+8ul*BAUD_COM)/16/BAUD_COM-1);

    xTaskCreate(ua_loop,
                (signed char *) "UACOM",
                SIZE_STACK_UA_COM,
                NULL,
                PRIORIDADE_UA_COM,
                &ua_tarefa);
}

static void erros(void){
    unsigned char cont = 10;
    char c;

    if(U2STAbits.OERR){
        /* erro de overflow */
        U2STAbits.OERR = 0;
    }
    
    while(U2STAbits.FERR && cont){
        /* erro no frame */
        c = U2RXREG;
        cont--;
    }
}

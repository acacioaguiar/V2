/*
 * uart_tarefas.c
 *
 * Todas as tarefas da comunicacao serial(UART)
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include <stdio.h>
#include "uart_com.h"
#include "HardwareProfile.h"
#include "TCPIP Stack/Tick.h"
#include "comandos.h"
#include "lcd_ext.h"
#include "debug_conf.h"
#include "p1503_com.h"
#include "io_p77.h"


#ifdef UART_DEBUG
    #define uart_debug_printf(...) printf(__VA_ARGS__)
#else
    #define uart_debug_printf(...)
#endif

#ifdef UART_DEBUG_2
    #define uart_debug_2_printf(...) printf(__VA_ARGS__)
#else
    #define uart_debug_2_printf(...)
#endif


/*
 * Prototipos privados
 */
static void sub_tarefas(void);
static void loop_sub_tarefas(void);
static void limpa_erros(void);

/* variavel de controle da comunicacao serial com o pic16f77 */
UART_V2 uart_p77;


void uart_tarefa(void){
    static unsigned char tarefa = 0;
    static unsigned long timeout = 0;
    static unsigned long timeout2 = 0;
    char c;

    limpa_erros();
    
    switch(tarefa){
        case 0:
            sub_tarefas();
            tarefa++;
            break;

        case 1:
            if(uart_buffer()){
                c = (char)uart_read();
                uart_debug_printf("\r\nrxx: %c = %x", c, c);
            }
            if(uart_p77_estado()){
                tarefa++;
            } else {
                tarefa = 0;
            }
            break;

        case 2:
            uart_write(uart_p77_ler_cmd());
            timeout = TickGet();
            tarefa++;
            break;

        case 3:
            if(uart_buffer()){
                c = (char)uart_read();
                uart_debug_printf("rx: %c = %x", c, c);
                if(c == uart_p77_ler_cmd()){
                    tarefa++;
                } else {
                    timeout2 = TickGet();
                    uart_debug_2_printf("\r\nerro na recepcao do p16f77");
                    tarefa = 8;
                }
            } else if(TickGet() - timeout > TEMPO_ERRO_TIMEOUT * TICKS_PER_SECOND){
                tarefa = 6;
            }
            break;
        case 4:
            uart_write(uart_p77_ler_arg());
            timeout = TickGet();
            tarefa++;
            break;

        case 5:
            if(uart_buffer()){
                c = (char)uart_read();
                uart_debug_printf("rx: %c = %x", c, c);
                tarefa = 0;
                uart_p77_muda_retorno(c);
                uart_p77_muda_estado(0);
            } else if(TickGet() - timeout > TEMPO_ERRO_TIMEOUT * TICKS_PER_SECOND){
                tarefa = 6;
            }
            break;

        case 6:
            uart_debug_2_printf("\r\nerro de timeout no p16f77");
        case 7:
            uart_p77_cmd_arg(CMD_NENHUM, CMD_NENHUM);
            uart_p77_envia_pacote();
            tarefa = 2;
            break;

        case 8:
            if(TickGet() - timeout2 > TEMPO_ERRO_TIMEOUT * TICKS_PER_SECOND){
                tarefa = 7;
            }
            break;

    } 
}


/*
 * Inicia a comunicacao serial (UART)
 * 8 - bits
 * sem paridade
 * baud rate - 19200
 * CTS e RTS nao sao obrigatorios
 */
void uart_init(void){
    UARTTX_TRIS = 0;
    UARTRX_TRIS = 1;
    UMODE = 0x8000;
    USTA = 0x0400;
    UBRG = ((GetPeripheralClock()+8ul*UART_BAUD_RATE)/16/UART_BAUD_RATE-1);

    /* inicia as variaveis de controle */
    uart_p77.debug = 0;
    uart_p77.falha = 0;
    uart_p77.ret = 0;
    uart_p77.est = 0;
}


/*
 * Sub tarefas da uart:
 * - Inicializacao do lcd
 * - Desabilita o debug do p16f77(habilitado por padrao)
 */
static void sub_tarefas(void){
    static unsigned char sub_tarefa = 0;

    /* so entra no loop se a uart estiver livre */
    if(uart_p77_estado() == 0){
        switch(sub_tarefa){
            case 0:
                /* sicroniza o pic16f77 */
                uart_p77_cmd_arg(CMD_NENHUM, CMD_NENHUM);
                uart_p77_envia_pacote();
                sub_tarefa++;
                break;
            case 1:
                /* limpa o lcd */
                uart_p77_cmd_arg(CMD_LIMPA_LCD, CMD_LIMPA_LCD);
                uart_p77_envia_pacote();
                sub_tarefa++;
                break;
            case 2:
                loop_sub_tarefas();
                break;
        }
    }
}


/*
 * E' necessario organizar o envio do dados.
 * A proxima tarefa so acontece quando o buffer estiver livre, ver funcao:
 * "sub_tarefa()".
 */
static void loop_sub_tarefas(void){
    static unsigned char loop = 0;

    switch(loop){
        /* tarefa do lcd */
        case 0:
            /*
             * Por definicao e escrita de um novo texto no lcd nao precisar
             * ser sequencial. E' permitido por exemplo a leitura de um canal AD
             * ou a mudanca de estado do Rele e so depois continuar a escrita
             * do lcd.
             */
            if(lcd_ext_loop_proc()){loop++;}
            break;     
        case 1:
            if(p1503_loop()){loop++;}
            break;
        case 2:
            if(io_p77_loop()){loop++;}
        case 3:
            loop = 0;
            break;
    }
}


/*
 * Limpa os possiveis erro de overflow
 */
static void limpa_erros(void){
    unsigned char cont = 10;

    /* verifica se ha problema de overflow na uart */
    if(U2STAbits.OERR){
        uart_debug_2_printf("\r\nerro overflow");
        U2STAbits.OERR = 1;
        U2STAbits.OERR = 0;
    }

    if(U2STAbits.FERR){
        uart_debug_2_printf("\r\nlimpado frameuart");
    }
    
    /* verifica se ha problema de frame */
    while(U2STAbits.FERR && cont){
        uart_read();
        cont--;
    }
}


/*
 * Carrega com comando e argumento
 */
void uart_p77_cmd_arg(char cmd, char arg){
    uart_p77.cmd = cmd;
    uart_p77.arg = arg;
}


/*
 * Verifica o estado da comunicacao entre o p16f77
 */
unsigned char uart_p77_estado(void){
    return (unsigned char)uart_p77.est;
}


/*
 * Apos o envio do argumento o escravo deve responder algo
 */
char uart_p77_retorno(void){
    return (char)uart_p77.ret;
}


/*
 * Envia comando e argumento
 */
void uart_p77_envia_pacote(void){
    uart_p77.est = 1;
}


/*
 * Verifica se a comunicacao esta funcionando entre o p16f77
 * 0 = erro
 * 1 = funcionando
 */
unsigned char uart_p77_falhou(void){
    return (unsigned char)uart_p77.falha;
}


/*
 * Ler o comando presente no uart_p77
 */
char uart_p77_ler_cmd(void){
    return (char)uart_p77.cmd;
}


/*
 * Ler o argumento presente no uart_p77
 */
char uart_p77_ler_arg(void){
    return (char)uart_p77.arg;
}


/*
 * Muda estado da comunicacao
 * 0 = livre
 * 1 = enviando (ocupado)
 */
void uart_p77_muda_estado(unsigned char est){
    uart_p77.est = est;
}


/*
 * Resposta do escravo
 */
void uart_p77_muda_retorno(char ret){
    uart_p77.ret = ret;
}



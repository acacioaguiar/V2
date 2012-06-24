/*
 * uart_com.h
 *
 * Todas as tarefas da comunicacao serial(UART)
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#ifndef _UART_COM_H
#define _UART_COM_H


//#define UART_BAUD_RATE  19200UL
//#define UART_BAUD_RATE  9600UL
#define UART_BAUD_RATE  4800UL

#define UBRG            U2BRG
#define UMODE           U2MODE
#define USTA            U2STA

/* tempo para erro de timeout, em segundos */
#define TEMPO_ERRO_TIMEOUT   2


/*
 * Variavel utilizada no controle da comunicacao serial
 */
typedef struct {
    char cmd;             /* comando       */
    char arg;             /* argumento     */
    char ret;             /* retorno       */
    unsigned est : 1;         /* estado, 0 = livre, 1 = enviando.. */
    unsigned falha : 1;   /* falha         */
    unsigned char debug;  /* modo debug    */
}UART_V2;


/*
 * Prototipos globais
 */
void uart_tarefa(void);
void uart_init(void);
void uart_p77_cmd_arg(char cmd, char arg);
unsigned char uart_p77_estado(void);
char uart_p77_retorno(void);
void uart_p77_envia_pacote(void);
unsigned char uart_p77_falhou(void);
char uart_p77_ler_cmd(void);
char uart_p77_ler_arg(void);
void uart_p77_muda_estado(unsigned char est);
void uart_p77_muda_retorno(char ret);


#define uart_buffer() (U2STAbits.URXDA)
#define uart_read()   (U2RXREG & 0xFF)
#define uart_write(a) (U2TXREG = a & 0xFF)

#endif

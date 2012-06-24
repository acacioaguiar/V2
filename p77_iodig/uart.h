/*
 * uart.h
 *
 * Todas as tarefas de recepcao e transmissao da(s) comunicacao(oes) serial(is).
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#ifndef _UART_H
#define _UART_H


/* Obs: caso selecione o baud 9600 descomentar a linha de HIGH_SPEED */
//#define BAUD    19200
//#define BAUD  9600
#define BAUD  4800

#define FOSC _XTAL_FREQ



#define NINE 0     /* Use 9bit communication? FALSE=8bit */


///* High speed 0 para velocidade de comunicacoes baixas, como 4800, 2400... */
//#define HIGH_SPEED 0
////#define HIGH_SPEED 1
//
//#if HIGH_SPEED == 1
//    #define DIVIDER ((int)(FOSC/(16UL * BAUD) -1))
//#else
//    /* low speed exige outra equacao para os calculos */
//    #define DIVIDER ((int)(FOSC/(64UL * BAUD) -1))
//#endif


#if BAUD > 9600
    /*
     * High speed, para velocidade acima de 9600.
     * Taxa menor de erro
     */
    #define DIVIDER ((int)(FOSC/(16UL * BAUD) -1))
#else
    /*
     * Low speed, para velocidade menores de 9600
     * Taxa menor de erro
     */
    #define DIVIDER ((int)(FOSC/(64UL * BAUD) -1))
#endif



#if NINE == 1
    #define NINE_BITS 0x40
#else
    #define NINE_BITS 0
#endif

#if HIGH_SPEED == 1
    #define SPEED 0x4
#else
    #define SPEED 0
#endif

#define RX_PIN TRISC7
#define TX_PIN TRISC6


/*
 * Comunicacao serial via software
 */
#ifdef _BAUD_9600
#define delayBit        84
#define delayMetaBit    42
#else   // 4800
#define UART_DELAY_1           188
#define UART_DELAY_12          94
#define UART_TX_TEMPO_CORRECAO 10
#endif

#define UART_TRIS_TX_SOFT     TRISB6
#define UART_TX_SOFT          RB6
#define UART_TRIS_RX_SOFT     TRISB5
#define UART_RX_SOFT          RB5



volatile struct{
    unsigned overflow : 1;
    unsigned frame    : 1;
    unsigned novo     : 1;  /* novo dado da serial */
    unsigned proc     : 1;  /* o dado foi usado ? */
    unsigned soft     : 1;
    char buffer;
    char buffer_soft;
} uart;


#define UART_OVERFLOW_ESTADO  (uart.overflow)
#define UART_OVERFLOW_LIMPA() (uart.overflow = 0)

#define UART_NOVO_DADO        (uart.novo)
#define UART_LIMPA_BUFFER()   (uart.novo = 0)

#define UART_BUFFER           (uart.buffer)

#define UART_PROC             (uart.proc)
#define UART_LIMPA_PROC()     (uart.proc = 0)
#define UART_PROC_OK()        (uart.proc = 1)

#define UART_SOFT_CHEIO()     (uart.soft = 1)
#define UART_SOFT_LIMPA()     (uart.soft = 0)
#define UART_SOFT_ESTADO      (uart.soft)
#define UART_SOFT_BUFFER      (uart.buffer_soft)


#define UART_DESABILITA_RX()  (PIE1bits.RCIE = 0)
#define UART_HABILITA_RX()    (PIE1bits.RCIE = 1)

/*
 * Prototipos globais
 */
void uart_init(void);
void uart_init_hardware(void);
void uart_init_software(void);
void putch(unsigned char byte); /* compatibilidade printf */
void uart_hard_fim(void);
void uart_tx_soft(unsigned char data);
unsigned char uart_rx_soft(void);
void uart_soft_tarefa(void);


/* considerar a possibilidade de funcoes inline, no hitech */
/* !!! por algum motivo verificar OERR gera um erro no sistema !!! */
#define uart_interrupcao()              \
    if(RCIF){                           \
        uart.buffer = RCREG;            \
        if(uart.novo == 0){             \
            uart.novo = 1;              \
        } else {                        \
            uart.overflow = 1;          \
        }                               \
        RCIF = 0;                       \
    }

#define uart_soft_interrupcao()                    \
    if(INTCONbits.RBIF){                           \
        if (!UART_RX_SOFT && !UART_SOFT_ESTADO) {  \
            uart.buffer_soft = uart_rx_soft();     \
            UART_SOFT_CHEIO();                     \
        }                                          \
        INTCONbits.RBIF = 0;                       \
    }


#endif

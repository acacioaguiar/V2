/*
 * uart.h
 *
 * Todas as tarefas de recepcao e transmisao da(s) comunicacao(oes) serial(is).
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include <pic.h>
#include <stdio.h>
#include "uart.h"
#include "hardware.h"
#include "lcd.h"
#include "debug.h"
#include "p1503.h"


/*
 * Inicia a comunicacao serial(uart via hardware)
 */
void uart_init(void){
    UART_OVERFLOW_LIMPA();
    UART_LIMPA_BUFFER();
    UART_LIMPA_PROC();
    UART_SOFT_LIMPA();
    
    uart_init_hardware();
    uart_init_software();
}


void uart_init_hardware(void){
    /* uart via hardware, comunicacao com o pic24*/
	RX_PIN = 1;
	TX_PIN = 1;
	SPBRG = DIVIDER;
	RCSTA = (NINE_BITS|0x90);
	TXSTA = (SPEED|NINE_BITS|0x20);

    /* habilita a interrupcao da recepcao */
    PIE1bits.RCIE = 1;
}


void uart_init_software(void){
    UART_TRIS_TX_SOFT = 0;
    UART_TRIS_RX_SOFT = 1;
    /* habilita interrupcao por mudanca de estado, portb */
    INTCONbits.RBIE = 1;
    INTCONbits.RBIF = 0;

    /* nivel alto para iniciar a comunicacao */
    UART_TX_SOFT = 1;
}



/* Compatibilidade com printf em <stdio.h> */
void putch(unsigned char byte) {

    while (!TXIF){
        continue;
    }
    TXREG = byte;
}


/*
 * O reenvio do byte significa ok na comunicacao entre os dispositivos
 */
void uart_hard_fim(void){
    if(UART_OVERFLOW_ESTADO == 1){

#ifdef _DEBUG_
        debug_lcd((char *)"overflow", LCD_LINHA4, DEBUG_UART);
#endif
        
        /* inicia a contagem */
        UART_OVERFLOW_LIMPA();
        UART_LIMPA_BUFFER();
        UART_LIMPA_PROC();

        PIE1bits.RCIE = 0;

        delay_ms(500);

        debug_limpa_lcd(LCD_LINHA4);

        PIE1bits.RCIE = 1;
    } else if(UART_NOVO_DADO && UART_PROC){
        /* para evitar overflow da comunicacao, e reenviado o dado informando
         * que o micro ja pode receber um novo dado
         */

#ifdef _DEBUG_
        if(DEBUG_PRINTF == 0){ putch(UART_BUFFER); }
#else
        putch(UART_BUFFER);
#endif
        

        /* pronto para receber um novo dado */
        UART_LIMPA_BUFFER();
        /* limpa a flag de dado processado */
        UART_LIMPA_PROC();
    }
}


/*
 * Base:
 * http://www.arduino.cc/playground/Portugues/LearningSoftwareSerial
 */
void uart_tx_soft(unsigned char data){
    volatile unsigned char mask;

    //desabilita as interrupcoes
    INTCONbits.GIE = 0;

    UART_TX_SOFT = 0;

    delay_us(UART_DELAY_1);
    for (mask = 0x01; mask > 0; mask <<= 1) {
        if (data & mask) {
            UART_TX_SOFT = 1;
        } else {
            UART_TX_SOFT = 0;
        }
        delay_us(UART_DELAY_1 + UART_TX_TEMPO_CORRECAO);
    }

    UART_TX_SOFT = 1;

    delay_us(UART_DELAY_1);

    // habilita as interrupcoes
    INTCONbits.GIE = 1;
}


unsigned char uart_rx_soft(void){
    unsigned char val = 0;
    unsigned char offset = 0;

    if (UART_RX_SOFT == 0) {
        /* o pic16f demora um tempo para chamar a funcao, caso acha problemas
         * comente ou descomente esse delay.
         */
        delay_us(UART_DELAY_12);
        for (offset = 0; offset < 8; offset++) {
            delay_us(UART_DELAY_1);
            val |= UART_RX_SOFT << offset;
        }

        delay_us(UART_DELAY_1 + UART_DELAY_1);
        return val;
    }
    return 0xFF;
}


void uart_soft_tarefa(void){

}

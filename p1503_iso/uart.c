/*
 * Projeto V2 - 2011
 *
 * Codigo: PIC16F1503 responsavel pela leitura das entradas analogicas,
 * e comunicacao uart.
 *
 * Ferramentas utilizadas:
 * - hitech V9.83 lite mode
 * - mplabx 7.12
 *
 * Codigo com suporte parcial:
 * - pic16f616
 * OBS: A versao para 16f616 so tem suporte para <uma> entrada analogica, mas
 * e' totalmente compativel com a comunicacao serial
 *
 */
/* Base:
 * http://www.arduino.cc/playground/Portugues/LearningSoftwareSerial
 */

#include <stdio.h>
#include "pic.h"
#include "hardware.h"
#include "uart.h"

void uart_init(void) {
    TRIS_RX = 1;
    TRIS_TX = 0;
    
#ifdef _16F616
    ANSELbits.ANS0 = 0;
    ANSELbits.ANS1 = 0;
    // habilita interrupcao por modudanca de estado pino ra1
    INTCONbits.RAIE = 1;
    IOCAbits.IOC1 = 1;
#endif

#ifdef _16F1503
    LATAbits.LATA0 = 0;
    LATAbits.LATA1 = 0;
    // limpa <LATA0> e <LATA1>
    ANSELAbits.ANSA0 = 0;
    ANSELAbits.ANSA1 = 0;
    // <ANSA0> e <ANSA1> como i/o
    INTCONbits.IOCIE = 1;
    IOCANbits.IOCAN1 = 1;
#endif

    TX = 1;
}

void uart_tx(unsigned char data) {
    volatile unsigned char mask;

    //desabilita as interrupcoes
    INTCONbits.GIE = 0;

    TX = 0;

    delay_us(delayBit);
    for (mask = 0x01; mask > 0; mask <<= 1) {
        if (data & mask) {
            TX = 1;
        } else {
            TX = 0;
        }
        delay_us(delayBit);
    }
    TX = 1;

    delay_us(delayBit);

    // habilita as interrupcoes
    INTCONbits.GIE = 1;
}

unsigned char uart_rx(void) {
    unsigned char val;
    unsigned char offset;

    val = 0x00;

    if (RX == 0) {
        //delayUs(delayMetaBit);
        for (offset = 0; offset < 8; offset++) {
            delay_us(delayBit);
            val |= RX << offset;
        }

        delay_us(delayBit);
        delay_us(delayBit);
        return val;
    }
    return 0xFF;
}

void putch(unsigned char byte) {
    uart_tx(byte);
}

//unsigned char getch() {
//    return uart_rx();
//}
//
//unsigned char getche(void) {
//    unsigned char c;
//    c = getch();
//    putch(c);
//    return c;
//}


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

#ifndef _RS_232_H
#define _RS_232_H

volatile near unsigned char buffer_rx = 0;
volatile near unsigned char buffer_estado = 0;

#define BUFFER_UART_VAZIO 0
#define BUFFER_UART_CHEIO 1

void uart_init(void);
void uart_tx(unsigned char data);
unsigned char uart_rx(void);
void putch(unsigned char);
//unsigned char getch(void);
//unsigned char getche(void);

#endif
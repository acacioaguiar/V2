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

#ifndef _HARDWARE_H
#define _HARDWARE_H

#define _XTAL_FREQ  4000000 // utilizado nas rotinas de tempo do hitech

#define delay_ms(a)    __delay_ms(a)
#define delay_us(a)    __delay_us(a)

#define ADC_TEMPO 2

#ifdef _BAUD_9600
#define delayBit        84
#define delayMetaBit    42
#else   // 4800
#define delayBit        188
#define delayMetaBit    94
#endif

#ifdef _16F616
// Comunicacao Serial
#define TRIS_TX     TRISA0
#define TX          RA0
#define TRIS_RX     TRISA1
#define RX          RA1

// Led
#define LED         RC5
#define TRIS_LED    TRISC5
#endif

#ifdef _16F1503
// Comunicacao Serial
#define TRIS_TX     TRISA0
#define TX          LATA0       // para escrita e' utilizada LAT, ver datasheet
#define TRIS_RX     TRISA1
#define RX          RA1         // para leitura e' utilizado PORT, ver datasheet

// Led
#define LED         LATC5
#define TRIS_LED    TRISC5
#endif

#endif

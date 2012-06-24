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

#ifndef _DEBUG_H
#define _DEBUG_H

#include "lista_cmd.h"

#define _DEBUG_ROM

#define LED_LIGADO      (LED = 1)
#define LED_DESLIGADO   (LED = 0)

//volatile unsigned char _DEBUG = DEBUG_NADA;
volatile unsigned char _DEBUG = DEBUG_PRINT;

void debug_uart(unsigned char retorno);
void debug_protocolo(unsigned char estado);
void debug_print(const unsigned char *s);
unsigned char debug_led(unsigned char estado, unsigned char caso);

#endif

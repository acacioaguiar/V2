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

#ifndef _PROTOCOLO_H
#define _PROTOCOLO_H

volatile struct {
    unsigned char cmd;
    unsigned char arg;
    unsigned char estado;
} protocolo;

#define UART_COMANDO         0u
#define UART_ARGUMENTO       1u
#define UART_VER_VALIDADE    2u

#define UART_PROCESSANDO     0u
#define UART_SUCESSO         1u
#define UART_ERRO            2u
#define UART_ERRO_SYS        3u
#define UART_LIVRE           4u

#define UART_MSG_ERRO       'E'

#define TIMEOUT_TICK        20000u

unsigned char protocolo_uart(void);
unsigned char protocolo_tarefas(void);

#endif

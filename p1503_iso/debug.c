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

#include <stdio.h>
#include "debug.h"
#include "pic.h"
#include "hardware.h"
#include "uart.h"
#include "protocolo.h"
#include "lista_cmd.h"

void debug_uart(unsigned char retorno) {
#ifdef _DEBUG_ROM
    //unsigned char retorno;
    static unsigned char retorno_antigo;

    if ((_DEBUG == DEBUG_PRINT) || (_DEBUG == DEBUG_TUDO)) {
        if (retorno != retorno_antigo) {
            retorno_antigo = retorno;
            switch (retorno) {
                case UART_LIVRE:
                    printf("\r\nUART_LIVRE");
                    break;
                case UART_ERRO:
                    printf("\r\nUART_ERRO");
                    break;
                case UART_SUCESSO:
                    printf("\r\nUART_SUCESSO");
                    break;
                    //                case UART_PROCESSANDO:
                    //                    printf("\r\nUART_PROCESSANDO");
                    //                    break;
            }
        }
    }
#endif
}

void debug_protocolo(unsigned char estado) {
#ifdef _DEBUG_ROM
    static unsigned char estado_antigo = 0;

    if ((_DEBUG == DEBUG_PRINT || _DEBUG == DEBUG_TUDO) && estado != estado_antigo) {
        estado_antigo = estado;
        switch (estado) {
            case UART_LIVRE:
                printf("\r\nUart livre");
                break;
            case UART_ERRO:
                printf("\r\nUart erro");
                break;
            case UART_PROCESSANDO:
                // *********************************
                // verificar a utilidade desse status
                printf("\r\rUart Processando");
                break;
        }
    }
#endif
}

void debug_print(const unsigned char *s) {
#ifdef _DEBUG_ROM
    if (_DEBUG == DEBUG_PRINT) {
        printf("\r\n");
        printf(s);
    }
#endif
}

unsigned char debug_led(unsigned char arg, unsigned char caso) {
    static unsigned char arg_antigo;

    if (caso == 1) {
        switch (arg) {
            case 1:
            case '1':
                arg_antigo = 1;
#ifdef _DEBUG_ROM
                debug_print("Led ligado");
#endif
                LED = 1;
                break;
            case 0:
            case '0':
                arg_antigo = 0;
#ifdef _DEBUG_ROM
                debug_print("Led desligado");
#endif
                LED = 0;
                break;

            default:
                return 1;

        }
        return 0;
    } else if (caso == 0 && arg_antigo == 0) {
        LED = arg;
    }
    return 0;
}

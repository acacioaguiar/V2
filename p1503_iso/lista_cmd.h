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

#ifndef _LISTA_CMD_H
#define _LISTA_CMD_H

typedef enum lista_cmd {
    ADC = 'a',      // comando para o conversor adc
    DLED = 'l',     // acende ou apaga o led
    DEBUG = 'd'     // modo debug do microcontrolador
} LISTA_CMD;

typedef enum adc_canal {
    CANAL0 = '0',   // nao pode ser usado
    CANAL1 = '1',   // nao pode ser usado
    CANAL2 = '2',
    CANAL3 = '3',
    CANAL4 = '4',
    CANAL5 = '5',
    TEMP_NUCLEO = '6'
} ADC_CANAL;

typedef enum debug_modo {
    DEBUG_NADA = '0',   // desliga o modo debug
    DEBUG_PRINT = '1',  // utiliza <printf> para o debiug
    DEBUG_LED = '2',    // utiliza o led para o debug
    DEBUG_TUDO = '3'    // utiliza led e <printf> para o debug
} DEBUG_MODO;

#endif

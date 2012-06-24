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

#include "protocolo.h"

#include <stdio.h>
#include "pic.h"
#include "uart.h"
#include "lista_cmd.h"
#include "hardware.h"
#include "debug.h"
#include "adc.h"

unsigned char protocolo_uart(void) {
    static volatile unsigned char tarefa = 0;
    static volatile unsigned int timeout = 0;

    switch (tarefa) {
        case UART_COMANDO:
            // comando, o primeiro dado enviado pelo mestre e' o comando
            protocolo.estado = 0;
            protocolo.cmd = 0;
            protocolo.arg = 0;

            if (buffer_estado) {
                protocolo.cmd = buffer_rx;
                buffer_estado = BUFFER_UART_VAZIO;
                tarefa = UART_ARGUMENTO;

                putch(protocolo.cmd);
                
                break;
            }
            // nao existe erro de timeout aqui
            return UART_LIVRE;

        case UART_ARGUMENTO:
            // argumento
            if (buffer_estado) {
                protocolo.arg = buffer_rx;
                buffer_estado = BUFFER_UART_VAZIO;
                tarefa = UART_VER_VALIDADE;
            } else {
                // sem resposta do mestre?
                if (timeout < TIMEOUT_TICK) { // ****** verificar esse valor
                    // incrementa erro por timeout
                    timeout++;
                } else {
                    // erro no barramento, mestre nao esta "legal!"
                    timeout = 0;
                    tarefa = 0;
                    // envia uma mensagem de erro para o mestre
                    if (_DEBUG == DEBUG_NADA) {
                        putch(UART_MSG_ERRO);
                    }
#ifdef _DEBUG_ROM
                    debug_print("*ERRO TIMEOUT");
#endif
                    return UART_ERRO;
                }
            }
            break;

        case UART_VER_VALIDADE:
            switch (protocolo.cmd) {
                case ADC:
                case DLED:
#ifdef _DEBUG_ROM
                case DEBUG:
#endif
                    // comando encontrado
                    protocolo.estado = 1;
                    tarefa = UART_COMANDO;
                    return UART_SUCESSO;

                default:
                    // nenhum comando encontrado, erro
                    protocolo.arg = 0;
                    protocolo.cmd = 0;
                    tarefa = 0;
#ifdef _DEBUG_ROM
                    //debug_print("*UART_ERRO");
#endif
                    if (_DEBUG == DEBUG_NADA) {
                        putch(UART_MSG_ERRO);
                    }
                    return UART_ERRO;

            }
        default:
            // limpa tudo
            protocolo.cmd = 0;
            protocolo.arg = 0;
            protocolo.estado = 0;
            tarefa = 0;
            break;
    }
    return UART_PROCESSANDO;
}

unsigned char protocolo_tarefas(void) {
    static unsigned char tarefa = 0;
    unsigned char retorno = 0;
    //    unsigned char canal = 0;
    //    unsigned char leitura_ad = 0;

    if (tarefa == 0) {
        // primeira tarefa e' verifica a comunicacao
        retorno = protocolo_uart();

        if (retorno == UART_SUCESSO) {
            // existe um comando e argumento validos
            tarefa = 1;
            debug_led(1, 0);
        }
        return retorno;

    } else if (tarefa == 1) {
        // existe um comando(valido) e argumento(nao validado)
        switch (protocolo.cmd) {
            case ADC:
                // leitura de um canal analogico
                retorno = adc_tarefa(protocolo.arg);
                if (adc_estado == 0) {
                    // apos a leitura e' verificado o estado da leitura
                    if (_DEBUG == DEBUG_NADA) {
                        // retorno o valor lido pelo adc no canal
                        putch(retorno);
                    }
                } else if (adc_estado == 1) {
                    // ******* NAO IMPLEMENTADO
                    // erro na leitura de um <canal>
                }

                break;
            case DLED:
                // comando referente ao led
                retorno = debug_led(protocolo.arg, 1);
                if(retorno == 0){
                    putch(0xFF);
                } else {
                    putch(UART_MSG_ERRO);
                }
                break;
#ifdef _DEBUG_ROM
            case DEBUG:
                // comando referente ao debug do microcontrolador
                switch (protocolo.arg) {
                    case DEBUG_NADA:
                        // debug desligado ou debug nada
                        _DEBUG = DEBUG_NADA;
                        printf("\r\nDEBUG_NADA");
                        break;
                    case DEBUG_TUDO:
                        // todo o tipo de debug ligado
                        _DEBUG = DEBUG_TUDO;

                        printf("\r\nDEBUG_TUDO");
                        break;

                    case DEBUG_LED:
                        // debug apenas pelo led
                        // ******* NAO IMPLEMENTADO
                        _DEBUG = DEBUG_LED;
                        printf("\r\nDEBUG_LED");
                        break;

                    case DEBUG_PRINT:
                        // debug apenas usando printf, cuidado todo o protocolo
                        // foi quebrado
                        _DEBUG = DEBUG_PRINT;
                        printf("\r\nDEBUG_PRINT");
                        break;

                    default:
                        // que argumento e' esse?!
                        debug_print("ARG??");
                        _DEBUG = DEBUG_NADA;
                }
                // debug ou nao e' mostrado o seu status
                //printf("\r\n_DEBUG:%c", _DEBUG);
                break;
#endif
        }

        // retorna ao inicio na proxima chamada da funcao
        tarefa = 0;
        debug_led(0, 0);
    }
    return UART_LIVRE;
}

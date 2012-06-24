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
 * -----------------------------------------------------------------------------
 *
 * Versoes:
 *
 * - 18/12/2011
 * - V2A.hex - Versao inicial, teste feita nas entradas analogicas, comunicacao
 * serial, e controle de erros. Otimizacacao para o modo DEBUG, ver debug.h.
 *
 */

#include <stdio.h>
#include "pic.h"
#include "uart.h"
#include "hardware.h"
#include "lista_cmd.h"
#include "adc.h"
#include "debug.h"
#include "protocolo.h"

#ifdef _16F616
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF);

void sys_init(void);
void interrupt isr(void);

void sys_init(void) {
    return;
}

void interrupt isr(void) {
    if (RAIF) {
        RAIF = 0;
        if (!RX && !buffer_estado) {
            // sem implementacao de um buffer maior
            buffer_rx = uart_rx();
            buffer_estado = BUFFER_UART_CHEIO;
        }
    } else {
        while (1) {
        }
    }
}

#endif

#ifdef _16F1503
__CONFIG(FOSC_INTOSC & WDTE_OFF & PWRTE_ON & MCLRE_OFF & CP_OFF);

void sys_init(void) {
    // Oscilador interno para 4MHz
    while (!OSCSTATbits.HFIOFR) {
    }
    OSCCON = 0x6A;
}

void interrupt isr(void) {
    if (INTCONbits.IOCIF) {
        if (IOCAFbits.IOCAF1) {
            // houve uma mudanca positivo para negativo no pino RX
            if (!buffer_estado) {
                buffer_rx = uart_rx();
                buffer_estado = BUFFER_UART_CHEIO;
            }
        }
        // limpa a flag do pino RX e a flag de interrupcao por mudanca de estado
        IOCAFbits.IOCAF1 = 0;
        INTCONbits.IOCIF = 0;
    } else {
        while (1) {
            // GAME OVER, erro no sistema.
            // Algo nao foi configurado ou tratado corretamente
        }
    }
}
#endif

int main(void) {
    unsigned char retorno = 0;
    unsigned int cont_sleep = 0;

    TRIS_LED = 0;
    LED = 1;        // led para debug ou sinalizacao

    buffer_estado = 0;
    buffer_rx = 0;

    sys_init();
    uart_init();
    adc_init();

    delay_ms(200);

    INTCONbits.GIE = 1;

    printf("I");

    LED = 0;

    while (1) {
        // inicia o tratamento das tarefas
        retorno = protocolo_tarefas();
#ifdef _DEBUG_ROM
        debug_uart(retorno);
#endif

        if (retorno == UART_LIVRE) {
            if (cont_sleep < 30000) {
                cont_sleep++;
            } else {
#ifdef _DEBUG_ROM
                debug_print("Entrando no modo sleep");
#endif
                LED = 1;
                cont_sleep = 0;
                // modo sleep implementado e testado com sucesso, sem
                // interferencia no funcionamento do software 18/12/211
                SLEEP();
                LED = 0;
                NOP();
            }
        }

    }
    return 0;
}

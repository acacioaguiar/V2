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
 * OBS: A versao para 16f616 so tem suporte par<uma> entrada analogica, mas
 * e' totalmente compativel com a comunicacao serial
 *
 */

#include <stdio.h>
#include "pic.h"
#include "hardware.h"
#include "adc.h"
#include "debug.h"
#include "lista_cmd.h"
#include "protocolo.h"

void adc_init(void) {
#ifdef _16F616
    TRISA = 0b11111110;

    ANSELbits.ANS2 = 1;
    ANSELbits.ANS4 = 1;
    ADCON0bits.ADON = 1;

    ADCON1 = 0b0001000; // fosc/8
#endif

#ifdef _16F1503
    TRISAbits.TRISA2 = 1;
    TRISAbits.TRISA4 = 1;

    ANSELAbits.ANSA2 = 1;
    ANSELAbits.ANSA4 = 1;

    TRISCbits.TRISC0 = 1;
    TRISCbits.TRISC1 = 1;
    TRISCbits.TRISC2 = 1;
    TRISCbits.TRISC3 = 1;

    ANSELCbits.ANSC0 = 1;
    ANSELCbits.ANSC1 = 1;
    ANSELCbits.ANSC2 = 1;
    ANSELCbits.ANSC3 = 1;

    ADCON0bits.ADON = 1;

    ADCON1 = 0b01000000; // fosc/4

#endif
}

static unsigned char adc_ler(unsigned char canal) {
    ADCON0 &= 0b11000011;
    ADCON0 |= (canal & 0b00111100);

    delay_us(ADC_TEMPO);
    ADCON0bits.GO = 1;

    while (ADCON0bits.GO);
    return ADRESH; // 8bits ADFM = 0
}

unsigned char adc_tarefa(unsigned char arg) {
    unsigned char canal;
    unsigned char retorno;

    adc_estado = 0;
#ifdef _DEBUG_ROM
    debug_print("canal:");
#endif
    switch (arg) {
// canais comentado, e' porque nao estao disponiveis
//
//        case CANAL0:
//            debug_print("0");
//            canal = ADC_CANAL_0;
//            break;
//        case CANAL1:
//            debug_print("1");
//            canal = ADC_CANAL_1;
//            break;
        case CANAL2:
#ifdef _DEBUG_ROM
            debug_print("2");
#endif
            canal = ADC_CANAL_2;
            break;
        case CANAL3:
#ifdef _DEBUG_ROM
            debug_print("3");
#endif
            canal = ADC_CANAL_3;
            break;
        case CANAL4:
#ifdef _DEBUG_ROM
            debug_print("4");
#endif
            canal = ADC_CANAL_4;
            break;
        case CANAL5:
#ifdef _DEBUG_ROM
            debug_print("5");
#endif
            canal = ADC_CANAL_5;
            break;
        case TEMP_NUCLEO:
#ifdef _DEBUG_ROM
            debug_print("nucleo");
#endif
            canal = TNUCLEO;
            break;

        default:
            // erro
            adc_estado = 1;
#ifdef _DEBUG_ROM
            debug_print("\r\nadc indisponivel");
#endif
            break;
    }

    if (adc_estado == 0) {
        retorno = adc_ler(canal);
    } else {
        retorno = 0xFF;
    }
#ifdef _DEBUG_ROM
    if (_DEBUG == DEBUG_PRINT) {
        printf("\r\nADC valor %d", retorno);
    }
#endif
    return retorno;
}

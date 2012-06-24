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

#ifndef _ADC_H
#define _AD_H

#define ADC_CANAL_0 0b00000000
#define ADC_CANAL_1 0b00000100
#define ADC_CANAL_2 0b00001000
#define ADC_CANAL_3 0b00001100
#define ADC_CANAL_4 0b00010000
#define ADC_CANAL_5 0b00010100
#define TNUCLEO     0b01110100

volatile unsigned char adc_estado = 0;

void adc_init(void);
static unsigned char adc_ler(unsigned char canal);
unsigned char adc_tarefa(unsigned char arg);

#endif
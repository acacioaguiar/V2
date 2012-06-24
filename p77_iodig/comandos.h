/*
 * comandos.h
 *
 * ID de todos os comandos disponiveis
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#ifndef _COMANDOS_H
#define _COMANDOS_H

/* nenhum comando */
#define CMD_NENHUM                 0xFF


/*******************************************************************************
 * base do comando lcd
 */
#define CMD_TEXTO_LCD_L1           'a'  /* mostra um texto na linha 1 do lcd */
#define CMD_TEXTO_LCD_L2           'b'  /* mostra um texto na linha 2 do lcd */
#define CMD_TEXTO_LCD_L3           'c'  /* mostra um texto na linha 3 do lcd */
#define CMD_TEXTO_LCD_L4           'd'  /* mostra um texto na linha 4 do lcd */
#define CMD_LIMPA_LCD              'e'

#define ARG_FIM_LINHA_LCD          'f'
#define CMD_FIM_LINHA_LCD          'f'

/*******************************************************************************
 * base do comando debug
 */
#define CMD_DEBUG_LIGADOS          'h'
#define CMD_DEBUG_DESLIGADOS       'i'
#define CMD_DEBUG_DESLIGA_PRINTF   'j'


/*******************************************************************************
 * base dos comandos dos reles
 */
#define CMD_BASE_RELES             'r'//0x30
/* argumentos */
#define ARG_LIGADO                 'l'//0x01
#define ARG_DESLIGADO              'd'//0x02


#define CMD_P1503_COMUNICACAO     0x01
#define ARG_P1503_COMUNICACAO     0x00
#define RET_P1503_FUNCIONANDO     0x01
#define RET_P1503_PROBLEMA        0x02



#define CMD_RELE_BLOCO_1    10
#define CMD_RELE_BLOCO_2    11


#define CMD_ANALOGICO  30
#define ARG_CANAL0     0
#define ARG_CANAL1     1
#define ARG_CANAL2     2
#define ARG_CANAL3     3


////////////////////////////////////////////////////////////////////////////////
// apenas para o p16f1503

#define CMD_P1503_ANALOGICO  'a'
#define P1503_CANAL0         '0'
#define P1503_CANAL1         '1'
#define P1503_CANAL2         '2'
#define P1503_CANAL3         '3'




#endif

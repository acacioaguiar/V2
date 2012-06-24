/*
 * protocolo.c
 *
 * Rotinas de tratamento e processamento usando a comunicacao uart(hardware e software)
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include <stdio.h>
#include <pic.h>
#include "uart.h"
#include "comandos.h"
#include "protocolo.h"
#include "lcd.h"
#include "debug.h"
#include "hardware.h"
#include "p1503.h"
#include "reles.h"


/*
 * Prototipos privados
 */
static void protocolo_ver_cmd(void);
static void protocolo_lcd(unsigned char linha);


#define CONTEXTO   (protocolo.contexto)
#define CMD        (protocolo.cmd)
#define ARG        (protocolo.arg)


volatile struct{
    char texto[17];
    unsigned char i;
    unsigned char ulinha;
}buffer;


/*
 * Funcionamento:
 * Primeiro dado deve ser o "comando"
 * Segundo dado deve ser o "argumento"
 * Caso seja necessario mais de uma argumento para completar o comando
 * e' necessario enviar novamento o comando.
 *
 * ---> uart 1
 * | comando | argumento |
 *
 */
void protocolo_cmd(void){
    static unsigned char a = 0;

    switch(CONTEXTO){
        /* comando */
        case 0:
            /* So se tiver um dado */
            if(!UART_NOVO_DADO) return;

            led_debug_ligado();


            CMD = UART_BUFFER;
            UART_PROC_OK(); /* garante que o meu dado foi utilizado */
            
            if(CMD == CMD_NENHUM){
                CONTEXTO = 0;
                return;
            }
            
            CONTEXTO++;

#ifdef _DEBUG_
            if(DEBUG_PRINTF){
                printf("\r\ncmd:");
                printf("\r\n%c = 0x%x", CMD, CMD);
            }
#endif

            break;

        /* argumento */
        case 1:
            if(!UART_NOVO_DADO) return;
            
            ARG = UART_BUFFER;
            UART_PROC_OK();

            if(ARG == CMD_NENHUM){
                CONTEXTO = 0;
                return;
            }

            CONTEXTO++;

#ifdef _DEBUG_
            if(DEBUG_PRINTF){
                printf("\r\narg:");
                printf("\r\n%c = 0x%02x", ARG, ARG);
            }
#endif

            //break;

        /* processa o comando e argumento */
        case 2:

#ifdef _DEBUG_
            if(DEBUG_PRINTF){
                printf("\r\nvendo comando");
            }
#endif

            /* verifica qual acao para cada comando */
            protocolo_ver_cmd();
            /* retorna */
            CONTEXTO = 0;

            led_debug_desligado();

            break;
    }
}


/*
 * Analisa qual comando deve ser processado
 */
static void protocolo_ver_cmd(void){
    switch(CMD){

#ifdef HABILITA_PROTOCOLO_LCD

        /* mostra um texto na linha 1 do lcd */
        case CMD_TEXTO_LCD_L1:
            buffer.ulinha = LCD_LINHA1;
            protocolo_lcd(LCD_LINHA1);
            break;

        /* mostra um texto na linha 2 do lcd */
        case CMD_TEXTO_LCD_L2:
            buffer.ulinha = LCD_LINHA2;
            protocolo_lcd(LCD_LINHA2);
            break;

        /* mostra um texto na linha 3 do lcd */
        case CMD_TEXTO_LCD_L3:
            buffer.ulinha = LCD_LINHA3;
            protocolo_lcd(LCD_LINHA3);
            break;

        /* mostra um texto na linha 4 do lcd */
        case CMD_TEXTO_LCD_L4:
            buffer.ulinha = LCD_LINHA4;
            protocolo_lcd(LCD_LINHA4);
            break;

        case CMD_LIMPA_LCD:
            debug_limpa_lcd_todo();
            break;

        case CMD_FIM_LINHA_LCD:
            /* ultrapassa o limite */
            buffer.i = sizeof(buffer.texto) + 1;
            protocolo_lcd(buffer.ulinha);
            break;

#endif

        case CMD_P1503_COMUNICACAO:
            /*
             * Retorna o estado da comunicacao com o p1503
             * 0 = erro
             * 1 = funcionando
             * 
             * OBS:
             * O buffer pode ser interceptado apenas no arg
             * ja que o cmd ja foi enviado
             */
            UART_BUFFER = p1503_barramento();
            break;

        case CMD_ANALOGICO:
            p1503_analogico((unsigned char)ARG);
            break;

        case CMD_RELE_BLOCO_1:
        case CMD_RELE_BLOCO_2:            
            reles_cmd_arg((unsigned char)CMD, (unsigned char)ARG);
            break;


#ifdef _DEBUG_
        case CMD_DEBUG_LIGADOS:
            DEBUG_LIGA_TODOS();
            break;

        case CMD_DEBUG_DESLIGADOS:
            DEBUG_DESLIGA_TODOS();
            break;

        case CMD_DEBUG_DESLIGA_PRINTF:
            debug_lcd((char *)"printf desligado", LCD_LINHA3, DEBUG_PROTOCOLO);
            DEBUG_PRINTF_DESLIGADO();
            break;
#endif
            
        default:
            /* nehum comando valido */

#ifdef _DEBUG_
            if(DEBUG_PRINTF){
                printf("\r\nnenhum comando valido encontrado");
            }

            debug_lcd((char *)"erro no cmd", LCD_LINHA3, DEBUG_PROTOCOLO);
#endif
            
            buffer.i = 0;
            break;
    } // switch(cmd)
}


/*
 * Mostra uma determinada string no lcd, mas antes e' necessario preencher o buffer
 */
static void protocolo_lcd(unsigned char linha){
#ifdef _DEBUG_
    /* desliga o debug */
    DEBUG_DESLIGA_TODOS();
#endif
    if(DEBUG_RELE) return;

    if((buffer.i >= sizeof(buffer.texto) - 1)){

#ifdef _DEBUG_
        if(DEBUG_PRINTF){ printf("\r\nfim do cmd lcd"); }
#endif
        debug_limpa_lcd(linha);
        lcd_string((char *)buffer.texto, linha);
        buffer.i = 0;
    } else {

#ifdef _DEBUG_
        if(DEBUG_PRINTF){ printf("\r\ncopiando p/ lcd = %c", ARG); }
#endif
        /* copia o caractere para o buffer */
        buffer.texto[buffer.i++] = ARG;
        buffer.texto[buffer.i] = '\0';
    }
}

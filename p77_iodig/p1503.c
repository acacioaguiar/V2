/*
 * p1503.c
 *
 * Integra o p16f1503 ao sistema, como se fosse parte do p16f77
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include <pic.h>
#include <stdio.h>
#include "hardware.h"
#include "uart.h"
#include "protocolo.h"
#include "debug.h"
#include "p1503.h"
#include "comandos.h"
#include "lcd.h"


volatile struct{
    unsigned char cmd;          /* comando para o p1503 */
    unsigned char arg;          /* argumento */
    unsigned char ret;          /* retorno do p1503 */
    unsigned char est;          /* 0 = livre, 1 = enviando, 2 = fim(nao acessivel) */
    unsigned char bar : 1;      /* 0 = erro no p1503, 1 = p1503 funcionando */
}p1503;


void p1503_init(void){
    p1503.cmd = 0;
    p1503.arg = 0;
    p1503.est = 0;
    p1503.bar = 1; /* o bar so é seta uma unica vez */
    p1503.ret = 0;

    /* por seguranca desabilita o debug do p1503 */
    uart_tx_soft('d');
    led_debug_desligado();
    delay_ms(200);

    uart_tx_soft('0');
    led_debug_ligado();
    delay_ms(200);

    UART_SOFT_LIMPA();

    /* testa a comunicacao */
    p1503_cmd_arg('a', '2');
    p1503_envia_pacote();
}


void p1503_loop(void){
    static unsigned char timeout = 0;

    /* so envia se nao ocorreu nenhum erro anterior */
    if(p1503.bar == 1){
        switch(p1503.est){
            case 0:
                /* nao faz nada */
                break;

            case 1:
                uart_tx_soft(p1503.cmd);
                timeout = 0;
                p1503.est++;
                break;

            case 2:
                if(UART_SOFT_ESTADO){
                    if(UART_SOFT_BUFFER == p1503.cmd){
                        p1503.est++;
                    } else {
                        p1503.est = 5;
                        /*
                         * Falha na comunicacao
                         * desabilita a comunicacao do p16f77 com o p16f1503
                         */
                        //p1503.bar = 0;
                    }
                    UART_SOFT_LIMPA();
                } else if(timeout++ > 200){
                    p1503.est = 5;
                }
                break;

            case 3:
                uart_tx_soft(p1503.arg);
                timeout = 0;
                p1503.est++;
                break;

            case 4:
                if(UART_SOFT_ESTADO){
                    p1503.ret = UART_SOFT_BUFFER;
                    p1503.est = 0;
                    UART_SOFT_LIMPA();
                } else if(timeout++ > 200){
                    p1503.est = 5;
                }
                break;

            case 5:
                p1503.bar = 0;
                p1503.est = 0;
                p1503.ret = 0;
                timeout = 0;

                lcd_string((char *)"erro no p1503", LCD_LINHA1);

                delay_ms(500);

                break;

            default:
                p1503.est = 0;
                p1503.bar = 0;
                break;
        }
    }
}


/*
 * Altera os valores do comando(cmd) e argumento(arg)
 */
void p1503_cmd_arg(unsigned char cmd, unsigned char arg){
    p1503.cmd = cmd;
    p1503.arg = arg;
}


/*
 * Inicia o envio do pacote
 */
void p1503_envia_pacote(void){
    p1503.est = 1;
}


/*
 * Estado do p1503 no barramento
 * 0 = morto
 * 1 = vivo
 */
unsigned char p1503_barramento(void){
    return (unsigned char)p1503.bar;
}


/*
 * Estado da comunicacao
 * 0 = livre
 * 1 = ocupado
 * 2 = ocupado
 * ...
 */
unsigned char p1503_estado(void){
    return (unsigned char)p1503.est;
}


/*
 * Pega o valor de uma entrada analogica
 */
unsigned char p1503_analogico(unsigned char canal){
    static unsigned char contexto = 0;

    switch(contexto){
        case 0:
            p1503_cmd_arg(CMD_P1503_ANALOGICO, canal + P1503_CANAL0);
            contexto++;
            break;
        case 1:
            contexto = 0;
            return p1503.ret;
    }
    return 0;
}
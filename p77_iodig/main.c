/*
 * main.c
 *
 * Loop principal do sistema
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include <pic.h>
#include <stdio.h>
#include "hardware.h"
#include "lcd.h"
#include "uart.h"
#include "debug.h"
#include "protocolo.h"
#include "tempo.h"
#include "p1503.h"
#include "reles.h"
#include "homem.h"
#include "main.h"

/*
 * Para o p16f77 e o p16f877 temos:
 *
 * Oscilador externo : 20 Mhz
 * Code protection : Total
 */
#ifdef __PIC16F877_H
    /* configuracoes do p16f877 */
    __CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & CP_All & BOREN_ON);
#else
    /* configuracoes do p16f77 */
    __CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & CP_ON & BOREN_ON);
#endif

 /*
 * Habilita as interrupcoes
 */
#define main_init_isr() {                               \
                            PEIE = 1; /* perifericos */ \
                            GIE = 1; /* chave geral */  \
                        }


/*
 * Prototipos privados
 */
static void main_msg_inicial(void);


/*
 * Vetor das interrupcoes
 */
void interrupt _isr(void){
    /* comunicacao serial via software */
    uart_soft_interrupcao();

    /* comunicacao serial via hardware */
    uart_interrupcao();

    /* timer 2, base de tempo */
    //tempo_interrupcao();
}


/*
 * MAIN
 */
void main(void){
    delay_ms(50);

    /* led para debug */
    led_debug_init();

    led_debug_ligado();

#ifdef _DEBUG_
    /* inicia o debug */
    debug_init();
#endif

    /* inicia o protocolo */
    protocolo_init();

    /* timer 2 para o tempo */
    //tempo_init();

    reles_init();

    /* inicia a comunicacao serial*/
    uart_init();

    /* inicia o lcd */
    lcd_init();

    /* habilita as interrupcoes*/
    main_init_isr();
    
    /* mensagem de boas vindas no lcd */
    main_msg_inicial();

    /* inicia o p1503 */
    p1503_init();

    led_debug_desligado();

    delay_ms(500);
    
    /* LOOP PRINCIPAL */
    while(1){
        if(s1_estado() == 0){
            led_debug_desligado();
            homem_animacao();
        }
        
        p1503_loop();
        /* processa e executa os comandos com os seus argumentos */
        protocolo_cmd();
        /* envia o fim para o barramento, se tiver dados */
        uart_hard_fim();
    }
}


/*
 * Mensagem de boas vindas
 */
static void main_msg_inicial(void){
    cria_rosto(15,0);
    lcd_string((char *)"Projeto V-2     ", LCD_LINHA3);
    lcd_string((char *)"18-jan-2012     ", LCD_LINHA4);
}


void cria_rosto(unsigned char coluna, unsigned char linha){
    lcd_novo_char(0,rosto);
    lcd_cursor_ddram(coluna, linha);
    lcd_putch(0);
}

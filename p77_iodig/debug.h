/*
 * debug.c
 *
 * Debug do sistema
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#ifndef _DEBUG_H
#define _DEBUG_H

#include "hardware.h"


/* habilita as funcoes de debug */
#define _DEBUG_


/* debug pelo led */
#define led_debug               LED
#define led_debug_init()        (LED_TRIS = 0)
#define led_debug_ligado()      (LED = 0)
#define led_debug_desligado()   (LED = 1)
#define led_debug_muda()        (led_debug = ~led_debug)


#define s1_init() BOTAO_TRIS
#define s1_estado() BOTAO_PORT


/* codigo de debug para ser compilado caso o debug seja necessario */
#ifdef _DEBUG_


volatile struct{
    unsigned uart      : 1; /* debug nas rotinas uart */
    unsigned lcd       : 1; /* debug nas rotinas do lcd */
    unsigned main      : 1; /* debug no loop principal */
    unsigned protocolo : 1; /* debug no protocolo */
    unsigned print     : 1; /* debug pelo printf */
    unsigned rele      : 1; /* debug do reles.c */
    char buf[17];
}debug;


#define DEBUG_LIGA_TODOS()       {DEBUG_UART_LIGADO(); \
                                  DEBUG_LCD_LIGADO();  \
                                  DEBUG_MAIN_LIGADO(); \
                                  DEBUG_PROTOCOLO_LIGADO(); \
                                  DEBUG_PRINTF_LIGADO(); \
                                  DEBUG_RELE_LIGADO(); \
                                 }


#define DEBUG_DESLIGA_TODOS()    {DEBUG_UART_DESLIGADO(); \
                                  DEBUG_LCD_DESLIGADO();  \
                                  DEBUG_MAIN_DESLIGADO(); \
                                  DEBUG_PROTOCOLO_DESLIGADO(); \
                                  DEBUG_RELE_DESLIGADO(); \
                                 }


#define DEBUG_UART                   (debug.uart)
#define DEBUG_UART_LIGADO()          (debug.uart = 1)
#define DEBUG_UART_DESLIGADO()       (debug.uart = 0)


#define DEBUG_LCD                    (debug.lcd)
#define DEBUG_LCD_LIGADO()           (debug.lcd = 1)
#define DEBUG_LCD_DESLIGADO()        (debug.lcd = 0)


#define DEBUG_MAIN                   (debug.main)
#define DEBUG_MAIN_LIGADO()          (debug.main = 1)
#define DEBUG_MAIN_DESLIGADO()       (debug.main = 0)


#define DEBUG_PROTOCOLO              (debug.protocolo)
#define DEBUG_PROTOCOLO_LIGADO()     (debug.protocolo = 1)
#define DEBUG_PROTOCOLO_DESLIGADO()  (debug.protocolo = 0)

#define DEBUG_PRINTF                 (debug.print)
#define DEBUG_PRINTF_LIGADO()        (debug.print = 1)
#define DEBUG_PRINTF_DESLIGADO()     (debug.print = 0)

#define DEBUG_RELE                   (debug.rele)
#define DEBUG_RELE_LIGADO()          (debug.rele = 1)
#define DEBUG_RELE_DESLIGADO()       (debug.rele = 0)


/*
 * Prototipo das funcoes
 */
void debug_lcd(char *s, unsigned char pos, unsigned bug);
void debug_lcd_len(char *s, unsigned char pos, unsigned char len, unsigned bug);
void debug_init(void);
void debug_limpa_lcd_todo(void);

#endif

/* limpa uma linha do lcd */
#define debug_limpa_lcd(pos) lcd_string((char *)"                ", pos)

#define debug_limpa_lcd_todo()  { debug_limpa_lcd(LCD_LINHA1); \
                                  debug_limpa_lcd(LCD_LINHA2); \
                                  debug_limpa_lcd(LCD_LINHA3); \
                                  debug_limpa_lcd(LCD_LINHA4); \
                                }


#endif

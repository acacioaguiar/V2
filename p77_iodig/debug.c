/*
 * debug.c
 *
 * Debug do sistema
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include <stdio.h>
#include "lcd.h"
#include "debug.h"


#ifdef _DEBUG_


/*
 * Limpa a linha usada antes de mostra a string
 */
void debug_lcd(char *s, unsigned char pos, unsigned bug){
    if(bug){
        debug_limpa_lcd(pos);
        lcd_string(s, pos);
    }
}


/*
 * Inclui o tamanho da string
 */
void debug_lcd_len(char *s, unsigned char pos, unsigned char len, unsigned bug){
    if(bug){
        debug_limpa_lcd(pos);
        lcd_string_len(s, pos, len);
    }
}


void debug_init(void){
    //DEBUG_LIGA_TODOS();
    DEBUG_DESLIGA_TODOS();
}


#endif

#include "uart_com.h"
#include "comandos.h"
#include "lcd_ext.h"

extern LCD_EXT lcd_ext;

void tela_ies(void){
    lcd_ext_msg("entrada:", LINHA1);
    lcd_ext_msg("nao implementado", LINHA2);
    lcd_ext_msg("saida:", LINHA3);
    lcd_ext_msg("nao implementado", LINHA4);
}

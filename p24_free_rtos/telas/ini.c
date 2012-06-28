#include <stdio.h>
#include "lcd_ext.h"

void tela_ini(void){
    lcd_ua_msg("iniciando...", LINHA1);
    lcd_ua_msg(" ", LINHA2);
    lcd_ua_msg(" ", LINHA3);
    lcd_ua_msg(" ", LINHA4);
}

#include <stdio.h>

#include "uart_com.h"
#include "comandos.h"
#include "lcd_ext.h"

#include "TCPIP Stack/TCPIP.h"

#include "util.h"

extern LCD_EXT lcd_ext;
extern APP_CONFIG AppConfig;

void tela_tip(void){
    char buf[17];
    
    lcd_ext_msg("ip:", LINHA1);

    util_string_ip(AppConfig.MyIPAddr, buf);
    lcd_ext_msg(buf, LINHA2);
    
    lcd_ext_msg("gateway:", LINHA3);

    util_string_ip(AppConfig.MyGateway, buf);
    lcd_ext_msg(buf, LINHA4);
}

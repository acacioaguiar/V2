#include <stdio.h>
#include "lcd_ext.h"
#include "TCPIP Stack/TCPIP.h"
#include "util.h"

extern APP_CONFIG AppConfig;

void tela_tip(void){
    char buf[17];

    lcd_ua_msg("ip:", LINHA1);

    util_string_ip(AppConfig.MyIPAddr, buf);
    lcd_ua_msg(buf, LINHA2);

    lcd_ua_msg("gateway:", LINHA3);

    util_string_ip(AppConfig.MyGateway, buf);
    lcd_ua_msg(buf, LINHA4);
}

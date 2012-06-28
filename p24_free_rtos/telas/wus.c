#include "lcd_ext.h"
#include "tempo.h"

#include "TCPIP Stack/TCPIP.h"
#include "USB/usb.h"

void tela_wus(void){
    char buf[17];

    tempo_lcd(buf);
    lcd_ua_msg(buf, LINHA1);

    if(1){
        lcd_ua_msg("rede wifi ok", LINHA2);
    } else {
        lcd_ua_msg("rede wifi caiu", LINHA2);
    }

    if(USBDeviceState == CONFIGURED_STATE){
        lcd_ua_msg("usb funcionando", LINHA3);
    } else {
        lcd_ua_msg("usb falhou", LINHA3);
    }

    lcd_ua_msg("kernel ok", LINHA4);
}

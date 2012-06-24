#include "uart_com.h"
#include "comandos.h"
#include "lcd_ext.h"
#include "tempo.h"

#include "TCPIP Stack/TCPIP.h"
#include "USB/usb.h"

extern LCD_EXT lcd_ext;

void tela_wus(void){
    char buf[17];

    tempo_lcd(buf);
    lcd_ext_msg(buf, LINHA1);

    if(1){
        lcd_ext_msg("rede wifi ok", LINHA2);
    } else {
        lcd_ext_msg("rede wifi caiu", LINHA2);
    }

    if(USBDeviceState == CONFIGURED_STATE){
        lcd_ext_msg("usb funcionando", LINHA3);
    } else {
        lcd_ext_msg("usb falhou", LINHA3);
    }

    lcd_ext_msg("kernel ok", LINHA4);
}

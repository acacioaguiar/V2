#include "HardwareProfile.h"
#include "comandos.h"
#include "p1503_com.h"

struct{
    unsigned char cmd;
    unsigned char arg;
    unsigned char ret;
    unsigned char est;
    unsigned char bar : 1;
}p1503;


void p1503_init(void){
    p1503.arg = 0;
    p1503.bar = 0;
    p1503.cmd = 0;
    p1503.est = 0;
    p1503.ret = 0;
}

unsigned char p1503_loop(void){
    switch(p1503.est){
        case 0: 
            return 1;
            
        case 1:
//            uart_p77_cmd_arg(p1503.cmd, p1503.arg);
//            uart_p77_envia_pacote();
            p1503.est++;
            break;

        case 2:
//            p1503.ret = uart_p77_retorno();
            p1503.est = 0;
            printf("\r\nnovo dado p1503 : 0x%x", p1503.ret);
            return 1;
    }
    return 0;
}


void p1503_cmd_arg(unsigned char cmd, unsigned char arg){
    p1503.cmd = cmd;
    p1503.arg = arg;
}

void p1503_envia_pacote(void){
    p1503.est = 1;
}

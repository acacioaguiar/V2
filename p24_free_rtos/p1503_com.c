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
    return 0;
}


void p1503_cmd_arg(unsigned char cmd, unsigned char arg){
    p1503.cmd = cmd;
    p1503.arg = arg;
}

void p1503_envia_pacote(void){
    p1503.est = 1;
}

/*
 * reles.c
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include <pic.h>
#include <stdio.h>
#include "hardware.h"
#include "comandos.h"
#include "protocolo.h"
#include "lcd.h"


void reles_init(void){
    ADCON1 = 0x06;
    PORT_RELES_1 = 0;
    PORT_RELES_2 = 0;
    TRIS_RELES_1 = 0x00;
    TRIS_RELES_2 = 0x00;
}



/*
 * Processa o comandos para os reles
 * 
 * ----------------------------------------
 * |       cmd            |     arg       |
 * ----------------------------------------
 * | comando rele bloco 1 | reles estados |
 * ----------------------------------------
 * | comando rele bloco 2 | reles estados |
 * ----------------------------------------
 *
 * estados:
 * --------------------
 * | r1 | r2 | r3 ... |
 * --------------------
 * | 0  | 1  | 0 ...  |
 * --------------------
 *
 * 0 = desligado
 * 1 = ligado
 *
 * r1 = rele 1
 * r2 = rele 2
 * ...
 * --------------------------------
 * | bloco 1                      |
 * --------------------------------
 * | rele 1 | rele 2 | rele 3 ... |
 * --------------------------------
 *
 * cada bloco tem no maximo 8 reles, contados na ordem crescente
 * 
 */
void reles_cmd_arg(unsigned char cmd, unsigned char arg){
    if(cmd == CMD_RELE_BLOCO_1){ PORTD = arg; }
}

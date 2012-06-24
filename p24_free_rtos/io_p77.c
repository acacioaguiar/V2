/*
 * io_p77.c
 *
 * Controle dos dispositivos de entrada e saida.
 * Reles e entradas digitais.
 *
 * OBS: As entradas analogicas esta separadas, em p1503_com.c
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include "uart_com.h"
#include "comandos.h"
#include "io_p77.h"

IO_P77 io_p77;

/*----------------------------------------------------------------------------*/

void io_p77_init(void){
    io_p77.bloco1 = 0;
    io_p77.bloco2 = 0;
}

/*
 * Loop principal das entradas digitais e saidas
 * Atualiza os estados das saidas e entradas
 *
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
unsigned char io_p77_loop(void){
    static unsigned char posicao = 0;

    if(posicao == 0){
        uart_p77_cmd_arg(CMD_RELE_BLOCO_1, io_p77.bloco1);
        uart_p77_envia_pacote();
        posicao++;
        return 0;
    } else {
        uart_p77_cmd_arg(CMD_RELE_BLOCO_2, io_p77.bloco2);
        uart_p77_envia_pacote();
        posicao = 0;
        return 1;
    }
    
}

/*----------------------------------------------------------------------------*/

void io_p77_liga_rele(unsigned int rele){
    if(rele < 8){
        io_p77.bloco1 |= 1 << rele;
    } else {
        io_p77.bloco2 |= 1 << (rele-128);
    }
}

/*----------------------------------------------------------------------------*/

void io_p77_desliga_rele(unsigned int rele){
    if(rele < 8){
        io_p77.bloco1 &= ~(1 << rele);
    } else {
        io_p77.bloco2 &= ~(1 << (rele - 128));
    }
}

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


#ifndef _IO_P77_H
#define _IO_P77_H

/*----------------------------------------------------------------------------*/

#define RELE_1 0
#define RELE_2 1
#define RELE_3 2
#define RELE_4 3
#define RELE_5 4
#define RELE_6 5
#define RELE_7 6
#define RELE_8 7

/*----------------------------------------------------------------------------*/

typedef struct{
    union{
        struct{
            unsigned rele1 : 1;
            unsigned rele2 : 1;
            unsigned rele3 : 1;
            unsigned rele4 : 1;
            unsigned rele5 : 1;
            unsigned rele6 : 1;
            unsigned rele7 : 1;
            unsigned rele8 : 1;
        };
        unsigned char bloco1;
    };
    union{
        struct{
            unsigned rele9  : 1;
            unsigned rele10 : 1;
        };
        unsigned char bloco2;
    };
}IO_P77;

/*----------------------------------------------------------------------------*/

void io_p77_init(void);
unsigned char io_p77_loop(void);
void io_p77_liga_rele(unsigned int rele);
void io_p77_desliga_rele(unsigned int rele);

#endif

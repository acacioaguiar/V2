#ifndef _TEMPO_H
#define _TEMPO_H


volatile near unsigned char tmr2_cont = 0;
volatile near unsigned char segundo = 0;


#define tempo_init() {                \
            PIE1	= 0b00000010; \
            INTCON	= 0b01000000; \
            T2CON	= 0b01001110; \
            PR2		= 0b11111001; \
        }

#define tempo_interrupcao() {           \
            if(TMR2IF){       \
                if(++tmr2_cont == 25){  \
                    tmr2_cont = 0;      \
                    segundo++;          \
                }                       \
                TMR2IF = 0;             \
            }                           \
        }

#endif

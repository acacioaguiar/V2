#include "HardwareProfile.h"
#include "board.h"

/*
 * Erro de enderecamento
 */
void _ISR __attribute__((__no_auto_psv__)) _AddressError(void) {
    /* Na versao 3.30c do c30 ocorre um erro de enderecamento.
     * No momento esse erro nao ocorre na versao 3.24
     * 15-01-2012 - 06:32
     * Felipe Bandeira
     */
    LED4_1();
    while(1){}
}


/*
 * Erro de stack
 */
void _ISR __attribute__((__no_auto_psv__)) _StackError(void) {
    LED3_1();
    while(1){}
}


/*
 * Erro no oscilador
 */
void _ISR __attribute__((__no_auto_psv__)) _OscillatorFail(void) {
    LED2_1();
    while(1){}
}


/*
 * Erro na matematica, "x/0" :) ?
 */
void _ISR __attribute__((__no_auto_psv__)) _MathError(void) {
    LED1_1();
    while(1){}
}

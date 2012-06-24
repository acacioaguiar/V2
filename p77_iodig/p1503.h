/*
 * p1503.c
 *
 * Integra o p16f1503 ao sistema, como se fosse parte do p16f77
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#ifndef _COM_INT_H
#define _COM_INT_H


void p1503_init(void);
void p1503_loop(void);
void p1503_cmd_arg(unsigned char cmd, unsigned char arg);
void p1503_envia_pacote(void);
unsigned char p1503_barramento(void);
unsigned char p1503_estado(void);
unsigned char p1503_analogico(unsigned char canal);

#endif

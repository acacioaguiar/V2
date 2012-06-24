#ifndef _P1503_COM_H
#define _P1503_COM_H



void p1503_init(void);
unsigned char p1503_loop(void);
void p1503_cmd_arg(unsigned char cmd, unsigned char arg);
void p1503_envia_pacote(void);

#endif

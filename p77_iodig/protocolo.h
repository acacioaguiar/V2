/*
 * protocolo.h
 *
 * Rotinas de tratamento e procesamento usando a comunicacao uart(hardware e software)
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#ifndef _PROTOCOLO_H
#define _PROTOCOLO_H


#define HABILITA_PROTOCOLO_LCD


volatile struct{
    unsigned contexto : 2;
    char cmd;
    char arg;
}protocolo;


#define protocolo_init()     (protocolo.contexto = 0)


/*
 * Prototipos globais
 */
void protocolo_cmd(void);

#endif

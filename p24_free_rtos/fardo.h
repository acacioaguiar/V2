/* 
 * File:   fardo.h
 * Author: Felipe Bandeira
 *
 * Created on June 15, 2012, 11:36 AM
 */

#ifndef FARDO_H
#define	FARDO_H

#include "free_rtos/portable/MPLAB/PIC24_dsPIC/portmacro.h"

#define STACK_MIN_SIZE_USB              (configMINIMAL_STACK_SIZE * 2)
#define FARDO_USB_PRIORIDADE            (tskIDLE_PRIORITY + (unsigned portCHAR)2)

#define STACK_MIN_SIZE_TCPIP            (configMINIMAL_STACK_SIZE * 4)
#define STACK_MIN_SIZE_CONSOLE          (configMINIMAL_STACK_SIZE * 5)
#define FARDO_TCPIP_PRIORIDADE          (tskIDLE_PRIORITY + (unsigned portCHAR)4)
#define FARDO_CONSOLE_PRIORIDADE        (tskIDLE_PRIORITY + (unsigned portCHAR)0)

#define STACK_MIN_SIZE_P77              (configMINIMAL_STACK_SIZE * 2)
#define FARDO_P77_PRIORIDADE            (tskIDLE_PRIORITY + (unsigned portCHAR)3)

void fardo_inicia(void);
int estado_inicilizacao(void);
void marca_inicializacao(void);

#endif	/* FARDO_H */


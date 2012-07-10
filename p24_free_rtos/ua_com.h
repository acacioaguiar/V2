/* 
 * File:   ua_com.h
 * Author: Felipe Bandeira
 *
 * Created on June 27, 2012, 1:42 PM
 */

#ifndef UA_COM_H
#define	UA_COM_H

#define BAUD_COM 19200

/* numero maximo de queue disponibilizados pela ua */
#define QUA_QUEUE_UA 4

#define SIZE_STACK_UA_COM (configMINIMAL_STACK_SIZE * 3)
#define PRIORIDADE_UA_COM (tskIDLE_PRIORITY + 1)

void ua_loop(void *pvParameters);
void ua_msg_2byte(char cmd, char arg);
void ua_msg_vector(char *cmd, char *arg, int l);
void ua_com_init(void);

#endif	/* UA_COM_H */


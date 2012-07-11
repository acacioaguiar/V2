/* 
 * File:   tcp_com.h
 * Author: Felipe Bandeira
 *
 * Created on June 19, 2012, 10:59 AM
 */

#ifndef TCP_COM_H
#define	TCP_COM_H

#define TCP_STACK               (configMINIMAL_STACK_SIZE * 4)
#define TCP_PRIORIDADE          (tskIDLE_PRIORITY + (unsigned portCHAR)  1  )
#define TCP_CONSOLE_STACK       (configMINIMAL_STACK_SIZE * 5)
#define TCP_CONSOLE_PRIORIDADE  (tskIDLE_PRIORITY + (unsigned portCHAR)  0  )

void tcp_init(void);
int tcpip_desabilita_httpserver(void);

#endif	/* TCP_COM_H */

/* 
 * File:   v2_main.h
 * Author: Felipe Bandeira
 *
 * Created on July 11, 2012, 4:34 PM
 */

#ifndef V2_MAIN_H
#define	V2_MAIN_H

#define V2_STACK               (configMINIMAL_STACK_SIZE * 2)
#define V2_PRIORIDADE          (tskIDLE_PRIORITY + (unsigned portCHAR)0)

void v2_main_init(void);

#endif	/* V2_MAIN_H */


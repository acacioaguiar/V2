/* 
 * File:   board.h
 * Author: Felipe Bandeira
 *
 * Created on June 15, 2012, 11:08 AM
 */

#ifndef BOARD_H
#define	BOARD_H

void board_init(void);
void board_mem_ini(void);
int util_memoria_mdd_presente(void);

#define apaga_todos_leds() {LED0_IO = 1; LED1_IO = 1; LED2_IO = 1; LED3_IO = 1; LED4_IO = 1;}

/* apenas o led 0 acesso */
#define LED0_1()  {LED0_IO = 0; LED1_IO = 1; LED2_IO = 1; LED3_IO = 1; LED4_IO = 1;}
#define LED0_0()  {LED0_IO = 1; LED1_IO = 1; LED2_IO = 1; LED3_IO = 1; LED4_IO = 1;}

/* apenas o led 1 acesso */
#define LED1_1()  {LED0_IO = 1; LED1_IO = 0; LED2_IO = 1; LED3_IO = 1; LED4_IO = 1;}
#define LED1_0()  {LED0_IO = 1; LED1_IO = 1; LED2_IO = 1; LED3_IO = 1; LED4_IO = 1;}

/* apenas o led 2 acesso */
#define LED2_1()  {LED0_IO = 1; LED1_IO = 1; LED2_IO = 0; LED3_IO = 1; LED4_IO = 1;}
#define LED2_0()  {LED0_IO = 1; LED1_IO = 1; LED2_IO = 1; LED3_IO = 1; LED4_IO = 1;}

/* apenas o led 3 acesso */
#define LED3_1()  {LED0_IO = 1; LED1_IO = 1; LED2_IO = 1; LED3_IO = 0; LED4_IO = 1;}
#define LED3_0()  {LED0_IO = 1; LED1_IO = 1; LED2_IO = 1; LED3_IO = 1; LED4_IO = 1;}

/* apenas o led 4 acesso */
#define LED4_1()  {LED0_IO = 1; LED1_IO = 1; LED2_IO = 1; LED3_IO = 1; LED4_IO = 0;}
#define LED4_0()  {LED0_IO = 1; LED1_IO = 1; LED2_IO = 1; LED3_IO = 1; LED4_IO = 1;}

#define led0_muda_estado()  {LED0_IO = ~LED0_IO;}
#define led1_muda_estado()  {LED1_IO = ~LED1_IO;}
#define led2_muda_estado()  {LED2_IO = ~LED2_IO;}

#endif	/* BOARD_H */

/* 
 * File:   usb_tty.h
 * Author: Felipe Bandeira
 *
 * Created on June 13, 2012, 11:35 AM
 */

#ifndef USB_TTY_H
#define	USB_TTY_H

/*----------------------------------------------------------------------------*/
/* PROTOTIPOS                                                                 */
/*----------------------------------------------------------------------------*/

void usb_tty_init(void);
void usb_tty_task(void *pvParameters);
void usb_tty_char(signed char le);
void usb_tty_print(char *s);
unsigned char usb_tty_est_rx(void);
char usb_tty_read_byte(void);
unsigned int usb_tty_loop(void);
void usb_tty_status(void);


#define USB_BUFFER_SIZE 32

typedef struct{
    char out[USB_BUFFER_SIZE];
    int co;
}USB_BUFFER;

#define mGetLED_1()         (!LED1_IO)
#define mLED_2_On()	    {LED2_IO = 0;}
#define mLED_2_Off()	    {LED2_IO = 1;}
#define mLED_1_Toggle()	    {LED1_IO = ~LED1_IO;}
#define mLED_Both_Off()     {LED1_IO = 1; LED2_IO = 1;}
#define mLED_Both_On()      {LED1_IO = 0; LED2_IO = 0;}
#define mLED_Only_1_On()    {LED1_IO = 0; LED2_IO = 1;}
#define mLED_Only_2_On()    {LED1_IO = 1; LED2_IO = 0;}


/*
 * Compatibilidade com a comunicacao serial UART de toda a pilha tcp/ip
 */
#define BusyUART()          0
#define DataRdyUART()       usb_tty_est_rx()
#define ReadUART()          usb_tty_read_byte()
#define WriteUART(a)        usb_tty_char(a)
#define getsUART(a,b,c)     getsUART2(a,b,c)
#define putsUART(a)         usb_tty_print((char*)a)
#define getcUART()          getcUART2()
#define putcUART(a)         usb_tty_char(a)
#define putrsUART(a)        usb_tty_print((char*)a)

/*----------------------------------------------------------------------------*/

#define __atribute_libc __attribute__((__section__(".libc")))
int __atribute_libc write(int handle, void *buffer, unsigned int len);


#endif	/* USB_TTY_H */


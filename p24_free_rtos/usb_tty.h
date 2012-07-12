/*
 * File:   usb_tty.h
 * Author: Felipe Bandeira
 *
 * Created on June 13, 2012, 11:35 AM
 */

#ifndef USB_TTY_H
#define	USB_TTY_H

void usb_init(void);
void usb_altera_prioridade(int prioridade);
void cria_queue(void);
void usb_tty_task(void *pvParameters);
void usb_tx_1byte(signed char le);
void usb_print(char *s);
void usb_print_len(char *s, int len_t);
void usb_print_nl(char *s);
unsigned int usb_estado_rx(void);
char usb_buffer_rx(void);

#define USB_STACK       (configMINIMAL_STACK_SIZE * 2)
#define USB_PRIORIDADE  (tskIDLE_PRIORITY + 0)

#define USB_QUANTIDADE_QUEUE    8
#define USB_BUFFER_SIZE         32

typedef struct{
    char out[USB_BUFFER_SIZE];
    int co;
}USB_BUFFER;


/*
 * Compatibilidade com a comunicacao serial UART de toda a pilha tcp/ip
 */
#define BusyUART()          0
#define DataRdyUART()       usb_estado_rx()
#define ReadUART()          usb_buffer_rx()
#define WriteUART(a)        usb_tx_1byte(a)
//#define getsUART(a,b,c)     getsUART2(a,b,c)
#define putsUART(a)         usb_print((char*)a)
//#define getcUART()          getcUART2()
#define putcUART(a)         usb_tx_1byte(a)
#define putrsUART(a)        usb_print((char*)a)

/* compatibilidade com printf */
#define __atribute_libc __attribute__((__section__(".libc")))
int __atribute_libc write(int handle, void *buffer, unsigned int len);


#endif	/* USB_TTY_H */

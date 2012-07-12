#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "./USB/usb.h"
#include "./USB/usb_function_cdc.h"
#include "usb_config.h"
#include "USB/usb_device.h"
#include "USB/usb.h"
#include "HardwareProfile.h"
#include "usb_tty.h"

static void barramento_usb(void);
static unsigned int usb_loop(void);
static void usb_leds_status(void);

#define led_estado_1()              (!LED1_IO)
#define led_ligado_2()              {LED2_IO = 0;}
#define led_desliga_2()             {LED2_IO = 1;}
#define led_muda_estado_1()         {LED1_IO = ~LED1_IO;}
#define led_todos_apagados()        {LED1_IO = 1; LED2_IO = 1;}
#define led_todos_ligados()         {LED1_IO = 0; LED2_IO = 0;}
#define led_apenas_1_ligado()       {LED1_IO = 0; LED2_IO = 1;}
#define led_apenas_2_ligado()       {LED1_IO = 1; LED2_IO = 0;}

/* buffer de entrada */
static char buffer_entrada[16];
static unsigned int buf_ent_cont = 0;

/* marca o uso da memoria */
unsigned portBASE_TYPE stack_uso_usb;
/* transmissao de dados para o barramento */
xQueueHandle usb_buffer_queue;
/* controle da tarefa */
xTaskHandle usb_controle;

void usb_init(void){
    USBDeviceInit();
    xTaskCreate(usb_tty_task, (signed char *) "USB", USB_STACK, NULL, USB_PRIORIDADE, &usb_controle);
}

void usb_altera_prioridade(int prioridade){
    vTaskPrioritySet(usb_controle, (unsigned short) prioridade);
}

/*
 * A queue nao pode ser iniciada, caso o P24 nao esteja
 * conectado na usb. Caso ela seja criada sem o barramento usb
 * funcionando corretamente, ha possibilidade de travamento no codigo.
 * Pois determinados algoritimos usam a usb para a comunicacao.
 */
void cria_queue(void){
    static unsigned int tempo_criacao;
    /* queue para o envio de string pela usb
     * usada principalmente por:
     * - printf
     * - usb_tty_print
     */
    if(USBDeviceState == CONFIGURED_STATE){
        /* delay para criacao da queue */
        if(tempo_criacao++ == 100)
            usb_buffer_queue = xQueueCreate(USB_QUANTIDADE_QUEUE, sizeof(USB_BUFFER));
    } else {
        /* ops! */
        tempo_criacao = 0;
    }
}

void usb_tty_task(void *pvParameters){
    stack_uso_usb = uxTaskGetStackHighWaterMark( NULL );

    while(1){
        /* verifica o barramento */
        barramento_usb();
        /* cria com seguranca a queue */
        cria_queue();
        usb_leds_status();
        /* loop principal, comunicacao(transmissao e recepcao) */
        usb_loop();
        /* marca maximo de consumo */
        stack_uso_usb = uxTaskGetStackHighWaterMark( NULL );
    }
}

static void barramento_usb(void){
    #if defined(USB_INTERRUPT)
        if (USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE)){
            USBDeviceAttach();
        }
    #endif
}

/* envia apenas 1 byte */
void usb_tx_1byte(signed char le){
    USB_BUFFER usb_buffer;

    /* verifica se o queue esta funcionando */
    if(usb_buffer_queue == 0) return;

    usb_buffer.out[0] = le;
    usb_buffer.co = 1;
    xQueueSendToBack(usb_buffer_queue, &usb_buffer, portMAX_DELAY);
    usb_buffer.co = 0;
}

/*
 * Carrega o buffer de saida com uma string localizada na ram
 */
void usb_print(char *s){
    unsigned int i = 0;
    unsigned int len = 0;
    char *sb = (char *)s;
    USB_BUFFER buf;

    /* verifica se o queue esta funcionando */
    if(usb_buffer_queue == 0) return;

    while(*sb++ != '\0') len++;

    while(1){
        if(len > USB_BUFFER_SIZE){
            buf.co = USB_BUFFER_SIZE;
            len-=USB_BUFFER_SIZE;
            for(i = 0; i < USB_BUFFER_SIZE; i++){ buf.out[i] = *s++; }
            xQueueSendToBack(usb_buffer_queue, &buf, portMAX_DELAY);
        } else {
            if(len > 0){
                buf.co = len;
                for(i = 0; i < len; i++){ buf.out[i] = *s++; }
                xQueueSendToBack(usb_buffer_queue, &buf, portMAX_DELAY);
            }
            break;
        }
    }
}

void usb_print_len(char *s, int len_t){
    unsigned int i = 0;
    unsigned int len = len_t;
    USB_BUFFER buf;

    /* verifica se o queue esta funcionando */
    if(usb_buffer_queue == 0) return;

    while(1){
        if(len > USB_BUFFER_SIZE){
            buf.co = USB_BUFFER_SIZE;
            len-=USB_BUFFER_SIZE;
            for(i = 0; i < USB_BUFFER_SIZE; i++){ buf.out[i] = *s++; }
            xQueueSendToBack(usb_buffer_queue, &buf, portMAX_DELAY);
        } else {
            if(len > 0){
                buf.co = len;
                for(i = 0; i < len; i++){ buf.out[i] = *s++; }
                xQueueSendToBack(usb_buffer_queue, &buf, portMAX_DELAY);
            }
            break;
        }
    }
}

void usb_print_nl(char *s){
    usb_print("\r\n");
    usb_print(s);
}

/* Verifica o estado do buffer de entrada */
unsigned int usb_estado_rx(void) {
    if (buf_ent_cont == 0) {
        return 0;
    } else {
        return buf_ent_cont;
    }
}

/* Ler o primeiro byte do buffer de entrada */
char usb_buffer_rx(void) {
    static int i = 0;
    char c = NULL;

//    buffer_entrada_cont = 0;
//    return buffer_entrada[0];

    if(buf_ent_cont > 0){
        c = buffer_entrada[i];
        if(i >= buf_ent_cont - 1 ){
            i = 0;
            buf_ent_cont = 0;
        } else {
            i++;
        }
    }
    return c;
}

void usb_leds_status(void) {
    static unsigned int led_count = 0;

    if (led_count == 0)
        led_count = 16;

    led_count--;

    if (USBSuspendControl == 1) {
        if (led_count == 0) {
                led_muda_estado_1();
            if (led_estado_1()) {
                led_ligado_2();
            } else {
                led_desliga_2();
            }
        }
    } else {
            if (USBDeviceState == DETACHED_STATE) {
                led_todos_apagados();
            } else if (USBDeviceState == ATTACHED_STATE) {
                led_todos_ligados();
            } else if (USBDeviceState == POWERED_STATE) {
                led_apenas_1_ligado();
            } else if (USBDeviceState == DEFAULT_STATE) {
                led_apenas_2_ligado();
            } else if (USBDeviceState == ADDRESS_STATE) {
                if (led_count == 0) {
                    led_muda_estado_1();
                    led_desliga_2();
                }
            } else if (USBDeviceState == CONFIGURED_STATE) {
            if (led_count == 0) {
                led_muda_estado_1();
                if (led_estado_1()) {
                    led_desliga_2();
                } else {
                    led_ligado_2();
                }
            }
        }
    }
}

unsigned int usb_loop(void){
    USB_BUFFER usb_task;

    /* regiao critica ? */
    portENTER_CRITICAL();

    if ((USBDeviceState < CONFIGURED_STATE) || (USBSuspendControl == 1)){
        portEXIT_CRITICAL();
        return 0;
    }

    if (USBUSARTIsTxTrfReady()){
        if (buf_ent_cont == 0) {
            buf_ent_cont = getsUSBUSART((char *)buffer_entrada, sizeof(buffer_entrada));
        }

        if(usb_buffer_queue != 0){
            if(xQueueReceive(usb_buffer_queue, &usb_task, ( portTickType ) 20)){
                putUSBUSART((char *)usb_task.out, usb_task.co);
            }
        }
    }

    CDCTxService();
    portEXIT_CRITICAL();
    return 1;
}

/*
 * Funcao write utilizado na retrasmissao do STDOUT, usado no printf
 * referencia:
 * http://support2.microchip.com/KBSearch/KB_StdProb.aspx?ID=SQ6UJ9A009MTU
 * https://www.microchip.com/forums/m601123-print.aspx
 *
 * Objetivo: Compatibilidade com outras bibliotecas, frameworks com o minimo de alteracao
 */
int __atribute_libc write(int handle, void *buffer, unsigned int len){
    int i = 0;
    USB_BUFFER printf_buffer;

    /* verifica se o queue esta funcionando */
    if(usb_buffer_queue == 0) return 0;

    switch(handle){
        case 0: // STDOUT
        case 1: // STDIN
        case 2: // STDERR
            if(len > USB_BUFFER_SIZE){
                while(len > USB_BUFFER_SIZE){
                    for(i = 0; i < USB_BUFFER_SIZE; i++){ printf_buffer.out[i] = *(char *)buffer; }
                    len -= USB_BUFFER_SIZE;
                    printf_buffer.co = USB_BUFFER_SIZE;
                    xQueueSendToBack(usb_buffer_queue, &printf_buffer, portMAX_DELAY);
                }
                goto printf_parte2;
            } else {
printf_parte2:
                if(len > 0){
                    for(i = 0; i < len; i++){ printf_buffer.out[i] = *(char *)buffer; }
                    printf_buffer.co = len;
                    xQueueSendToBack(usb_buffer_queue, &printf_buffer, portMAX_DELAY);
                }
            }

            break;
    }
    return(len);
}

/*
 * USBCBSuspend
 */
void USBCBSuspend(void) {
    #if defined(__C30__)
        USBSleepOnSuspend();
    #endif
}

/*
 * USBCBWakeFromSuspend
 */
void USBCBWakeFromSuspend(void) {

}

/*
 * USBCB_SOF_Handler
 */
void USBCB_SOF_Handler(void) {

}

/*
 * USBCBErrorHandler
 */
void USBCBErrorHandler(void) {

}

/*
 * USBCBCheckOtherReq
 */
void USBCBCheckOtherReq(void) {
    USBCheckCDCRequest();
}

/*
 * USBCBStdSetDscHandler
 */
void USBCBStdSetDscHandler(void) {

}

/*
 * USBCBInitEP
 */
void USBCBInitEP(void) {
    CDCInitEP();
}

/*
 * USBCBSendResume
 */
void USBCBSendResume(void) {
    static WORD delay_count;

    //First verify that the host has armed us to perform remote wakeup.
    //It does this by sending a SET_FEATURE request to enable remote wakeup,
    //usually just before the host goes to standby mode (note: it will only
    //send this SET_FEATURE request if the configuration descriptor declares
    //the device as remote wakeup capable, AND, if the feature is enabled
    //on the host (ex: on Windows based hosts, in the device manager
    //properties page for the USB device, power management tab, the
    //"Allow this device to bring the computer out of standby." checkbox
    //should be checked).
    if (USBGetRemoteWakeupStatus() == TRUE) {
	//Verify that the USB bus is in fact suspended, before we send
	//remote wakeup signalling.
	if (USBIsBusSuspended() == TRUE) {
	    USBMaskInterrupts();

	    //Clock switch to settings consistent with normal USB operation.
	    USBCBWakeFromSuspend();
	    USBSuspendControl = 0;
	    USBBusIsSuspended = FALSE; //So we don't execute this code again,
	    //until a new suspend condition is detected.

	    //Section 7.1.7.7 of the USB 2.0 specifications indicates a USB
	    //device must continuously see 5ms+ of idle on the bus, before it sends
	    //remote wakeup signalling.  One way to be certain that this parameter
	    //gets met, is to add a 2ms+ blocking delay here (2ms plus at
	    //least 3ms from bus idle to USBIsBusSuspended() == TRUE, yeilds
	    //5ms+ total delay since start of idle).
	    delay_count = 3600U;
	    do {
		delay_count--;
	    } while (delay_count);

	    //Now drive the resume K-state signalling onto the USB bus.
	    USBResumeControl = 1; // Start RESUME signaling
	    delay_count = 1800U; // Set RESUME line for 1-13 ms
	    do {
		delay_count--;
	    } while (delay_count);
	    USBResumeControl = 0; //Finished driving resume signalling

	    USBUnmaskInterrupts();
	}
    }
}

#if defined(ENABLE_EP0_DATA_RECEIVED_CALLBACK)
    void USBCBEP0DataReceived(void) {

    }
#endif

/*
 * USER_USB_CALLBACK_EVENT_HANDLER
 */
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size) {
    switch (event) {
	case EVENT_TRANSFER:
	    //Add application specific callback task or callback function here if desired.
	    break;
	case EVENT_SOF:
	    USBCB_SOF_Handler();
	    break;
	case EVENT_SUSPEND:
	    USBCBSuspend();
	    break;
	case EVENT_RESUME:
	    USBCBWakeFromSuspend();
	    break;
	case EVENT_CONFIGURED:
	    USBCBInitEP();
	    break;
	case EVENT_SET_DESCRIPTOR:
	    USBCBStdSetDscHandler();
	    break;
	case EVENT_EP0_REQUEST:
	    USBCBCheckOtherReq();
	    break;
	case EVENT_BUS_ERROR:
	    USBCBErrorHandler();
	    break;
	case EVENT_TRANSFER_TERMINATED:
	    //Add application specific callback task or callback function here if desired.
	    //The EVENT_TRANSFER_TERMINATED event occurs when the host performs a CLEAR
	    //FEATURE (endpoint halt) request on an application endpoint which was
	    //previously armed (UOWN was = 1).  Here would be a good place to:
	    //1.  Determine which endpoint the transaction that just got terminated was
	    //      on, by checking the handle value in the *pdata.
	    //2.  Re-arm the endpoint if desired (typically would be the case for OUT
	    //      endpoints).
	    break;
	default:
	    break;
    }
    return TRUE;
}

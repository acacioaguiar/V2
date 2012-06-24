#include "FreeRTOS.h"
#include "TCPIP Stack/TCPIP.h"
#include "MDD File System/FSIO.h"
#include "task.h"

volatile BOOL MemInterfaceAttached = FALSE;
volatile BOOL FileSysInitLock = FALSE;

void board_init(void){
    OSCCON = 0x3302;
    CLKDIV = 0x0000;

    /*
     * chave para a modificacao dos pinos
     * ver c30 user guide, pagina 170
     */
    __builtin_write_OSCCONL(OSCCON & 0xBF);

    RPINR0bits.INT1R = 8;

    // modulo mrf24
    RPOR6bits.RP13R = 8;    // saida
    RPOR0bits.RP0R = 7;	    // saida
    RPINR20bits.SDI1R = 1;  // saida

    // cartao sd
    RPOR10bits.RP21R = 11;  // saida
    RPOR9bits.RP19R = 10;   // saida
    RPINR22bits.SDI2R = 26; // saida

    RPINR19bits.U2RXR = 24; // entrada
    RPOR11bits.RP23R = 5;   // saida

    __builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS

    // LEDs
    LED0_TRIS = 0;
    LED1_TRIS = 0;
    LED2_TRIS = 0;
    LED3_TRIS = 0;
    LED4_TRIS = 0;
    LED5_TRIS = 0;
    LED6_TRIS = 0;
    LED7_TRIS = 0;


    LED0_IO = 1;
    LED1_IO = 1;
    LED2_IO = 1;
    LED3_IO = 1;
    LED4_IO = 1;
    LED5_IO = 1;

    // ADC
    //AD1CHS0: A/D Input Select Register
    AD1CHSbits.CH0NA = 0;
    AD1CHSbits.CH0SA = 3;

    //AD1PCFGH/AD1PCFGL: Port Configuration Register
    AD1PCFG = 0xFFFF;
    AD1PCFGbits.PCFG3 = 0; // AN3 as Analog Input

    Temp_TRIS = 1;
    AD1CON1 = 0x00E4; // Off, Auto sample start, auto-convert
    AD1CON1bits.FORM = 0x0;
    AD1CON1bits.ADON = 1; // Start A/D in continuous mode
    AD1CON2 = 0; // AVdd, AVss, int every conversion, MUXA only
    AD1CON3 = 0x1F05; // 31 Tad auto-sample, Tad = 5*Tcy
    AD1CSSL = 0x0000;

    WF_CS_TRIS = 0;
    WF_CS_IO = 1;

}


/*
 * Inicializa o cartao sd e o sistema de arquivos.
 */
void board_mem_ini(void) {
    int i = 0;

    MemInterfaceAttached = TRUE;
    
    while(FileSysInitLock == FALSE && i++ < 16){
        portENTER_CRITICAL();
        FileSysInitLock = FileSystemInit();
        portEXIT_CRITICAL();
        vTaskDelay(10/portTICK_RATE_MS);
    }
    
    if(FileSysInitLock == TRUE){
        LED3_IO = 0;
    } else {
        LED3_IO = 1;
    }

}

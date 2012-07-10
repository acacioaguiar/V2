/*********************************************************************
 *
 *	Hardware specific definitions
 *
 *********************************************************************
 * FileName:        HardwareProfile.h
 * Dependencies:    None
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.10 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.34 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2009 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author               Date		Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder		10/03/06	Original, copied from Compiler.h
 * Ken Hesky            07/01/08    Added ZG2100-specific features
 * Yale       	        09/03/10	Port to PIC24 Web Server Demo Board
 ********************************************************************/
#ifndef __HARDWARE_PROFILE_H
#define __HARDWARE_PROFILE_H

#define USE_SD_INTERFACE_WITH_SPI

#include "GenericTypeDefs.h"
#include "Compiler.h"

#include "usb_tty.h"

// Set configuration fuses (but only once)
#if defined(P24_FREERTOS)

#if defined(__PIC24F__)
    _CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & COE_OFF & FWDTEN_OFF & ICS_PGx2)
    _CONFIG2(PLL_96MHZ_ON & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV5 & IOL1WAY_ON)
#endif

#endif // Prevent more than one set of config fuse definitions

// Clock frequency value.
// This value is used to calculate Tick Counter value
#if defined(__PIC24F__)
// PIC24F processor
#define GetSystemClock()		(32000000ul)      // Hz
#define GetInstructionClock()	(GetSystemClock()/2)
#define GetPeripheralClock()	GetInstructionClock()

#endif


//#define USE_SELF_POWER_SENSE_IO
#define tris_self_power     TRISAbits.TRISA2    // Input
#define self_power          1

//#define USE_USB_BUS_SENSE_IO
#define tris_usb_bus_sense  U1OTGSTATbits.SESVD  //TRISBbits.TRISB5    // Input
#define USB_BUS_SENSE       U1OTGSTATbits.SESVD


// Hardware mappings

#define LED0_TRIS			(TRISDbits.TRISD10)	// Ref D1
#define LED0_IO				(LATDbits.LATD10)
#define LED1_TRIS			(TRISDbits.TRISD11)	// Ref D2
#define LED1_IO				(LATDbits.LATD11)
#define LED2_TRIS			(TRISDbits.TRISD0)	// Ref D3
#define LED2_IO				(LATDbits.LATD0)
#define LED3_TRIS			(TRISCbits.TRISC13)	// Ref D4
#define LED3_IO				(LATCbits.LATC13)
#define LED4_TRIS			(TRISCbits.TRISC14)	// Ref D5
#define LED4_IO				(LATCbits.LATC14)

//..................................................
#define LED5_TRIS			(TRISEbits.TRISE1)
#define LED5_IO				(LATEbits.LATE1)
#define LED6_TRIS			(TRISEbits.TRISE2)
#define LED6_IO				(LATEbits.LATE2)
#define LED7_TRIS			(TRISEbits.TRISE3)
#define LED7_IO				(LATEbits.LATE3)

#define LED_GET()			(*((volatile unsigned char*)(&LATB)))
#define LED_PUT(a)			(*((volatile unsigned char*)(&LATB)) = (a))

//''''''''''''''''''''''''''''''''''''''''''''''''''''''
#define BUTTON0_TRIS		(TRISEbits.TRISE0)
#define	BUTTON0_IO			(LATEbits.LATE0)
#define BUTTON1_TRIS		(TRISEbits.TRISE6)
#define	BUTTON1_IO			(LATEbits.LATE6)
#define BUTTON2_TRIS		(TRISEbits.TRISE7)
#define	BUTTON2_IO			(LATEbits.LATE7)
#define BUTTON3_IO 1
#define BUTTON4_IO 1
#define BUTTON5_IO 1
#define BUTTON6_IO 1
#define Temp_TRIS		    (TRISBbits.TRISB3)	// Ref AN

#define UARTTX_TRIS			(TRISDbits.TRISD2)
#define UARTTX_IO			(PORTDbits.RD2)
#define UARTRX_TRIS			(TRISDbits.TRISD1)
#define UARTRX_IO			(PORTDbits.RD1)

//	#define  USE_ENC28J60_MODULE
#define  USE_MRF24WB0MX_MODULE

#if defined  (USE_ENC28J60_MODULE)	                // ENC28J60 I/O pins
    #define ENC_CS_TRIS			(TRISBbits.TRISB8)	// Comment this line out if you are using the ENC424J600/624J600, ZeroG ZG2100, or other network controller.
    #define ENC_CS_IO			(PORTBbits.RB8)
    #define ENC_RST_TRIS		(TRISFbits.TRISF4)	// Not connected by default.  It is okay to leave this pin completely unconnected, in which case this macro should simply be left undefined.
    #define ENC_RST_IO	        (PORTFbits.RF4)
    #define ENC_SPI_IF			(IFS0bits.SPI1IF)   // SPI SCK, SDI, SDO pins are automatically controlled by the PIC24 SPI module
    #define ENC_SSPBUF			(SPI1BUF)
    #define ENC_SPISTAT			(SPI1STAT)
    #define ENC_SPISTATbits		(SPI1STATbits)
    #define ENC_SPICON1			(SPI1CON1)
    #define ENC_SPICON1bits		(SPI1CON1bits)
    #define ENC_SPICON2			(SPI1CON2)
#elif defined (USE_MRF24WB0MX_MODULE)               // MRF24WB0MX I/O pins
    #define WF_CS_TRIS			(TRISBbits.TRISB9)
    #define WF_CS_IO			(PORTBbits.RB9)
    //    	#define WF_SCK_TRIS			(TRISBbits.TRISB2)
    //    	#define WF_SDI_TRIS			(TRISBbits.TRISB1)
    //    	#define WF_SDO_TRIS			(TRISBbits.TRISB0)
    #define WF_RESET_TRIS		(TRISFbits.TRISF4)
    #define WF_RESET_IO			(LATFbits.LATF4)
    #define WF_INT_TRIS	        (TRISBbits.TRISB8)  // INT1
    #define WF_INT_IO		    (PORTBbits.RB8)
    #define WF_INT_EDGE		    (INTCON2bits.INT1EP)
    #define WF_INT_IE			(IEC1bits.INT1IE)
    #define WF_INT_IF			(IFS1bits.INT1IF)
    #define WF_HIBERNATE_TRIS	(TRISDbits.TRISD3)
    #define	WF_HIBERNATE_IO		(PORTDbits.RD3)
    #define WF_SSPBUF			(SPI1BUF)
    #define WF_SPISTAT			(SPI1STAT)
    #define WF_SPISTATbits		(SPI1STATbits)
    #define WF_SPICON1			(SPI1CON1)
    #define WF_SPICON1bits		(SPI1CON1bits)
    #define WF_SPICON2			(SPI1CON2)
    #define WF_SPI_IE			(IEC0bits.SPI1IE)
    //  #define WF_SPI_IP			(IPC2bits.SPI1IP)
    #define WF_SPI_IF			(IFS0bits.SPI1IF)
#endif

// Select which UART the STACK_USE_UART and STACK_USE_UART2TCP_BRIDGE
// options will use.  You can change these to U1BRG, U1MODE, etc. if you
// want to use the UART1 module instead of UART2.

// Define the baud rate constants
//#define BAUD_RATE               19200UL         // Desired baud rate
//  #define BRG_DIV2                16              // BRG baud rate divider
//  #define BRGH2                   0               // BRGH bit value

//#define UBRG					U2BRG
//#define UMODE					U2MODE
//#define USTA					U2STA
//	#define BusyUART()				BusyUART2()
//#define CloseUART()				CloseUART2()
//#define ConfigIntUART(a)		ConfigIntUART2(a)
//	#define DataRdyUART()			DataRdyUART2()
//#define OpenUART(a,b,c)			OpenUART2(a,b,c)
//	#define ReadUART()				ReadUART2()
//	#define WriteUART(a)			WriteUART2(a)
//	#define getsUART(a,b,c)			getsUART2(a,b,c)
//	#define putsUART(a)				putsUART2((unsigned int*)a)
//	#define getcUART()				getcUART2()
//	#define putcUART(a)				do{while(BusyUART()); WriteUART(a); while(BusyUART()); }while(0)
//	#define putrsUART(a)			putrsUART2(a)

/* SD Card definitions: Change these to fit your application when using
   an SD-card-based physical layer                                   */

#ifdef USE_SD_INTERFACE_WITH_SPI

    // Description: SD-SPI Chip Select Output bit
    #define SD_CS               PORTFbits.RF5
    // Description: SD-SPI Chip Select TRIS bit
    #define SD_CS_TRIS          TRISFbits.TRISF5

    // Description: SD-SPI Card Detect Input bit
    //#define SD_CD               PORTGbits.RG0
    // Description: SD-SPI Card Detect TRIS bit
    //#define SD_CD_TRIS          TRISGbits.TRISG0

    // Description: SD-SPI Write Protect Check Input bit
    //#define SD_WE               PORTGbits.RG1
    // Description: SD-SPI Write Protect Check TRIS bit
    //#define SD_WE_TRIS          TRISGbits.TRISG1

    // Registers for the SPI module you want to use

    // Description: The main SPI control register
    #define SPICON1             SPI2CON1
    // Description: The SPI status register
    #define SPISTAT             SPI2STAT
    // Description: The SPI Buffer
    #define SPIBUF              SPI2BUF
    // Description: The receive buffer full bit in the SPI status register
    #define SPISTAT_RBF         SPI2STATbits.SPIRBF
    // Description: The bitwise define for the SPI control register (i.e. _____bits)
    #define SPICON1bits         SPI2CON1bits
    // Description: The bitwise define for the SPI status register (i.e. _____bits)
    #define SPISTATbits         SPI2STATbits
    // Description: The enable bit for the SPI module
    #define SPIENABLE           SPISTATbits.SPIEN

    // Tris pins for SCK/SDI/SDO lines

    // Description: The TRIS bit for the SCK pin
    #define SPICLOCK            TRISGbits.TRISG6
    // Description: The TRIS bit for the SDI pin
    #define SPIIN               TRISGbits.TRISG7
    // Description: The TRIS bit for the SDO pin
    #define SPIOUT              TRISGbits.TRISG8



// Will generate an error if the clock speed is too low to interface to the card
#if (GetSystemClock() < 100000)
    #error Clock speed must exceed 100 kHz
#endif

#endif

// Macros for input and output TRIS bits
#define INPUT_PIN   1
#define OUTPUT_PIN  0

#endif

/*********************************************************************
 *
 *  Application to Demo HTTP2 Server
 *  Support for HTTP2 module in Microchip TCP/IP Stack
 *	 -Implements the application 
 *	 -Reference: RFC 1002
 *
 *********************************************************************
 * FileName:        CustomHTTPApp.c
 * Dependencies:    TCP/IP stack
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2010 Microchip Technology Inc.  All rights
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
 * Author               Date    Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Elliott Wood     	6/18/07	Original
 * Yale       	        09/03/10	Port to PIC24 Web Server Demo Board
 ********************************************************************/
#define __CUSTOMHTTPAPP_C

#include "TCPIPConfig.h"

#if defined(STACK_USE_HTTP2_SERVER)

#include "TCPIP Stack/TCPIP.h"
#include "TCPIP Stack/WFConsole.h"


/****************************************************************************
  Section:
	Function Prototypes and Memory Globalizers
  ***************************************************************************/

#if defined(HTTP_USE_POST)
	#if defined(USE_LCD)
		static HTTP_IO_RESULT HTTPPostLCD(void);
	#endif
#endif



/****************************************************************************
  Section:
	GET Form Handlers
  ***************************************************************************/
  
/*****************************************************************************
  Function:
	HTTP_IO_RESULT HTTPExecuteGet(void)
	
  Internal:
  	See documentation in the TCP/IP Stack API or HTTP2.h for details.
  ***************************************************************************/
HTTP_IO_RESULT HTTPExecuteGet(void)
{
	//BYTE *ptr;
	BYTE filename[20];

	// Load the file name
	// Make sure BYTE filename[] above is large enough for your longest name

#if defined STACK_USE_MDD
	BYTE i,cntr1=0,cntr2=0,filext=0;
	do
	{
		if(curHTTP.file->name[cntr2] != 0x20)
		{
			filename[cntr1]=curHTTP.file->name[cntr2];
			cntr1++;
		}
		else if(filext!=TRUE)
		{
			filename[cntr1]=0x2E;
			cntr1++;
			filext=TRUE;
		}

		cntr2++;

	}while(cntr2 !=FILE_NAME_SIZE);

	for(i=0;i<20;i++) //Convert filename to lower case
		if((filename[i] >= (BYTE)'A') && (filename[i] <= (BYTE)'Z'))
			filename[i] += 'a' - 'A';
#endif	


	return HTTP_IO_DONE;
}


/****************************************************************************
  Section:
	POST Form Handlers
  ***************************************************************************/
#if defined(HTTP_USE_POST)

/*****************************************************************************
  Function:
	HTTP_IO_RESULT HTTPExecutePost(void)
	
  Internal:
  	See documentation in the TCP/IP Stack API or HTTP2.h for details.
  ***************************************************************************/
HTTP_IO_RESULT HTTPExecutePost(void)
{
	// Resolve which function to use and pass along
	BYTE filename[20];
	
	// Load the file name
	// Make sure BYTE filename[] above is large enough for your longest name
#if defined STACK_USE_MDD
	BYTE i,cntr1=0,cntr2=0,filext=0;

	
	
	do
	{
		if(curHTTP.file->name[cntr2] != 0x20)
		{
			filename[cntr1]=curHTTP.file->name[cntr2];
			cntr1++;
		}
		else if(filext!=TRUE)
		{
			filename[cntr1]=0x2E;  //File extension starts after this
			cntr1++;
			filext=TRUE;
		}

		cntr2++;

	}while(cntr2 !=FILE_NAME_SIZE);

	for(i=0;i<20;i++) //Convert file name to lower case
		if((filename[i] >= (BYTE)'A') && (filename[i] <= (BYTE)'Z'))
			filename[i] += 'a' - 'A';
#endif
	
	return HTTP_IO_DONE;
}

#endif //(use_post)


/****************************************************************************
  Section:
	Dynamic Variable Callback Functions
  ***************************************************************************/

/*****************************************************************************
  Function:
	void HTTPPrint_varname(void)
	
  Internal:
  	See documentation in the TCP/IP Stack API or HTTP2.h for details.
  ***************************************************************************/
void My_strncpy(char *pD, char *pS,int nDestSize)
{
       int nLen=strlen(pS)+1;

       if(nLen>nDestSize) nLen=nDestSize;

       memcpy(pD,pS,nLen);

       *(pD+nLen-1)='\0';
}

#endif

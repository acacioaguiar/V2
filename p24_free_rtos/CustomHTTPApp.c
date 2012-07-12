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
 ********************************************************************/
#define __CUSTOMHTTPAPP_C

#include "TCPIPConfig.h"

#if defined(STACK_USE_HTTP2_SERVER)

#include "TCPIP Stack/TCPIP.h"

// Sticky status message variable.
// This is used to indicated whether or not the previous POST operation was
// successful.  The application uses these to store status messages when a
// POST operation redirects.  This lets the application provide status messages
// after a redirect, when connection instance data has already been lost.
static BOOL lastSuccess = FALSE;

// Stick status message variable.  See lastSuccess for details.
static BOOL lastFailure = FALSE;

/*****************************************************************************
  Function:
    BYTE HTTPNeedsAuth(BYTE* cFile)

  Internal:
    See documentation in the TCP/IP Stack API or HTTP2.h for details.
 ***************************************************************************/
#if defined(HTTP_USE_AUTHENTICATION)

BYTE HTTPNeedsAuth(BYTE* cFile) {

#if defined STACK_USE_MDD
    BYTE i = 0;
    for (i = 0; i < 20; i++) //Convert filename to lower case
        if ((cFile[i] >= (BYTE) 'A') && (cFile[i] <= (BYTE) 'Z'))
            cFile[i] += 'a' - 'A';
#endif

    // If the filename begins with the folder "protect", then require auth
    if (memcmppgm2ram(cFile, (ROM void*) "protect", 7) == 0)
        return 0x00; // Authentication will be needed later

    // If the filename begins with the folder "snmp", then require auth
    if (memcmppgm2ram(cFile, (ROM void*) "snmp", 4) == 0)
        return 0x00; // Authentication will be needed later

#if defined(HTTP_MPFS_UPLOAD_REQUIRES_AUTH)
    if (memcmppgm2ram(cFile, (ROM void*) "mpfsupload", 10) == 0)
        return 0x00;
#endif

    // You can match additional strings here to password protect other files.
    // You could switch this and exclude files from authentication.
    // You could also always return 0x00 to require auth for all files.
    // You can return different values (0x00 to 0x79) to track "realms" for below.

    return 0x80; // No authentication required
}
#endif

/*****************************************************************************
  Function:
    BYTE HTTPCheckAuth(BYTE* cUser, BYTE* cPass)

  Internal:
    See documentation in the TCP/IP Stack API or HTTP2.h for details.
 ***************************************************************************/
#if defined(HTTP_USE_AUTHENTICATION)

BYTE HTTPCheckAuth(BYTE* cUser, BYTE* cPass) {
    if (strcmppgm2ram((char *) cUser, (ROM char *) "admin") == 0
            && strcmppgm2ram((char *) cPass, (ROM char *) "microchip") == 0)
        return 0x80; // We accept this combination

    // You can add additional user/pass combos here.
    // If you return specific "realm" values above, you can base this
    //   decision on what specific file or folder is being accessed.
    // You could return different values (0x80 to 0xff) to indicate
    //   various users or groups, and base future processing decisions
    //   in HTTPExecuteGet/Post or HTTPPrint callbacks on this value.

    return 0x00; // Provided user/pass is invalid
}
#endif

/*****************************************************************************
  Function:
    HTTP_IO_RESULT HTTPExecuteGet(void)

  Internal:
    See documentation in the TCP/IP Stack API or HTTP2.h for details.
 ***************************************************************************/
HTTP_IO_RESULT HTTPExecuteGet(void) {
    BYTE *ptr;
    BYTE filename[20];

    // Load the file name
    // Make sure BYTE filename[] above is large enough for your longest name

#if defined STACK_USE_MDD
    BYTE i, cntr1 = 0, cntr2 = 0, filext = 0;
    do {
        if (curHTTP.file->name[cntr2] != 0x20) {
            filename[cntr1] = curHTTP.file->name[cntr2];
            cntr1++;
        } else if (filext != TRUE) {
            filename[cntr1] = 0x2E;
            cntr1++;
            filext = TRUE;
        }

        cntr2++;

    } while (cntr2 != FILE_NAME_SIZE);

    for (i = 0; i < 20; i++) //Convert filename to lower case
        if ((filename[i] >= (BYTE) 'A') && (filename[i] <= (BYTE) 'Z'))
            filename[i] += 'a' - 'A';

#else
    MPFSGetFilename(curHTTP.file, filename, 20);
#endif

    // If its the forms.htm page
    if (!memcmppgm2ram(filename, "forms.htm", 9)) {
        // Seek out each of the four LED strings, and if it exists set the LED states
        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "led4");
        if (ptr)
            LED4_IO = (*ptr == '1');

        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "led3");
        if (ptr)
            LED3_IO = (*ptr == '1');

        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "led2");
        if (ptr)
            LED2_IO = (*ptr == '1');

        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "led1");
        if (ptr)
            LED1_IO = (*ptr == '1');
    }
        // If it's the LED updater file
    else if (!memcmppgm2ram(filename, "cookies.htm", 11)) {
        // This is very simple.  The names and values we want are already in
        // the data array.  We just set the hasArgs value to indicate how many
        // name/value pairs we want stored as cookies.
        // To add the second cookie, just increment this value.
        // remember to also add a dynamic variable callback to control the printout.
        curHTTP.hasArgs = 0x01;
    }

        // If it's the LED updater file
    else if (!memcmppgm2ram(filename, "leds.cgi", 8)) {
        // Determine which LED to toggle
        ptr = HTTPGetROMArg(curHTTP.data, (ROM BYTE *) "led");

        // Toggle the specified LED
        switch (*ptr) {
            case '1':
                LED1_IO ^= 1;
                break;
            case '2':
                LED2_IO ^= 1;
                break;
            case '3':
                LED3_IO ^= 1;
                break;
            case '4':
                LED4_IO ^= 1;
                break;
            case '5':
                LED5_IO ^= 1;
                break;
            case '6':
                LED6_IO ^= 1;
                break;
            case '7':
                LED7_IO ^= 1;
                break;
        }

    }

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
HTTP_IO_RESULT HTTPExecutePost(void) {
    // Resolve which function to use and pass along
    BYTE filename[20];

    // Load the file name
    // Make sure BYTE filename[] above is large enough for your longest name
#if defined STACK_USE_MDD
    BYTE i, cntr1 = 0, cntr2 = 0, filext = 0;
    BYTE cwdPath[20];
    char *cwdPathPtr = NULL;

    do {
        if (curHTTP.file->name[cntr2] != 0x20) {
            filename[cntr1] = curHTTP.file->name[cntr2];
            cntr1++;
        } else if (filext != TRUE) {
            filename[cntr1] = 0x2E; //File extension starts after this
            cntr1++;
            filext = TRUE;
        }

        cntr2++;

    } while (cntr2 != FILE_NAME_SIZE);

    for (i = 0; i < 20; i++) //Convert file name to lower case
        if ((filename[i] >= (BYTE) 'A') && (filename[i] <= (BYTE) 'Z'))
            filename[i] += 'a' - 'A';

#else
    MPFSGetFilename(curHTTP.file, filename, 20);
#endif

#if defined(USE_LCD)
    if (!memcmppgm2ram(filename, "forms.htm", 9))
        return HTTPPostLCD();
#endif

#if defined(STACK_USE_HTTP_MD5_DEMO)
    if (!memcmppgm2ram(filename, "upload.htm", 10))
        return HTTPPostMD5();
#endif

#if defined(STACK_USE_HTTP_APP_RECONFIG)
    if (!memcmppgm2ram(filename, "protect/config.htm", 18))
        return HTTPPostConfig();
#endif


#ifdef STACK_USE_MDD

#if defined(STACK_USE_SMTP_CLIENT) || defined(STACK_USE_DYNAMICDNS_CLIENT)
    cwdPathPtr = FSgetcwd((char *) cwdPath, 20); //We are taking 20 bytes of buffer to store the CWD

    for (i = 0; i < 20; i++) //Convert CWD path string to lower case
        if ((cwdPathPtr[i] >= (BYTE) 'A') && (cwdPathPtr[i] <= (BYTE) 'Z'))
            cwdPathPtr[i] += 'a' - 'A';

    for (i = 0; i < 20; i++) {
        if (cwdPathPtr[i] == (BYTE) 'e') //email
        {
            if (!memcmppgm2ram(&cwdPathPtr[i], "email", 5))//is CWD == email ?
            {
                //In MDD, to open a file, we change current working directory to
                //the file directory. Hence only the reuqested file name need to be compared.
                if (!memcmppgm2ram(filename, "index.htm", 9))
                    return HTTPPostEmail();
            }
        } else if (cwdPathPtr[i] == (BYTE) 'd') //dyndns
        {
            if (!memcmppgm2ram(&cwdPathPtr[i], "dyndns", 6))//is CWD == dyndns ?
            {
                if (!memcmppgm2ram(filename, "index.htm", 9))
                    return HTTPPostDDNSConfig();
            }
        }


    }
    if (i == 21) //This means current working directory is not "\email"
        return HTTP_IO_DONE; //return as we cant process this request.

#else

#if defined(STACK_USE_SMTP_CLIENT)
    if (!strcmppgm2ram((char*) filename, "email/index.htm"))
        return HTTPPostEmail();
#endif

#if defined(STACK_USE_DYNAMICDNS_CLIENT)
    if (!strcmppgm2ram((char*) filename, "dyndns/index.htm"))
        return HTTPPostDDNSConfig();
#endif

#endif
#endif


    return HTTP_IO_DONE;
}

#endif //(use_post)

void HTTPPrint_versao(void){
    TCPPutROMString(sktHTTP,(ROM void*)"100");
}


#endif

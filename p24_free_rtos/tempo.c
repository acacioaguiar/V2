/*
 * tempo.c
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */

/*----------------------------------------------------------------------------*/

#include <time.h>
#include <stdio.h>
#include "TCPIP Stack/TCPIP.h"

/*----------------------------------------------------------------------------*/

#define SIZE 256
#define UTC_BRASIL (-3)
#define UTC_CORRECAO (UTC_BRASIL * 60 * 60)

/*----------------------------------------------------------------------------*/

void tempo_hum(void){
    char buffer[SIZE];
    time_t timestamp;

    timestamp = SNTPGetUTCSeconds() + (unsigned long)UTC_CORRECAO;
    printf("%u\n", (unsigned int)timestamp);
    strftime(buffer, SIZE, "%a %e %b %Y %r %Z %n", gmtime(&timestamp));
    printf("\r\n%s", buffer);
}

/*----------------------------------------------------------------------------*/

void tempo_lcd(char *tlcd){
    time_t timestamp;
    struct tm *dif;

    timestamp = SNTPGetUTCSeconds() + (unsigned long)UTC_CORRECAO;
    
    if(timestamp > 10000){
        dif = gmtime(&timestamp);
        sprintf(tlcd, "%02d:%02d %02d/%02d/%02d", dif->tm_hour, dif->tm_min,
                                                  dif->tm_mday, dif->tm_mon+1,
                                                  dif->tm_year-100);
    } else {
        sprintf(tlcd, "--:-- --/--/--");
    }
}

/*----------------------------------------------------------------------------*/

/*
 * http://www.cplusplus.com/reference/clibrary/ctime/strftime/
 *
    specifier	Replaced by	                              Example
    %a	        Abbreviated weekday name *	              Thu
    %A	        Full weekday name *	                      Thursday
    %b	        Abbreviated month name *	              Aug
    %B	        Full month name *	                      August
    %c	        Date and time representation *	          Thu Aug 23 14:55:02 2001
    %d	        Day of the month (01-31)	              23
    %H	        Hour in 24h format (00-23)	              14
    %I	        Hour in 12h format (01-12)	              02
    %j	        Day of the year (001-366)	              235
    %m	        Month as a decimal number (01-12)	      08
    %M	        Minute (00-59)	                          55
    %p	        AM or PM designation	                  PM
    %S	        Second (00-61)	                          02
    %U	        Week number with the first Sunday as the first day of week one (00-53)	33
    %w	        Weekday as a decimal number with Sunday as 0 (0-6)	4
    %W	        Week number with the first Monday as the first day of week one (00-53)	34
    %x	        Date representation *	                  08/23/01
    %X	        Time representation *	                  14:55:02
    %y	        Year, last two digits (00-99)	          01
    %Y	        Year	                                  2001
    %Z	        Timezone name or abbreviation	          CDT
    %%	        A % sign	                              %


    Member	Meaning	                        Range
    tm_sec	seconds after the minute	    0-61*
    tm_min	minutes after the hour	        0-59
    tm_hour	hours since midnight	        0-23
    tm_mday	day of the month	            1-31
    tm_mon	months since January	        0-11
    tm_year	years since 1900
    tm_wday	days since Sunday	            0-6
    tm_yday	days since January 1	        0-365
    tm_isdst Daylight Saving Time flag
 
*/

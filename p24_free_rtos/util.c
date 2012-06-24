#include <stdio.h>
#include <string.h>

#include "TCPIP Stack/TCPIP.h"
#include "MDD File System/FSIO.h"

extern APP_CONFIG AppConfig;
extern volatile BOOL FileSysInitLock;

void util_string_ip(IP_ADDR ip, char *s){
    int i;
    unsigned char b[4] = "\0";

    *s = '\0';

    for(i = 0; i < sizeof(IP_ADDR); i++){
        uitoa((WORD)ip.v[i], b);
        strcat(s, (char *)b);
        if(i == sizeof(IP_ADDR) - 1) break;
        strcat(s, (char *)".\0");
    }
}

int util_memoria_mdd_presente(void){
    if(FileSysInitLock == 0){
        return 0;
    } else {
        return 1;
    }
}

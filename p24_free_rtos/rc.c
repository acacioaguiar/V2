#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "MDD File System/FSIO.h"
#include "mini_ini/minIni.h"
#include "rc.h"
#include "conex.h"

#define sizearray(a)  (sizeof(a) / sizeof((a)[0]))

extern struct conex_lista_rede lista_rede;

const char par_rede[] = "rede"; /* True or False */
const char par_tipo[] = "tipo"; /* wep or wap */
const char par_ssid[] = "ssid"; /* string*/
const char par_senha[] = "senha"; /* string */
const char par_erro[] = ":erro:";

void rc_test(void){
    printf("\r\nerro: isso nao existe mais");
}

void rc_rede(void){
    const char fn[] = "sistema.ini";

    char secao[32];
    char s[16];
    int i, j;

    printf("\r\nbuscando configuracao");
    
    FSchdir(SIS_DIR);

    j = 0;
    
    for(i=0; ini_getsection(i, secao, sizearray(secao), fn)> 0; i++){

        if(i > 3) return;

        printf("\r\nsecao-> %s", secao);
        
        if(ini_getbool(secao, par_rede, 0, fn) == 1){
            
            ini_gets(secao, par_ssid, par_erro,
                     lista_rede.r[j].ssid,
                     sizeof(lista_rede.r[j].ssid),
                     fn);

            printf("\r\n  ssid : %s", lista_rede.r[j].ssid);

            ini_gets(secao,
                     par_senha,
                     par_erro,
                     lista_rede.r[j].senh,
                     sizeof(lista_rede.r[j].senh),
                     fn);

            printf("\r\n  senha: %s", lista_rede.r[j].senh);

            ini_gets(secao,
                     par_tipo,
                     par_erro,
                     s,
                     sizeof(s),
                     fn);

            if(strcmppgm2ram(s, "wep") == 0){
                printf("\r\n  tipo : wep");
                lista_rede.r[j].tipo = 1;
            } else {
                printf("\r\n  tipo : wap");
                lista_rede.r[j].tipo = 2;
            }

            lista_rede.qua++;
            j++;
        }
    }    
}

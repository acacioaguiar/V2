#include "FreeRTOS.h"
#include "lcd_ext.h"
#include "ua_com.h"

#include "telas/wus.h"
#include "telas/ies.h"
#include "telas/tip.h"
#include "telas/ini.h"


/* seleciona qual tela mostrar */
void lcd_letreiro(int i){
    switch(i){
        case 0:
            /* tela de inicilizacao */
            tela_ini();
            break;

        case 1:
            /* usb, wifi e sistema */
            tela_wus();
            break;

        case 2:
            /* ip e gateway */
            tela_tip();
            break;

        case 3:
            /* entrada e saida */
            tela_ies();
            break;
    }
}

/* envia uma string para uma linha do lcd */
void lcd_ua_msg(char *s, int linha){
    int i;
    char bcmd[17];
    char bmsg[17];

    int l = strlen(s);

    if(l > 16)
        return;

    if(linha > 3 || linha < 0)
        return;

    for(i = 0; i < l; i++){
        bmsg[i] = *s++;         /* copia o argumento */
        bcmd[i] = 'a' + linha;  /* copia e formada o comando */
    }

    /* finaliza a string */
    bcmd[l] = 'f';
    bmsg[l] = 'f';

    ua_msg_vector(bcmd, bmsg, l+1);
}

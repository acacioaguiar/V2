#include <stdio.h>
#include <string.h>

#include "rc.h"
#include "conex.h"
#include "util.h"

#include "TCPIP Stack/TCPIP.h"
#include "lcd_ext.h"

#define INDEFINIDO      0
#define CONECTANDO      1
#define CONECTADO       2
#define FALHA_CONEXAO   3
#define DESCONHECIDO    4
#define CONEXAO_PERDIDA 5


static int nova_conexao(void);
static void info_rede(int i);

struct conex_lista_rede lista_rede;
unsigned int controle_wifi = 0;
unsigned int rede_atual = 0;

void con_conectando(void)     { controle_wifi = CONECTANDO;      }
void con_conectado(void)      { controle_wifi = CONECTADO;       }
void con_falha_conexao(void)  { controle_wifi = FALHA_CONEXAO;   }
void con_desconhecido(void)   { controle_wifi = DESCONHECIDO;    }
void con_conexao_perdida(void){ controle_wifi = CONEXAO_PERDIDA; }


void con_monitora_conexao(void){
    unsigned long timeout;

    if(controle_wifi > INDEFINIDO)
        printf("\r\nevento: ");

    switch(controle_wifi){
        case INDEFINIDO:
            break;

        case CONECTANDO:
            printf("conectando");
            controle_wifi = INDEFINIDO;
            break;

        case CONECTADO:
            printf("sucesso na conexao");
            controle_wifi = INDEFINIDO;
            break;

        case FALHA_CONEXAO:
            printf("falha na conexa");
            nova_conexao();
            break;

        case DESCONHECIDO:
            printf("desconhecido");
            controle_wifi = INDEFINIDO;
            break;

        case CONEXAO_PERDIDA:
            printf("conexao perdida");
            controle_wifi = INDEFINIDO;
            break;

        default:
            printf("ops! evento??");
            controle_wifi = INDEFINIDO;
            break;
    }
}

static int nova_conexao(void){
    if(lista_rede.qua == 0) return 0;

    printf("\r\nusando a rede cadastrada:");
    info_rede(rede_atual);

    con_conectando();

    WF_CPSetSsid((unsigned char)lista_rede.prof,
                 (unsigned char *)lista_rede.r[rede_atual].ssid,
                 (unsigned char)strlen(lista_rede.r[rede_atual].ssid));

    WF_CPSetSecurity((unsigned char)lista_rede.prof,
                     (unsigned char)lista_rede.r[rede_atual].tipo,
                     MY_DEFAULT_WEP_KEY_INDEX,
                     (unsigned char *)lista_rede.r[rede_atual].senh,
                     (unsigned char)strlen(lista_rede.r[rede_atual].senh));

    WF_CMConnect(lista_rede.prof);

    
    
    if(rede_atual < lista_rede.qua - 1){
        rede_atual++;
        return 1;
    } else {
        rede_atual = 0;
        return 2;
    }
    
}

static void info_rede(int i){
    printf("\r\n-tipo  : %u", lista_rede.r[i].tipo);
    printf("\r\n-ssid  : %s", lista_rede.r[i].ssid);
    printf("\r\n-senha : %s", lista_rede.r[i].senh);
}


void con_atualiza_redes(void){
    lista_rede.qua = 0;
    controle_wifi = 0;
    
    if(util_memoria_mdd_presente())
        rc_rede();   
}

void con_sincroniza_profile(unsigned char p){
    rede_atual = 0;
    lista_rede.prof = p;
}

/* 
 * File:   conex.h
 * Author: Felipe Bandeira
 *
 * Created on June 21, 2012, 5:55 PM
 */

#ifndef CONEX_H
#define	CONEX_H

#define WF_QUA          4
#define WF_LEN_SSID     14
#define WF_LEN_SENHA    14

#define NDF             0   // nao definida
#define WF_ABERTA       1   // aberta
#define WF_WEP          2   // rede padrao de seguranca wep
#define WF_WAP          3   // rede padrao de seguranca wap

void con_atualiza_redes(void);
void con_sincroniza_profile(unsigned char p);

void con_conectando(void);
void con_conectado(void);
void con_falha_conexao(void);
void con_desconhecido(void);
void con_conexao_perdida(void);

void con_monitora_conexao(void);

struct conex_lista_rede{
    struct{
        char ssid[9];          /* ssid da rede */
        char senh[9];          /* senha da rede, wep*/
        unsigned char tipo;
    }r[4];
    unsigned char qua;          /* quantidade de redes cadastradas */
    unsigned char prof;         /* profile id da microchip */
};


#endif	/* CONEX_H */

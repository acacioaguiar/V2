/*
 * lcd_ext.c
 *
 * Todas as tarefas e funcoes para o controle do lcd externo
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include <stdio.h>

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "croutine.h"

#include "uart_com.h"
#include "comandos.h"
#include "lcd_ext.h"

#include "tempo.h"

#include "Tick.h"

#include "telas/wus.h"
#include "telas/ies.h"
#include "telas/tip.h"

static unsigned int lcd_queue_funcao(void);
LCD_EXT lcd_ext;
xQueueHandle lcd_controle_queue;
static unsigned char limpa_lcd = 0;

void lcd_ext_limpa_tela(void){
    int i;
    
    limpa_lcd = 1;
    
    for(i = 0; i < 17; i++){
        lcd_ext.buf0[i] = '\0';
        lcd_ext.buf1[i] = '\0';
        lcd_ext.buf2[i] = '\0';
        lcd_ext.buf3[i] = '\0';
    }
}

void lcd_ext_msg(char *s, char *buf_linha){
    unsigned char i = 0;
    char *buf;

    buf = buf_linha;
    while(*s != '\0' && i < 17){
        *(buf+i) = *s++;
        i++;
    }
    *(buf+i) = '\0';
}

char lcd_ext_loop_proc(void){
    char *vet[4] = {BUF_LINHA1, BUF_LINHA2, BUF_LINHA3, BUF_LINHA4};
    static char i = 0, j = 0;

    if(limpa_lcd == 1){
        uart_p77_cmd_arg(CMD_LIMPA_LCD, CMD_LIMPA_LCD);
        uart_p77_envia_pacote();
        limpa_lcd = 0;
        return 1;
    }

    /* carrega a linha(cmd) e caractere(arg) */
    uart_p77_cmd_arg(i + CMD_TEXTO_LCD_L1, (char)vet[(int)i][(int)j]);
    uart_p77_envia_pacote();

    if(j < 17 && uart_p77_ler_arg() != '\0'){
        j++;
    } else {
        j = 0;

        uart_p77_cmd_arg(CMD_FIM_LINHA_LCD, CMD_FIM_LINHA_LCD);
        uart_p77_envia_pacote();
        
        if(i < 3){
            i++;
        } else {
            /* prepara a nova tela */
            if(lcd_queue_funcao() == 0){
                lcd_ext_msgs_v2();
            }

            i = 0;
        }
    }
    
    return 1;
}

void lcd_ext_msgs_v2(void){
    static unsigned long tempo = 0;
    static unsigned char tela = 0;
    static unsigned char a = 0;

    if(a == 0){
            tempo = TickGet();
            a++;
    } else {
        if(TickGet() - tempo > LCD_DELAY_MSG * TICKS_PER_SECOND){
            tela++;
            a = 0;
        }
    }

    switch(tela){
        case 0:
            tela_wus();
            break;
        case 1:
            tela_ies();
            break;
        case 2:
            tela_tip();
            break;
        default:
            tela = 0;
            break;
    }
}

static unsigned int lcd_queue_funcao(void){
    static unsigned long tempo = 0;
    static unsigned char tempo_fixo = 0;
    static char trava = 0;
    LCD_QUEUE msg;

    if(trava == 0){
        if(lcd_controle_queue != 0){
            if(xQueueReceive(lcd_controle_queue, &msg, (portTickType)10)){
                lcd_ext_limpa_tela();
                switch(msg.linha){
                    case 0:
                        lcd_ext_msg(msg.buf, LINHA1);
                        break;
                    case 1:
                        lcd_ext_msg(msg.buf, LINHA2);
                        break;
                    case 2:
                        lcd_ext_msg(msg.buf, LINHA3);
                        break;
                    case 3:
                        lcd_ext_msg(msg.buf, LINHA4);
                        break;
                }
                tempo_fixo = msg.tempo;
                tempo = TickGet();
                trava = 1;
                return 1;
            }
            return 0;
        }
    } else {
        if((TickGet() - tempo) > (tempo_fixo * TICKS_PER_SECOND)){
            trava = 0;
            return 0;
        } else {
            return 1;
        }
    }
    return 0;
}


void lcd_qmsg(char *s){
    LCD_QUEUE msg;
    int i = 0;
    
    while(*s != '\0' && i < 17){
        msg.buf[i++] = *s++;
        msg.buf[i] = '\0';
    }
    
    msg.linha = 0;
    msg.tempo = 4;

    xQueueSendToBack(lcd_controle_queue, &msg, 20/portTICK_RATE_MS);
}

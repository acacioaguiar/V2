/*
 * lcd_ext.h
 *
 * Todas as tarefas e funcoes para o controle do lcd externo
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#ifndef _LCD_EXT_H
#define _LCD_EXT_H


#define LCD_DELAY_MSG 4  /* delay entre cada mensagem, em segundos */

#define BUF_LINHA1  lcd_ext.buf0
#define BUF_LINHA2  lcd_ext.buf1
#define BUF_LINHA3  lcd_ext.buf2
#define BUF_LINHA4  lcd_ext.buf3

#define LINHA1  BUF_LINHA1
#define LINHA2  BUF_LINHA2
#define LINHA3  BUF_LINHA3
#define LINHA4  BUF_LINHA4


/* variaveis para o controle do lcd */
typedef struct{
    char msg0[17];
    char linha;
    char buf0[17];
    char buf1[17];
    char buf2[17];
    char buf3[17];
    unsigned ocupado : 1;
}LCD_EXT;

typedef struct{
    char buf[17];
    unsigned char linha;
    unsigned char tempo;
}LCD_QUEUE;


void lcd_ext_limpa_tela(void);
void lcd_ext_msg(char *s, char *buf_linha);
char lcd_ext_loop_proc(void);
void lcd_ext_msgs_v2(void);
void lcd_qmsg(char *s);


#endif

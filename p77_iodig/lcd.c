/*
 * lcd.c
 *
 * Biblioteca para displays 16x4 ou controlador ks0066
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#include <pic.h>
#include "lcd.h"
#include "hardware.h"
#include "homem.h"


/*
 * Defines privados
 */
#define FILTRO_TRIS     (0x60)
#define FILTRO_PORTA    (LCD_DATA & 0xF0)
#define	LCD_PULSO_E()	((LCD_EN = 1),(LCD_EN=0))


/*
 * Envia um byte pela porta definida em hardware.h
 */
void lcd_write(unsigned char c) {
    delay_us(50);
    LCD_DATA = (FILTRO_PORTA | ((c >> 4) & 0x0F));
    delay_us(10);
    LCD_PULSO_E();
    delay_us(10);
    LCD_DATA = (FILTRO_PORTA | (c & 0x0F));
    delay_us(10);
    LCD_PULSO_E();
}


/*
 * Limpa todo o lcd
 */
void lcd_clear(void) {
    LCD_RS = 0;
    lcd_write(0x1);
    delay_ms(20);
}


/*
 * Escreve uma string
 */
void lcd_puts(const char * s) {
    LCD_RS = 1;
    while (*s){
        lcd_write(*s++);
    }
}


/*
 * Escreve um byte
 */
void lcd_putch(char c) {
    LCD_RS = 1;
    lcd_write(c);
}


/*
 * Vai para uma determinada linha
 */
void lcd_goto(unsigned char pos) {
    LCD_RS = 0;
    lcd_write(0x80 + pos);
}


/*
 * Escreve uma string em uma linha definida
 */
void lcd_string(char *s, unsigned char pos) {
    lcd_goto(pos);
    while (*s != '\0') {
        lcd_putch(*s++);
    }
}


/*
 * Inicia o lcd e porta do micro
 */
void lcd_init() {
    LCD_TRIS &= FILTRO_TRIS;
    LCD_DATA &= FILTRO_TRIS;
    LCD_RS = 0;
    LCD_EN = 0;
    //LCD_RW = 0;

    delay_ms(20);
    LCD_DATA = FILTRO_PORTA | 0x03;
    LCD_PULSO_E();
    delay_ms(20);
    LCD_PULSO_E();
    delay_ms(20);
    LCD_PULSO_E();
    delay_ms(20);
    LCD_DATA = FILTRO_PORTA | 2;
    LCD_PULSO_E();
    delay_ms(20);

    /* Interface 4 bits */
    lcd_write(0x28);

    //lcd_write(0xF); /* cursor blink */
    lcd_write(0xC);

    lcd_clear();
    lcd_write(0x6);
}


/*
 * Define o modo de operacao do controlador do lcd
 */
void lcd_modo(unsigned char modo) {
    LCD_RS = LCD_EN = 0; //LCD_RW = 0;
    if (modo) { lcd_write(0xF); } else { lcd_write(0xC); }
}


void lcd_string_len(char *s, unsigned char pos, unsigned char len){
    unsigned char i;

    lcd_goto(pos);
    for(i = 0; i < len; i++){
        lcd_putch(*s++);
    }
}


void lcd_novo_char(unsigned char local, const char *bloco){
    unsigned char i;

    local &= 0x07;
    LCD_RS = 0;
    lcd_write(0x40 | (local << 3));

    LCD_RS = 1;

    for(i = 0; i < 8; i++){
        lcd_write(bloco[i]);
    }
}

void lcd_cursor_ddram(unsigned char coluna, unsigned char linha){
    //int row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };
    int row_offsets[] = { 0x00, 0x40, 0x10, 0x50 };
    const int _numlines = 4;
    
    if ( linha >= _numlines ) {
        linha = _numlines-1;    // we count rows starting w/0
    }

    LCD_RS = 0;

    lcd_write(0x80 | (coluna + row_offsets[linha]));
}
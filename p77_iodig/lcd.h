/*
 * lcd.h
 *
 * Biblioteca para displays 16x4 ou controlador ks0066
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */

#ifndef _LCD_H
#define _LCD_H

#define LCD_LINHA1  0x00
#define LCD_LINHA2  0x40
#define LCD_LINHA3  0x10
#define LCD_LINHA4  0x50


#define LCD_NORMAL  0
#define LCD_CURSOR  1


#define	lcd_cursor(x)	lcd_write(((x)&0x7F)|0x80)


void lcd_write(unsigned char);
void lcd_clear(void);
void lcd_puts(const char * s);
void lcd_goto(unsigned char pos);
void lcd_init(void);
void lcd_putch(char);
void lcd_string(char *s, unsigned char pos);
void lcd_modo(unsigned char modo);
void lcd_string_len(char *s, unsigned char pos, unsigned char len);
void lcd_novo_char(unsigned char local, const char *bloco);
void lcd_cursor_ddram(unsigned char coluna, unsigned char linha);


#endif

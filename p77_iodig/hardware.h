/*
 * hardware.h
 *
 * Definicoes principais de registradores utilizados pelo sistema
 *
 * Felipe Bandeira, felipeband18@gmail.com
 */


#ifndef _HARDWARE_H
#define _HARDWARE_H

/*******************************************************************************
 * Versao do firmware
 */
#define VERSAO  "1.0"


/*******************************************************************************
 * Funcoes de delay da arquitetura
 */
#define delay_us(a) __delay_us(a)
#define delay_ms(a) __delay_ms(a)


/*******************************************************************************
 * Frequencia externa do processador
 * Cada instrucao roda a 200ns ou 0.0000002s
 */
#define _XTAL_FREQ  20000000


/*******************************************************************************
 * Pinos utilizados pela LCD
 */
#define LCD_RS      RB7
//#define LCD_RW      RB5
#define LCD_EN      RB4
#define LCD_DATA    PORTB
#define LCD_TRIS    TRISB


/*******************************************************************************
 * Comunicacao i2c
 */
#define TRIS_SDA    TRISC4
#define TRIS_SCL    TRISC3
#define SDA         RC4
#define SCL         RC3
#define ENDERECO    0x28


/*******************************************************************************
 * Apenas debug
 */
#define LED                     RC0
#define LED_TRIS                TRISC0


/*******************************************************************************
 * Reles
 */
#define PORT_RELES_1  PORTD
#define TRIS_RELES_1  TRISD
#define RELE1         RD0
#define RELE2         RD1
#define RELE3         RD2
#define RELE4         RD3
#define RELE5         RD4
#define RELE6         RD5
#define RELE7         RD6
#define RELE8         RD7

#define PORT_RELES_2  PORTE
#define TRIS_RELES_2  TRISE
#define RELE9         RE0
#define RELE10        RE1


#define BOTAO_TRIS   TRISC1
#define BOTAO_PORT   RC1


#endif
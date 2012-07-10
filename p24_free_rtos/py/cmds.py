# -*- coding: utf-8 -*-
"""
Created on Sun Jul 08 10:04:39 2012

@author: Felipe Bandeira

Comandos
"""

ENTER = "\r"
ESPACO = " "

# complemento necessario devido ao iwconsole da microchip
COMPLEMENTO = "sis" + ESPACO

# verifica o stack do freertos
STACK = COMPLEMENTO+"stack"

# lista os arquivos do diretorio raiz
LS = COMPLEMENTO+"ls"

# versao do modulo
VERSAO = COMPLEMENTO+"ver"

# remove um arquivo
RM = COMPLEMENTO+"rm"

# cria um arquivo
EDIT = COMPLEMENTO+"edit"

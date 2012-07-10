# -*- coding: utf-8 -*-
"""
Created on Sat Jul 07 21:07:23 2012

@author: Felipe Bandeira

Mensagens
"""

from time import asctime

def msg_inicial():
    print "Interface com o modulo de controle, Felipe Bandeira, 05/06/2012"
    print "use 'help' para mais informacoes"
    print "use 'sair' ou <CTRL + C> para sair"
    print 
    print asctime()

def msg_versao(versao):
    print "Versao: ", versao

def msg_help():
    print "Interface para o controle do modulo"
    print "Comandos disponiveis:"
    print " - status : informa a situacao da interface"
    print " - busca : busca o modulo conectado na USB"
    print " - canal : canal de comunicacao direto"
    print " - versao : versao do programa"
    print " - atualiza : atualiza o modulo com os ultimos arquivos"
    print " - recupera : recupera todos os arquivos do modulo"
    print " - ls : lista os arquivos do diretorio atual"
    print " - cwd : informa o diretorio atual"
    print "A porta serial e' lista como: 0, 1 que equivale"
    print "0 = COM1, 1 = COM2... (windows)"
    print "Comandos do modulo:"
    print " - lsp : lista os arquivos da memoria"
    print " - rmp <arquivo> : remove um arquivo(sem espacos)"
    
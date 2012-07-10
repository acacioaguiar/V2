# -*- coding: utf-8 -*-
"""
Created on Sat Jul 07 21:07:23 2012

@author: Felipe Bandeira

Programa principal
"""

from men import *
from comu import *
from os import getcwd, listdir, mkdir
from os.path import isfile, isdir
try:
    from serial import Serial
except:
    print "pyserial nao encontrado"
    
import sys

VERSAO = 1
prompt = "> "
DIR_TRAB = "ami"

def status():
    print "diretorio atual: ", getcwd()

    if(status_dir_trabalho):
        print "diretorio de trabalho: ", str(getcwd())+"\\"+DIR_TRAB
    else:
        print "erro no diretorio de trabalho"

    try:
        if(len(modulo) > 0):
            print "modulo encontrado em: ",modulo
        else:
            print "erro: modulo nao foi encontrado"
    except:
        print "erro: busca ainda nao foi iniciada"

def processa_cmd(argc, argv):
    global modulo

    if argv[0] == "versao" and argc == 1:
        msg_versao(VERSAO)

    elif argv[0] == "help" and argc == 1:
        msg_help()

    elif argv[0] == "status" and argc == 1:
        status()

    elif argv[0] == "busca" and argc == 1:
        modulo = busca_modulo()
        a = open("m", "w")
        a.write(str(modulo))
        a.close()
    elif argv[0] == "canal" and argc == 2:
        canal_comunicacao(argv[1])

    elif argv[0] == "sair" or argv[0] == "exit":
        exit()

    elif argv[0] == "ls" and argc == 1:
        for i in listdir("."):
            print i,
            if isdir(i):
                print " [d]"
            elif isfile(i):
                print " [f]"
            else:
                print " [e]"

    elif argv[0] == "cwd" and argc == 1:
        print getcwd()

    elif argv[0] == "lsp" and argc >= 1:
        if argc == 1:
            try:
                ret = ls_p24(modulo[0])
            except:
                print "erro: procure o modulo primeiro"
                return
        elif argc == 2:
            ret = ls_p24(argv[1])
        else:
            print "erro: muitos argumentos"
            return

        if ret != None:
            if len(ret)>0:
                print ret
            else:
                print "aviso: nada encontrado"


    elif argv[0] == "stack" and argc >= 1:
        if argc == 1:
            porta_disponivel = verifica_porta(modulo)
            if porta_disponivel != None:
                stack_p24(porta_disponivel)
            else:
                print "erro: procure o modulo primeiro"
        elif argc == 2:
            ret = stack_p24(argv[1])
        else:
            print "erro: muitos argumentos"
            return
            
    elif argv[0] == "atualiza" and argc == 1:
        if argc == 1:
            porta_disponivel = verifica_porta(modulo)
            if porta_disponivel != None:
                atualiza_p24(porta_disponivel, str(getcwd())+"\\"+DIR_TRAB)
            else:
                print "erro: procure o modulo primeiro"
        else:
            print "erro: muitos argumentos"
            
    elif argv[0] == "recupera" and argc >= 1:
        if argc == 1:
            porta_disponivel = verifica_porta(modulo)
            if porta_disponivel != None:
                print "aviso: isso ainda nao esta funcionando"
            else:
                print "erro: procure o modulo primeiro"
        elif argc == 2:
            print "aviso: isso ainda nao esta funcionando"
        else:
            print "erro: muitos argumentos"
        
    elif argv[0] == "rmp" and argc >= 1:
        if argc == 2:
            porta_disponivel = verifica_porta(modulo)
            if porta_disponivel != None:
                estado = remove_arquivo_modulo(porta_disponivel, argv[1])
            else:
                print "erro: procure o modulo primeiro"
                
            if estado == 0:
                print "sucesso na remocao"
            else:
                print "erro: na remocao"
        else:
            print "erro: muitos argumentos"
            
    elif argv[0] == "limpa" and argc >= 1:
        if argc == 1:
            porta_disponivel = verifica_porta(modulo)
            if porta_disponivel != None:
                limpa_memoria_modulo(porta_disponivel)
            else:
                print "erro: procure o modulo primeiro"
        elif argc == 2:
            limpa_memoria_modulo(argv[1])
            
    else:
        print "erro: comando nao encontrado"
        
def conf_dir_trabalho():
    global status_dir_trabalho
    status_dir_trabalho = 0

    try:
        if(not isdir(DIR_TRAB)):
            print
            print "iniciando o diretorio de trabalho"
            try:
                mkdir(DIR_TRAB)
                return
            except:
                print "erro: nao foi possivel criar o diretorio de trabalho"
                return
        status_dir_trabalho = 1
    except:
        print
        print "erro: nao foi possivel criar o diretorio de trabalho"
        print "em, ", getcwd()
        print "com nome, ", DIR_TRAB

def inicia_variaveis():
    """ 
    Toda a vez que a busca é iniciada o programa salva qual foi a ultima porta encontrada 
    """
    global modulo
    try:
        f = open("m", "r")
        a = f.read()
        f.close()
        a = a[1:-1].split(',')
        modulo = a
    except:
        pass

def teste_sanidade():
    global modulo
    try:
        for i in modulo:
            try:
                com = Serial(int(i))
                com.close()
            except:
                modulo = []
                f = open("m", "w")
                f.write("")
                f.close()
                return
    except:
        pass

if __name__ == '__main__':
    conf_dir_trabalho()
    inicia_variaveis()
    teste_sanidade()
    
    if len(sys.argv)>1:
        processa_cmd(len(sys.argv)-1, sys.argv[1:])
        exit()

    msg_inicial()
    
    print
    while True:
        cmd = raw_input(prompt).split()
        if(len(cmd)>0):
            processa_cmd(len(cmd), cmd)

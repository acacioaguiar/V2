# -*- coding: utf-8 -*-
"""
Created on Sat Jul 07 21:06:15 2012

@author: Felipe Bandeira

Comunicacao
"""

from serial import Serial
from msvcrt import getch, kbhit
import sys
from threading import Thread
from time import sleep
from cmds import *
from os.path import isfile
from os import listdir
from progressbar import *

PRINT_ATIVO      = 1
PRINT_DESATIVADO = 0

SUCESSO_COMU = 1
ERRO_COMU    = 0
NADA_COMU    = None

def _write_p24(com, s):
    """ 
    Em alguns momentos o modulo pode abrir a porta virtual mas nao é
    possivel escrever nele, entao o pyserial trava o programa, para evitar
    isso eu crio uma simples thread com tempo maximo de resposta
    """
    global _write_status
    try:
        _write_status = 0
        com.write(s)
        _write_status = 1
    except:
        _write_status = 0
        return
        
def espera_modulo_processar():
    sleep(2)

def busca_modulo():
    """ 
    Busca o modulo, procurando em todas as portas disponiveis
    no sistema, no final inicia retorna aonde o modulo foi encontrado
    """
    portas = []
    modulo = []

    for i in range(0,256):
        try:
            com = Serial(i)
            com.close()
            portas.append(i)
        except:
            pass

    if(len(portas) > 0):
        print "portas disponiveis: "
        for i in portas:
            print "COM%d " % (i+1)
    else:
        print "erro: nenhuma porta disponivel"
        return []


    for i in portas:
        print "buscando modulo na porta: ", i
        com = Serial(i, timeout = 1)

        th = Thread(target = _write_p24, args =(com, '\r'))
        th.start()
        th.join(1)

        if _write_status == 0:
            com.close()
            continue
        
        com.read(100)

        com.write(ENTER)
        com.read(100)
        
        com.write(ENTER)
        com.read(100)

        # envia o comando <ver> para o modulo
        com.write(VERSAO+ENTER)

        rec = com.read(100)
        com.close()

        try:
            if int(rec.split()[2]) >= 100:
                modulo.append(i)
        except:
            pass

    if(len(modulo) > 0):
        print "modulo em: ", modulo
        return modulo
    else:
        print "erro: modulo nao encontrado"
        return []

def canal_comunicacao(porta):
    com = abre_porta(porta, PRINT_ATIVO)
    if com == None:
        return

    print "canal de comunicacao PC <-> Serial"
    print "porta: ", com.portstr
    com.flushInput()
    while True:
        if kbhit() == True:
            str = getch()
            com.write(str)
            if str == 127:
                sys.stdout.write(127)
        elif(com.inWaiting()>0):
            sys.stdout.write("%s" % com.read(com.inWaiting()))

def limpa_buffer(com):
    com.write(ENTER)
    sleep(0.5)
    if com.inWaiting() > 0:
        com.read(com.inWaiting())

def formata_saida(si, s):
    s = s[:len(s)-4]
    s = s[len(si)+1:]
    return s

def ls_p24(porta):
    com = abre_porta(porta, PRINT_ATIVO)
    if com == None:
        return None

    limpa_buffer(com)
    com.write(LS+ENTER)

    rec = read_serial(com)
    fecha_porta(com, PRINT_ATIVO)

    if rec == "":
        print "erro: modulo nao responde"
        return None

    return formata_saida(LS+ENTER, rec)

def abre_porta(porta, p):
    try:
        com = Serial(int(porta), timeout = 1)
        return com
    except:
        if p == PRINT_ATIVO:
            print "erro: nao foi possivel abrir a porta"
        return None

def fecha_porta(com, p):
    try:
        com.close()
    except:
        if p == PRINT_ATIVO:
            print "erro: nao foi possivel fechar a porta"

def read_serial(com):
    print "processando..."
    
    sleep(1)
    iqual = 0
    if com.inWaiting() > 0:
        ant = com.inWaiting()
        while True:
            if iqual > 2:
                break          
            elif com.inWaiting != ant:
                ant = com.inWaiting
            else:
                iqual += 1
                sleep(1)
                
        return com.read(com.inWaiting())
    else:
        return None
    
def envia_serial(com, s):
    for i in s:
        com.write(i)
        while com.inWaiting() == 0:
            pass    
        
def envia_pacote_serial(com, s):   
    barra = ['',Percentage(), ' ',Bar(marker=RotatingMarker()),' ',
             ETA(), ' ', FileTransferSpeed()]    

    maximo = len(s)/8
    if len(s) > ((len(s)/8)*8):
        maximo += 1
        
    pbar = ProgressBar(widgets=barra, maxval = maximo).start()    
    
    cont = 0
    for i in range(len(s)/8):
        com.write(s[(i*8):(i*8)+8])
        com.write('0')
        while(com.inWaiting() == 0):
            pass
        
        cont+=1
        pbar.update(cont)
          
    if len(s) > ((len(s)/8)*8):
        sleep(1)
        com.write(s[((len(s)/8)*8):])
        #print "enviando: ", s[((len(s)/8)*8):]
        cont+=1
        pbar.update(cont)
        
    com.write('\0')
    pbar.finish()
        

def stack_p24(porta):
    com = abre_porta(porta, PRINT_ATIVO)
    if com == None:
        return

    limpa_buffer(com)
    com.write(STACK+ENTER)
    ret = read_serial(com)
    com.close()
    ret = formata_saida(STACK+ENTER, ret)
    
    print ret
    
def verifica_porta(modulo):    
    for i in modulo:
        try:
            com = abre_porta(i, PRINT_DESATIVADO)
            if com != None:
                fecha_porta(com, PRINT_DESATIVADO)
                return i
        except:
            pass
    return None
    
def lista_todos_arquivos(porta):
    arq_sformt = ls_p24(porta)
    if arq_sformt == None:
        return None
    # separa tudo que tiver entre os espacos
    string = arq_sformt.split()
    lista = []
    for i in range(4, len(string)+1, 4):
        # adiciona o 4 elemento e pecorre os proximos
        lista.append(string[i-1])
    return lista
    
def remove_arquivo_modulo(porta, arquivo):
    com = abre_porta(porta, PRINT_ATIVO)
    if com == None:
        return
        
    envia_serial(com, RM+ESPACO+arquivo+ENTER)
    retorno = read_serial(com)
    retorno = formata_saida(RM+ESPACO+arquivo+ENTER, retorno)        
    fecha_porta(com, PRINT_ATIVO)
    
    # busca o "sucesso" hihi
    estado = retorno.find("sucesso")
    if estado == -1:
        #erro  na remocao
        return 1
    else:
        #sucesso na remocao
        return 0
        
def limpa_memoria_modulo(porta):
    try:
        lista = lista_todos_arquivos(porta)
        if lista == None:
            return None
        if len(lista)>0:
            print "limpando a memoria..."
            for arq in lista:
                remove_arquivo_modulo(porta, arq)
            print "memoria limpa"
            return 1
        else:
            print "memoria ja' esta limpa"
            return 1
        
    except:
        print "erro: nao foi possivel limpar a memoria"
        
        
def edit_arq_modulo(porta, nome, dado):
    com = abre_porta(porta, PRINT_ATIVO)
    if com == None:
        return None
        
    if len(nome) == 0:
        return None
    if len(dado) == 0:
        return None
        
    envia_serial(com, EDIT+ESPACO+nome+ESPACO+ENTER)
    espera_modulo_processar()
    retorno = formata_saida(EDIT+ESPACO+nome+ESPACO+ENTER, read_serial(com))        
    resultado = retorno.find("erro")
    if resultado != -1:
        print "erro: problema no modulo"
        print retorno
        return ERRO_COMU
        
    espera_modulo_processar()
    envia_pacote_serial(com, dado)
    espera_modulo_processar()
    
    retorno = read_serial(com)
    if retorno.find("finalizado") == -1:
        print "erro: nao foi possivel criar o arquivo, ", nome
    else:
        print "aviso: arquivo criado"
        
    fecha_porta(com, PRINT_DESATIVADO)
    
    return 0
    
def copia_arquivo_p24(porta, diretorio, arquivo):
    try:    
        arq = open(diretorio+"\\"+arquivo, "r")
    except:
        print "erro: nao foi possivel abrir arquivo, ", arquivo
        return 1
        
    conteudo = arq.read()
    arq.close()
    return edit_arq_modulo(porta, arquivo, conteudo)
    
def atualiza_p24(porta, dir_trabalho):
    print "atualizando..."
    arquivos = listdir(dir_trabalho)
    
    erro = 0
    for i in arquivos:
        if isfile(dir_trabalho+"\\"+i):
            print "copiando arquivo: %s para o modulo" % i
            erro += copia_arquivo_p24(porta,dir_trabalho, i)
            
    if erro > 0:
        print "erro: atualizacao foi compremetida"
    else:
        print "atualizacao finalizada"
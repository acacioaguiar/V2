#!/usr/bin/env python

import socket
import time

TCP_IP = '192.168.1.166'
TCP_PORT = 9022
BUFFER_SIZE = 1024  # Normally 1024, but we want fast response

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((TCP_IP, TCP_PORT))
s.listen(1)

conn, addr = s.accept()
print 'conexao:', addr
while 1:
	#time.sleep(3) # testando delays de processamento
	data = conn.recv(BUFFER_SIZE)
	
	if not data: break
	
	print "recv:", data
	conn.send(data)  
	
conn.close()

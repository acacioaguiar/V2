#include <stdio.h>
#include <string.h>
#include "TCPIP Stack/TCPIP.h"

struct tcp_struct{
    unsigned char ip[32];
    unsigned int porta;
    TCP_SOCKET socket;
    unsigned char controle;
}tcp;

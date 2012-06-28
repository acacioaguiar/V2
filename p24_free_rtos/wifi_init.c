#include "TCPIP Stack/TCPIP.h"
#include "conex.h"







#define IP_END_24B ( MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2 << 8ul | \
                     MY_DEFAULT_IP_ADDR_BYTE3 << 16ul | MY_DEFAULT_IP_ADDR_BYTE4 << 24ul )

#define MASK_24B   ( MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2 << 8ul | \
                     MY_DEFAULT_MASK_BYTE3 << 16ul | MY_DEFAULT_MASK_BYTE4 << 24ul)

#define GATE_24B   ( MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2 << 8ul | \
                     MY_DEFAULT_GATE_BYTE3 << 16ul | MY_DEFAULT_GATE_BYTE4 << 24ul)

#define DNS_24B    ( MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2 << 8ul | \
                     MY_DEFAULT_PRIMARY_DNS_BYTE3 << 16ul | MY_DEFAULT_PRIMARY_DNS_BYTE4 << 24ul)

#define DNS2_24B   ( MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2 << 8ul | \
                     MY_DEFAULT_SECONDARY_DNS_BYTE3 << 16ul | MY_DEFAULT_SECONDARY_DNS_BYTE4 << 24ul)


#define D_MAC_1  MY_DEFAULT_MAC_BYTE1
#define D_MAC_2  MY_DEFAULT_MAC_BYTE2
#define D_MAC_3  MY_DEFAULT_MAC_BYTE3
#define D_MAC_4  MY_DEFAULT_MAC_BYTE4
#define D_MAC_5  MY_DEFAULT_MAC_BYTE5
#define D_MAC_6  MY_DEFAULT_MAC_BYTE6

#define SEC_OPEN    (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_OPEN)
#define SEC_WEP40   (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_40)
#define SEC_WEP104  (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_104)

#define SEC_WAP_M1  ((MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_KEY)      || \
                     (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_KEY)     || \
                     (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_KEY))

#define SEC_WAP_M2  ((MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_PASS_PHRASE)      || \
                     (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_PASS_PHRASE)     || \
                     (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE))


#define WF_MODULE_NUMBER   WF_MODULE_MAIN_DEMO

//extern APP_CONFIG AppConfig;
static ROM BYTE SerializedMACAddress[6] = { D_MAC_1, D_MAC_2, D_MAC_3, D_MAC_4, D_MAC_5, D_MAC_6};

/*
 * Inicia a variavel appconfig usada por toda a pilha tcp/ip
 */
void wifi_init_appconfig(void) {
    AppConfig.Flags.bIsDHCPEnabled = TRUE;
    AppConfig.Flags.bInConfigMode = TRUE;

    memcpypgm2ram(  (void*) &AppConfig.MyMACAddr,
                    (ROM void*) SerializedMACAddress,
                    sizeof (AppConfig.MyMACAddr));

    AppConfig.MyIPAddr.Val = IP_END_24B;
    AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
    AppConfig.MyMask.Val = MASK_24B;
    AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
    AppConfig.MyGateway.Val = GATE_24B;
    AppConfig.PrimaryDNSServer.Val = DNS_24B;
    AppConfig.SecondaryDNSServer.Val = DNS2_24B;

    // Load the default NetBIOS Host Name
    memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*) MY_DEFAULT_HOST_NAME, 16);
    FormatNetBIOSName(AppConfig.NetBIOSName);

    // Load the default SSID Name
    WF_ASSERT(sizeof (MY_DEFAULT_SSID_NAME) <= sizeof (AppConfig.MySSID));

    memcpypgm2ram(AppConfig.MySSID, (ROM void*) MY_DEFAULT_SSID_NAME,
                  sizeof (MY_DEFAULT_SSID_NAME));

    AppConfig.SsidLength = sizeof (MY_DEFAULT_SSID_NAME) - 1;

    AppConfig.SecurityMode = MY_DEFAULT_WIFI_SECURITY_MODE;
    AppConfig.WepKeyIndex = MY_DEFAULT_WEP_KEY_INDEX;

#if (SEC_OPEN)
    memset(AppConfig.SecurityKey, 0x00, sizeof (AppConfig.SecurityKey));
    AppConfig.SecurityKeyLength = 0;

#elif SEC_WEP40
    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*) MY_DEFAULT_WEP_KEYS_40, sizeof (MY_DEFAULT_WEP_KEYS_40) - 1);
    AppConfig.SecurityKeyLength = sizeof (MY_DEFAULT_WEP_KEYS_40) - 1;

#elif SEC_WEP104
    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*) MY_DEFAULT_WEP_KEYS_104, sizeof (MY_DEFAULT_WEP_KEYS_104) - 1);
    AppConfig.SecurityKeyLength = sizeof (MY_DEFAULT_WEP_KEYS_104) - 1;

#elif SEC_WAP_M1
    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*) MY_DEFAULT_PSK, sizeof (MY_DEFAULT_PSK) - 1);
    AppConfig.SecurityKeyLength = sizeof (MY_DEFAULT_PSK) - 1;

#elif SEC_WAP_M2
    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*) MY_DEFAULT_PSK_PHRASE, sizeof (MY_DEFAULT_PSK_PHRASE) - 1);
    AppConfig.SecurityKeyLength = sizeof (MY_DEFAULT_PSK_PHRASE) - 1;

#else
#error "No security defined"
#endif /* MY_DEFAULT_WIFI_SECURITY_MODE */

}

void wifi_conexao_padrao(void){
    UINT8 ConnectionProfileID;
    UINT8 channelList[] = MY_DEFAULT_CHANNEL_LIST;
    /* create a Connection Profile */
    WF_CPCreate(&ConnectionProfileID);
    WF_CPSetSsid(ConnectionProfileID,
                 AppConfig.MySSID,
                 AppConfig.SsidLength);

    WF_CPSetNetworkType(ConnectionProfileID, MY_DEFAULT_NETWORK_TYPE);
    WF_CASetScanType(MY_DEFAULT_SCAN_TYPE);
    WF_CASetChannelList(channelList, sizeof(channelList));


    WF_CASetEventNotificationAction(MY_DEFAULT_EVENT_NOTIFICATION_LIST);
    WF_CASetBeaconTimeout(40);

    /* Set Security */
    #if (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_OPEN)
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (Open)\r\n");
        #endif
    #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_40)
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WEP40)\r\n");
        #endif
    #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_104)
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WEP104)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_KEY
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA with key)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_KEY
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA2 with key)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_PASS_PHRASE
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA with pass phrase)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_PASS_PHRASE
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA2 with pass phrase)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_KEY
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA with key, auto-select)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA with pass phrase, auto-select)\r\n");
        #endif
    #endif /* MY_DEFAULT_WIFI_SECURITY_MODE */

    WF_CPSetSecurity(ConnectionProfileID,
                     AppConfig.SecurityMode,
                     AppConfig.WepKeyIndex,   /* only used if WEP enabled */
                     AppConfig.SecurityKey,
                     AppConfig.SecurityKeyLength);
    WF_CMConnect(ConnectionProfileID);

    con_sincroniza_profile((unsigned char)ConnectionProfileID);
}

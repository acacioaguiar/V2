#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-p24-xc16.mk)" "nbproject/Makefile-local-p24-xc16.mk"
include nbproject/Makefile-local-p24-xc16.mk
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=p24-xc16
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ubasic/tokenizer.o ${OBJECTDIR}/ubasic/ubasic.o ${OBJECTDIR}/free_rtos/croutine.o ${OBJECTDIR}/free_rtos/list.o ${OBJECTDIR}/free_rtos/queue.o ${OBJECTDIR}/free_rtos/tasks.o ${OBJECTDIR}/free_rtos/timers.o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o "${OBJECTDIR}/microchip/MDD File System/FSIO.o" "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o" ${OBJECTDIR}/mini_ini/minIni.o ${OBJECTDIR}/telas/wus.o ${OBJECTDIR}/telas/ies.o ${OBJECTDIR}/telas/tip.o ${OBJECTDIR}/io_p77.o ${OBJECTDIR}/lcd_ext.o ${OBJECTDIR}/uart_com.o ${OBJECTDIR}/p1503_com.o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o" "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o" "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o" "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o" "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o" "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o" "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o" "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o" "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o" "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o" "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o" "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o" "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o" "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o" "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o" "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o" "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o" "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o" "${OBJECTDIR}/microchip/TCPIP Stack/IP.o" "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o" "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o" "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o" "${OBJECTDIR}/microchip/TCPIP Stack/Random.o" "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o" "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o" "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o" "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o" "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o" "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o" "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o" "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o" "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o" "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o" "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o" "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o" "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o" "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o" "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o" "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o" "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o" "${OBJECTDIR}/microchip/TCPIP Stack/UART.o" "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o" "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o" "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o" ${OBJECTDIR}/HTTP2_MDD.o ${OBJECTDIR}/microchip/USB/usb_device.o ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o" ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/main.o ${OBJECTDIR}/board.o ${OBJECTDIR}/usb_tty.o ${OBJECTDIR}/fardo.o ${OBJECTDIR}/WF_Config.o ${OBJECTDIR}/CustomHTTPApp.o ${OBJECTDIR}/wifi_init.o ${OBJECTDIR}/tempo.o ${OBJECTDIR}/rc.o ${OBJECTDIR}/sconsole.o ${OBJECTDIR}/tcp_com.o ${OBJECTDIR}/util.o ${OBJECTDIR}/conex.o ${OBJECTDIR}/armadilhas.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ubasic/tokenizer.o.d ${OBJECTDIR}/ubasic/ubasic.o.d ${OBJECTDIR}/free_rtos/croutine.o.d ${OBJECTDIR}/free_rtos/list.o.d ${OBJECTDIR}/free_rtos/queue.o.d ${OBJECTDIR}/free_rtos/tasks.o.d ${OBJECTDIR}/free_rtos/timers.o.d ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d" "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d" ${OBJECTDIR}/mini_ini/minIni.o.d ${OBJECTDIR}/telas/wus.o.d ${OBJECTDIR}/telas/ies.o.d ${OBJECTDIR}/telas/tip.o.d ${OBJECTDIR}/io_p77.o.d ${OBJECTDIR}/lcd_ext.o.d ${OBJECTDIR}/uart_com.o.d ${OBJECTDIR}/p1503_com.o.d "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d" ${OBJECTDIR}/HTTP2_MDD.o.d ${OBJECTDIR}/microchip/USB/usb_device.o.d ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d" ${OBJECTDIR}/usb_descriptors.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/board.o.d ${OBJECTDIR}/usb_tty.o.d ${OBJECTDIR}/fardo.o.d ${OBJECTDIR}/WF_Config.o.d ${OBJECTDIR}/CustomHTTPApp.o.d ${OBJECTDIR}/wifi_init.o.d ${OBJECTDIR}/tempo.o.d ${OBJECTDIR}/rc.o.d ${OBJECTDIR}/sconsole.o.d ${OBJECTDIR}/tcp_com.o.d ${OBJECTDIR}/util.o.d ${OBJECTDIR}/conex.o.d ${OBJECTDIR}/armadilhas.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ubasic/tokenizer.o ${OBJECTDIR}/ubasic/ubasic.o ${OBJECTDIR}/free_rtos/croutine.o ${OBJECTDIR}/free_rtos/list.o ${OBJECTDIR}/free_rtos/queue.o ${OBJECTDIR}/free_rtos/tasks.o ${OBJECTDIR}/free_rtos/timers.o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o ${OBJECTDIR}/mini_ini/minIni.o ${OBJECTDIR}/telas/wus.o ${OBJECTDIR}/telas/ies.o ${OBJECTDIR}/telas/tip.o ${OBJECTDIR}/io_p77.o ${OBJECTDIR}/lcd_ext.o ${OBJECTDIR}/uart_com.o ${OBJECTDIR}/p1503_com.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o ${OBJECTDIR}/HTTP2_MDD.o ${OBJECTDIR}/microchip/USB/usb_device.o ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/main.o ${OBJECTDIR}/board.o ${OBJECTDIR}/usb_tty.o ${OBJECTDIR}/fardo.o ${OBJECTDIR}/WF_Config.o ${OBJECTDIR}/CustomHTTPApp.o ${OBJECTDIR}/wifi_init.o ${OBJECTDIR}/tempo.o ${OBJECTDIR}/rc.o ${OBJECTDIR}/sconsole.o ${OBJECTDIR}/tcp_com.o ${OBJECTDIR}/util.o ${OBJECTDIR}/conex.o ${OBJECTDIR}/armadilhas.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-p24-xc16.mk dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB106
MP_LINKER_FILE_OPTION=,--script=p24FJ256GB106.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ubasic/tokenizer.o: ubasic/tokenizer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/tokenizer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ubasic/tokenizer.c  -o ${OBJECTDIR}/ubasic/tokenizer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ubasic/tokenizer.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/ubasic/tokenizer.o.d" $(SILENT) 
	
${OBJECTDIR}/ubasic/ubasic.o: ubasic/ubasic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/ubasic.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ubasic/ubasic.c  -o ${OBJECTDIR}/ubasic/ubasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ubasic/ubasic.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/ubasic/ubasic.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/croutine.o: free_rtos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/croutine.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/croutine.c  -o ${OBJECTDIR}/free_rtos/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/croutine.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/croutine.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/list.o: free_rtos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/list.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/list.c  -o ${OBJECTDIR}/free_rtos/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/list.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/list.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/queue.o: free_rtos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/queue.c  -o ${OBJECTDIR}/free_rtos/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/queue.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/queue.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/tasks.o: free_rtos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/tasks.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/tasks.c  -o ${OBJECTDIR}/free_rtos/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/tasks.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/tasks.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/timers.o: free_rtos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/timers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/timers.c  -o ${OBJECTDIR}/free_rtos/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/timers.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/timers.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o: free_rtos/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o: free_rtos/portable/MemMang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MemMang 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/portable/MemMang/heap_3.c  -o ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o: microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/MDD\ File\ System 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/MDD File System/FSIO.c"  -o "${OBJECTDIR}/microchip/MDD File System/FSIO.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o: microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/MDD\ File\ System 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/MDD File System/SD-SPI.c"  -o "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d" $(SILENT) 
	
${OBJECTDIR}/mini_ini/minIni.o: mini_ini/minIni.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/mini_ini 
	@${RM} ${OBJECTDIR}/mini_ini/minIni.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mini_ini/minIni.c  -o ${OBJECTDIR}/mini_ini/minIni.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mini_ini/minIni.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/mini_ini/minIni.o.d" $(SILENT) 
	
${OBJECTDIR}/telas/wus.o: telas/wus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/wus.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  telas/wus.c  -o ${OBJECTDIR}/telas/wus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/telas/wus.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/telas/wus.o.d" $(SILENT) 
	
${OBJECTDIR}/telas/ies.o: telas/ies.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/ies.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  telas/ies.c  -o ${OBJECTDIR}/telas/ies.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/telas/ies.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/telas/ies.o.d" $(SILENT) 
	
${OBJECTDIR}/telas/tip.o: telas/tip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/tip.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  telas/tip.c  -o ${OBJECTDIR}/telas/tip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/telas/tip.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/telas/tip.o.d" $(SILENT) 
	
${OBJECTDIR}/io_p77.o: io_p77.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/io_p77.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  io_p77.c  -o ${OBJECTDIR}/io_p77.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/io_p77.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/io_p77.o.d" $(SILENT) 
	
${OBJECTDIR}/lcd_ext.o: lcd_ext.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/lcd_ext.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lcd_ext.c  -o ${OBJECTDIR}/lcd_ext.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/lcd_ext.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/lcd_ext.o.d" $(SILENT) 
	
${OBJECTDIR}/uart_com.o: uart_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/uart_com.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart_com.c  -o ${OBJECTDIR}/uart_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart_com.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/uart_com.o.d" $(SILENT) 
	
${OBJECTDIR}/p1503_com.o: p1503_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/p1503_com.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  p1503_com.c  -o ${OBJECTDIR}/p1503_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/p1503_com.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/p1503_com.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o: microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsole.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o: microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o: microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o: microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WF_Eint.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o: microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WF_Spi.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o: microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o: microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConnectionManager.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o: microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o: microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFDataTxRx.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o: microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFDriverCom.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o: microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFDriverRaw.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o: microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFEasyConfig.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o: microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFEventHandler.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o: microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFInit.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o: microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFMac.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o: microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o: microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFParamMsg.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o: microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFPowerSave.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o: microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFScan.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o: microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFTxPower.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o: microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Announce.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o: microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ARCFOUR.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o: microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ARP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o: microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/AutoIP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o: microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/BerkeleyAPI.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o: microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/BigInt.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o: microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Delay.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o: microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DHCP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o: microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DHCPs.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o: microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DNS.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o: microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DNSs.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o: microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DynDNS.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o: microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/FileSystem.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o: microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/FTP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o: microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Hashes.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o: microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Helpers.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o: microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ICMP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o: microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/IP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/IP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o: microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/LCDBlocking.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o: microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/MPFS2.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o: microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/NBNS.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o: microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Random.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Random.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o: microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Reboot.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o: microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/RSA.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o: microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SMTP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o: microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SNMP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o: microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SNMPv3.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o: microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SNMPv3USM.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o: microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SNTP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o: microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SPIEEPROM.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o: microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SPIFlash.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o: microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SPIRAM.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o: microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SSL.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o: microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/StackTsk.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o: microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/TCP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o: microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/TCPPerformanceTest.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o: microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Telnet.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o: microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/TFTPc.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o: microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Tick.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o: microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/UART.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/UART.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o: microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/UART2TCPBridge.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o: microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/UDP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o: microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/UDPPerformanceTest.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o: microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ZeroconfHelper.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o: microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ZeroconfLinkLocal.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o: microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d" $(SILENT) 
	
${OBJECTDIR}/HTTP2_MDD.o: HTTP2_MDD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/HTTP2_MDD.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  HTTP2_MDD.c  -o ${OBJECTDIR}/HTTP2_MDD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/HTTP2_MDD.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/HTTP2_MDD.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/USB/usb_device.o: microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  microchip/USB/usb_device.c  -o ${OBJECTDIR}/microchip/USB/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/USB/usb_device.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/usb_device.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/USB/usb_hal_pic24.o: microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  microchip/USB/usb_hal_pic24.c  -o ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o: microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver 
	@${RM} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/USB/CDC Device Driver/usb_function_cdc.c"  -o "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d" $(SILENT) 
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  usb_descriptors.c  -o ${OBJECTDIR}/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) 
	
${OBJECTDIR}/board.o: board.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/board.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  board.c  -o ${OBJECTDIR}/board.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/board.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/board.o.d" $(SILENT) 
	
${OBJECTDIR}/usb_tty.o: usb_tty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_tty.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  usb_tty.c  -o ${OBJECTDIR}/usb_tty.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/usb_tty.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/usb_tty.o.d" $(SILENT) 
	
${OBJECTDIR}/fardo.o: fardo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/fardo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  fardo.c  -o ${OBJECTDIR}/fardo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/fardo.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/fardo.o.d" $(SILENT) 
	
${OBJECTDIR}/WF_Config.o: WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/WF_Config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WF_Config.c  -o ${OBJECTDIR}/WF_Config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/WF_Config.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/WF_Config.o.d" $(SILENT) 
	
${OBJECTDIR}/CustomHTTPApp.o: CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  CustomHTTPApp.c  -o ${OBJECTDIR}/CustomHTTPApp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/CustomHTTPApp.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/CustomHTTPApp.o.d" $(SILENT) 
	
${OBJECTDIR}/wifi_init.o: wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/wifi_init.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  wifi_init.c  -o ${OBJECTDIR}/wifi_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/wifi_init.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/wifi_init.o.d" $(SILENT) 
	
${OBJECTDIR}/tempo.o: tempo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tempo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tempo.c  -o ${OBJECTDIR}/tempo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tempo.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/tempo.o.d" $(SILENT) 
	
${OBJECTDIR}/rc.o: rc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/rc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rc.c  -o ${OBJECTDIR}/rc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rc.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/rc.o.d" $(SILENT) 
	
${OBJECTDIR}/sconsole.o: sconsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/sconsole.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sconsole.c  -o ${OBJECTDIR}/sconsole.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sconsole.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/sconsole.o.d" $(SILENT) 
	
${OBJECTDIR}/tcp_com.o: tcp_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tcp_com.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcp_com.c  -o ${OBJECTDIR}/tcp_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcp_com.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/tcp_com.o.d" $(SILENT) 
	
${OBJECTDIR}/util.o: util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/util.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  util.c  -o ${OBJECTDIR}/util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/util.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/util.o.d" $(SILENT) 
	
${OBJECTDIR}/conex.o: conex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/conex.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  conex.c  -o ${OBJECTDIR}/conex.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/conex.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/conex.o.d" $(SILENT) 
	
${OBJECTDIR}/armadilhas.o: armadilhas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/armadilhas.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  armadilhas.c  -o ${OBJECTDIR}/armadilhas.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/armadilhas.o.d"    -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/armadilhas.o.d" $(SILENT) 
	
else
${OBJECTDIR}/ubasic/tokenizer.o: ubasic/tokenizer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/tokenizer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ubasic/tokenizer.c  -o ${OBJECTDIR}/ubasic/tokenizer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ubasic/tokenizer.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/ubasic/tokenizer.o.d" $(SILENT) 
	
${OBJECTDIR}/ubasic/ubasic.o: ubasic/ubasic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/ubasic.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ubasic/ubasic.c  -o ${OBJECTDIR}/ubasic/ubasic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/ubasic/ubasic.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/ubasic/ubasic.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/croutine.o: free_rtos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/croutine.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/croutine.c  -o ${OBJECTDIR}/free_rtos/croutine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/croutine.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/croutine.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/list.o: free_rtos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/list.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/list.c  -o ${OBJECTDIR}/free_rtos/list.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/list.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/list.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/queue.o: free_rtos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/queue.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/queue.c  -o ${OBJECTDIR}/free_rtos/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/queue.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/queue.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/tasks.o: free_rtos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/tasks.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/tasks.c  -o ${OBJECTDIR}/free_rtos/tasks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/tasks.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/tasks.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/timers.o: free_rtos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/timers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/timers.c  -o ${OBJECTDIR}/free_rtos/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/timers.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/timers.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o: free_rtos/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/portable/MPLAB/PIC24_dsPIC/port.c  -o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d" $(SILENT) 
	
${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o: free_rtos/portable/MemMang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MemMang 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  free_rtos/portable/MemMang/heap_3.c  -o ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o: microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/MDD\ File\ System 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/MDD File System/FSIO.c"  -o "${OBJECTDIR}/microchip/MDD File System/FSIO.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o: microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/MDD\ File\ System 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/MDD File System/SD-SPI.c"  -o "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d" $(SILENT) 
	
${OBJECTDIR}/mini_ini/minIni.o: mini_ini/minIni.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/mini_ini 
	@${RM} ${OBJECTDIR}/mini_ini/minIni.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mini_ini/minIni.c  -o ${OBJECTDIR}/mini_ini/minIni.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mini_ini/minIni.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/mini_ini/minIni.o.d" $(SILENT) 
	
${OBJECTDIR}/telas/wus.o: telas/wus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/wus.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  telas/wus.c  -o ${OBJECTDIR}/telas/wus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/telas/wus.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/telas/wus.o.d" $(SILENT) 
	
${OBJECTDIR}/telas/ies.o: telas/ies.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/ies.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  telas/ies.c  -o ${OBJECTDIR}/telas/ies.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/telas/ies.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/telas/ies.o.d" $(SILENT) 
	
${OBJECTDIR}/telas/tip.o: telas/tip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/tip.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  telas/tip.c  -o ${OBJECTDIR}/telas/tip.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/telas/tip.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/telas/tip.o.d" $(SILENT) 
	
${OBJECTDIR}/io_p77.o: io_p77.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/io_p77.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  io_p77.c  -o ${OBJECTDIR}/io_p77.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/io_p77.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/io_p77.o.d" $(SILENT) 
	
${OBJECTDIR}/lcd_ext.o: lcd_ext.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/lcd_ext.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lcd_ext.c  -o ${OBJECTDIR}/lcd_ext.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/lcd_ext.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/lcd_ext.o.d" $(SILENT) 
	
${OBJECTDIR}/uart_com.o: uart_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/uart_com.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart_com.c  -o ${OBJECTDIR}/uart_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart_com.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/uart_com.o.d" $(SILENT) 
	
${OBJECTDIR}/p1503_com.o: p1503_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/p1503_com.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  p1503_com.c  -o ${OBJECTDIR}/p1503_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/p1503_com.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/p1503_com.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o: microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsole.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o: microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o: microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o: microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WF_Eint.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o: microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WF_Spi.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o: microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o: microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConnectionManager.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o: microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o: microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFDataTxRx.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o: microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFDriverCom.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o: microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFDriverRaw.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o: microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFEasyConfig.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o: microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFEventHandler.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o: microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFInit.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o: microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFMac.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o: microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o: microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFParamMsg.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o: microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFPowerSave.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o: microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFScan.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o: microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/WiFi/WFTxPower.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o: microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Announce.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o: microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ARCFOUR.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o: microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ARP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o: microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/AutoIP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o: microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/BerkeleyAPI.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o: microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/BigInt.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o: microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Delay.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o: microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DHCP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o: microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DHCPs.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o: microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DNS.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o: microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DNSs.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o: microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/DynDNS.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o: microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/FileSystem.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o: microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/FTP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o: microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Hashes.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o: microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Helpers.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o: microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ICMP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o: microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/IP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/IP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o: microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/LCDBlocking.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o: microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/MPFS2.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o: microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/NBNS.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o: microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Random.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Random.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o: microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Reboot.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o: microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/RSA.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o: microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SMTP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o: microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SNMP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o: microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SNMPv3.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o: microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SNMPv3USM.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o: microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SNTP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o: microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SPIEEPROM.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o: microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SPIFlash.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o: microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SPIRAM.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o: microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/SSL.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o: microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/StackTsk.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o: microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/TCP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o: microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/TCPPerformanceTest.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o: microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Telnet.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o: microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/TFTPc.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o: microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/Tick.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o: microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/UART.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/UART.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o: microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/UART2TCPBridge.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o: microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/UDP.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o: microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/UDPPerformanceTest.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o: microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ZeroconfHelper.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o: microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ZeroconfLinkLocal.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o: microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d" $(SILENT) 
	
${OBJECTDIR}/HTTP2_MDD.o: HTTP2_MDD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/HTTP2_MDD.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  HTTP2_MDD.c  -o ${OBJECTDIR}/HTTP2_MDD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/HTTP2_MDD.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/HTTP2_MDD.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/USB/usb_device.o: microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  microchip/USB/usb_device.c  -o ${OBJECTDIR}/microchip/USB/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/USB/usb_device.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/usb_device.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/USB/usb_hal_pic24.o: microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  microchip/USB/usb_hal_pic24.c  -o ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d" $(SILENT) 
	
${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o: microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver 
	@${RM} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "microchip/USB/CDC Device Driver/usb_function_cdc.c"  -o "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d" $(SILENT) 
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  usb_descriptors.c  -o ${OBJECTDIR}/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) 
	
${OBJECTDIR}/board.o: board.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/board.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  board.c  -o ${OBJECTDIR}/board.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/board.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/board.o.d" $(SILENT) 
	
${OBJECTDIR}/usb_tty.o: usb_tty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_tty.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  usb_tty.c  -o ${OBJECTDIR}/usb_tty.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/usb_tty.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/usb_tty.o.d" $(SILENT) 
	
${OBJECTDIR}/fardo.o: fardo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/fardo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  fardo.c  -o ${OBJECTDIR}/fardo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/fardo.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/fardo.o.d" $(SILENT) 
	
${OBJECTDIR}/WF_Config.o: WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/WF_Config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  WF_Config.c  -o ${OBJECTDIR}/WF_Config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/WF_Config.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/WF_Config.o.d" $(SILENT) 
	
${OBJECTDIR}/CustomHTTPApp.o: CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  CustomHTTPApp.c  -o ${OBJECTDIR}/CustomHTTPApp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/CustomHTTPApp.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/CustomHTTPApp.o.d" $(SILENT) 
	
${OBJECTDIR}/wifi_init.o: wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/wifi_init.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  wifi_init.c  -o ${OBJECTDIR}/wifi_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/wifi_init.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/wifi_init.o.d" $(SILENT) 
	
${OBJECTDIR}/tempo.o: tempo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tempo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tempo.c  -o ${OBJECTDIR}/tempo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tempo.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/tempo.o.d" $(SILENT) 
	
${OBJECTDIR}/rc.o: rc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/rc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rc.c  -o ${OBJECTDIR}/rc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rc.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/rc.o.d" $(SILENT) 
	
${OBJECTDIR}/sconsole.o: sconsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/sconsole.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sconsole.c  -o ${OBJECTDIR}/sconsole.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sconsole.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/sconsole.o.d" $(SILENT) 
	
${OBJECTDIR}/tcp_com.o: tcp_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tcp_com.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  tcp_com.c  -o ${OBJECTDIR}/tcp_com.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/tcp_com.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/tcp_com.o.d" $(SILENT) 
	
${OBJECTDIR}/util.o: util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/util.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  util.c  -o ${OBJECTDIR}/util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/util.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/util.o.d" $(SILENT) 
	
${OBJECTDIR}/conex.o: conex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/conex.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  conex.c  -o ${OBJECTDIR}/conex.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/conex.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/conex.o.d" $(SILENT) 
	
${OBJECTDIR}/armadilhas.o: armadilhas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/armadilhas.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  armadilhas.c  -o ${OBJECTDIR}/armadilhas.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/armadilhas.o.d"    -g -omf=elf -mlarge-code -O2 -I"." -I".\free_rtos" -I".\free_rtos\include" -I".\free_rtos\portable\MemMang" -I".\free_rtos\portable\MPLAB\PIC24_dsPIC" -I".\microchip" -I".\microchip\Common" -I".\microchip\Include" -I".\microchip\Include\USB" -I".\microchip\USB" -I".\microchip\TCPIP Stack" -I".\microchip\TCPIP Stack\WiFi" -I".\microchip\MDD File System" -I".\microchip\Include\TCPIP Stack" -I".\microchip\Include\MDD File System" -I".\mini_ini" -msmart-io=1 -Wall -msfr-warn=off -fno-omit-frame-pointer
	@${FIXDEPS} "${OBJECTDIR}/armadilhas.o.d" $(SILENT) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o: free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d"    -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -Wa,-MD,"${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d" "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d"  -t $(SILENT) 
	
else
${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o: free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d 
	${MP_CC} $(MP_EXTRA_AS_PRE)  free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d"    -omf=elf -Wa,-MD,"${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax,-g$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d" "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d"  -t $(SILENT) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)    -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--heap=6200,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)    -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=6200,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/p24-xc16
	${RM} -r dist/p24-xc16

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

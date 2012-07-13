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
ifeq "$(wildcard nbproject/Makefile-local-p24-c30.mk)" "nbproject/Makefile-local-p24-c30.mk"
include nbproject/Makefile-local-p24-c30.mk
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=p24-c30
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
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ubasic/tokenizer.o ${OBJECTDIR}/ubasic/ubasic.o ${OBJECTDIR}/ubasic/use-ubasic.o ${OBJECTDIR}/free_rtos/croutine.o ${OBJECTDIR}/free_rtos/list.o ${OBJECTDIR}/free_rtos/queue.o ${OBJECTDIR}/free_rtos/tasks.o ${OBJECTDIR}/free_rtos/timers.o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o ${OBJECTDIR}/board.o "${OBJECTDIR}/microchip/MDD File System/FSIO.o" "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o" ${OBJECTDIR}/mini_ini/minIni.o "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o" "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o" "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o" "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o" "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o" "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o" "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o" "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o" "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o" "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o" "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o" "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o" "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o" "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o" "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o" ${OBJECTDIR}/HTTP2_MDD.o "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o" "${OBJECTDIR}/microchip/TCPIP Stack/IP.o" "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o" "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o" "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o" "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o" "${OBJECTDIR}/microchip/TCPIP Stack/Random.o" "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o" "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o" "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o" "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o" "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o" "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o" "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o" "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o" "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o" "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o" "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o" "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o" "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o" "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o" "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o" "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o" "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o" "${OBJECTDIR}/microchip/TCPIP Stack/UART.o" "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o" "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o" "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o" ${OBJECTDIR}/WF_Config.o ${OBJECTDIR}/util.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/microchip/USB/usb_device.o "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o" ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o ${OBJECTDIR}/usb_tty.o ${OBJECTDIR}/telas/ies.o ${OBJECTDIR}/telas/ini.o ${OBJECTDIR}/telas/tip.o ${OBJECTDIR}/telas/wus.o ${OBJECTDIR}/io_p77.o ${OBJECTDIR}/lcd_ext.o ${OBJECTDIR}/p1503_com.o ${OBJECTDIR}/ua_com.o ${OBJECTDIR}/CustomHTTPApp.o ${OBJECTDIR}/wifi_init.o ${OBJECTDIR}/rc.o ${OBJECTDIR}/sconsole.o ${OBJECTDIR}/conex.o ${OBJECTDIR}/tempo.o ${OBJECTDIR}/main.o ${OBJECTDIR}/armadilhas.o ${OBJECTDIR}/v2_main.o ${OBJECTDIR}/dump_heap_info.o ${OBJECTDIR}/tcp_com.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ubasic/tokenizer.o.d ${OBJECTDIR}/ubasic/ubasic.o.d ${OBJECTDIR}/ubasic/use-ubasic.o.d ${OBJECTDIR}/free_rtos/croutine.o.d ${OBJECTDIR}/free_rtos/list.o.d ${OBJECTDIR}/free_rtos/queue.o.d ${OBJECTDIR}/free_rtos/tasks.o.d ${OBJECTDIR}/free_rtos/timers.o.d ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d ${OBJECTDIR}/board.o.d "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d" "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d" ${OBJECTDIR}/mini_ini/minIni.o.d "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d" ${OBJECTDIR}/HTTP2_MDD.o.d "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d" "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d" ${OBJECTDIR}/WF_Config.o.d ${OBJECTDIR}/util.o.d ${OBJECTDIR}/usb_descriptors.o.d ${OBJECTDIR}/microchip/USB/usb_device.o.d "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d" ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d ${OBJECTDIR}/usb_tty.o.d ${OBJECTDIR}/telas/ies.o.d ${OBJECTDIR}/telas/ini.o.d ${OBJECTDIR}/telas/tip.o.d ${OBJECTDIR}/telas/wus.o.d ${OBJECTDIR}/io_p77.o.d ${OBJECTDIR}/lcd_ext.o.d ${OBJECTDIR}/p1503_com.o.d ${OBJECTDIR}/ua_com.o.d ${OBJECTDIR}/CustomHTTPApp.o.d ${OBJECTDIR}/wifi_init.o.d ${OBJECTDIR}/rc.o.d ${OBJECTDIR}/sconsole.o.d ${OBJECTDIR}/conex.o.d ${OBJECTDIR}/tempo.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/armadilhas.o.d ${OBJECTDIR}/v2_main.o.d ${OBJECTDIR}/dump_heap_info.o.d ${OBJECTDIR}/tcp_com.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ubasic/tokenizer.o ${OBJECTDIR}/ubasic/ubasic.o ${OBJECTDIR}/ubasic/use-ubasic.o ${OBJECTDIR}/free_rtos/croutine.o ${OBJECTDIR}/free_rtos/list.o ${OBJECTDIR}/free_rtos/queue.o ${OBJECTDIR}/free_rtos/tasks.o ${OBJECTDIR}/free_rtos/timers.o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o ${OBJECTDIR}/board.o ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o ${OBJECTDIR}/mini_ini/minIni.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o ${OBJECTDIR}/HTTP2_MDD.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o ${OBJECTDIR}/WF_Config.o ${OBJECTDIR}/util.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/microchip/USB/usb_device.o ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o ${OBJECTDIR}/usb_tty.o ${OBJECTDIR}/telas/ies.o ${OBJECTDIR}/telas/ini.o ${OBJECTDIR}/telas/tip.o ${OBJECTDIR}/telas/wus.o ${OBJECTDIR}/io_p77.o ${OBJECTDIR}/lcd_ext.o ${OBJECTDIR}/p1503_com.o ${OBJECTDIR}/ua_com.o ${OBJECTDIR}/CustomHTTPApp.o ${OBJECTDIR}/wifi_init.o ${OBJECTDIR}/rc.o ${OBJECTDIR}/sconsole.o ${OBJECTDIR}/conex.o ${OBJECTDIR}/tempo.o ${OBJECTDIR}/main.o ${OBJECTDIR}/armadilhas.o ${OBJECTDIR}/v2_main.o ${OBJECTDIR}/dump_heap_info.o ${OBJECTDIR}/tcp_com.o


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
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-p24-c30.mk dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB106
MP_LINKER_FILE_OPTION=,-Tp24FJ256GB106.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o: free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.ok ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d" "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d" -t $(SILENT) -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -c -mcpu=$(MP_PROCESSOR_OPTION)   -MMD -MF "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d"  -o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d",--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-g,-g
	
else
${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o: free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.ok ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d" "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d" -t $(SILENT) -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -omf=elf -c -mcpu=$(MP_PROCESSOR_OPTION)   -MMD -MF "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.d"  -o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/portasm_PIC24.o.asm.d",-g,-g
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ubasic/tokenizer.o: ubasic/tokenizer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/tokenizer.o.d 
	@${RM} ${OBJECTDIR}/ubasic/tokenizer.o.ok ${OBJECTDIR}/ubasic/tokenizer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ubasic/tokenizer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/ubasic/tokenizer.o.d" -o ${OBJECTDIR}/ubasic/tokenizer.o ubasic/tokenizer.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/ubasic/ubasic.o: ubasic/ubasic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/ubasic.o.d 
	@${RM} ${OBJECTDIR}/ubasic/ubasic.o.ok ${OBJECTDIR}/ubasic/ubasic.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ubasic/ubasic.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/ubasic/ubasic.o.d" -o ${OBJECTDIR}/ubasic/ubasic.o ubasic/ubasic.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/ubasic/use-ubasic.o: ubasic/use-ubasic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/use-ubasic.o.d 
	@${RM} ${OBJECTDIR}/ubasic/use-ubasic.o.ok ${OBJECTDIR}/ubasic/use-ubasic.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ubasic/use-ubasic.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/ubasic/use-ubasic.o.d" -o ${OBJECTDIR}/ubasic/use-ubasic.o ubasic/use-ubasic.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/croutine.o: free_rtos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/croutine.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/croutine.o.ok ${OBJECTDIR}/free_rtos/croutine.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/croutine.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/croutine.o.d" -o ${OBJECTDIR}/free_rtos/croutine.o free_rtos/croutine.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/list.o: free_rtos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/list.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/list.o.ok ${OBJECTDIR}/free_rtos/list.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/list.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/list.o.d" -o ${OBJECTDIR}/free_rtos/list.o free_rtos/list.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/queue.o: free_rtos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/queue.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/queue.o.ok ${OBJECTDIR}/free_rtos/queue.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/queue.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/queue.o.d" -o ${OBJECTDIR}/free_rtos/queue.o free_rtos/queue.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/tasks.o: free_rtos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/tasks.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/tasks.o.ok ${OBJECTDIR}/free_rtos/tasks.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/tasks.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/tasks.o.d" -o ${OBJECTDIR}/free_rtos/tasks.o free_rtos/tasks.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/timers.o: free_rtos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/timers.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/timers.o.ok ${OBJECTDIR}/free_rtos/timers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/timers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/timers.o.d" -o ${OBJECTDIR}/free_rtos/timers.o free_rtos/timers.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o: free_rtos/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.ok ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d" -o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o free_rtos/portable/MPLAB/PIC24_dsPIC/port.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o: free_rtos/portable/MemMang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MemMang 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.ok ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d" -o ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o free_rtos/portable/MemMang/heap_3.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/board.o: board.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/board.o.d 
	@${RM} ${OBJECTDIR}/board.o.ok ${OBJECTDIR}/board.o.err 
	@${FIXDEPS} "${OBJECTDIR}/board.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/board.o.d" -o ${OBJECTDIR}/board.o board.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o: microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/MDD\ File\ System 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o.d 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o.ok ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d" -o "${OBJECTDIR}/microchip/MDD File System/FSIO.o" "microchip/MDD File System/FSIO.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o: microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/MDD\ File\ System 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o.ok ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d" -o "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o" "microchip/MDD File System/SD-SPI.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/mini_ini/minIni.o: mini_ini/minIni.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/mini_ini 
	@${RM} ${OBJECTDIR}/mini_ini/minIni.o.d 
	@${RM} ${OBJECTDIR}/mini_ini/minIni.o.ok ${OBJECTDIR}/mini_ini/minIni.o.err 
	@${FIXDEPS} "${OBJECTDIR}/mini_ini/minIni.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/mini_ini/minIni.o.d" -o ${OBJECTDIR}/mini_ini/minIni.o mini_ini/minIni.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o: microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o" "microchip/TCPIP Stack/ARCFOUR.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o: microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o" "microchip/TCPIP Stack/ARP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o: microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o" "microchip/TCPIP Stack/AutoIP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o: microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o" "microchip/TCPIP Stack/BerkeleyAPI.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o: microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o" "microchip/TCPIP Stack/BigInt.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o: microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o" "microchip/TCPIP Stack/Delay.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o: microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o" "microchip/TCPIP Stack/DHCP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o: microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o" "microchip/TCPIP Stack/DHCPs.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o: microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o" "microchip/TCPIP Stack/DNS.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o: microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o" "microchip/TCPIP Stack/DNSs.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o: microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o" "microchip/TCPIP Stack/DynDNS.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o: microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o" "microchip/TCPIP Stack/FileSystem.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o: microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o" "microchip/TCPIP Stack/FTP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o: microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o" "microchip/TCPIP Stack/Hashes.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o: microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o" "microchip/TCPIP Stack/Helpers.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/HTTP2_MDD.o: HTTP2_MDD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/HTTP2_MDD.o.d 
	@${RM} ${OBJECTDIR}/HTTP2_MDD.o.ok ${OBJECTDIR}/HTTP2_MDD.o.err 
	@${FIXDEPS} "${OBJECTDIR}/HTTP2_MDD.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/HTTP2_MDD.o.d" -o ${OBJECTDIR}/HTTP2_MDD.o HTTP2_MDD.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o: microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o" "microchip/TCPIP Stack/ICMP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o: microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/IP.o" "microchip/TCPIP Stack/IP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o: microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o" "microchip/TCPIP Stack/Announce.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o: microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o" "microchip/TCPIP Stack/LCDBlocking.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o: microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o" "microchip/TCPIP Stack/MPFS2.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o: microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o" "microchip/TCPIP Stack/NBNS.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o: microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Random.o" "microchip/TCPIP Stack/Random.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o: microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o" "microchip/TCPIP Stack/Reboot.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o: microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o" "microchip/TCPIP Stack/RSA.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o: microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o" "microchip/TCPIP Stack/SMTP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o: microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o" "microchip/TCPIP Stack/SNMP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o: microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o" "microchip/TCPIP Stack/SNMPv3.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o: microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o" "microchip/TCPIP Stack/SNMPv3USM.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o: microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o" "microchip/TCPIP Stack/SNTP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o: microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o" "microchip/TCPIP Stack/SPIEEPROM.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o: microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o" "microchip/TCPIP Stack/SPIFlash.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o: microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o" "microchip/TCPIP Stack/SPIRAM.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o: microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o" "microchip/TCPIP Stack/SSL.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o: microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o" "microchip/TCPIP Stack/StackTsk.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o: microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o" "microchip/TCPIP Stack/TCP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o: microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o" "microchip/TCPIP Stack/TCPPerformanceTest.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o: microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o" "microchip/TCPIP Stack/Telnet.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o: microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o" "microchip/TCPIP Stack/TFTPc.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o: microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o" "microchip/TCPIP Stack/Tick.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o: microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/UART.o" "microchip/TCPIP Stack/UART.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o: microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o" "microchip/TCPIP Stack/UART2TCPBridge.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o: microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o" "microchip/TCPIP Stack/UDP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o: microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o" "microchip/TCPIP Stack/UDPPerformanceTest.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o: microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o" "microchip/TCPIP Stack/ZeroconfHelper.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o: microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o" "microchip/TCPIP Stack/ZeroconfLinkLocal.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o: microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o" "microchip/TCPIP Stack/ZeroconfMulticastDNS.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o: microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o" "microchip/TCPIP Stack/WiFi/WFConsole.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o" "microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o" "microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o" "microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o: microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o" "microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o: microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o" "microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o: microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o" "microchip/TCPIP Stack/WiFi/WF_Eint.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o: microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o" "microchip/TCPIP Stack/WiFi/WF_Spi.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o: microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o" "microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o: microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o" "microchip/TCPIP Stack/WiFi/WFConnectionManager.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o: microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o" "microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o: microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o" "microchip/TCPIP Stack/WiFi/WFDataTxRx.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o: microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o" "microchip/TCPIP Stack/WiFi/WFDriverCom.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o: microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o" "microchip/TCPIP Stack/WiFi/WFDriverRaw.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o: microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o" "microchip/TCPIP Stack/WiFi/WFEasyConfig.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o: microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o" "microchip/TCPIP Stack/WiFi/WFEventHandler.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o: microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o" "microchip/TCPIP Stack/WiFi/WFInit.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o: microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o" "microchip/TCPIP Stack/WiFi/WFMac.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o: microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o" "microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o: microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o" "microchip/TCPIP Stack/WiFi/WFParamMsg.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o: microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o" "microchip/TCPIP Stack/WiFi/WFPowerSave.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o: microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o" "microchip/TCPIP Stack/WiFi/WFScan.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o: microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o" "microchip/TCPIP Stack/WiFi/WFTxPower.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/WF_Config.o: WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/WF_Config.o.ok ${OBJECTDIR}/WF_Config.o.err 
	@${FIXDEPS} "${OBJECTDIR}/WF_Config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/WF_Config.o.d" -o ${OBJECTDIR}/WF_Config.o WF_Config.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/util.o: util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/util.o.d 
	@${RM} ${OBJECTDIR}/util.o.ok ${OBJECTDIR}/util.o.err 
	@${FIXDEPS} "${OBJECTDIR}/util.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/util.o.d" -o ${OBJECTDIR}/util.o util.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.ok ${OBJECTDIR}/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d" -o ${OBJECTDIR}/usb_descriptors.o usb_descriptors.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/USB/usb_device.o: microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_device.o.d 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_device.o.ok ${OBJECTDIR}/microchip/USB/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/USB/usb_device.o.d" -o ${OBJECTDIR}/microchip/USB/usb_device.o microchip/USB/usb_device.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o: microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver 
	@${RM} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o.ok ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d" -o "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o" "microchip/USB/CDC Device Driver/usb_function_cdc.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/USB/usb_hal_pic24.o: microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.ok ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d" -o ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o microchip/USB/usb_hal_pic24.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/usb_tty.o: usb_tty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_tty.o.d 
	@${RM} ${OBJECTDIR}/usb_tty.o.ok ${OBJECTDIR}/usb_tty.o.err 
	@${FIXDEPS} "${OBJECTDIR}/usb_tty.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/usb_tty.o.d" -o ${OBJECTDIR}/usb_tty.o usb_tty.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/telas/ies.o: telas/ies.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/ies.o.d 
	@${RM} ${OBJECTDIR}/telas/ies.o.ok ${OBJECTDIR}/telas/ies.o.err 
	@${FIXDEPS} "${OBJECTDIR}/telas/ies.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/telas/ies.o.d" -o ${OBJECTDIR}/telas/ies.o telas/ies.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/telas/ini.o: telas/ini.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/ini.o.d 
	@${RM} ${OBJECTDIR}/telas/ini.o.ok ${OBJECTDIR}/telas/ini.o.err 
	@${FIXDEPS} "${OBJECTDIR}/telas/ini.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/telas/ini.o.d" -o ${OBJECTDIR}/telas/ini.o telas/ini.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/telas/tip.o: telas/tip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/tip.o.d 
	@${RM} ${OBJECTDIR}/telas/tip.o.ok ${OBJECTDIR}/telas/tip.o.err 
	@${FIXDEPS} "${OBJECTDIR}/telas/tip.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/telas/tip.o.d" -o ${OBJECTDIR}/telas/tip.o telas/tip.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/telas/wus.o: telas/wus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/wus.o.d 
	@${RM} ${OBJECTDIR}/telas/wus.o.ok ${OBJECTDIR}/telas/wus.o.err 
	@${FIXDEPS} "${OBJECTDIR}/telas/wus.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/telas/wus.o.d" -o ${OBJECTDIR}/telas/wus.o telas/wus.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/io_p77.o: io_p77.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/io_p77.o.d 
	@${RM} ${OBJECTDIR}/io_p77.o.ok ${OBJECTDIR}/io_p77.o.err 
	@${FIXDEPS} "${OBJECTDIR}/io_p77.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/io_p77.o.d" -o ${OBJECTDIR}/io_p77.o io_p77.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/lcd_ext.o: lcd_ext.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/lcd_ext.o.d 
	@${RM} ${OBJECTDIR}/lcd_ext.o.ok ${OBJECTDIR}/lcd_ext.o.err 
	@${FIXDEPS} "${OBJECTDIR}/lcd_ext.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/lcd_ext.o.d" -o ${OBJECTDIR}/lcd_ext.o lcd_ext.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/p1503_com.o: p1503_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/p1503_com.o.d 
	@${RM} ${OBJECTDIR}/p1503_com.o.ok ${OBJECTDIR}/p1503_com.o.err 
	@${FIXDEPS} "${OBJECTDIR}/p1503_com.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/p1503_com.o.d" -o ${OBJECTDIR}/p1503_com.o p1503_com.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/ua_com.o: ua_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/ua_com.o.d 
	@${RM} ${OBJECTDIR}/ua_com.o.ok ${OBJECTDIR}/ua_com.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ua_com.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/ua_com.o.d" -o ${OBJECTDIR}/ua_com.o ua_com.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/CustomHTTPApp.o: CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o.ok ${OBJECTDIR}/CustomHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/CustomHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/CustomHTTPApp.o.d" -o ${OBJECTDIR}/CustomHTTPApp.o CustomHTTPApp.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/wifi_init.o: wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/wifi_init.o.d 
	@${RM} ${OBJECTDIR}/wifi_init.o.ok ${OBJECTDIR}/wifi_init.o.err 
	@${FIXDEPS} "${OBJECTDIR}/wifi_init.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/wifi_init.o.d" -o ${OBJECTDIR}/wifi_init.o wifi_init.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/rc.o: rc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/rc.o.d 
	@${RM} ${OBJECTDIR}/rc.o.ok ${OBJECTDIR}/rc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/rc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/rc.o.d" -o ${OBJECTDIR}/rc.o rc.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/sconsole.o: sconsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/sconsole.o.d 
	@${RM} ${OBJECTDIR}/sconsole.o.ok ${OBJECTDIR}/sconsole.o.err 
	@${FIXDEPS} "${OBJECTDIR}/sconsole.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/sconsole.o.d" -o ${OBJECTDIR}/sconsole.o sconsole.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/conex.o: conex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/conex.o.d 
	@${RM} ${OBJECTDIR}/conex.o.ok ${OBJECTDIR}/conex.o.err 
	@${FIXDEPS} "${OBJECTDIR}/conex.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/conex.o.d" -o ${OBJECTDIR}/conex.o conex.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/tempo.o: tempo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tempo.o.d 
	@${RM} ${OBJECTDIR}/tempo.o.ok ${OBJECTDIR}/tempo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/tempo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/tempo.o.d" -o ${OBJECTDIR}/tempo.o tempo.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o.ok ${OBJECTDIR}/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/armadilhas.o: armadilhas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/armadilhas.o.d 
	@${RM} ${OBJECTDIR}/armadilhas.o.ok ${OBJECTDIR}/armadilhas.o.err 
	@${FIXDEPS} "${OBJECTDIR}/armadilhas.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/armadilhas.o.d" -o ${OBJECTDIR}/armadilhas.o armadilhas.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/v2_main.o: v2_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/v2_main.o.d 
	@${RM} ${OBJECTDIR}/v2_main.o.ok ${OBJECTDIR}/v2_main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/v2_main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/v2_main.o.d" -o ${OBJECTDIR}/v2_main.o v2_main.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/dump_heap_info.o: dump_heap_info.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/dump_heap_info.o.d 
	@${RM} ${OBJECTDIR}/dump_heap_info.o.ok ${OBJECTDIR}/dump_heap_info.o.err 
	@${FIXDEPS} "${OBJECTDIR}/dump_heap_info.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/dump_heap_info.o.d" -o ${OBJECTDIR}/dump_heap_info.o dump_heap_info.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/tcp_com.o: tcp_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tcp_com.o.d 
	@${RM} ${OBJECTDIR}/tcp_com.o.ok ${OBJECTDIR}/tcp_com.o.err 
	@${FIXDEPS} "${OBJECTDIR}/tcp_com.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/tcp_com.o.d" -o ${OBJECTDIR}/tcp_com.o tcp_com.c     -fno-omit-frame-pointer
	
else
${OBJECTDIR}/ubasic/tokenizer.o: ubasic/tokenizer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/tokenizer.o.d 
	@${RM} ${OBJECTDIR}/ubasic/tokenizer.o.ok ${OBJECTDIR}/ubasic/tokenizer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ubasic/tokenizer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/ubasic/tokenizer.o.d" -o ${OBJECTDIR}/ubasic/tokenizer.o ubasic/tokenizer.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/ubasic/ubasic.o: ubasic/ubasic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/ubasic.o.d 
	@${RM} ${OBJECTDIR}/ubasic/ubasic.o.ok ${OBJECTDIR}/ubasic/ubasic.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ubasic/ubasic.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/ubasic/ubasic.o.d" -o ${OBJECTDIR}/ubasic/ubasic.o ubasic/ubasic.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/ubasic/use-ubasic.o: ubasic/use-ubasic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/ubasic 
	@${RM} ${OBJECTDIR}/ubasic/use-ubasic.o.d 
	@${RM} ${OBJECTDIR}/ubasic/use-ubasic.o.ok ${OBJECTDIR}/ubasic/use-ubasic.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ubasic/use-ubasic.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/ubasic/use-ubasic.o.d" -o ${OBJECTDIR}/ubasic/use-ubasic.o ubasic/use-ubasic.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/croutine.o: free_rtos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/croutine.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/croutine.o.ok ${OBJECTDIR}/free_rtos/croutine.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/croutine.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/croutine.o.d" -o ${OBJECTDIR}/free_rtos/croutine.o free_rtos/croutine.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/list.o: free_rtos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/list.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/list.o.ok ${OBJECTDIR}/free_rtos/list.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/list.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/list.o.d" -o ${OBJECTDIR}/free_rtos/list.o free_rtos/list.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/queue.o: free_rtos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/queue.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/queue.o.ok ${OBJECTDIR}/free_rtos/queue.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/queue.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/queue.o.d" -o ${OBJECTDIR}/free_rtos/queue.o free_rtos/queue.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/tasks.o: free_rtos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/tasks.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/tasks.o.ok ${OBJECTDIR}/free_rtos/tasks.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/tasks.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/tasks.o.d" -o ${OBJECTDIR}/free_rtos/tasks.o free_rtos/tasks.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/timers.o: free_rtos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos 
	@${RM} ${OBJECTDIR}/free_rtos/timers.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/timers.o.ok ${OBJECTDIR}/free_rtos/timers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/timers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/timers.o.d" -o ${OBJECTDIR}/free_rtos/timers.o free_rtos/timers.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o: free_rtos/portable/MPLAB/PIC24_dsPIC/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.ok ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o.d" -o ${OBJECTDIR}/free_rtos/portable/MPLAB/PIC24_dsPIC/port.o free_rtos/portable/MPLAB/PIC24_dsPIC/port.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o: free_rtos/portable/MemMang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/free_rtos/portable/MemMang 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d 
	@${RM} ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.ok ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.err 
	@${FIXDEPS} "${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o.d" -o ${OBJECTDIR}/free_rtos/portable/MemMang/heap_3.o free_rtos/portable/MemMang/heap_3.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/board.o: board.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/board.o.d 
	@${RM} ${OBJECTDIR}/board.o.ok ${OBJECTDIR}/board.o.err 
	@${FIXDEPS} "${OBJECTDIR}/board.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/board.o.d" -o ${OBJECTDIR}/board.o board.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o: microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/MDD\ File\ System 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o.d 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o.ok ${OBJECTDIR}/microchip/MDD\ File\ System/FSIO.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/MDD File System/FSIO.o.d" -o "${OBJECTDIR}/microchip/MDD File System/FSIO.o" "microchip/MDD File System/FSIO.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o: microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/MDD\ File\ System 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o.d 
	@${RM} ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o.ok ${OBJECTDIR}/microchip/MDD\ File\ System/SD-SPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o.d" -o "${OBJECTDIR}/microchip/MDD File System/SD-SPI.o" "microchip/MDD File System/SD-SPI.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/mini_ini/minIni.o: mini_ini/minIni.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/mini_ini 
	@${RM} ${OBJECTDIR}/mini_ini/minIni.o.d 
	@${RM} ${OBJECTDIR}/mini_ini/minIni.o.ok ${OBJECTDIR}/mini_ini/minIni.o.err 
	@${FIXDEPS} "${OBJECTDIR}/mini_ini/minIni.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/mini_ini/minIni.o.d" -o ${OBJECTDIR}/mini_ini/minIni.o mini_ini/minIni.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o: microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ARCFOUR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ARCFOUR.o" "microchip/TCPIP Stack/ARCFOUR.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o: microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ARP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ARP.o" "microchip/TCPIP Stack/ARP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o: microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/AutoIP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/AutoIP.o" "microchip/TCPIP Stack/AutoIP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o: microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/BerkeleyAPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/BerkeleyAPI.o" "microchip/TCPIP Stack/BerkeleyAPI.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o: microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/BigInt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/BigInt.o" "microchip/TCPIP Stack/BigInt.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o: microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Delay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Delay.o" "microchip/TCPIP Stack/Delay.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o: microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DHCP.o" "microchip/TCPIP Stack/DHCP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o: microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DHCPs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DHCPs.o" "microchip/TCPIP Stack/DHCPs.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o: microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DNS.o" "microchip/TCPIP Stack/DNS.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o: microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DNSs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DNSs.o" "microchip/TCPIP Stack/DNSs.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o: microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/DynDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/DynDNS.o" "microchip/TCPIP Stack/DynDNS.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o: microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/FileSystem.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/FileSystem.o" "microchip/TCPIP Stack/FileSystem.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o: microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/FTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/FTP.o" "microchip/TCPIP Stack/FTP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o: microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Hashes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Hashes.o" "microchip/TCPIP Stack/Hashes.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o: microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Helpers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Helpers.o" "microchip/TCPIP Stack/Helpers.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/HTTP2_MDD.o: HTTP2_MDD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/HTTP2_MDD.o.d 
	@${RM} ${OBJECTDIR}/HTTP2_MDD.o.ok ${OBJECTDIR}/HTTP2_MDD.o.err 
	@${FIXDEPS} "${OBJECTDIR}/HTTP2_MDD.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/HTTP2_MDD.o.d" -o ${OBJECTDIR}/HTTP2_MDD.o HTTP2_MDD.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o: microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ICMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ICMP.o" "microchip/TCPIP Stack/ICMP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o: microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/IP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/IP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/IP.o" "microchip/TCPIP Stack/IP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o: microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Announce.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Announce.o" "microchip/TCPIP Stack/Announce.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o: microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/LCDBlocking.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/LCDBlocking.o" "microchip/TCPIP Stack/LCDBlocking.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o: microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/MPFS2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/MPFS2.o" "microchip/TCPIP Stack/MPFS2.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o: microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/NBNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/NBNS.o" "microchip/TCPIP Stack/NBNS.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o: microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Random.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Random.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Random.o" "microchip/TCPIP Stack/Random.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o: microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Reboot.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Reboot.o" "microchip/TCPIP Stack/Reboot.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o: microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/RSA.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/RSA.o" "microchip/TCPIP Stack/RSA.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o: microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SMTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SMTP.o" "microchip/TCPIP Stack/SMTP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o: microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMP.o" "microchip/TCPIP Stack/SNMP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o: microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3.o" "microchip/TCPIP Stack/SNMPv3.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o: microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SNMPv3USM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SNMPv3USM.o" "microchip/TCPIP Stack/SNMPv3USM.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o: microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SNTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SNTP.o" "microchip/TCPIP Stack/SNTP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o: microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIEEPROM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIEEPROM.o" "microchip/TCPIP Stack/SPIEEPROM.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o: microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIFlash.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIFlash.o" "microchip/TCPIP Stack/SPIFlash.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o: microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SPIRAM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SPIRAM.o" "microchip/TCPIP Stack/SPIRAM.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o: microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/SSL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/SSL.o" "microchip/TCPIP Stack/SSL.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o: microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/StackTsk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/StackTsk.o" "microchip/TCPIP Stack/StackTsk.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o: microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/TCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/TCP.o" "microchip/TCPIP Stack/TCP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o: microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/TCPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/TCPPerformanceTest.o" "microchip/TCPIP Stack/TCPPerformanceTest.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o: microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Telnet.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Telnet.o" "microchip/TCPIP Stack/Telnet.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o: microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/TFTPc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/TFTPc.o" "microchip/TCPIP Stack/TFTPc.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o: microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/Tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/Tick.o" "microchip/TCPIP Stack/Tick.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o: microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UART.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/UART.o" "microchip/TCPIP Stack/UART.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o: microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/UART2TCPBridge.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/UART2TCPBridge.o" "microchip/TCPIP Stack/UART2TCPBridge.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o: microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/UDP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/UDP.o" "microchip/TCPIP Stack/UDP.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o: microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/UDPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/UDPPerformanceTest.o" "microchip/TCPIP Stack/UDPPerformanceTest.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o: microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfHelper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfHelper.o" "microchip/TCPIP Stack/ZeroconfHelper.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o: microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfLinkLocal.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfLinkLocal.o" "microchip/TCPIP Stack/ZeroconfLinkLocal.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o: microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/ZeroconfMulticastDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/ZeroconfMulticastDNS.o" "microchip/TCPIP Stack/ZeroconfMulticastDNS.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o: microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsole.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsole.o" "microchip/TCPIP Stack/WiFi/WFConsole.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.o" "microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.o" "microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o: microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.o" "microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o: microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.o" "microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o: microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConsoleMsgs.o" "microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o: microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Eint.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Eint.o" "microchip/TCPIP Stack/WiFi/WF_Eint.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o: microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WF_Spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WF_Spi.o" "microchip/TCPIP Stack/WiFi/WF_Spi.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o: microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.o" "microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o: microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionManager.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionManager.o" "microchip/TCPIP Stack/WiFi/WFConnectionManager.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o: microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFConnectionProfile.o" "microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o: microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDataTxRx.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDataTxRx.o" "microchip/TCPIP Stack/WiFi/WFDataTxRx.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o: microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverCom.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverCom.o" "microchip/TCPIP Stack/WiFi/WFDriverCom.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o: microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFDriverRaw.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFDriverRaw.o" "microchip/TCPIP Stack/WiFi/WFDriverRaw.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o: microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEasyConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEasyConfig.o" "microchip/TCPIP Stack/WiFi/WFEasyConfig.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o: microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFEventHandler.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFEventHandler.o" "microchip/TCPIP Stack/WiFi/WFEventHandler.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o: microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFInit.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFInit.o" "microchip/TCPIP Stack/WiFi/WFInit.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o: microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMac.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMac.o" "microchip/TCPIP Stack/WiFi/WFMac.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o: microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFMgmtMsg.o" "microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o: microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFParamMsg.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFParamMsg.o" "microchip/TCPIP Stack/WiFi/WFParamMsg.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o: microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFPowerSave.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFPowerSave.o" "microchip/TCPIP Stack/WiFi/WFPowerSave.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o: microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFScan.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFScan.o" "microchip/TCPIP Stack/WiFi/WFScan.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o: microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o.ok ${OBJECTDIR}/microchip/TCPIP\ Stack/WiFi/WFTxPower.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o.d" -o "${OBJECTDIR}/microchip/TCPIP Stack/WiFi/WFTxPower.o" "microchip/TCPIP Stack/WiFi/WFTxPower.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/WF_Config.o: WF_Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/WF_Config.o.d 
	@${RM} ${OBJECTDIR}/WF_Config.o.ok ${OBJECTDIR}/WF_Config.o.err 
	@${FIXDEPS} "${OBJECTDIR}/WF_Config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/WF_Config.o.d" -o ${OBJECTDIR}/WF_Config.o WF_Config.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/util.o: util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/util.o.d 
	@${RM} ${OBJECTDIR}/util.o.ok ${OBJECTDIR}/util.o.err 
	@${FIXDEPS} "${OBJECTDIR}/util.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/util.o.d" -o ${OBJECTDIR}/util.o util.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.ok ${OBJECTDIR}/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d" -o ${OBJECTDIR}/usb_descriptors.o usb_descriptors.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/USB/usb_device.o: microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_device.o.d 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_device.o.ok ${OBJECTDIR}/microchip/USB/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/USB/usb_device.o.d" -o ${OBJECTDIR}/microchip/USB/usb_device.o microchip/USB/usb_device.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o: microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver 
	@${RM} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o.ok ${OBJECTDIR}/microchip/USB/CDC\ Device\ Driver/usb_function_cdc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o.d" -o "${OBJECTDIR}/microchip/USB/CDC Device Driver/usb_function_cdc.o" "microchip/USB/CDC Device Driver/usb_function_cdc.c"     -fno-omit-frame-pointer
	
${OBJECTDIR}/microchip/USB/usb_hal_pic24.o: microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/microchip/USB 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d 
	@${RM} ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.ok ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.err 
	@${FIXDEPS} "${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/microchip/USB/usb_hal_pic24.o.d" -o ${OBJECTDIR}/microchip/USB/usb_hal_pic24.o microchip/USB/usb_hal_pic24.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/usb_tty.o: usb_tty.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_tty.o.d 
	@${RM} ${OBJECTDIR}/usb_tty.o.ok ${OBJECTDIR}/usb_tty.o.err 
	@${FIXDEPS} "${OBJECTDIR}/usb_tty.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/usb_tty.o.d" -o ${OBJECTDIR}/usb_tty.o usb_tty.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/telas/ies.o: telas/ies.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/ies.o.d 
	@${RM} ${OBJECTDIR}/telas/ies.o.ok ${OBJECTDIR}/telas/ies.o.err 
	@${FIXDEPS} "${OBJECTDIR}/telas/ies.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/telas/ies.o.d" -o ${OBJECTDIR}/telas/ies.o telas/ies.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/telas/ini.o: telas/ini.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/ini.o.d 
	@${RM} ${OBJECTDIR}/telas/ini.o.ok ${OBJECTDIR}/telas/ini.o.err 
	@${FIXDEPS} "${OBJECTDIR}/telas/ini.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/telas/ini.o.d" -o ${OBJECTDIR}/telas/ini.o telas/ini.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/telas/tip.o: telas/tip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/tip.o.d 
	@${RM} ${OBJECTDIR}/telas/tip.o.ok ${OBJECTDIR}/telas/tip.o.err 
	@${FIXDEPS} "${OBJECTDIR}/telas/tip.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/telas/tip.o.d" -o ${OBJECTDIR}/telas/tip.o telas/tip.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/telas/wus.o: telas/wus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/telas 
	@${RM} ${OBJECTDIR}/telas/wus.o.d 
	@${RM} ${OBJECTDIR}/telas/wus.o.ok ${OBJECTDIR}/telas/wus.o.err 
	@${FIXDEPS} "${OBJECTDIR}/telas/wus.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/telas/wus.o.d" -o ${OBJECTDIR}/telas/wus.o telas/wus.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/io_p77.o: io_p77.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/io_p77.o.d 
	@${RM} ${OBJECTDIR}/io_p77.o.ok ${OBJECTDIR}/io_p77.o.err 
	@${FIXDEPS} "${OBJECTDIR}/io_p77.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/io_p77.o.d" -o ${OBJECTDIR}/io_p77.o io_p77.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/lcd_ext.o: lcd_ext.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/lcd_ext.o.d 
	@${RM} ${OBJECTDIR}/lcd_ext.o.ok ${OBJECTDIR}/lcd_ext.o.err 
	@${FIXDEPS} "${OBJECTDIR}/lcd_ext.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/lcd_ext.o.d" -o ${OBJECTDIR}/lcd_ext.o lcd_ext.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/p1503_com.o: p1503_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/p1503_com.o.d 
	@${RM} ${OBJECTDIR}/p1503_com.o.ok ${OBJECTDIR}/p1503_com.o.err 
	@${FIXDEPS} "${OBJECTDIR}/p1503_com.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/p1503_com.o.d" -o ${OBJECTDIR}/p1503_com.o p1503_com.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/ua_com.o: ua_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/ua_com.o.d 
	@${RM} ${OBJECTDIR}/ua_com.o.ok ${OBJECTDIR}/ua_com.o.err 
	@${FIXDEPS} "${OBJECTDIR}/ua_com.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/ua_com.o.d" -o ${OBJECTDIR}/ua_com.o ua_com.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/CustomHTTPApp.o: CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/CustomHTTPApp.o.ok ${OBJECTDIR}/CustomHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/CustomHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/CustomHTTPApp.o.d" -o ${OBJECTDIR}/CustomHTTPApp.o CustomHTTPApp.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/wifi_init.o: wifi_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/wifi_init.o.d 
	@${RM} ${OBJECTDIR}/wifi_init.o.ok ${OBJECTDIR}/wifi_init.o.err 
	@${FIXDEPS} "${OBJECTDIR}/wifi_init.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/wifi_init.o.d" -o ${OBJECTDIR}/wifi_init.o wifi_init.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/rc.o: rc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/rc.o.d 
	@${RM} ${OBJECTDIR}/rc.o.ok ${OBJECTDIR}/rc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/rc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/rc.o.d" -o ${OBJECTDIR}/rc.o rc.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/sconsole.o: sconsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/sconsole.o.d 
	@${RM} ${OBJECTDIR}/sconsole.o.ok ${OBJECTDIR}/sconsole.o.err 
	@${FIXDEPS} "${OBJECTDIR}/sconsole.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/sconsole.o.d" -o ${OBJECTDIR}/sconsole.o sconsole.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/conex.o: conex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/conex.o.d 
	@${RM} ${OBJECTDIR}/conex.o.ok ${OBJECTDIR}/conex.o.err 
	@${FIXDEPS} "${OBJECTDIR}/conex.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/conex.o.d" -o ${OBJECTDIR}/conex.o conex.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/tempo.o: tempo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tempo.o.d 
	@${RM} ${OBJECTDIR}/tempo.o.ok ${OBJECTDIR}/tempo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/tempo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/tempo.o.d" -o ${OBJECTDIR}/tempo.o tempo.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o.ok ${OBJECTDIR}/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/armadilhas.o: armadilhas.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/armadilhas.o.d 
	@${RM} ${OBJECTDIR}/armadilhas.o.ok ${OBJECTDIR}/armadilhas.o.err 
	@${FIXDEPS} "${OBJECTDIR}/armadilhas.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/armadilhas.o.d" -o ${OBJECTDIR}/armadilhas.o armadilhas.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/v2_main.o: v2_main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/v2_main.o.d 
	@${RM} ${OBJECTDIR}/v2_main.o.ok ${OBJECTDIR}/v2_main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/v2_main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/v2_main.o.d" -o ${OBJECTDIR}/v2_main.o v2_main.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/dump_heap_info.o: dump_heap_info.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/dump_heap_info.o.d 
	@${RM} ${OBJECTDIR}/dump_heap_info.o.ok ${OBJECTDIR}/dump_heap_info.o.err 
	@${FIXDEPS} "${OBJECTDIR}/dump_heap_info.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/dump_heap_info.o.d" -o ${OBJECTDIR}/dump_heap_info.o dump_heap_info.c     -fno-omit-frame-pointer
	
${OBJECTDIR}/tcp_com.o: tcp_com.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/tcp_com.o.d 
	@${RM} ${OBJECTDIR}/tcp_com.o.ok ${OBJECTDIR}/tcp_com.o.err 
	@${FIXDEPS} "${OBJECTDIR}/tcp_com.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"." -I"./free_rtos" -I"./free_rtos/include" -I"./free_rtos/portable/MemMang" -I"./free_rtos/portable/MPLAB/PIC24_dsPIC" -I"./microchip" -I"./microchip/Common" -I"./microchip/Include" -I"./microchip/Include/USB" -I"./microchip/USB" -I"./microchip/TCPIP Stack" -I"./microchip/TCPIP Stack/WiFi" -I"./microchip/MDD File System" -I"./microchip/Include/TCPIP Stack" -I"./microchip/Include/MDD File System" -I"./mini_ini" -mlarge-code -fno-schedule-insns -fno-schedule-insns2 -MMD -MF "${OBJECTDIR}/tcp_com.o.d" -o ${OBJECTDIR}/tcp_com.o tcp_com.c     -fno-omit-frame-pointer
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=8192,-Map="map24.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=8192,-Map="map24.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/p24_free_rtos.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/p24-c30
	${RM} -r dist/p24-c30

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

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
ifeq "$(wildcard nbproject/Makefile-local-16F616.mk)" "nbproject/Makefile-local-16F616.mk"
include nbproject/Makefile-local-16F616.mk
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=16F616
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/adc.p1 ${OBJECTDIR}/debug.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/protocolo.p1 ${OBJECTDIR}/uart.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/adc.p1.d ${OBJECTDIR}/debug.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/protocolo.p1.d ${OBJECTDIR}/uart.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/adc.p1 ${OBJECTDIR}/debug.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/protocolo.p1 ${OBJECTDIR}/uart.p1


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
	${MAKE}  -f nbproject/Makefile-16F616.mk dist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F616
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/adc.p1: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 adc.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  adc.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/adc.p1: > ${OBJECTDIR}/adc.p1.d
	@cat ${OBJECTDIR}/adc.dep >> ${OBJECTDIR}/adc.p1.d
	@${FIXDEPS} "${OBJECTDIR}/adc.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/debug.p1: debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 debug.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  debug.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/debug.p1: > ${OBJECTDIR}/debug.p1.d
	@cat ${OBJECTDIR}/debug.dep >> ${OBJECTDIR}/debug.p1.d
	@${FIXDEPS} "${OBJECTDIR}/debug.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/main.p1: > ${OBJECTDIR}/main.p1.d
	@cat ${OBJECTDIR}/main.dep >> ${OBJECTDIR}/main.p1.d
	@${FIXDEPS} "${OBJECTDIR}/main.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/protocolo.p1: protocolo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 protocolo.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  protocolo.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/protocolo.p1: > ${OBJECTDIR}/protocolo.p1.d
	@cat ${OBJECTDIR}/protocolo.dep >> ${OBJECTDIR}/protocolo.p1.d
	@${FIXDEPS} "${OBJECTDIR}/protocolo.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/uart.p1: uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG   --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/uart.p1: > ${OBJECTDIR}/uart.p1.d
	@cat ${OBJECTDIR}/uart.dep >> ${OBJECTDIR}/uart.p1.d
	@${FIXDEPS} "${OBJECTDIR}/uart.p1.d" $(SILENT) -ht 
	
else
${OBJECTDIR}/adc.p1: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 adc.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  adc.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/adc.p1: > ${OBJECTDIR}/adc.p1.d
	@cat ${OBJECTDIR}/adc.dep >> ${OBJECTDIR}/adc.p1.d
	@${FIXDEPS} "${OBJECTDIR}/adc.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/debug.p1: debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 debug.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  debug.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/debug.p1: > ${OBJECTDIR}/debug.p1.d
	@cat ${OBJECTDIR}/debug.dep >> ${OBJECTDIR}/debug.p1.d
	@${FIXDEPS} "${OBJECTDIR}/debug.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/main.p1: > ${OBJECTDIR}/main.p1.d
	@cat ${OBJECTDIR}/main.dep >> ${OBJECTDIR}/main.p1.d
	@${FIXDEPS} "${OBJECTDIR}/main.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/protocolo.p1: protocolo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 protocolo.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  protocolo.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/protocolo.p1: > ${OBJECTDIR}/protocolo.p1.d
	@cat ${OBJECTDIR}/protocolo.dep >> ${OBJECTDIR}/protocolo.p1.d
	@${FIXDEPS} "${OBJECTDIR}/protocolo.p1.d" $(SILENT) -ht 
	
${OBJECTDIR}/uart.p1: uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} --pass1 uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@${MP_CC} --scandep  uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}" -N31 --warn=0 --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --opt=default,+asm,-asmfile,-speed,+space,-debug,-9  --double=24 --float=24 --addrqual=ignore --mode=lite -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s"
	@echo ${OBJECTDIR}/uart.p1: > ${OBJECTDIR}/uart.p1.d
	@cat ${OBJECTDIR}/uart.dep >> ${OBJECTDIR}/uart.p1.d
	@${FIXDEPS} "${OBJECTDIR}/uart.p1.d" $(SILENT) -ht 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -D__DEBUG  -N31 --warn=0  --double=24 --float=24 --addrqual=ignore --mode=lite --output=default,-inhx032 -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s" ${OBJECTFILES_QUOTED_IF_SPACED}  
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/p1503_iso.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,+osccal,-resetbits,-download,+stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=default,+asm,-asmfile,-speed,+space,-debug,-9 -N31 --warn=0  --double=24 --float=24 --addrqual=ignore --mode=lite --output=default,-inhx032 -g --asmlist "--errformat=%%f:%%l: error: %%s" "--msgformat=%%f:%%l: advisory: %%s" "--warnformat=%%f:%%l warning: %%s" ${OBJECTFILES_QUOTED_IF_SPACED}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/16F616
	${RM} -r dist/16F616

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

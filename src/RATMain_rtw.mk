###########################################################################
## Makefile generated for component 'RATMain'. 
## 
## Makefile     : RATMain_rtw.mk
## Generated on : Mon Jan 29 16:54:00 2024
## Final product: ./RATMain.a
## Product type : static-library
## 
###########################################################################

###########################################################################
## MACROS
###########################################################################

# Macro Descriptions:
# PRODUCT_NAME            Name of the system to build
# MAKEFILE                Name of this makefile
# MODELLIB                Static library target

PRODUCT_NAME              = RATMain
MAKEFILE                  = RATMain_rtw.mk
MATLAB_ROOT               = /usr/local/MATLAB/R2021a
MATLAB_BIN                = /usr/local/MATLAB/R2021a/bin
MATLAB_ARCH_BIN           = $(MATLAB_BIN)/glnxa64
START_DIR                 = /opt/actions-runner/_work/RAT/RAT/compile/fullCompile/codegen/lib/RATMain
TGT_FCN_LIB               = ISO_C++11
SOLVER_OBJ                = 
CLASSIC_INTERFACE         = 0
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 
RELATIVE_PATH_TO_ANCHOR   = .
C_STANDARD_OPTS           = -fwrapv
CPP_STANDARD_OPTS         = -fwrapv
MODELLIB                  = RATMain.a

###########################################################################
## TOOLCHAIN SPECIFICATIONS
###########################################################################

# Toolchain Name:          GNU gcc/g++ | gmake (64-bit Linux)
# Supported Version(s):    
# ToolchainInfo Version:   2021a
# Specification Revision:  1.0
# 
#-------------------------------------------
# Macros assumed to be defined elsewhere
#-------------------------------------------

# C_STANDARD_OPTS
# CPP_STANDARD_OPTS

#-----------
# MACROS
#-----------

WARN_FLAGS         = -Wall -W -Wwrite-strings -Winline -Wstrict-prototypes -Wnested-externs -Wpointer-arith -Wcast-align
WARN_FLAGS_MAX     = $(WARN_FLAGS) -Wcast-qual -Wshadow
CPP_WARN_FLAGS     = -Wall -W -Wwrite-strings -Winline -Wpointer-arith -Wcast-align
CPP_WARN_FLAGS_MAX = $(CPP_WARN_FLAGS) -Wcast-qual -Wshadow

TOOLCHAIN_SRCS = 
TOOLCHAIN_INCS = 
TOOLCHAIN_LIBS = 

#------------------------
# BUILD TOOL COMMANDS
#------------------------

# C Compiler: GNU C Compiler
CC = gcc

# Linker: GNU Linker
LD = g++

# C++ Compiler: GNU C++ Compiler
CPP = g++

# C++ Linker: GNU C++ Linker
CPP_LD = g++

# Archiver: GNU Archiver
AR = ar

# MEX Tool: MEX Tool
MEX_PATH = $(MATLAB_ARCH_BIN)
MEX = "$(MEX_PATH)/mex"

# Download: Download
DOWNLOAD =

# Execute: Execute
EXECUTE = $(PRODUCT)

# Builder: GMAKE Utility
MAKE_PATH = %MATLAB%/bin/glnxa64
MAKE = "$(MAKE_PATH)/gmake"


#-------------------------
# Directives/Utilities
#-------------------------

CDEBUG              = -g
C_OUTPUT_FLAG       = -o
LDDEBUG             = -g
OUTPUT_FLAG         = -o
CPPDEBUG            = -g
CPP_OUTPUT_FLAG     = -o
CPPLDDEBUG          = -g
OUTPUT_FLAG         = -o
ARDEBUG             =
STATICLIB_OUTPUT_FLAG =
MEX_DEBUG           = -g
RM                  = @rm -f
ECHO                = @echo
MV                  = @mv
RUN                 =

#--------------------------------------
# "Faster Runs" Build Configuration
#--------------------------------------

ARFLAGS              = ruvs
CFLAGS               = -c $(C_STANDARD_OPTS) -fPIC \
                       -O3 -fno-loop-optimize -fno-aggressive-loop-optimizations
CPPFLAGS             = -c $(CPP_STANDARD_OPTS) -fPIC \
                       -O3 -fno-loop-optimize -fno-aggressive-loop-optimizations
CPP_LDFLAGS          =
CPP_SHAREDLIB_LDFLAGS  = -shared -Wl,--no-undefined
DOWNLOAD_FLAGS       =
EXECUTE_FLAGS        =
LDFLAGS              =
MEX_CPPFLAGS         =
MEX_CPPLDFLAGS       =
MEX_CFLAGS           =
MEX_LDFLAGS          =
MAKE_FLAGS           = -f $(MAKEFILE)
SHAREDLIB_LDFLAGS    = -shared -Wl,--no-undefined



###########################################################################
## OUTPUT INFO
###########################################################################

PRODUCT = ./RATMain.a
PRODUCT_TYPE = "static-library"
BUILD_TYPE = "Static Library"

###########################################################################
## INCLUDE PATHS
###########################################################################

INCLUDES_BUILDINFO = -I$(START_DIR) -I/opt/actions-runner/_work/RAT/RAT/compile/fullCompile -I/opt/actions-runner/_work/RAT/RAT/compile/customWrapper -I/opt/actions-runner/_work/RAT/RAT/compile/events -I$(MATLAB_ROOT)/extern/include

INCLUDES = $(INCLUDES_BUILDINFO)

###########################################################################
## DEFINES
###########################################################################

DEFINES_CUSTOM = 
DEFINES_STANDARD = -DMODEL=RATMain

DEFINES = $(DEFINES_CUSTOM) $(DEFINES_STANDARD)

###########################################################################
## SOURCE FILES
###########################################################################

SRCS = coder_setenv.c coder_posix_time.c $(START_DIR)/RATMain_data.cpp $(START_DIR)/rt_nonfinite.cpp $(START_DIR)/rtGetNaN.cpp $(START_DIR)/rtGetInf.cpp $(START_DIR)/RATMain_initialize.cpp $(START_DIR)/RATMain_terminate.cpp $(START_DIR)/repmat.cpp $(START_DIR)/strcmp.cpp $(START_DIR)/makeEmptyBayesResultsStruct.cpp $(START_DIR)/structConstructorHelper.cpp $(START_DIR)/lower.cpp $(START_DIR)/reflectivityCalculation.cpp $(START_DIR)/reflectivityCalculation1.cpp $(START_DIR)/calculate.cpp $(START_DIR)/single.cpp $(START_DIR)/allocateParamsToLayers.cpp $(START_DIR)/length.cpp $(START_DIR)/backSort.cpp $(START_DIR)/allocateLayersForContrast.cpp $(START_DIR)/coreLayersCalculation.cpp $(START_DIR)/groupLayersMod.cpp $(START_DIR)/groupLayersModImaginary.cpp $(START_DIR)/makeSLDProfiles.cpp $(START_DIR)/makeSLDProfileXY.cpp $(START_DIR)/blockedSummation.cpp $(START_DIR)/asymconvstep.cpp $(START_DIR)/erf.cpp $(START_DIR)/eml_erfcore.cpp $(START_DIR)/log2.cpp $(START_DIR)/minOrMax.cpp $(START_DIR)/resampleLayers.cpp $(START_DIR)/adaptive.cpp $(START_DIR)/linspace.cpp $(START_DIR)/SLDFunction.cpp $(START_DIR)/find.cpp $(START_DIR)/relop.cpp $(START_DIR)/power.cpp $(START_DIR)/complexTimes.cpp $(START_DIR)/allOrAny.cpp $(START_DIR)/sortIdx.cpp $(START_DIR)/sortLE.cpp $(START_DIR)/sortAscendLE.cpp $(START_DIR)/resampleLayersReIm.cpp $(START_DIR)/interp1.cpp $(START_DIR)/bsearch.cpp $(START_DIR)/shiftData.cpp $(START_DIR)/callReflectivity.cpp $(START_DIR)/colon.cpp $(START_DIR)/abelesSingle.cpp $(START_DIR)/dataResolutionPolly.cpp $(START_DIR)/resolutionPolly.cpp $(START_DIR)/chiSquared.cpp $(START_DIR)/parallelPoints.cpp $(START_DIR)/abelesParallelPoints.cpp $(START_DIR)/parallelContrasts.cpp $(START_DIR)/calculate1.cpp $(START_DIR)/single1.cpp $(START_DIR)/processCustomFunction.cpp $(START_DIR)/str2double.cpp $(START_DIR)/str2double1.cpp $(START_DIR)/callCppFunction.cpp $(START_DIR)/parallelPoints1.cpp $(START_DIR)/parallelContrasts1.cpp $(START_DIR)/calculate2.cpp $(START_DIR)/single2.cpp $(START_DIR)/processCustomFunction1.cpp $(START_DIR)/parallelPoints2.cpp $(START_DIR)/parallelContrasts2.cpp $(START_DIR)/reflectivityCalculation2.cpp $(START_DIR)/calculate3.cpp $(START_DIR)/single3.cpp $(START_DIR)/averageReflectivity.cpp $(START_DIR)/parallelPoints3.cpp $(START_DIR)/parallelContrasts3.cpp $(START_DIR)/calculate4.cpp $(START_DIR)/single4.cpp $(START_DIR)/processCustomFunction2.cpp $(START_DIR)/parallelPoints4.cpp $(START_DIR)/parallelContrasts4.cpp $(START_DIR)/calculate5.cpp $(START_DIR)/single5.cpp $(START_DIR)/processCustomFunction3.cpp $(START_DIR)/parallelPoints5.cpp $(START_DIR)/parallelContrasts5.cpp $(START_DIR)/simplexIntrafun.cpp $(START_DIR)/simplexXTransform.cpp $(START_DIR)/triggerEvent.cpp $(START_DIR)/getenv.cpp $(START_DIR)/abs.cpp $(START_DIR)/eps.cpp $(START_DIR)/sprintf.cpp $(START_DIR)/rand.cpp $(START_DIR)/runDE.cpp $(START_DIR)/leftWin.cpp $(START_DIR)/randperm.cpp $(START_DIR)/rem.cpp $(START_DIR)/print_processing.cpp $(START_DIR)/getFittedPriors.cpp $(START_DIR)/nestedSampler.cpp $(START_DIR)/randn.cpp $(START_DIR)/nsIntraFun.cpp $(START_DIR)/scaleParameters.cpp $(START_DIR)/logPlus.cpp $(START_DIR)/mod.cpp $(START_DIR)/cov.cpp $(START_DIR)/isrow.cpp $(START_DIR)/mchol.cpp $(START_DIR)/diag.cpp $(START_DIR)/mtimes.cpp $(START_DIR)/drawMCMC.cpp $(START_DIR)/rescaleParameters.cpp $(START_DIR)/ifWhileCond.cpp $(START_DIR)/optimalEllipsoids.cpp $(START_DIR)/calcEllipsoid.cpp $(START_DIR)/mean.cpp $(START_DIR)/rcond.cpp $(START_DIR)/norm.cpp $(START_DIR)/ixamax.cpp $(START_DIR)/vAllOrAny.cpp $(START_DIR)/mrdivide_helper.cpp $(START_DIR)/lusolve.cpp $(START_DIR)/xnrm2.cpp $(START_DIR)/qrsolve.cpp $(START_DIR)/det.cpp $(START_DIR)/matrix_to_integer_power.cpp $(START_DIR)/splitEllipsoid.cpp $(START_DIR)/kmeans.cpp $(START_DIR)/makeCell.cpp $(START_DIR)/all.cpp $(START_DIR)/sum.cpp $(START_DIR)/nonSingletonDim.cpp $(START_DIR)/drawMultiNest.cpp $(START_DIR)/drawEllipsoidPoints.cpp $(START_DIR)/eig.cpp $(START_DIR)/anyNonFinite.cpp $(START_DIR)/ishermitian.cpp $(START_DIR)/schur.cpp $(START_DIR)/xzgeev.cpp $(START_DIR)/xzlangeM.cpp $(START_DIR)/eye.cpp $(START_DIR)/xzlartg.cpp $(START_DIR)/xzlanhs.cpp $(START_DIR)/makeD.cpp $(START_DIR)/inEllipsoids.cpp $(START_DIR)/nest2pos.cpp $(START_DIR)/processBayes.cpp $(START_DIR)/prctileConfInts.cpp $(START_DIR)/prctile.cpp $(START_DIR)/parseResultToStruct.cpp $(START_DIR)/refPrctileConfInts.cpp $(START_DIR)/runDREAM.cpp $(START_DIR)/ratDREAM.cpp $(START_DIR)/rng.cpp $(START_DIR)/eml_setop.cpp $(START_DIR)/fileManager.cpp $(START_DIR)/evaluateModel.cpp $(START_DIR)/DREAMWrapper.cpp $(START_DIR)/calcDensity.cpp $(START_DIR)/scaledGaussPrior.cpp $(START_DIR)/rescale.cpp $(START_DIR)/bsxfun.cpp $(START_DIR)/pow2.cpp $(START_DIR)/drawCR.cpp $(START_DIR)/multrnd.cpp $(START_DIR)/combineVectorElements.cpp $(START_DIR)/reshapeSizeChecks.cpp $(START_DIR)/randsample.cpp $(START_DIR)/histc.cpp $(START_DIR)/tic.cpp $(START_DIR)/getTime.cpp $(START_DIR)/timeKeeper.cpp $(START_DIR)/metropolisRule.cpp $(START_DIR)/std.cpp $(START_DIR)/varstd.cpp $(START_DIR)/textProgressBar.cpp $(START_DIR)/adaptPCR.cpp $(START_DIR)/removeOutlier.cpp $(START_DIR)/nullAssignment.cpp $(START_DIR)/gelman.cpp $(START_DIR)/var.cpp $(START_DIR)/toc.cpp $(START_DIR)/eml_rand_mt19937ar_stateful.cpp $(START_DIR)/CoderTimeAPI.cpp $(START_DIR)/RATMain.cpp $(START_DIR)/acos.cpp $(START_DIR)/sqrt.cpp $(START_DIR)/asinh.cpp $(START_DIR)/log1p.cpp $(START_DIR)/sortrows.cpp $(START_DIR)/mergesort.cpp $(START_DIR)/flip.cpp $(START_DIR)/exp.cpp $(START_DIR)/applyBackgroundCorrection.cpp $(START_DIR)/applyHydrationReal.cpp $(START_DIR)/applyHydrationImag.cpp $(START_DIR)/runSimplex.cpp $(START_DIR)/packParams.cpp $(START_DIR)/fMinSearch.cpp $(START_DIR)/unpackParams.cpp $(START_DIR)/sort.cpp $(START_DIR)/deopt.cpp $(START_DIR)/eml_rand_mt19937ar.cpp $(START_DIR)/runNestedSampler.cpp $(START_DIR)/xgemm.cpp $(START_DIR)/sqrt1.cpp $(START_DIR)/gamma.cpp $(START_DIR)/xgetrf.cpp $(START_DIR)/xswap.cpp $(START_DIR)/xgeru.cpp $(START_DIR)/xtrsv.cpp $(START_DIR)/xtrsm.cpp $(START_DIR)/xgeqp3.cpp $(START_DIR)/xzgeqp3.cpp $(START_DIR)/xzlarfg.cpp $(START_DIR)/xzlarf.cpp $(START_DIR)/xgemv.cpp $(START_DIR)/xgerc.cpp $(START_DIR)/xunormqr.cpp $(START_DIR)/useConstantDim.cpp $(START_DIR)/triu.cpp $(START_DIR)/xgehrd.cpp $(START_DIR)/xungorghr.cpp $(START_DIR)/xzungqr.cpp $(START_DIR)/xdhseqr.cpp $(START_DIR)/xdlanv2.cpp $(START_DIR)/xrot.cpp $(START_DIR)/eigHermitianStandard.cpp $(START_DIR)/xzggev.cpp $(START_DIR)/xzlascl.cpp $(START_DIR)/xzggbal.cpp $(START_DIR)/xzgghrd.cpp $(START_DIR)/xzhgeqz.cpp $(START_DIR)/xztgevc.cpp $(START_DIR)/xzggbak.cpp $(START_DIR)/log.cpp $(START_DIR)/setupDREAM.cpp $(START_DIR)/initializeDREAM.cpp $(START_DIR)/boundaryHandling.cpp $(START_DIR)/rescaleKernel.cpp $(START_DIR)/calcProposal.cpp $(START_DIR)/RATMain_rtwutil.cpp

ALL_SRCS = $(SRCS)

###########################################################################
## OBJECTS
###########################################################################

OBJS = coder_setenv.o coder_posix_time.o RATMain_data.o rt_nonfinite.o rtGetNaN.o rtGetInf.o RATMain_initialize.o RATMain_terminate.o repmat.o strcmp.o makeEmptyBayesResultsStruct.o structConstructorHelper.o lower.o reflectivityCalculation.o reflectivityCalculation1.o calculate.o single.o allocateParamsToLayers.o length.o backSort.o allocateLayersForContrast.o coreLayersCalculation.o groupLayersMod.o groupLayersModImaginary.o makeSLDProfiles.o makeSLDProfileXY.o blockedSummation.o asymconvstep.o erf.o eml_erfcore.o log2.o minOrMax.o resampleLayers.o adaptive.o linspace.o SLDFunction.o find.o relop.o power.o complexTimes.o allOrAny.o sortIdx.o sortLE.o sortAscendLE.o resampleLayersReIm.o interp1.o bsearch.o shiftData.o callReflectivity.o colon.o abelesSingle.o dataResolutionPolly.o resolutionPolly.o chiSquared.o parallelPoints.o abelesParallelPoints.o parallelContrasts.o calculate1.o single1.o processCustomFunction.o str2double.o str2double1.o callCppFunction.o parallelPoints1.o parallelContrasts1.o calculate2.o single2.o processCustomFunction1.o parallelPoints2.o parallelContrasts2.o reflectivityCalculation2.o calculate3.o single3.o averageReflectivity.o parallelPoints3.o parallelContrasts3.o calculate4.o single4.o processCustomFunction2.o parallelPoints4.o parallelContrasts4.o calculate5.o single5.o processCustomFunction3.o parallelPoints5.o parallelContrasts5.o simplexIntrafun.o simplexXTransform.o triggerEvent.o getenv.o abs.o eps.o sprintf.o rand.o runDE.o leftWin.o randperm.o rem.o print_processing.o getFittedPriors.o nestedSampler.o randn.o nsIntraFun.o scaleParameters.o logPlus.o mod.o cov.o isrow.o mchol.o diag.o mtimes.o drawMCMC.o rescaleParameters.o ifWhileCond.o optimalEllipsoids.o calcEllipsoid.o mean.o rcond.o norm.o ixamax.o vAllOrAny.o mrdivide_helper.o lusolve.o xnrm2.o qrsolve.o det.o matrix_to_integer_power.o splitEllipsoid.o kmeans.o makeCell.o all.o sum.o nonSingletonDim.o drawMultiNest.o drawEllipsoidPoints.o eig.o anyNonFinite.o ishermitian.o schur.o xzgeev.o xzlangeM.o eye.o xzlartg.o xzlanhs.o makeD.o inEllipsoids.o nest2pos.o processBayes.o prctileConfInts.o prctile.o parseResultToStruct.o refPrctileConfInts.o runDREAM.o ratDREAM.o rng.o eml_setop.o fileManager.o evaluateModel.o DREAMWrapper.o calcDensity.o scaledGaussPrior.o rescale.o bsxfun.o pow2.o drawCR.o multrnd.o combineVectorElements.o reshapeSizeChecks.o randsample.o histc.o tic.o getTime.o timeKeeper.o metropolisRule.o std.o varstd.o textProgressBar.o adaptPCR.o removeOutlier.o nullAssignment.o gelman.o var.o toc.o eml_rand_mt19937ar_stateful.o CoderTimeAPI.o RATMain.o acos.o sqrt.o asinh.o log1p.o sortrows.o mergesort.o flip.o exp.o applyBackgroundCorrection.o applyHydrationReal.o applyHydrationImag.o runSimplex.o packParams.o fMinSearch.o unpackParams.o sort.o deopt.o eml_rand_mt19937ar.o runNestedSampler.o xgemm.o sqrt1.o gamma.o xgetrf.o xswap.o xgeru.o xtrsv.o xtrsm.o xgeqp3.o xzgeqp3.o xzlarfg.o xzlarf.o xgemv.o xgerc.o xunormqr.o useConstantDim.o triu.o xgehrd.o xungorghr.o xzungqr.o xdhseqr.o xdlanv2.o xrot.o eigHermitianStandard.o xzggev.o xzlascl.o xzggbal.o xzgghrd.o xzhgeqz.o xztgevc.o xzggbak.o log.o setupDREAM.o initializeDREAM.o boundaryHandling.o rescaleKernel.o calcProposal.o RATMain_rtwutil.o

ALL_OBJS = $(OBJS)

###########################################################################
## PREBUILT OBJECT FILES
###########################################################################

PREBUILT_OBJS = 

###########################################################################
## LIBRARIES
###########################################################################

LIBS = 

###########################################################################
## SYSTEM LIBRARIES
###########################################################################

SYSTEM_LIBS =  -L"$(MATLAB_ROOT)/sys/os/glnxa64" -lm -lstdc++ -liomp5

###########################################################################
## ADDITIONAL TOOLCHAIN FLAGS
###########################################################################

#---------------
# C Compiler
#---------------

CFLAGS_OPTS = -fopenmp
CFLAGS_BASIC = $(DEFINES) $(INCLUDES)

CFLAGS += $(CFLAGS_OPTS) $(CFLAGS_BASIC)

#-----------------
# C++ Compiler
#-----------------

CPPFLAGS_OPTS = -fopenmp
CPPFLAGS_BASIC = $(DEFINES) $(INCLUDES)

CPPFLAGS += $(CPPFLAGS_OPTS) $(CPPFLAGS_BASIC)

#---------------
# C++ Linker
#---------------

CPP_LDFLAGS_ = -ldl

CPP_LDFLAGS += $(CPP_LDFLAGS_)

#------------------------------
# C++ Shared Library Linker
#------------------------------

CPP_SHAREDLIB_LDFLAGS_ = -ldl

CPP_SHAREDLIB_LDFLAGS += $(CPP_SHAREDLIB_LDFLAGS_)

#-----------
# Linker
#-----------

LDFLAGS_ = -ldl

LDFLAGS += $(LDFLAGS_)

#--------------------------
# Shared Library Linker
#--------------------------

SHAREDLIB_LDFLAGS_ = -ldl

SHAREDLIB_LDFLAGS += $(SHAREDLIB_LDFLAGS_)

###########################################################################
## INLINED COMMANDS
###########################################################################

###########################################################################
## PHONY TARGETS
###########################################################################

.PHONY : all build clean info prebuild download execute


all : build
	@echo "### Successfully generated all binary outputs."


build : prebuild $(PRODUCT)


prebuild : 


download : $(PRODUCT)


execute : download


###########################################################################
## FINAL TARGET
###########################################################################

#---------------------------------
# Create a static library         
#---------------------------------

$(PRODUCT) : $(OBJS) $(PREBUILT_OBJS)
	@echo "### Creating static library "$(PRODUCT)" ..."
	$(AR) $(ARFLAGS)  $(PRODUCT) $(OBJS)
	@echo "### Created: $(PRODUCT)"


###########################################################################
## INTERMEDIATE TARGETS
###########################################################################

#---------------------
# SOURCE-TO-OBJECT
#---------------------

%.o : %.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : %.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : /opt/actions-runner/_work/RAT/RAT/compile/fullCompile/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : /opt/actions-runner/_work/RAT/RAT/compile/fullCompile/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


RATMain_data.o : $(START_DIR)/RATMain_data.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rt_nonfinite.o : $(START_DIR)/rt_nonfinite.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rtGetNaN.o : $(START_DIR)/rtGetNaN.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rtGetInf.o : $(START_DIR)/rtGetInf.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


RATMain_initialize.o : $(START_DIR)/RATMain_initialize.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


RATMain_terminate.o : $(START_DIR)/RATMain_terminate.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


repmat.o : $(START_DIR)/repmat.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


strcmp.o : $(START_DIR)/strcmp.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


makeEmptyBayesResultsStruct.o : $(START_DIR)/makeEmptyBayesResultsStruct.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


structConstructorHelper.o : $(START_DIR)/structConstructorHelper.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


lower.o : $(START_DIR)/lower.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


reflectivityCalculation.o : $(START_DIR)/reflectivityCalculation.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


reflectivityCalculation1.o : $(START_DIR)/reflectivityCalculation1.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


calculate.o : $(START_DIR)/calculate.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


single.o : $(START_DIR)/single.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


allocateParamsToLayers.o : $(START_DIR)/allocateParamsToLayers.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


length.o : $(START_DIR)/length.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


backSort.o : $(START_DIR)/backSort.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


allocateLayersForContrast.o : $(START_DIR)/allocateLayersForContrast.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


coreLayersCalculation.o : $(START_DIR)/coreLayersCalculation.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


groupLayersMod.o : $(START_DIR)/groupLayersMod.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


groupLayersModImaginary.o : $(START_DIR)/groupLayersModImaginary.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


makeSLDProfiles.o : $(START_DIR)/makeSLDProfiles.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


makeSLDProfileXY.o : $(START_DIR)/makeSLDProfileXY.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


blockedSummation.o : $(START_DIR)/blockedSummation.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


asymconvstep.o : $(START_DIR)/asymconvstep.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


erf.o : $(START_DIR)/erf.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


eml_erfcore.o : $(START_DIR)/eml_erfcore.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


log2.o : $(START_DIR)/log2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


minOrMax.o : $(START_DIR)/minOrMax.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


resampleLayers.o : $(START_DIR)/resampleLayers.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


adaptive.o : $(START_DIR)/adaptive.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


linspace.o : $(START_DIR)/linspace.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


SLDFunction.o : $(START_DIR)/SLDFunction.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


find.o : $(START_DIR)/find.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


relop.o : $(START_DIR)/relop.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


power.o : $(START_DIR)/power.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


complexTimes.o : $(START_DIR)/complexTimes.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


allOrAny.o : $(START_DIR)/allOrAny.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


sortIdx.o : $(START_DIR)/sortIdx.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


sortLE.o : $(START_DIR)/sortLE.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


sortAscendLE.o : $(START_DIR)/sortAscendLE.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


resampleLayersReIm.o : $(START_DIR)/resampleLayersReIm.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


interp1.o : $(START_DIR)/interp1.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


bsearch.o : $(START_DIR)/bsearch.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


shiftData.o : $(START_DIR)/shiftData.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


callReflectivity.o : $(START_DIR)/callReflectivity.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


colon.o : $(START_DIR)/colon.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


abelesSingle.o : $(START_DIR)/abelesSingle.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


dataResolutionPolly.o : $(START_DIR)/dataResolutionPolly.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


resolutionPolly.o : $(START_DIR)/resolutionPolly.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


chiSquared.o : $(START_DIR)/chiSquared.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelPoints.o : $(START_DIR)/parallelPoints.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


abelesParallelPoints.o : $(START_DIR)/abelesParallelPoints.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelContrasts.o : $(START_DIR)/parallelContrasts.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


calculate1.o : $(START_DIR)/calculate1.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


single1.o : $(START_DIR)/single1.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


processCustomFunction.o : $(START_DIR)/processCustomFunction.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


str2double.o : $(START_DIR)/str2double.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


str2double1.o : $(START_DIR)/str2double1.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


callCppFunction.o : $(START_DIR)/callCppFunction.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelPoints1.o : $(START_DIR)/parallelPoints1.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelContrasts1.o : $(START_DIR)/parallelContrasts1.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


calculate2.o : $(START_DIR)/calculate2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


single2.o : $(START_DIR)/single2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


processCustomFunction1.o : $(START_DIR)/processCustomFunction1.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelPoints2.o : $(START_DIR)/parallelPoints2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelContrasts2.o : $(START_DIR)/parallelContrasts2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


reflectivityCalculation2.o : $(START_DIR)/reflectivityCalculation2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


calculate3.o : $(START_DIR)/calculate3.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


single3.o : $(START_DIR)/single3.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


averageReflectivity.o : $(START_DIR)/averageReflectivity.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelPoints3.o : $(START_DIR)/parallelPoints3.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelContrasts3.o : $(START_DIR)/parallelContrasts3.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


calculate4.o : $(START_DIR)/calculate4.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


single4.o : $(START_DIR)/single4.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


processCustomFunction2.o : $(START_DIR)/processCustomFunction2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelPoints4.o : $(START_DIR)/parallelPoints4.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelContrasts4.o : $(START_DIR)/parallelContrasts4.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


calculate5.o : $(START_DIR)/calculate5.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


single5.o : $(START_DIR)/single5.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


processCustomFunction3.o : $(START_DIR)/processCustomFunction3.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelPoints5.o : $(START_DIR)/parallelPoints5.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parallelContrasts5.o : $(START_DIR)/parallelContrasts5.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


simplexIntrafun.o : $(START_DIR)/simplexIntrafun.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


simplexXTransform.o : $(START_DIR)/simplexXTransform.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


triggerEvent.o : $(START_DIR)/triggerEvent.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


getenv.o : $(START_DIR)/getenv.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


abs.o : $(START_DIR)/abs.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


eps.o : $(START_DIR)/eps.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


sprintf.o : $(START_DIR)/sprintf.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rand.o : $(START_DIR)/rand.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


runDE.o : $(START_DIR)/runDE.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


leftWin.o : $(START_DIR)/leftWin.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


randperm.o : $(START_DIR)/randperm.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rem.o : $(START_DIR)/rem.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


print_processing.o : $(START_DIR)/print_processing.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


getFittedPriors.o : $(START_DIR)/getFittedPriors.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


nestedSampler.o : $(START_DIR)/nestedSampler.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


randn.o : $(START_DIR)/randn.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


nsIntraFun.o : $(START_DIR)/nsIntraFun.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


scaleParameters.o : $(START_DIR)/scaleParameters.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


logPlus.o : $(START_DIR)/logPlus.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


mod.o : $(START_DIR)/mod.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


cov.o : $(START_DIR)/cov.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


isrow.o : $(START_DIR)/isrow.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


mchol.o : $(START_DIR)/mchol.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


diag.o : $(START_DIR)/diag.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


mtimes.o : $(START_DIR)/mtimes.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


drawMCMC.o : $(START_DIR)/drawMCMC.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rescaleParameters.o : $(START_DIR)/rescaleParameters.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


ifWhileCond.o : $(START_DIR)/ifWhileCond.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


optimalEllipsoids.o : $(START_DIR)/optimalEllipsoids.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


calcEllipsoid.o : $(START_DIR)/calcEllipsoid.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


mean.o : $(START_DIR)/mean.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rcond.o : $(START_DIR)/rcond.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


norm.o : $(START_DIR)/norm.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


ixamax.o : $(START_DIR)/ixamax.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


vAllOrAny.o : $(START_DIR)/vAllOrAny.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


mrdivide_helper.o : $(START_DIR)/mrdivide_helper.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


lusolve.o : $(START_DIR)/lusolve.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xnrm2.o : $(START_DIR)/xnrm2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


qrsolve.o : $(START_DIR)/qrsolve.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


det.o : $(START_DIR)/det.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


matrix_to_integer_power.o : $(START_DIR)/matrix_to_integer_power.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


splitEllipsoid.o : $(START_DIR)/splitEllipsoid.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


kmeans.o : $(START_DIR)/kmeans.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


makeCell.o : $(START_DIR)/makeCell.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


all.o : $(START_DIR)/all.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


sum.o : $(START_DIR)/sum.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


nonSingletonDim.o : $(START_DIR)/nonSingletonDim.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


drawMultiNest.o : $(START_DIR)/drawMultiNest.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


drawEllipsoidPoints.o : $(START_DIR)/drawEllipsoidPoints.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


eig.o : $(START_DIR)/eig.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


anyNonFinite.o : $(START_DIR)/anyNonFinite.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


ishermitian.o : $(START_DIR)/ishermitian.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


schur.o : $(START_DIR)/schur.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzgeev.o : $(START_DIR)/xzgeev.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzlangeM.o : $(START_DIR)/xzlangeM.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


eye.o : $(START_DIR)/eye.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzlartg.o : $(START_DIR)/xzlartg.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzlanhs.o : $(START_DIR)/xzlanhs.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


makeD.o : $(START_DIR)/makeD.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


inEllipsoids.o : $(START_DIR)/inEllipsoids.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


nest2pos.o : $(START_DIR)/nest2pos.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


processBayes.o : $(START_DIR)/processBayes.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


prctileConfInts.o : $(START_DIR)/prctileConfInts.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


prctile.o : $(START_DIR)/prctile.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


parseResultToStruct.o : $(START_DIR)/parseResultToStruct.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


refPrctileConfInts.o : $(START_DIR)/refPrctileConfInts.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


runDREAM.o : $(START_DIR)/runDREAM.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


ratDREAM.o : $(START_DIR)/ratDREAM.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rng.o : $(START_DIR)/rng.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


eml_setop.o : $(START_DIR)/eml_setop.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


fileManager.o : $(START_DIR)/fileManager.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


evaluateModel.o : $(START_DIR)/evaluateModel.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


DREAMWrapper.o : $(START_DIR)/DREAMWrapper.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


calcDensity.o : $(START_DIR)/calcDensity.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


scaledGaussPrior.o : $(START_DIR)/scaledGaussPrior.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rescale.o : $(START_DIR)/rescale.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


bsxfun.o : $(START_DIR)/bsxfun.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


pow2.o : $(START_DIR)/pow2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


drawCR.o : $(START_DIR)/drawCR.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


multrnd.o : $(START_DIR)/multrnd.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


combineVectorElements.o : $(START_DIR)/combineVectorElements.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


reshapeSizeChecks.o : $(START_DIR)/reshapeSizeChecks.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


randsample.o : $(START_DIR)/randsample.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


histc.o : $(START_DIR)/histc.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


tic.o : $(START_DIR)/tic.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


getTime.o : $(START_DIR)/getTime.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


timeKeeper.o : $(START_DIR)/timeKeeper.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


metropolisRule.o : $(START_DIR)/metropolisRule.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


std.o : $(START_DIR)/std.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


varstd.o : $(START_DIR)/varstd.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


textProgressBar.o : $(START_DIR)/textProgressBar.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


adaptPCR.o : $(START_DIR)/adaptPCR.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


removeOutlier.o : $(START_DIR)/removeOutlier.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


nullAssignment.o : $(START_DIR)/nullAssignment.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


gelman.o : $(START_DIR)/gelman.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


var.o : $(START_DIR)/var.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


toc.o : $(START_DIR)/toc.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


eml_rand_mt19937ar_stateful.o : $(START_DIR)/eml_rand_mt19937ar_stateful.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


CoderTimeAPI.o : $(START_DIR)/CoderTimeAPI.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


RATMain.o : $(START_DIR)/RATMain.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


acos.o : $(START_DIR)/acos.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


sqrt.o : $(START_DIR)/sqrt.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


asinh.o : $(START_DIR)/asinh.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


log1p.o : $(START_DIR)/log1p.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


sortrows.o : $(START_DIR)/sortrows.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


mergesort.o : $(START_DIR)/mergesort.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


flip.o : $(START_DIR)/flip.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


exp.o : $(START_DIR)/exp.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


applyBackgroundCorrection.o : $(START_DIR)/applyBackgroundCorrection.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


applyHydrationReal.o : $(START_DIR)/applyHydrationReal.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


applyHydrationImag.o : $(START_DIR)/applyHydrationImag.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


runSimplex.o : $(START_DIR)/runSimplex.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


packParams.o : $(START_DIR)/packParams.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


fMinSearch.o : $(START_DIR)/fMinSearch.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


unpackParams.o : $(START_DIR)/unpackParams.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


sort.o : $(START_DIR)/sort.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


deopt.o : $(START_DIR)/deopt.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


eml_rand_mt19937ar.o : $(START_DIR)/eml_rand_mt19937ar.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


runNestedSampler.o : $(START_DIR)/runNestedSampler.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xgemm.o : $(START_DIR)/xgemm.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


sqrt1.o : $(START_DIR)/sqrt1.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


gamma.o : $(START_DIR)/gamma.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xgetrf.o : $(START_DIR)/xgetrf.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xswap.o : $(START_DIR)/xswap.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xgeru.o : $(START_DIR)/xgeru.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xtrsv.o : $(START_DIR)/xtrsv.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xtrsm.o : $(START_DIR)/xtrsm.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xgeqp3.o : $(START_DIR)/xgeqp3.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzgeqp3.o : $(START_DIR)/xzgeqp3.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzlarfg.o : $(START_DIR)/xzlarfg.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzlarf.o : $(START_DIR)/xzlarf.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xgemv.o : $(START_DIR)/xgemv.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xgerc.o : $(START_DIR)/xgerc.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xunormqr.o : $(START_DIR)/xunormqr.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


useConstantDim.o : $(START_DIR)/useConstantDim.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


triu.o : $(START_DIR)/triu.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xgehrd.o : $(START_DIR)/xgehrd.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xungorghr.o : $(START_DIR)/xungorghr.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzungqr.o : $(START_DIR)/xzungqr.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xdhseqr.o : $(START_DIR)/xdhseqr.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xdlanv2.o : $(START_DIR)/xdlanv2.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xrot.o : $(START_DIR)/xrot.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


eigHermitianStandard.o : $(START_DIR)/eigHermitianStandard.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzggev.o : $(START_DIR)/xzggev.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzlascl.o : $(START_DIR)/xzlascl.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzggbal.o : $(START_DIR)/xzggbal.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzgghrd.o : $(START_DIR)/xzgghrd.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzhgeqz.o : $(START_DIR)/xzhgeqz.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xztgevc.o : $(START_DIR)/xztgevc.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


xzggbak.o : $(START_DIR)/xzggbak.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


log.o : $(START_DIR)/log.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


setupDREAM.o : $(START_DIR)/setupDREAM.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


initializeDREAM.o : $(START_DIR)/initializeDREAM.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


boundaryHandling.o : $(START_DIR)/boundaryHandling.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


rescaleKernel.o : $(START_DIR)/rescaleKernel.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


calcProposal.o : $(START_DIR)/calcProposal.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


RATMain_rtwutil.o : $(START_DIR)/RATMain_rtwutil.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


###########################################################################
## DEPENDENCIES
###########################################################################

$(ALL_OBJS) : rtw_proj.tmw $(MAKEFILE)


###########################################################################
## MISCELLANEOUS TARGETS
###########################################################################

info : 
	@echo "### PRODUCT = $(PRODUCT)"
	@echo "### PRODUCT_TYPE = $(PRODUCT_TYPE)"
	@echo "### BUILD_TYPE = $(BUILD_TYPE)"
	@echo "### INCLUDES = $(INCLUDES)"
	@echo "### DEFINES = $(DEFINES)"
	@echo "### ALL_SRCS = $(ALL_SRCS)"
	@echo "### ALL_OBJS = $(ALL_OBJS)"
	@echo "### LIBS = $(LIBS)"
	@echo "### MODELREF_LIBS = $(MODELREF_LIBS)"
	@echo "### SYSTEM_LIBS = $(SYSTEM_LIBS)"
	@echo "### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)"
	@echo "### CFLAGS = $(CFLAGS)"
	@echo "### LDFLAGS = $(LDFLAGS)"
	@echo "### SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS)"
	@echo "### CPPFLAGS = $(CPPFLAGS)"
	@echo "### CPP_LDFLAGS = $(CPP_LDFLAGS)"
	@echo "### CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS)"
	@echo "### ARFLAGS = $(ARFLAGS)"
	@echo "### MEX_CFLAGS = $(MEX_CFLAGS)"
	@echo "### MEX_CPPFLAGS = $(MEX_CPPFLAGS)"
	@echo "### MEX_LDFLAGS = $(MEX_LDFLAGS)"
	@echo "### MEX_CPPLDFLAGS = $(MEX_CPPLDFLAGS)"
	@echo "### DOWNLOAD_FLAGS = $(DOWNLOAD_FLAGS)"
	@echo "### EXECUTE_FLAGS = $(EXECUTE_FLAGS)"
	@echo "### MAKE_FLAGS = $(MAKE_FLAGS)"


clean : 
	$(ECHO) "### Deleting all derived files..."
	$(RM) $(PRODUCT)
	$(RM) $(ALL_OBJS)
	$(ECHO) "### Deleted all derived files."



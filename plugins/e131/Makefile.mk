include plugins/e131/e131/Makefile.mk
include plugins/e131/messages/Makefile.mk

# LIBRARIES
##################################################

if USE_E131
lib_LTLIBRARIES += plugins/e131/libolae131.la
plugins_e131_libolae131_la_SOURCES = \
    plugins/e131/E131Device.cpp \
    plugins/e131/E131Device.h \
    plugins/e131/E131Plugin.cpp \
    plugins/e131/E131Plugin.h \
    plugins/e131/E131Port.cpp \
    plugins/e131/E131Port.h
plugins_e131_libolae131_la_LIBADD = plugins/e131/messages/libolae131conf.la \
                                    plugins/e131/e131/libolae131core.la
endif

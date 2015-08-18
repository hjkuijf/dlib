# -----------------------------------------------------------------------------
# dlib project profile
#
# \file    dlib.pro
# \author  Hugo
# \date    2010-03-10
# -----------------------------------------------------------------------------

TEMPLATE   = lib

TARGET     = dlib

DESTDIR    = ../../lib
DLLDESTDIR = ../../lib

# set high warn level (warn 4 on MSCV)
WARN = HIGH

# add used projects here (see included pri files below for available projects)
CONFIG += staticlib

# -- System -------------------------------------------------------------
include ($(MLAB_MeVis_Foundation)/Configuration/IncludePackages.pri)

DEFINES += DLIB_ISO_CPP_ONLY

INCLUDEPATH += 

HEADERS += 

SOURCES += dlib/all/source.cpp

# additional files that are NOT compiled
RELATEDFILES += 


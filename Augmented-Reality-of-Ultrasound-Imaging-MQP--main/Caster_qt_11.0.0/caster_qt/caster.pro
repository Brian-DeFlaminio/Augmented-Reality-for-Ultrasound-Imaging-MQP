TARGET = caster_qt
TEMPLATE = app
QT += core widgets gui
CONFIG += c++17 precompile_header
DEFINES += QT_DEPRECATED_WARNINGS
PRECOMPILED_HEADER = pch.h

# ensure to unpack the appropriate libs from the zip file into this folder
LIBPATH = C:\Users\bdefl\Documents\cast-11.0.0\include
INCLUDEPATH += $$PWD/../../include
LIBS += -L$$LIBPATH/ -lcast -lws2_32


SOURCES += main.cpp caster.cpp display.cpp
HEADERS += caster.h display.h
FORMS += caster.ui

RESOURCES += \
    caster.qrc

#-------------------------------------------------
#
# Project created by QtCreator 2015-08-04T13:37:43
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = clifview
TEMPLATE = app

QMAKE_CXXFLAGS += -std=c++11 -Wl,-rpath,/home/hendrik/projects/clif/src/lib -fno-omit-frame-pointer
#QMAKE_CXXFLAGS += -std=c++11 -Wl,-rpath,/home/hendrik/projects/clif/src/gui

#alternative
CONFIG += debug
CONFIG += qwt

CONFIG += link_pkgconfig
PKGCONFIG += opencv

QMAKE_LFLAGS += -Wl,-rpath,/home/hendrik/projects/clif/src/lib -Wl,-rpath,/home/hendrik/projects/clif/external/cliini
QMAKE_LFLAGS += -Wl,-rpath,/home/hendrik/projects/clif/src/gui

#QMAKE_LFLAGS += -Wl,-rpath,/home/hendrik/projects/clif/external/cliini

LIBS += -L/home/hendrik/projects/clif/src/lib -L/home/hendrik/projects/clif/external/cliini -lclif -lcliini -lhdf5_cpp -lhdf5
LIBS += -L/home/hendrik/projects/clif/src/gui -lclif-qt -lqwt -lboost_system -lboost_filesystem

INCLUDEPATH += /home/hendrik/projects/clif/src/lib
INCLUDEPATH += /home/hendrik/projects/clif/src/gui
INCLUDEPATH += /usr/include/qwt


SOURCES += main.cpp\
        clifview.cpp

HEADERS  += clifview.h

FORMS    += clifview.ui

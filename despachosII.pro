TEMPLATE = app
QT += sql webkit xml network

INCLUDEPATH += . ui src ../ncreport

DEPENDPATH += .
MOC_DIR += moc
UI_DIR += ui

DESTDIR = ../bin

win32: LIBS += -L$$PWD/../ncreport/lib/ -lNCReport2

INCLUDEPATH += $$PWD/../ncreport/src/ncreport
DEPENDPATH += $$PWD/../ncreport/src/ncreport


#win32{
 #   INCLUDEPATH += ../ncreport2.12.1</src/ncreport
#    LIBS += -lncreport2  -L ../bin
#}


#win32: LIBS += -L$$PWD/../../ncreport/lib/ -lNCReport2

#INCLUDEPATH += $$PWD/../../ncreport/src/ncreport
#DEPENDPATH += $$PWD/../../ncreportqq/src/ncreport



HEADERS += src/config.h \
    src/database.h  \
    src/datapicker.h \
    src/despachosii.h \
    src/login.h  \
    src/msgdialogo.h \
    src/cmtablefilter.h \
    src/combo.h \
    src/cmtreewidget.h \
    src/cmtablewidget.h \
    src/crearmuelle.h \
    src/nuevaplanilla.h \
    src/editarmuelle.h \
    src/reportes.h \
    src/cmtreewidgetitem.h \
    src/asignarterminales.h \
    src/cmhttp.h \
    src/contenedor.h \
    src/alertwindow.h \
    src/leermetros.h \
    src/terminalesautorizadas.h \
    src/servicioweb.h \
    src/checkpointguia.h \
    src/mensajeterminales.h

SOURCES += src/config.cpp \
    src/database.cpp \
    src/datapicker.cpp \
    src/despachosii.cpp \
    src/login.cpp \
    src/main.cpp \
    src/msgdialogo.cpp \
    src/cmtablefilter.cpp \
    src/combo.cpp \
    src/cmtreewidget.cpp \
    src/cmtablewidget.cpp \
    src/crearmuelle.cpp \
    src/nuevaplanilla.cpp \
    src/editarmuelle.cpp \
    src/reportes.cpp \
    src/cmtreewidgetitem.cpp \
    src/asignarterminales.cpp \
    src/cmhttp.cpp \
    src/contenedor.cpp \
    src/alertwindow.cpp \
    src/leermetros.cpp \
    src/terminalesautorizadas.cpp \
    src/servicioweb.cpp \
    src/checkpointguia.cpp \
    src/mensajeterminales.cpp


FORMS += ui/datapicker.ui \
    ui/despachosii.ui \
    ui/login.ui \
    ui/msgdialogo.ui \
    ui/combo.ui \
    ui/crearmuelle.ui \
    ui/nuevaplanilla.ui \
    ui/editarmuelle.ui \
    ui/asignarterminales.ui \
    ui/contenedor.ui \
    ui/alertwindow.ui \
    ui/leermetros.ui \
    ui/terminalesautorizadas.ui \
    src/mensajeterminales.ui

RESOURCES += despachosii.qrc
win32:RC_FILE = DespachosII.rc

CONFIG += release
OTHER_FILES += src/querys.txt  \
    src/bitacora.txt


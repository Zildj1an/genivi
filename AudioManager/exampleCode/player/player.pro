######################################################################
# Automatically generated by qmake (2.01a) Thu Aug 23 18:02:14 2007
######################################################################

TEMPLATE = app
DEPENDPATH += . build src ui

QT += phonon

FORMS += settings.ui
RESOURCES += mediaplayer.qrc

!win32:CONFIG += CONSOLE

SOURCES += main.cpp mediaplayer.cpp \
    audiomanagerinteractor.cpp \
    dbushandler.cpp
HEADERS += mediaplayer.h \
    audiomanagerinteractor.h \
    dbushandler.h \
    audiomanagertypes.h

target.path = $$[QT_INSTALL_DEMOS]/qmediaplayer
sources.files = $$SOURCES $$HEADERS $$FORMS $$RESOURCES *.pro *.html *.doc images
sources.path = $$[QT_INSTALL_DEMOS]/qmediaplayer
INSTALLS += target sources

wince*{
DEPLOYMENT_PLUGIN += phonon_ds9 phonon_waveout
}

symbian {
    TARGET.UID3 = 0xA000C613

     addFiles.sources = ../embedded/desktopservices/data/sax.mp3
     addFiles.path = /data/sounds/
     DEPLOYMENT += addFiles

    include($$QT_SOURCE_TREE/demos/symbianpkgrules.pri)

        LIBS += -lcommdb

    TARGET.CAPABILITY="NetworkServices"
}


unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += glib-2.0
    PKGCONFIG += dbus-1
    PKGCONFIG += dbus-glib-1

}

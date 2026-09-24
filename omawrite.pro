QT += core gui widgets printsupport qml quick quickcontrols2 quickdialogs2 dbus

CONFIG += c++17 release
TARGET = omawrite
TEMPLATE = app

# qmake APP_ID=io.github.gornostal.Omawrite renames the desktop entry and icon lookup.
!isEmpty(APP_ID): DEFINES += OMAWRITE_APP_ID=\\\"$$APP_ID\\\"

HEADERS += \
    src/backend.h \
    src/markdownhighlighter.h \
    src/systemtheme.h

SOURCES += \
    src/main.cpp \
    src/backend.cpp \
    src/markdownhighlighter.cpp \
    src/systemtheme.cpp

RESOURCES += src/resources.qrc

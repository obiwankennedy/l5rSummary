TEMPLATE = app

QT += qml quick widgets
CONFIG += c++11
SOURCES += main.cpp \
    qmlcontroler.cpp

RESOURCES += qml.qrc \
    image.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = pages

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    qmlcontroler.h

FORMS += \
    qmlcontroler.ui

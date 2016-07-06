#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickTextDocument>

#include "qmlcontroler.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("ScreenW",1980);
    engine.rootContext()->setContextProperty("ScreenH",1280);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));



    QmlControler ctr;
    ctr.setEngine(&engine);


    return app.exec();
}

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickTextDocument>
#include <QDesktopWidget>

#include "qmlcontroler.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QRect rec = QApplication::desktop()->screenGeometry();
    int height = rec.height();
    int width = rec.width();

    engine.rootContext()->setContextProperty("ScreenW",width);
    engine.rootContext()->setContextProperty("ScreenH",height);

    engine.rootContext()->setContextProperty("ScreenW",1280);
    engine.rootContext()->setContextProperty("ScreenH",720);


    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));



    QmlControler ctr;
    ctr.setEngine(&engine);


    return app.exec();
}

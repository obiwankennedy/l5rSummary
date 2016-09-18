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

    engine.rootContext()->setContextProperty("Screen.width",width);
    engine.rootContext()->setContextProperty("Screen.height",height);

    engine.rootContext()->setContextProperty("Screen.width",1280);
    engine.rootContext()->setContextProperty("Screen.height",720);


    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));



    QmlControler ctr;
    ctr.setEngine(&engine);


    return app.exec();
}

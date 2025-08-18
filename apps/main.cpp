#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QtPlugin>
Q_IMPORT_PLUGIN(QWaylandIntegrationPlugin)
import std;


int main(int argc, char *argv[])
{
    QQuickWindow::setGraphicsApi(QSGRendererInterface::OpenGL);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    std::string smth {"lol"};
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}

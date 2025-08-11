#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
import std;
int main(int argc, char *argv[])
{
    QQuickWindow::setGraphicsApi(QSGRendererInterface::OpenGL);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    double d = std::numbers::pi + 1;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}

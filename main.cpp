#include <QApplication>
#include <QWidget>
#include <QLabel>
#include <span>
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QWidget window;
    window.setWindowTitle("Hello Qt6");

    QLabel *label = new QLabel("Hello, World!", &window);
    label->setAlignment(Qt::AlignCenter);
    window.resize(250, 100);
    window.show();

    return app.exec();
}

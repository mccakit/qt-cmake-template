import QtQuick
import QtQuick.Window

Window {

    height: 480
    title: "Hello QML"
    visible: true
    width: 640
    Text {
        anchors.centerIn: parent
        font.pixelSize: 24
        text: "Hello, World!"
    }
}

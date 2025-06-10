import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: "Hello QML"
    Text {
        text: "Hello, World!"
        anchors.centerIn: parent
        font.pixelSize: 24
    }
}

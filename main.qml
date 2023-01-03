import QtQuick
import QtQuick.Controls.Basic

ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "PyInfoSolar"
    
    Rectangle {
        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "./beach.jpg"
        }

        Text {
            anchors.centerIn: parent
            text: "Hello World"
            font.pixelSize: 24
        }
    }
}
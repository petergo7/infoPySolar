import QtQuick
import QtQuick.Controls.Basic

ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "PyInfoSolar"
    property string currTime: "00:00:00"
    property QtObject backend


    Rectangle {
        anchors.fill: parent

        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            fillMode: Image.PreserveAspectCrop
            source: "./beachDark.jpg"
        }

        Rectangle {
            anchors.centerIn: parent

            Text {
                anchors.centerIn: parent
                text: currTime
                font.pixelSize: 96
                font.weight: Font.Bold
                color: "#FFFFFF"
            }
        }
    }

    Connections {
        target: backend

        function onUpdated(msg) {
            currTime = msg;
        }
    }
}
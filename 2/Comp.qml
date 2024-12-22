import QtQuick

Rectangle {
    id: rect
    width: 100
    height: 100
    border.width: 1
    color: Qt.rgba(Math.random(), Math.random(), Math.random(), 0.7)
    Text{
        text: "Color: "+rect.color
        anchors.centerIn: rect
        font.pixelSize: 16
    }
}

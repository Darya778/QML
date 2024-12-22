import QtQuick
import QtQuick.Layouts 1.3

Rectangle{
    color: "#dcdcdc"
    border.color: "lightgray"
    border.width: 1

    Text {
        text: qsTr("Header")
        font.pointSize: 10
        anchors.centerIn: parent
    }

}

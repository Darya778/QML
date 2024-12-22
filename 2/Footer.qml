import QtQuick
import QtQuick.Layouts 1.3

Rectangle {
    color: "lightgray"
    RowLayout {
        anchors.fill: parent
        spacing: 2

        Rectangle {
            id: fr1
            color: "lightgray"
            border.color: "gray"
            border.width: 2
            width: (parent.width / 3)
            height: parent.height
            Layout.alignment: Qt.AlignLeft
            Text {
                anchors.centerIn: parent
                text: "1"
                font.pointSize: 12
            }
        }

        Rectangle {
            id: fr2
            color: "lightgray"
            border.color: "gray"
            border.width: 2
            width: (parent.width / 3)
            height: parent.height
            Layout.alignment: Qt.AlignCenter
            Text {
                anchors.centerIn: parent
                text: "2"
                font.pointSize: 12
            }
        }

        Rectangle {
            id: fr3
            color: "lightgray"
            border.color: "gray"
            border.width: 2
            width: (parent.width / 3)
            height: parent.height
            Layout.alignment: Qt.AlignRight
            Text {
                anchors.centerIn: parent
                text: "3"
                font.pointSize: 12
            }
        }
    }
}

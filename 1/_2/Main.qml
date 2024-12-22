import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    id: main
    visible: true
    width: 320
    height: 580
    property real rHeight: height / 10
    property real rWidth: width / 3


    Rectangle{
        id: header
        color: "#C0C0C0"
        height: rHeight

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        Text {
            text: qsTr("Header")
            font.pointSize: 10
            anchors.centerIn: parent
        }

    }

    Rectangle{
        id: content
        color: "#FFFFFF"
        border.color: "#dcdcdc"
        border.width: 1

        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: footer.top
        anchors.margins: 10


        Text {
            text: qsTr("Content")
            font.pointSize: 10
            anchors.centerIn: parent
        }
    }
    Rectangle{
        id: footer
        color: "#FFFFFF"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: rHeight

        Rectangle{
            id: one
            width: rWidth - 4

            color: "#C0C0C0"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            Text {
                text: qsTr("1")
                font.pointSize: 10
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: two
            color: "#C0C0C0"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: one.right
            anchors.right: three.left

            anchors.rightMargin: 3
            anchors.leftMargin: 3
            Text {
                text: qsTr("2")
                font.pointSize: 10
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: three
            width: rWidth - 4

            color: "#C0C0C0"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            Text {
                text: qsTr("3")
                font.pointSize: 10
                anchors.centerIn: parent
            }
        }
    }

}

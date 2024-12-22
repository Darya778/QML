import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 320
    height: 580
    property real rh: height / 10
    property real rw: width / 3


    Rectangle{
        id: header
        color: "#dcdcdc"
        height: rh

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
        color: "#f5f5f5"
        border.color: "#dcdcdc"
        border.width: 1

        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: footer.top
        anchors.margins: 10


        Text {
            id: centertxt
            text: qsTr("Some content")
            font.pointSize: 10
            anchors.centerIn: parent
        }
    }
    Rectangle{
        id: footer
        color: "#f5f5f5"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: rh

        Rectangle{
            id: first
            width: rw - 4

            color: "#f5f5f5"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            Text {
                id: firsttxt
                text: qsTr("Item 1")
                font.pointSize: 10
                anchors.centerIn: parent
                color: "#d3d3d3"
            }
            MouseArea{
                anchors.fill: first
                onClicked: {
                    first.color="#d3d3d3"
                    firsttxt.color="black"
                    second.color="#f5f5f5"
                    secondtxt.color="#d3d3d3"
                    third.color="#f5f5f5"
                    thirdtxt.color="#d3d3d3"
                    centertxt.text="Item 1 content"
                }
            }
        }

        Rectangle{
            id: second
            color: "#f5f5f5"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: first.right
            anchors.right: third.left

            anchors.rightMargin: 3
            anchors.leftMargin: 3
            Text {
                id: secondtxt
                color: "#d3d3d3"
                text: qsTr("Item 2")
                font.pointSize: 10
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: second
                onClicked: {
                    second.color="#d3d3d3"
                    secondtxt.color="black"
                    first.color="#f5f5f5"
                    firsttxt.color="#d3d3d3"
                    third.color="#f5f5f5"
                    thirdtxt.color="#d3d3d3"
                    centertxt.text="Item 2 content"
                }
            }
        }

        Rectangle{
            id: third
            width: rw - 4

            color: "#f5f5f5"
            border.color: "#dcdcdc"
            border.width: 1

            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            Text {
                id: thirdtxt
                text: qsTr("Item 3")
                font.pointSize: 10
                anchors.centerIn: parent
                color: "#d3d3d3"
            }
            MouseArea{
                anchors.fill: third
                onClicked: {
                    third.color="#d3d3d3"
                    thirdtxt.color="black"
                    second.color="#f5f5f5"
                    secondtxt.color="#d3d3d3"
                    first.color="#f5f5f5"
                    firsttxt.color="#d3d3d3"
                    centertxt.text="Item 3 content"
                }
            }
        }
    }

}

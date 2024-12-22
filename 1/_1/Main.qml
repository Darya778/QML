import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 600
    height: 800
    title: "Colored Squares"

    Rectangle {
        id: square1
        width: 100
        height: 200
        color: "#FFD700"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: (parent.width - 100) / 2
        anchors.topMargin: (parent.height - 200) / 2
    }
    Rectangle {
        id: square2
        width: 200
        height: 100
        color: "#FFD700"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: (parent.width - 200) / 2
        anchors.topMargin: (parent.height - 100) / 2
    }
    Rectangle {
        id: square3
        width: 160
        height: 160
        color: "#FFD700"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: (parent.width - 200) / 2 + 20
        anchors.topMargin: (parent.height - 200) / 2 + 20
    }


    Rectangle {
        id: square11
        width: 80
        height: 180
        color: "yellow"
        anchors.left: square1.left
        anchors.top: square1.top
        anchors.leftMargin: 10 // Отступ
        anchors.topMargin: 10
    }
    Rectangle {
        id: square12
        width: 180
        height: 80
        color: "yellow"
        anchors.left: square2.left
        anchors.top: square2.top
        anchors.leftMargin: 10 // Отступ
        anchors.topMargin: 10
    }
    Rectangle {
        id: square13
        width: 140
        height: 140
        color: "yellow"
        anchors.left: square3.left
        anchors.top: square3.top
        anchors.leftMargin: 10 // Отступ
        anchors.topMargin: 10
    }


    Rectangle {
        id: square21
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square1.left
        anchors.top: square2.top
        anchors.leftMargin: 20 // Отступ
        anchors.topMargin: 12.5
    }
    Rectangle {
        id: square22
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square21.right
        anchors.top: square21.top
    }
    Rectangle {
        id: square23
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square22.right
        anchors.top: square22.top
    }
    Rectangle {
        id: square26
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square23.right
        anchors.top: square23.top
    }

    Rectangle {
        id: square24
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square21.left
        anchors.top: square21.bottom
    }
    Rectangle {
        id: square25
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square24.left
        anchors.top: square24.bottom
    }
    Rectangle {
        id: square28
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square25.right
        anchors.top: square25.top
    }
    Rectangle {
        id: square27
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square28.right
        anchors.top: square28.top
    }
    Rectangle {
        id: square29
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square27.right
        anchors.top: square27.top
    }
    Rectangle {
        id: square30
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square29.left
        anchors.top: square29.bottom
    }
    Rectangle {
        id: square31
        width: 15
        height: 15
        color: "#FFA500"
        anchors.left: square30.left
        anchors.top: square30.bottom
    }
    Rectangle {
        id: square32
        width: 15
        height: 15
        color: "#FFA500"
        anchors.right: square31.left
        anchors.top: square31.top
    }
    Rectangle {
        id: square33
        width: 15
        height: 15
        color: "#FFA500"
        anchors.right: square32.left
        anchors.top: square32.top
    }
    Rectangle {
        id: square34
        width: 15
        height: 15
        color: "#FFA500"
        anchors.right: square33.left
        anchors.top: square33.top
    }

}

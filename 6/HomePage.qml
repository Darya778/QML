import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    background: Rectangle {
        color: "#f0f0f0"
    }

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "WELCOME!"
            font.pixelSize: 30
            color: "#333333"
            horizontalAlignment: Text.AlignHCenter
        }

        Button {
            text: "Go to Page Red"
            onClicked: stackView.push(Qt.resolvedUrl("Page_red.qml"))
        }
        Button {
            text: "Go to Page Green"
            onClicked: stackView.push(Qt.resolvedUrl("Page_green.qml"))
        }
        Button {
            text: "Go to Page Yellow"
            onClicked: stackView.push(Qt.resolvedUrl("Page_yellow.qml"))
        }
    }
}

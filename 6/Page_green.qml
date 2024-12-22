import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
    background: Rectangle {
        color: "green"
    }

    header: ToolBar {
        RowLayout {
            spacing: 10
            Button {
                text: "←"
                visible: stackView.depth > 1
                onClicked: stackView.pop()
            }
            Label {
                text: "Page Green"
                font.pixelSize: 20
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Column {
        anchors.centerIn: parent
        spacing: 20

        Button {
            text: "Go to Page Red"
            onClicked: stackView.push(Qt.resolvedUrl("Page_red.qml"))
        }
        Button {
            text: "Go to Page Yellow"
            onClicked: stackView.push(Qt.resolvedUrl("Page_yellow.qml"))
        }
    }
}

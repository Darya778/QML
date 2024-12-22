import QtQuick 2.15
import QtQuick.Controls 2.15

ListView {
    id: messageList
    model: ListModel {}
    width: parent.width
    height: parent.height
    spacing: 10

    delegate: Item {
        width: messageList.width
        height: 100
        Rectangle {
            width: parent.width * 0.8
            height: 100
            color: "#D6D1C2"
            border.color: "#BEB7A2"
            radius: 10
            anchors.centerIn: parent
            Column {
                width: parent.width - 20
                spacing: 5
                anchors.fill: parent
                anchors.margins: 10
                Text {
                    text: model.sender + ": " + model.text
                    font.pixelSize: 16
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width - 20
                }
            }
            Text {
                text: model.time
                font.pixelSize: 12
                color: "black"
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.margins: 10
            }
        }
    }

    function addMessage(sender, text, time) {
        model.append({
            sender: sender,
            text: text,
            time: time
        });
    }
}

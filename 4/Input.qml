import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: inputBar
    width: parent.width
    height: 50
    property string text: ""
    Rectangle {
        width: parent.width
        height: 50
        color: "#F4EBD2"
        anchors.bottom: parent.bottom
        TextInput {
            id: inputField
            width: parent.width - 120
            height: 30
            anchors.centerIn: parent
            text: inputBar.text
            onTextChanged: {
                placeHolderText.visible = inputField.text.length === 0
            }
        }
        Text {
            id: placeHolderText
            anchors.centerIn: inputField
            text: "Type something..."
            color: "#9B9278"
            visible: inputField.text.length === 0
            font.pixelSize: 16
        }

        Button {
            text: "Send"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            width: 100
            height: 40
            font.pixelSize: 18
            background: Rectangle {
                            color: "#DEDACE"
                            radius: 5
                        }
            onClicked: {
                if (inputField.text.length > 0) {
                    inputBar.text = inputField.text;
                    inputField.text = "";
                    inputBar.sendMessage();
                }
            }
        }
    }
    signal sendMessage()
    function clear() {
        text = "";
    }
}

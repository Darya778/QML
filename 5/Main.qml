import QtQuick

Window {
    width: 480
    height: 640
    visible: true

    property real rWidth: width / 8
    property real rHeight: height / 8

    Rectangle{
        id: main
        width: rWidth * 4
        height: rHeight * 6
        color: "lightgrey"
        anchors.centerIn: parent
        states:[
            State {
                name: "stop"
                PropertyChanges {
                    target: redr
                    color: "red"
                    border.color: "black"
                }
                PropertyChanges {
                    target: yellowr
                    color: "black"
                    border.color: "black"
                }
                PropertyChanges {
                    target: greenr
                    color: "black"
                    border.color: "black"
                }
            },
            State {
                name: "caution"
                PropertyChanges {
                    target: redr
                    color: "black"
                    border.color: "black"

                }
                PropertyChanges {
                    target: yellowr
                    color: "yellow"
                    border.color: "black"

                }
                PropertyChanges {
                    target: greenr
                    color: "black"
                    border.color: "black"
                }
            },
            State {
                name: "go"
                PropertyChanges {
                    target: redr
                    color: "black"
                    border.color: "black"
                }
                PropertyChanges {
                    target: yellowr
                    color: "black"
                    border.color: "black"
                }
                PropertyChanges {
                    target: greenr
                    color: "green"
                    border.color: "black"
                }
            }
        ]
        state: "stop"

        transitions: [
            Transition {
                from: "stop"
                to: "caution"

                ColorAnimation {
                    target: yellowr
                    from: "black"
                    to: "yellow"
                    duration: 500
                }

                ColorAnimation {
                    target: redr
                    from: "red"
                    to: "black"
                    duration: 500
                }
            },
            Transition {
                from: "caution"
                to: "go"
                ColorAnimation {
                    target: greenr
                    from: "black"
                    to: "green"
                    duration: 500
                }

                ColorAnimation {
                    target: yellowr
                    from: "yellow"
                    to: "black"
                    duration: 500
                }
            },
            Transition {
                from: "go"
                to: "stop"

                ColorAnimation {
                    target: redr
                    from: "black"
                    to: "red"
                    duration: 500
                }

                ColorAnimation {
                    target: greenr
                    from: "green"
                    to: "black"
                    duration: 500
                }
            }
        ]
        MouseArea{
            anchors.fill: parent

            onClicked:
            {
                if (parent.state === "stop"){
                    parent.state = "caution";
                }else if (parent.state === "caution"){
                    parent.state = "go";
                }else{
                    parent.state = "stop";
                }
            }
        }

    }

    Rectangle{
        id: redr
        width: rWidth * 2
        height: rHeight *1.5
        color: "red"
        anchors.bottom: yellowr.top
        anchors.horizontalCenter: main.horizontalCenter
        anchors.margins: 20

    }
    Rectangle{
        id: yellowr
        width: rWidth * 2
        height: rHeight *1.5
        color: "yellow"
        anchors.centerIn: main
        anchors.margins: 20


    }
    Rectangle{
        id: greenr
        width: rWidth * 2
        height: rHeight *1.5
        color: "green"
        anchors.margins: 20
        anchors.horizontalCenter: main.horizontalCenter
        anchors.top: yellowr.bottom


    }
}

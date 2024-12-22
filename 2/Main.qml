import QtQuick
//import QtQuick Window 2.15
import QtQuick.Layouts 1.3

Window {
    id: wind
    width: 320
    height: 580
    visible: true

    property real rHeight: height / 10
    ColumnLayout{
        id: cl
        spacing: 20
        anchors.fill: parent

        Header{
            id: header
            width: wind.width
            height: wind.height * 0.2
            Layout.alignment: Qt.AlignTop
        }

        Center{
            id: center
            Layout.margins: 10
            width: wind.width
            Layout.alignment: Qt.AlignCenter
        }

        Footer{
            id: footer
            width: wind.width
            height: wind.height * 0.2
            Layout.alignment: Qt.AlignBottom
        }


    }

}

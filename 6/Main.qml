import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600

    StackView {
        id: stackView
        anchors.fill: parent
        Component.onCompleted: stackView.push(Qt.resolvedUrl("HomePage.qml"))
    }
}

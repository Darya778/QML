import QtQuick
import QtQuick.Layouts 1.3

GridLayout {
    id: centergrid
    rows: 3
    columns: 3

    Comp {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.columnSpan: 1
        Layout.rowSpan: 2
        Layout.row: 1
        Layout.column: 3
    }

    Comp {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.columnSpan: 2
        Layout.rowSpan: 1
        Layout.row: 1
        Layout.column: 1
    }

    Comp {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.columnSpan: 2
        Layout.rowSpan: 1
        Layout.row: 2
        Layout.column: 1
    }

    Comp {
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.columnSpan: 3
        Layout.rowSpan: 1
        Layout.row: 3
        Layout.column: 3
    }
}

import QtQuick 2.5
import QtQuick.Controls 1.3

Rectangle {
    id: rectangle7

    width: 360
    height: 360
    color: "#9f0c16"

    Rectangle {
        id: rectangle1
        x: 44
        y: 102
        width: 188
        height: 57
        color: "#e7cd6c"
        transformOrigin: Item.Top
        z: 5
    }

    Text {
        id: text1
        x: 71
        y: 78
        width: 117
        height: 31
        text: qsTr("Menu 19.9")
        z: 8
        font.pixelSize: 18
        font.family: "Verdana"
        styleColor: "#ab3434"
    }

    Rectangle {
        id: rectangle2
        x: 141
        y: 141
        width: 190
        height: 55
        color: "#75d7e7"
        z: 9

        Text {
            id: text2
            x: 36
            y: 8
            width: 85
            height: 39
            text: qsTr("Menu 9.9 ")
            font.pixelSize: 26
        }
    }

    Text {
        id: text3
        x: 68
        y: 189
        text: qsTr("Text")
        opacity: 0
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle4
        x: 61
        y: 300
        width: 171
        height: 71
        color: "#ffffff"
        opacity: 0
    }

    Rectangle {
        id: rectangle3
        x: 29
        y: 172
        width: 200
        height: 200
        color: "#ffffff"
        opacity: 0
    }

    Rectangle {
        id: rectangle5
        x: 34
        y: 35
        width: 318
        height: 290
        color: "#bababa"
        anchors.horizontalCenter: parent.horizontalCenter
        opacity: 1
        rotation: 0
        antialiasing: true
        transformOrigin: Item.Center
        z: 4

        Rectangle {
            id: rectangle6
            x: 16
            y: 162
            width: 223
            height: 59
            color: "#408000"

            Text {
                id: text4
                x: 60
                y: 26
                text: qsTr("Menu 29.9 £")
                font.pixelSize: 21
            }
        }

        ComboBox {
            id: comboBox1
            x: -308
            y: -82
        }

        Button {
            id: button1
            x: 140
            y: 233
            width: 123
            height: 43
            text: qsTr("Menu")
            opacity: 1
            activeFocusOnPress: false
            tooltip: qsTr("")
            checkable: false
            isDefault: false
        }


    }

    Image {
        id: image1
        x: 252
        y: 8
        width: 100
        height: 100
        z: 3
        source: "../Downloads/images.jpeg"
    }
    states: [
        State {
            name: "state 1"

            PropertyChanges {
                target: rectangle1
                width: 213
                height: 57
            }

            PropertyChanges {
                target: rectangle2
                x: 126
                y: 95
                width: 212
                height: 55
            }

            PropertyChanges {
                target: text1
                text: qsTr("Menu 19.9")
                font.pixelSize: 21
            }

            PropertyChanges {
                target: text3
                text: qsTr("Menu 29.9")
                style: Text.Sunken
                font.bold: true
                font.family: "Times New Roman"
                font.pixelSize: 23
                opacity: 1
            }
        }
    ]
}

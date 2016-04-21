import QtQuick 2.0
import QtQuick.Controls 1.3


    Rectangle {

        id: rectangle1
        color: "#ff8000"
        anchors.fill:parent

        Text {
            id: text1
            x: 116
            y: 85
            width: 120
            height: 48
            color: "#e9ef20"
            text: qsTr("Entrée")
            font.pixelSize: 28
        }

        Text {
            id: text2
            x: 366
            y: 85
            width: 85
            height: 48
            color: "#43b4f5"
            text: qsTr("Plats")
            font.pixelSize: 28
        }


        Button {
            id: button1
            x: 530
            y: 128
            text: qsTr("VALIDER")
        }

        Button {
            id: button2
            x: 530
            y: 173

            text: qsTr("CARTE")
        }

        Button {
            id: button3
            x: 530
            y: 232
            text: qsTr("RETOUR")
            onClicked: {
            retourne.start();
       }

        }

        Loader {
             anchors.fill: parent

            SequentialAnimation {
                id: retourne;
                PauseAnimation { duration: 300 }
                ScriptAction {
                    script: {
                        loader.source = "List.qml";
                    }
                }
            }
        }
    }



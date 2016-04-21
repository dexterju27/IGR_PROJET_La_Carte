import QtQuick 2.0
import QtQuick.Controls 1.3

    Rectangle {

        color: "#b10e22"
        visible: true



        anchors.fill:parent
        transform: [
            Scale {
                id: scaleTransform
                origin.x: width / 2.0
                origin.y: height / 2.0

                xScale: 0.7
                yScale: 0.7

                Behavior on xScale {
                    NumberAnimation { duration: 800; easing.type: Easing.OutQuint }
                }

                Behavior on yScale {
                    NumberAnimation { duration: 800; easing.type: Easing.OutQuint }
                }
            },

            Rotation {
                id: rotationTransform
                origin.x: width / 2.0
                origin.y: height / 2.0

                axis.x: 0
                axis.y: 1
                axis.z: 0

                angle: 15

                Behavior on angle {
                    NumberAnimation { duration: 800; easing.type: Easing.OutQuint }
                }
            }

        ]


        Component.onCompleted: {
            scaleTransform.xScale = 1.0;
            scaleTransform.yScale = 1.0;
            rotationTransform.angle = 0;
        }
        Rectangle{
            width:800
            height:500
            x:102
            y:102
            id: rectangle1
            color: "#ffcc66"
            radius:20
            Image{
                id:kids
                x:-55
                y:-162
                width: 238
                height: 264
                z: 1
                source: "Hippo.png"
            }

            Rectangle {
                id: rectangle5
                x: 317
                y: 132
                width: 197
                height: 61
                color: "#ffffff"
                Text {
                    id: text7
                    x: 46
                    y: 23
                    text: qsTr("DOUBLE FILET")
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: rectangle6
                x: 317
                y: 207
                width: 197
                height: 61
                color: "#ffffff"
                Text {
                    id: text8
                    x: 46
                    y: 23
                    text: qsTr("FILET DE CABIIAUD")
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: rectangle7
                x: 317
                y: 284
                width: 197
                height: 61
                color: "#ffffff"
                Text {
                    id: text9
                    x: 46
                    y: 23
                    text: qsTr("TARTE DE TOMATS")
                    font.pixelSize: 12
                }
            }
            Rectangle {
                id: rectangle2
                x: 96
                y: 134
                width: 197
                height: 61
                color: "#ffffff"

                Text {
                    id: text3
                    x: 46
                    y: 23
                    text: qsTr("TARTE DE TOMATS")
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: rectangle3
                x: 98
                y: 211
                width: 197
                height: 58
                color: "#ffffff"

                Text {
                    id: text4
                    x: 46
                    y: 23
                    text: qsTr("PETIT CARPCCIO")
                    font.pixelSize: 12
                }
            }

            Rectangle {
                id: rectangle4
                x: 100
                y: 286
                width: 197
                height: 61
                color: "#ffffff"

                Text {
                    id: text6
                    x: 46
                    y: 23
                    text: qsTr("OEUF FAÇON MIMOSA")
                    font.pixelSize: 12
                }
            }
        }

        Text {
            id: text1
            x: 236
            y: 185
            width: 120
            height: 48
            color: "#e9ef20"
            text: qsTr("Entrée")
            font.pixelSize: 28
        }

        Text {
            id: text2
            x: 489
            y: 185
            width: 85
            height: 48
            color: "#43b4f5"
            text: qsTr("Plats")
            font.pixelSize: 28
        }


        Button {
            id: button1
            x: 752
            y: 232
            text: qsTr("VALIDER")
        }

        Button {
            id: button2
            x: 758
            y: 298

            text: qsTr("CARTE")
        }

        Button {
            id: button3
            x: 752
            y: 371
            text: qsTr("RETOUR")
            onClicked: {
                 retourne.start();
       }

        }

        Loader {
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
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




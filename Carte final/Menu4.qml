import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

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
        x:73
        y:110
        id: rectangle1
        color: "#cca789"
        radius:20

        Image{
            id:kids
            x:-48
            y:-132
            width: 219
            height: 231
            z: 2
            source: "KIDS.png"
        }

        Rectangle {
            id: rectangle5
            x: 355
            y: 119
            width: 249
            height: 102
            color: "#ffffff"
            Text {
                id: text7
                x: 18
                y: 41
                text: qsTr("MOUSSE AU CHOCOLAT")
                anchors.centerIn: parent.Center
                font.family: "Courier"
                z: 2
                font.pixelSize: 20
                color: "white"
            }
            Image{
                id:en1
                x:0
                y:0
                width: 250
                height: 102
                z: 1
                anchors.fill: parent
                source: "mc.jpg"
            }
        }

        Rectangle {
            id: rectangle6
            x: 355
            y: 219
            width: 249
            height: 102
            color: "#ffffff"
            Text {
                id: text8
                x: 25
                y: 40
                color: "#ffffff"
                anchors.centerIn: parent.Center
                text: qsTr("DESSERT DU MOMENT")
                font.family: "Courier"
                z: 2
                font.pixelSize: 20
            }

            Image{
                id:p1
                x: 0
                y: 0
                width: 250
                height: 102
                z: 1
                anchors.fill: parent
                source: "DM.jpg"
            }
        }

        Rectangle {
            id: rectangle7
            x: 355
            y: 322
            width: 250
            height: 100
            color: "#ffffff"
            Text {
                id: text9
                x: 2
                y: 40
                color: "#ffffff"
                text: qsTr("GLACE PUSH-UP HARIBO")
                anchors.centerIn: parent.Center
                font.family: "Courier"
                z: 2
                font.pixelSize: 20
            }
            Image{
                id:p2
                x: 1
                y: 0
                width: 248
                height: 98
                z: 1
                anchors.fill: parent
                source: "D3.jpg"
            }

        }
        Rectangle {
            id: rectangle2
            x: 91
            y: 121
            width: 250
            height: 100
            color: "#ffffff"

            Text {
                id: text3
                x: 30
                y: 39
                color: "#ffffff"
                text: qsTr("TARTE DE TOMATES")
                anchors.centerIn: parent.Center
                font.family: "Courier"
                textFormat: Text.PlainText
                z: 3
                font.pixelSize: 20
            }
            Image{
                id:p3
                x: 0
                y: -2
                width: 250
                height: 102
                z: 1
                source: "EN2.jpg"
                anchors.fill: parent
                MouseArea {
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 2
                    anchors.leftMargin: 0
                    anchors.topMargin: -2
                    anchors.fill: p3
                    onClicked: {
                        p3.z=0
                    }
                }
            }

            FastBlur{
                anchors.fill: p3
                source: p3
                radius: 10
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
            }


        }

        Rectangle {
            id: rectangle3
            x: 91
            y: 221
            width: 250
            height: 100
            color: "#ffffff"
            Image{
                id:p4
                x: 0
                y: -2
                width: 250
                height: 102
                z: 1
                source: "P2.jpg"
                anchors.fill: parent
            }

            Text {
                id: text4
                x: 41
                y: 40
                color: "#ffffff"
                text: qsTr("BURGER ORIGINAL")
                anchors.centerIn: parent.Center
                font.family: "Courier"
                z: 2
                font.pixelSize: 20
            }
        }

        Rectangle {
            id: rectangle4
            x: 92
            y: 322
            width: 250
            height: 100
            color: "#ffffff"

            Text {
                id: text6
                x: 31
                y: 39
                color: "#ffffff"
                text: qsTr("STEAK HACHÉ 150G")
                anchors.centerIn: parent.Center
                font.family: "Courier"
                z: 2
                font.pixelSize: 20
            }
            Image{
                id:p5
                x: 0
                y: -1
                width: 250
                height: 100
                z: 1
                anchors.fill: parent
                source: "P3.jpg"
            }
        }
    }

    Text {
        id: text1
        x: 203
        y: 196
        width: 120
        height: 48
        color: "#f01f1f"
        text: qsTr("PLATS AU  CHOIX")
        font.family: "Arial"
        verticalAlignment: Text.AlignTop
        font.pixelSize: 21
    }

    Text {
        id: text2
        x: 451
        y: 196
        width: 85
        height: 48
        color: "#033652"
        text: qsTr("DESSERT AU CHOIX")
        font.pixelSize: 21
    }


    Button {
        id: button1
        x: 704
        y: 288
        width: 129
        height: 67
        style: ButtonStyle {
            background: Rectangle {
                color:"#ff0440"
                radius: 5
                implicitWidth: 70;
                implicitHeight: 25;
                border.width: control.pressed ? 20 : 1;
                border.color: (control.hovered || control.pressed)
                              ? "white" : "#888888";
            }
        }
        text: qsTr("PAIEMENT")
        onClicked: {
            payer.start();
        }
    }

    Button {
        id: button2
        x: 704
        y: 374
        width: 129
        height: 67
        style: ButtonStyle {
            background: Rectangle {
                color:"#ff0440"
                implicitWidth: 70;
                implicitHeight: 25;
                radius: 5
                border.width: control.pressed ? 20 : 1;
                border.color: (control.hovered || control.pressed)
                              ? "white" : "#888888";
            }
        }


        text: qsTr("CARTE")
        onClicked: {
            carte.start();
        }
    }

    Button {
        id: button3
        x: 704
        y: 461
        width: 129
        height: 67
        text: qsTr("RETOUR")
        style: ButtonStyle {
            background: Rectangle {
                color:"#ff0440"
                radius: 5
                implicitWidth: 70;
                implicitHeight: 25;
                border.width: control.pressed ? 20 : 1;
                border.color: (control.hovered || control.pressed)
                              ? "white" : "#888888";
            }
        }
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
    Loader {
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        SequentialAnimation {
            id: carte;
            PauseAnimation { duration: 300 }
            ScriptAction {
                script: {
                    loader.source = "carte.qml";
                }
            }
        }


    }
    Loader {
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        SequentialAnimation {
            id: payer;
            PauseAnimation { duration: 300 }
            ScriptAction {
                script: {
                    loader.source = "confirmation.qml";
                }
            }
        }


    }

}




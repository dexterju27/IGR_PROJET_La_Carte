import QtQuick 2.0
import QtCanvas3D 1.0
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

Rectangle{
    opacity: 1
    color: "#b10e22"
    property alias labelText2: labelText2
    visible: true

    SequentialAnimation {
        running: true

        PauseAnimation { duration: 0 }
        ParallelAnimation {
            NumberAnimation { target: menu; property: "opacity"; to: 1; duration: 200; easing.type: Easing.InOutQuad }
        }
    }


    Button {
        id: button1
        x: 779
        y: 650

        text: qsTr("Carte")
        style: ButtonStyle {
            background: Rectangle {
                color:"white"
                implicitWidth: 70;
                implicitHeight: 25;
                border.width: control.pressed ? 2 : 1;
                border.color: (control.hovered || control.pressed)
                              ? "green" : "#888888";
            }
        }
        onClicked: {
            carte.start();
        }

    }

    Button {
        id: button2
        x: 900
        y: 650
        text: qsTr("Home")
        style: ButtonStyle {
            background: Rectangle {
                color:"white"
                implicitWidth: 70;
                implicitHeight: 25;
                border.width: control.pressed ? 2 : 1;
                border.color: (control.hovered || control.pressed)
                              ? "green" : "#888888";
            }
        }
        onClicked: {
            home.start()
        }


    }

    Rectangle{
        color: "#999999"
        width: 800
        height: 500
        x:84
        y:92
        radius: 20

        Image {
            id:img1;
            x:-84
            y:-92
            z: 1
            source:"logo-hippo.png"
        }

    }

    Column {
        id: column
        spacing: 10
        x: 110
        y:150

        Behavior on opacity {
            NumberAnimation { duration: 200; easing.type: Easing.InQuint }
        }

        transform: [
            Scale {
                id: scaleTransform
                origin.x: width / 2.0
                origin.y: height / 2.0

                xScale: 1.0
                yScale: 1.0

                Behavior on xScale {
                    NumberAnimation { duration: 200; easing.type: Easing.InQuint }
                }

                Behavior on yScale {
                    NumberAnimation { duration: 200; easing.type: Easing.InQuint }
                }
            }

        ]

        BlockButton{
            x: 50
            y: 50
            width: 300
            color: "#79cbae"
            radius: 10

            border.color: "white"
            border.width: 2
            Component.onCompleted: {
                color="#79cbae"
            }
            Rectangle{
                id:menu1
                x: 231
                y: 25
                width: 55
                height: 55
                radius: 55

                Text {
                    id: text1
                    x: 7
                    y: 17
                    width: 37
                    height: 17
                    text: qsTr("11.9€")
                    font.family: "Verdana"
                    font.bold: true
                    font.pixelSize: 15
                }

            }


            Text {
                id: labelText
                anchors.centerIn: parent
                color: "white"
                font.pointSize: 25
                font.family: "微软雅黑"
                text: "PLAT + BOISSON"
                font.bold: true
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: -35

            }

            onClicked: {
                scaleTransform.xScale = 0.5;
                scaleTransform.yScale = 0.5;
                column.opacity = 0;
                loadingAction1.start();
            }
        }


        BlockButton{
            x: 400
            y: 50
            width: 300
            color: "#cc9900"
            radius: 10
            border.color: "white"
            border.width: 2
            Component.onCompleted: {
                color="#cc9900"
            }

            Text {
                id: labelText2
                width: 193
                height: 52

                anchors.centerIn: parent
                color: "white"
                font.pointSize: 20
                font.family: "微软雅黑"
                text: "ENTRÉE + PLAT + DESSERT"
                font.bold: true
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: -33
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere

            }

            Rectangle {
                id: menu3
                x: 230
                y: 24
                width: 55
                height: 55
                radius: 55

                Text {
                    id: text4
                    x: 7
                    y: 18
                    width: 37
                    height: 18
                    text: qsTr("19.9€")
                    font.family: "Tahoma"
                    font.bold: true
                    z: 4
                    font.pixelSize: 15
                }
            }

            onClicked: {
                scaleTransform.xScale = 0.5;
                scaleTransform.yScale = 0.5;
                column.opacity = 0;
                loadingAction2.start();
            }
        }

        BlockButton{
            x: 50
            y: 200
            width: 300
            color: "#cc6666"
            radius: 10


            border.color: "white"
            border.width: 2
            Component.onCompleted: {
                color="#cc6666"
            }

            Text {
                id: labelText3
                width: 226
                height: 60
                anchors.centerIn: parent
                color: "white"
                font.pointSize: 20
                font.family: "微软雅黑"
                anchors.horizontalCenter: parent.horizontalCenter
                text: "ENTRÉE + PLAT + DESSERT + BOISSON"
                font.bold: true
                z: 1
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: -29

            }

            Rectangle {
                id: menu2
                x: 231
                y: 25
                width: 55
                height: 55
                radius: 55

                Text {
                    id: text2
                    x: 7
                    y: 18
                    width: 36
                    height: 14
                    text: qsTr("29.9€")
                    font.family: "Tahoma"
                    font.bold: true
                    z: 1
                    font.pixelSize: 15
                }
            }

            onClicked: {
                scaleTransform.xScale = 0.5;
                scaleTransform.yScale = 0.5;
                column.opacity = 0;
                loadingAction3.start();
            }
        }

        BlockButton{
            x: 400
            y: 0
            width: 300
            color: "#66ccff"
            radius: 10

            border.color: "white"
            border.width: 2
            Component.onCompleted: {
                color="#66ccff"
            }

            Text {
                id: labelText4
                width: 120
                height: 36

                anchors.centerIn: parent
                color: "white"
                font.pointSize: 28
                font.family: "微软雅黑"
                text: "Hippo KIDS"
                font.bold: true
                textFormat: Text.PlainText
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: -61

            }

            Rectangle {
                id: menu4
                x: 230
                y: 27
                width: 55
                height: 55
                radius: 55
                Text {
                    id: text5
                    x: 7
                    y: 17
                    text: qsTr("19.9€")
                    font.family: "Tahoma"
                    font.bold: true
                    z: 4
                    font.pixelSize: 15
                }
            }

            onClicked: {
                scaleTransform.xScale = 0.5;
                scaleTransform.yScale = 0.5;
                column.opacity = 0;
                loadingAction4.start();
            }
        }

    }

    Loader {
        id: loader

        anchors.fill: parent

        SequentialAnimation {
            id: loadingAction1;
            PauseAnimation { duration: 300 }
            ScriptAction {
                script: {
                    loader.source = "Menu1.qml";
                }
            }
        }
    }
    Loader {
        id: loader2

        anchors.fill: parent

        SequentialAnimation {
            id: loadingAction2;
            PauseAnimation { duration: 300 }
            ScriptAction {
                script: {
                    loader.source = "Menu2.qml";
                }
            }
        }
    }
    Loader {
        id: loader3

        anchors.fill: parent

        SequentialAnimation {
            id: loadingAction3;
            PauseAnimation { duration: 300 }
            ScriptAction {
                script: {
                    loader.source = "Menu3.qml";
                }
            }
        }
    }

    Loader {
        id: loader4

        anchors.fill: parent

        SequentialAnimation {
            id: loadingAction4;
            PauseAnimation { duration: 300 }
            ScriptAction {
                script: {
                    loader.source = "Menu4.qml";
                }
            }
        }
    }
    Loader {
        id: loader5

        anchors.fill: parent

        SequentialAnimation {
            id: home;
            PauseAnimation { duration: 300 }
            ScriptAction {
                script: {
                    loader.source = "Home.qml";
                }
            }
        }
  }
    Loader {
        id: loader6

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



}






import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.2

Rectangle {
    id: rectMain
    color: "#cf0b23"
    anchors.fill: parent.Center

    /*
    MouseArea {
        id: mouseArea
        anchors.rightMargin: -1
        anchors.bottomMargin: 0
        anchors.leftMargin: 1
        anchors.topMargin: 0
        anchors.fill: parent
        onClicked: {Qt.quit();}

    }*/



    Label {
        id: labelPageTitle
        x: 126
        color: "#fbfbfb"
        text: qsTr("Confirmer votre commande")
        font.bold: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 50
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 40
        font.family: "Courier"
    }

    Rectangle {
        id: rectDishList
        width: 500
        height: 440
        color: "#ffffff"
        radius: 20
        anchors.horizontalCenterOffset: 0
        anchors.top: labelPageTitle.bottom
        anchors.topMargin: 58
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            id: columnDishList
            spacing: 10
            anchors.fill: parent

            Label {
                id: labelEntrees
                width: 58
                height: 30
                text: qsTr("Entrées")
                font.underline: true
                style: Text.Normal
                font.strikeout: false
                font.italic: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 15
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Grid {
                id: gridEntree1
                height: 50
                spacing: 0
                columns: 2
                rows: 2
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0

                Rectangle {
                    id: rectangle3
                    width: parent.width / 3 * 2
                    height: parent.height / 3 * 2
                    color: "#ffffff"

                    Label {
                        id: labelEntree1Name
                        x: 0
                        text: qsTr("NEM")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pointSize: 15
                    }
                }

                Rectangle {
                    id: rectangle4
                    width: parent.width / 3
                    height: parent.height / 3 * 2
                    color: "#ffffff"

                    Label {
                        id: labelEntree1Price
                        width: 43
                        text: (spinBoxEntree1.value * 2.9).toFixed(1) + qsTr(" $")
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        font.pointSize: 15
                    }
                }

                Rectangle {
                    id: rectangle5
                    width: parent.width / 3 * 2
                    height: parent.height / 3
                    color: "#ffffff"
                }

                Rectangle {
                    id: rectangle6
                    width: parent.width / 3
                    height: parent.height / 3
                    color: "#ffffff"

                    Button {
                        id: buttonRemoveEntree1
                        width: parent.width / 3
                        height: parent.height
                        text: qsTr("x")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                    }

                    SpinBox {
                        id: spinBoxEntree1
                        width: parent.width / 2
                        height: parent.height + 6
                        decimals: 0
                        anchors.rightMargin: 5
                        anchors.verticalCenter: parent.verticalCenter
                        minimumValue: 1
                        value: 1
                        anchors.right: parent.right
                    }
                }
            }

            Grid {
                id: gridEntree2
                height: 50
                Rectangle {
                    id: rectangle7
                    width: parent.width / 3 * 2
                    height: parent.height / 3 * 2
                    color: "#ffffff"
                    Label {
                        id: labelEntree2Name
                        x: 0
                        text: qsTr("SALADE DE PÂTES PESTO")
                        font.pointSize: 15
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Rectangle {
                    id: rectangle8
                    width: parent.width / 3
                    height: parent.height / 3 * 2
                    color: "#ffffff"
                    Label {
                        id: labelEntree2Price
                        width: 43
                        text: (spinBoxEntree2.value * 4.3).toFixed(1) + qsTr(" $")
                        font.pointSize: 15
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Rectangle {
                    id: rectangle9
                    width: parent.width / 3 * 2
                    height: parent.height / 3
                    color: "#ffffff"
                }

                Rectangle {
                    id: rectangle10
                    width: parent.width / 3
                    height: parent.height / 3
                    color: "#ffffff"
                    Button {
                        id: buttonRemoveEntree2
                        width: parent.width / 3
                        height: parent.height
                        text: qsTr("x")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                    }

                    SpinBox {
                        id: spinBoxEntree2
                        width: parent.width / 2
                        height: parent.height + 6
                        decimals: 0
                        minimumValue: 1
                        value: 1
                        anchors.rightMargin: 5
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
                spacing: 0
                columns: 2
                anchors.rightMargin: 0
                anchors.right: parent.right
                rows: 2
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Label {
                id: labelPlats
                width: 58
                height: 30
                text: qsTr("Plats")
                font.underline: true
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 15
                font.italic: true
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                style: Text.Normal
                font.strikeout: false
            }

            Grid {
                id: gridPlat1
                height: 50
                Rectangle {
                    id: rectangle11
                    width: parent.width / 3 * 2
                    height: parent.height / 3 * 2
                    color: "#ffffff"
                    Label {
                        id: labelPlat1Name
                        x: 0
                        text: qsTr("BBQ RIBS")
                        font.pointSize: 15
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Rectangle {
                    id: rectangle12
                    width: parent.width / 3
                    height: parent.height / 3 * 2
                    color: "#ffffff"
                    Label {
                        id: labelPlat1Price
                        width: 43
                        text: (spinBoxPlat1.value * 11.7).toFixed(1) + qsTr(" $")
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 15
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Rectangle {
                    id: rectangle13
                    width: parent.width / 3 * 2
                    height: parent.height / 3
                    color: "#ffffff"
                }

                Rectangle {
                    id: rectangle14
                    width: parent.width / 3
                    height: parent.height / 3
                    color: "#ffffff"
                    Button {
                        id: buttonRemovePlat1
                        width: parent.width / 3
                        height: parent.height
                        text: qsTr("x")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                    }

                    SpinBox {
                        id: spinBoxPlat1
                        width: parent.width / 2
                        height: parent.height + 6
                        decimals: 0
                        minimumValue: 1
                        value: 1
                        anchors.rightMargin: 5
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
                spacing: 0
                columns: 2
                anchors.rightMargin: 0
                anchors.right: parent.right
                rows: 2
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Label {
                id: labelDessert
                width: 58
                height: 30
                text: qsTr("Desserts")
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 15
                font.italic: true
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                style: Text.Normal
                font.underline: true
                font.strikeout: false
            }

            Grid {
                id: gridDessert1
                height: 50
                Rectangle {
                    id: rectangle17
                    width: parent.width / 3 * 2
                    height: parent.height / 3 * 2
                    color: "#ffffff"
                    Label {
                        id: labelDessert1Name
                        x: 0
                        text: qsTr("TIRAMISU")
                        font.pointSize: 15
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Rectangle {
                    id: rectangle18
                    width: parent.width / 3
                    height: parent.height / 3 * 2
                    color: "#ffffff"
                    Label {
                        id: labelDessert1Price
                        width: 43
                        text: (spinBoxDessert1.value * 5.0).toFixed(1) + qsTr(" $")
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Rectangle {
                    id: rectangle19
                    width: parent.width / 3 * 2
                    height: parent.height / 3
                    color: "#ffffff"
                }

                Rectangle {
                    id: rectangle20
                    width: parent.width / 3
                    height: parent.height / 3
                    color: "#ffffff"
                    Button {
                        id: buttonRemoveDessert1
                        width: parent.width / 3
                        height: parent.height
                        text: qsTr("x")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                    }

                    SpinBox {
                        id: spinBoxDessert1
                        width: parent.width / 2
                        height: parent.height + 6
                        decimals: 0
                        minimumValue: 1
                        value: 1
                        anchors.rightMargin: 5
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
                spacing: 0
                columns: 2
                anchors.rightMargin: 0
                anchors.right: parent.right
                rows: 2
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Label {
                id: labelSeperator
                height: 30
                text: qsTr("------------------------------------------")
                anchors.right: parent.right
                anchors.rightMargin: 131
                anchors.left: parent.left
                anchors.leftMargin: 131
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 15
                font.italic: true
                horizontalAlignment: Text.AlignHCenter
                style: Text.Normal
                font.strikeout: false
            }

            Row {
                id: rowTotalPrice
                height: 30
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0

                Rectangle {
                    id: rectangle15
                    width: parent.width / 3 * 2
                    height: parent.height
                    color: "#ffffff"

                    Label {
                        id: labelTotal
                        x: 0
                        text: qsTr("Total")
                        font.italic: true
                        font.pointSize: 15
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Rectangle {
                    id: rectangle16
                    width: parent.width / 3
                    height: parent.height
                    color: "#ffffff"

                    Label {
                        id: labelPrice
                        text: (spinBoxEntree1.value * 2.9 + spinBoxEntree2.value * 4.3 + spinBoxPlat1.value * 11.7 + spinBoxDessert1.value * 5.0).toFixed(1) + qsTr(" $")
                        font.italic: true
                        font.pointSize: 15
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }




        }
    }

    Button {
        id: buttonConfirmer
        width: 91
        height: 50
        x:610
        y:380
        text: qsTr("Confirmer")
        anchors.top: rectDishList.bottom
        anchors.topMargin: -434
        anchors.left: parent.horizontalCenter
        anchors.leftMargin: 290

        MouseArea {
            anchors.rightMargin: 0
            anchors.bottomMargin: 18
            anchors.fill: parent
            onClicked: {
                payLoader.source = "payment.qml";
            }
        }
    }

    //    Button {
    //        id: buttonMenu
    //        x: 389
    //        height: 61
    //        text: qsTr("MENU")
    //        anchors.top: rectDishList.bottom
    //        anchors.topMargin: 20
    //        anchors.right: parent.horizontalCenter
    //        anchors.rightMargin: 15
    //    }
    //    Button {
    //        id: buttonhome
    //        x: 389
    //        height: 61
    //        text: qsTr("HOME")
    //        anchors.top: rectDishList.bottom
    //        anchors.topMargin: 20
    //        anchors.right: parent.horizontalCenter
    //        anchors.rightMargin: 15
    //    }
    //    Button {
    //        id: buttocarte
    //        x: 389
    //        height: 61
    //        text: qsTr("CARTE")
    //        anchors.top: rectDishList.bottom
    //        anchors.topMargin: 20
    //        anchors.right: parent.horizontalCenter
    //        anchors.rightMargin: 15
    //    }


    Loader {
        id: payLoader
        x: 0
        y: 0
        width: 1000
        height: 700
    }

    Button {
        id: button2
        x: 794
        y: 239
        text: qsTr("MENU")
        onClicked: {
            menu.start();
        }
    }

    Button {
        id: button3
        x: 792
        y: 295
        text: qsTr("CARTE")
        onClicked: {
            carte.start();
        }
    }

    Button {
        id: button1
        x: 794
        y: 355
        text: qsTr("HOME")
        onClicked: {
            home.start();
        }
    }
    Loader {
        id: loader5
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        z: 1
        anchors.fill: parent

        SequentialAnimation {
            id: home;

            PauseAnimation {
                duration: 200
            }
            ScriptAction {
                script: {
                    loader.source = "Home.qml";
                }
            }
        }

    }
    Loader {
        id: loader3
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        z: 1
        anchors.fill: parent

        SequentialAnimation {
            id: carte;

            PauseAnimation {
                duration: 200
            }
            ScriptAction {
                script: {
                    loader.source = "Carte.qml";
                }
            }
        }

    }
    Loader {
        id: loader2
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        z: 1
        anchors.fill: parent

        SequentialAnimation {
            id: menu;

            PauseAnimation {
                duration: 200
            }
            ScriptAction {
                script: {
                    loader.source = "List.qml";
                }
            }
        }

    }



}


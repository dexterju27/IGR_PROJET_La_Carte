import QtQuick 2.3
import QtQuick.Controls 1.2
import QtGraphicalEffects 1.0

Rectangle {

    visible: true
    width: 1000
    height: 700

    Image {
        id: image1
        anchors.fill: parent
        source: "c-Carte-Kids.png"
        visible:true

        MouseArea {
            id: toBoisson
            x: 539
            y: 474
            width: 191
            height: 162
        }

    }
    FastBlur {
        id:blur
        anchors.fill: image1
        source:image1
        radius: 0
    }

    ComboBox {
        x: 646
        y: 15
        width: 123
        height: 27
        model: [ "viande", "végétarian", "Pas de préférence"]
    }

    ComboBox {
        x: 775
        y: 15
        width: 123
        height: 27
        model: [ "non épicé", "un peu épicé", "épicé","Pas de préférence" ]
    }
    ComboBox {
        x: 512
        y: 15
        width: 123
        height: 27
        model: [ "sucré", "salé" ,"Pas de préférence"]
    }

    Rectangle {
        id: shoppingChart
        opacity:0.7
        x: 703
        y: 516
        width: 289
        height: 184
        color: "#ffffff"
        z: 3
        visible: true

        ListView {
            id: listView_shopping_chart
            x: 11
            y: 8
            width: 270
            height: 140
            clip: true
            delegate: Item {
                x: 5
                width: 80
                height: 40
                Row {
                    id: row1
                    spacing: 10
                    Image {
                        width: 40
                        height: 40
                        source: image
                    }
                    Image {
                        source: "c-delete.png"
                        MouseArea {
                            function prixTotal() {
                                var prix = 0;
                                for (var i = 0; i < list_shopping_chart.count;i++ ) {
                                    prix += list_shopping_chart.get(i).cost
                                }
                                shopping_chart_prix_text.text =  "Prix Total:  " + prix.toString()
                            }

                            anchors.fill: parent;
                            onClicked: {
                                list_shopping_chart.remove( list_shopping_chart.get(index));
                                prixTotal()
                            }

                        }


                    }

                    Text {
                        width: 50
                        height: 40
                        text: name
                        font.bold: true
                        font.pointSize: 8
                        anchors.verticalCenter: parent.verticalCenter

                    }



                }
            }


            model: ListModel {
                id: list_shopping_chart
            }

            ScrollBar {
                id: scrollBar1
                x: 125
                y: 22
                visible: false
            }
        }

        Text {
            id: shopping_chart_prix_text

            visible : if(list_shopping_chart.count != 0) true;else false;
            x: 8
            y: 160
            width: 202
            height: 15
            z: 1
        }

        Text {
            x: 89
            y: 79
            width: 117
            height: 46
            visible : if(list_shopping_chart.count == 0) true;else false;
            text: "C'est vide!"
            font.bold: true
            font.pointSize: 15
        }

        Image {
            id: image2
            x: 139
            y: -137
            width: 191
            height: 195
            z: 9
            source: "c-Hippo.png"
        }

        Button {
            id: button_find
            x: 195
            y: -500
            text: qsTr("Rechercher")
            z: 1
        }

        Button {
            id: button1
            x: 216
            y: 153
            text: qsTr("Bon!")
            onClicked: {
                rectangleMenu.visible = false
                mouseAreaQuitMenu.enabled = false
                shoppingChart.visible = false
                go.start()
            }
        }
    }

    Rectangle {
        id: rectangleMenu
        x: 99
        y: 72
        width: 777
        height: 509
        color: "#999999"
        z: 2
        visible: false
        radius: 20

        Loader {
            visible: false
            source: "ScrollBar.qml"
        }

        ListModel {
            id: plat
            ListElement {
                name:"HIPPO-STYLE GROUND BEEF WITH EGG"
                cost : 15
                image : "c-HIPPO-STYLE GROUND BEEF WITH EGG.jpg"
            }

            ListElement {
                name:"THAI SNACK BASKET"
                cost : 15
                image : "c-vignette_entrees.jpg"

            }

            ListElement {
                name: "POULET GRILLÉ NOUVELLE ORLÉANS"
                cost : 10
                image: "c-vignette_viandes-poissons.jpg"
            }
        }



        ListView {

            id: listMenu;
            anchors.rightMargin: parent.anchors.rightMargin
            anchors.bottomMargin: parent.anchors.bottomMargin
            anchors.leftMargin: parent.anchors.leftMargin
            anchors.topMargin: parent.anchors.topMargin
            //            anchors.fill: parent;
            x:5
            y:5
            width: 767
            height:499
            model: plat;
            clip: true


            delegate: Rectangle {
                height: 400;
                width: parent.width;

                Image {
                    height: parent.width.height;
                    width: parent.width;
                    source : image
                }

                Text {
                    wrapMode:Text.WordWrap
                    height: parent.height;
                    color: "#ffffff"
                    width: parent.width;
                    text : name
                    font.family: "Helvetica"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 30

                }

                Text {
                    text : '€' + cost
                    font.pointSize: 12
                }

                MouseArea {

                    function prixTotal() {
                        var prix = 0;
                        for (var i = 0; i < list_shopping_chart.count;i++ ) {
                            prix += list_shopping_chart.get(i).cost
                        }
                        shopping_chart_prix_text.text =  "Prix Total:  " + prix.toString()
                    }

                    anchors.fill: parent
                    onClicked: { list_shopping_chart.append( plat.get(index));
                        prixTotal()}
                }
            }
        }

        ScrollBar {
            z: 1
            flickable: listMenu;
        }

    }

    MouseArea {
        id: mouseAreaQuitMenu
        x: 8
        y: 13
        width: 992
        height: 585
        z: -1
        onClicked : {
            rectangleMenu.visible = false
            mouseAreaQuitMenu.enabled = false
            blur.radius=0
        }
    }

    MouseArea {
        id: toPlat
        x: 731
        y: 150
        width: 181
        height: 100

        onClicked : {
            rectangleMenu.visible = true
            mouseAreaQuitMenu.enabled = true
            animation.start()
            blur.radius=15
        }

    }
    ParallelAnimation{
                     id: animation;
        PropertyAnimation {

             target: rectangleMenu;
             properties: "opacity";
             from: "0"
             to: "1";
             duration: 500}
        PropertyAnimation {

             target: rectangleMenu;
             properties: "scale";
             from: "0"
             to: "1";
             duration: 500}

    }

    MouseArea {
        id: toEntree
        x: 539
        y: 263
        width: 191
        height: 190
    }

    MouseArea {
        id: toDeserrt
        x: 86
        y: 335
        width: 168
        height: 227
    }
    Button {
        id: button2
        x: 20
        y: 655
        text: qsTr("MENU")
        onClicked: {
            menu.start()
        }
    }

    Button {
        id: button3
        x: 113
        y: 655
        text: qsTr("HOME")
        onClicked: {
            home.start()
        }
    }


    Loader {
        id: loader
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        z: 1
        anchors.fill: parent

        SequentialAnimation {
            id: go;

            PauseAnimation {
                duration: 200
            }
            ScriptAction {
                script: {
                    loader.source = "confirmation.qml";
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
    Loader {
        id: loader4
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
}


import QtQuick 2.0
import QtQuick.Controls 1.2


Rectangle {
    id: rectangle1
    anchors.fill: parent

    color: "#b10e22"

    Image {
        id: image1
        x: 280
        y: 60
        width: 419
        height: 229
        source: "logo-hippo.png"
    }

    Repeater {
        id: repeater
        //model: ["Bienvenue!", "Promotion","Menu du jour", "Carte"]
        model: ["carte.png", "promotion.png","menu.png", "promotion.png"]

        property int currentItem

        Rectangle {

            id: rect1
            property int currentState: 1
            width: 350
            height: 350
            smooth: true
            anchors.centerIn: parent

            /*
            Text {
                color: "#ffffff"
                font.family: "Arial Black"
                font.pointSize: 40

                anchors.centerIn: parent
                text: modelData
            }*/
            Image {
                source: modelData
                MouseArea{
                    id:mouse
                    anchors.fill: parent
                    onClicked: {
                        if(index == 2){
                            menu.start()
                        }
                        if(index == 0){
                            carte.start()
                        }
                    }
                }
            }

            Behavior on opacity {
                NumberAnimation { duration: 200 }
            }

            Behavior on z {
                NumberAnimation { duration: 300 }
            }

            transform: [
                Rotation {
                    id: rotate; angle: 0; origin.y: 125; origin.x: 125;  axis { x: 0; y: 1; z: 0 }
                    Behavior on angle {
                        NumberAnimation { easing.overshoot: 1; easing.type: Easing.OutBack; duration: 600 }
                    }
                },
                Translate {
                    id: trans; x: 0
                    Behavior on x {
                        NumberAnimation { easing.overshoot: 1; easing.type: Easing.OutBack; duration: 600;  }
                    }
                }
            ]

            states: [
                State {
                    name: "pos3"
                    PropertyChanges {
                        target: rotate
                        angle: 0
                    }
                    PropertyChanges {
                        target: trans
                        x: 0
                    }
                    PropertyChanges {
                        target: rect1
                        z: 1
                    }
                },

                State {
                    name: "pos2"
                    PropertyChanges {
                        target: rotate
                        angle: 50
                    }
                    PropertyChanges {
                        target: trans
                        x: -150
                    }
                    PropertyChanges {
                        target: rect1
                        z:0
                    }
                },

                State {
                    name: "pos1"
                    PropertyChanges {
                        target: rotate
                        angle: 55
                    }
                    PropertyChanges {
                        target: trans
                        x: -180
                    }
                    PropertyChanges {
                        target: rect1
                        opacity: 0
                    }
                    PropertyChanges {
                        target: rect1
                        z: 0
                    }
                },

                State {
                    name: "pos5"
                    PropertyChanges {
                        target: rotate
                        angle: -55
                    }
                    PropertyChanges {
                        target: trans
                        x: 180
                    }
                    PropertyChanges {
                        target: rect1
                        opacity: 0
                    }
                    PropertyChanges {
                        target: rect1
                        z: 0
                    }
                },

                State {
                    name: "pos4"
                    PropertyChanges {
                        target: rotate
                        angle: -50
                    }
                    PropertyChanges {
                        target: trans
                        x: 150
                    }
                    PropertyChanges {
                        target: rect1
                        opacity: 1
                    }
                    PropertyChanges {
                        target: rect1
                        z: 0
                    }
                }
            ]

            color: "blue"
        }
    }

    Text {
        id: label
        font.family: "Arial"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top;
        anchors.topMargin: 10
    }


    Button {
        id: button1
        y: 69
        width: 50
        height: 50
        opacity: 0.5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset:300
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 300

        onClicked: {
            repeater.currentItem += 1;

            if (repeater.currentItem > repeater.count - 1)
            {
                repeater.currentItem = 0;
            }

            for (var i = 0; i < repeater.count; i++)
            {
                var item = repeater.itemAt(i);

                item.currentState -= 1;

                if (item.currentState < 1)
                {
                    item.currentState = repeater.count;
                }

                if (item.currentState >= 1 && item.currentState <= 5)
                {
                    item.state = "pos" + item.currentState;
                }
            }

            label.text = "Current: " + repeater.currentItem;
        }

        Image {
            id: image21
            x: 0
            y: 0
            width: 50
            height: 50
            source: "right.png"
        }
    }

    Button {
        id: button2
        y: 5
        width: 50
        height: 50

        opacity: 0.5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -314
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 300

        onClicked: {
            repeater.currentItem -= 1;

            if (repeater.currentItem < 0)
            {
                repeater.currentItem = repeater.count - 1;
            }

            for (var i = 0; i < repeater.count; i++)
            {
                var item = repeater.itemAt(i);

                item.currentState += 1;

                if (item.currentState > repeater.count) {
                    item.currentState = 1;
                }

                if (item.currentState >= 1 && item.currentState <= 5)
                {
                    item.state = "pos" + item.currentState;
                }
            }

            label.text = "Current: " + repeater.currentItem;
        }

        Image {
            id: image2
            x: 0
            y: 0
            width: 50
            height: 50
            source: "left.png"
        }
    }

    Component.onCompleted: {
        repeater.currentItem = 2;

        for (var i = 0; i < repeater.count; i++)
        {
            var item = repeater.itemAt(i);
            item.currentState = i + 1;

            item.color = Qt.rgba(Math.random(125), Math.random(125), Math.random(125), 255);

            if (item.currentState >= 1 && item.currentState <= 5)
            {
                item.state = "pos" + item.currentState;
            } else {
                item.state = "pos5";
            }
        }

        label.text = "Current: " + repeater.currentItem;
    }


    Loader {
        id: loader
        z: 1
        anchors.fill: rectangle1

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
        id: loader1
        z: 1
        anchors.fill: rectangle1

        SequentialAnimation {
            id: carte;

            PauseAnimation {
                duration: 200
            }
            ScriptAction {
                script: {
                    loader.source = "carte.qml";
                }
            }
        }
    }
}


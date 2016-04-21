import QtQuick 2.0
import QtQuick.Controls 1.2


Rectangle {
    width: 1000
    height: 700
    color: "#b10e22"
    visible: true
    transform: [
        Scale {
            id: scaleTransform2
            origin.x: width / 2.0
            origin.y: height / 2.0

            xScale: 1.0
            yScale: 1.0

            Behavior on xScale {
                NumberAnimation { duration: 400; easing.type: Easing.InQuint }
            }

            Behavior on yScale {
                NumberAnimation { duration: 200; easing.type: Easing.InQuint }
            }
        }

    ]

    Rectangle{
        x: 312
        y: 104
        width: 418
        height: 466
        color: "#ffffff"
        radius: 20

        Image {
            id: image1
            x: 0
            y: 25
            width: 419
            height: 229
            source: "logo-hippo.png"
        }


        Image {
            id: image2
            x: 23
            y: 402
            width: 71
            height: 53
            source: "flag_en.png"
        }



        Button {
            id: button1
            x: 140
            y: 269
            width: 125
            height: 87
            Image {
                id: image3
                x: -1
                y: 0
                width: 126
                height: 88
                source: "flag_fr.png"
            }
            onClicked: {
                go.start();
            }

        }



        Loader {
            id: loader
            z: 1
            anchors.rightMargin: -267
            anchors.bottomMargin: -130
            anchors.leftMargin: -310
            anchors.topMargin: -102
            anchors.fill: parent

            SequentialAnimation {
                id: go;

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

        Image {
            id: image5
            x: 173
            y: 402
            width: 70
            height: 53
            source: "flg_jpn.gif"
        }
        Image {
            id: image4
            x: 99
            y: 402
            width: 71
            height: 53
            source: "flag_es.png"
        }

        Image {
            id: image6
            x: 247
            y: 402
            width: 81
            height: 56
            source: "flag_ita.png"
        }

        Image {
            id: image7
            x: 333
            y: 402
            width: 68
            height: 54
            source: "flag_cn.gif"
        }
    }
}



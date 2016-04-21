import QtQuick 2.0

//Item {

//}
Rectangle {
    id: root
    width: 70
    height: 62

    color: "#f74545"


    Repeater {
        id: repeater
        model: 5

        Image {
            id: dot
            source: "./images/dot.png"
            width: 10
            height: 10

            opacity: 0

            SequentialAnimation {
                id: anim
                running: true
                loops: Animation.Infinite

                PauseAnimation { duration: 150 * index }

                ParallelAnimation {
                    NumberAnimation { target: dot; property: "opacity"; from: 0; to: 1; duration: 400 }
                    NumberAnimation { target: dot; property: "x"; from: 0; to: root.width / 4.0; duration: 400 }
                }
                NumberAnimation { target: dot; property: "x"; to: (root.width / 4.0) * 3.0; duration: 2000 }
                ParallelAnimation {
                    NumberAnimation { target: dot; property: "opacity"; from: 1; to: 0; duration: 400 }
                    NumberAnimation { target: dot; property: "x"; to: root.width; duration: 400 }
                }

                PauseAnimation { duration: (repeater.count - index - 1) * 150 }
            }
        }
    }

}


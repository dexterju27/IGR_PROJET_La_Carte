import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.4

Window {
    visible: true
    width: 1000
    height: 700
    color: "#b10e22"
//    opacity: 0.7
    Bienvenu{ }

    SequentialAnimation {
        running: true

        PauseAnimation { duration: 1300 }
        ParallelAnimation {
            NumberAnimation { target: langue; property: "opacity"; to: 1; duration: 600; easing.type: Easing.InOutQuad }
            NumberAnimation { target: langue; property: "anchors.leftMargin"; to: 0; duration: 1000; easing.type: Easing.OutQuint }
        }
    }
     Language{
         id:langue
         anchors.fill: parent
         anchors.leftMargin: 1000

     }

//    List {
//                id: menu

//                opacity: 0
//                anchors.fill: parent
//                anchors.leftMargin: 450
//        }





//    MainForm {
//        anchors.rightMargin: 0
//        anchors.bottomMargin: 0
//        anchors.leftMargin: 0
//        anchors.topMargin: 0
//        anchors.fill: parent
//    }

//    Rectangle {

//       Button {
//           text: "Quit";
//           anchors.verticalCenterOffset: 139
//           anchors.horizontalCenterOffset: 68
//           anchors.centerIn: parent;
//           style: ButtonStyle {
//                    background: Rectangle {
//                        color:"red"
//                        implicitWidth: 70;
//                        implicitHeight: 25;
//                        border.width: control.pressed ? 2 : 1;
//                        border.color: (control.hovered || control.pressed)
//                                     ? "green" : "#888888";
//                       }
//           }
//       }
//    }

}

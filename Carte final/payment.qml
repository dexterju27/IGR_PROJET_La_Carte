import QtQuick 2.5
import QtQuick.Controls 1.2
import QtQuick.Window 2.2

Rectangle {
    id: rectMain

    color: "#cf0b23"
    anchors.fill: parent

  /*  MouseArea {
        id: mouseArea
        anchors.rightMargin: -1
        anchors.bottomMargin: 0
        anchors.leftMargin: 1
        anchors.topMargin: 0
        anchors.fill: parent
        onClicked: {Qt.quit();}
    }*/

    Label {
        id: labelPaiement
        color: "#fbfbfb"
        text: qsTr("Paiement")
        anchors.horizontalCenterOffset: -5
        font.bold: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 330
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 40
        font.family: "Courier"
    }

    Button {
        id: buttonAppeler
        width: 240
        height: 88
        text: qsTr("Appeler le serveur")
        anchors.horizontalCenterOffset: 1
        anchors.top: parent.verticalCenter
        anchors.topMargin: 55
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: buttonPayer
        width: 240
        height: 91
        text: qsTr("Payer par la machine")
        anchors.horizontalCenterOffset: 1
        anchors.top: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 160
    }

    Image {
        id: image1
        x: 227
        y: 48
        width: 546
        height: 226
        source: "logo-hippo2.png"
    }
}


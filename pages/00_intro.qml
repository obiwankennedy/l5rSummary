import QtQuick 2.0
import QtQuick.Window 2.2

Item {
    id: rectangle1
    width: Screen.width //
    height: Screen.height //Screen.height

    Image {
        id: image1
        width: Screen.width*0.75
        height: Screen.height*0.75
        fillMode: Image.PreserveAspectFit
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: Screen.width*0.1
        source: "qrc:/images/l5r-logo-2015.png"
    }

    Text {
        id: text1
        anchors.top:parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: Screen.width*0.5
        height: Screen.height*0.1
        color: "black"
        text: qsTr("Compte-Rendu de Campagne")
        font.family: titleFont.name
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Screen.height/15

    }

    Text {
        id: text2
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        text: qsTr("ObiWanKennedy")
        font.pixelSize: Screen.height/20
        font.family: titleFont.name
    }

    Image {
        id: image2
        anchors.bottom: parent.bottom
       // anchors.topMargin: Screen.height*0.1
        anchors.left: parent.left
        anchors.leftMargin: Screen.width*0.01
        width: Screen.width*0.1
        height: Screen.height*0.1
        fillMode: Image.PreserveAspectFit
        source: "qrc:/images/cc.png"
    }
}

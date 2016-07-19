import QtQuick 2.0
import QtQuick.Window 2.2

Rectangle {
    id: rectangle1
    width: ScreenW //
    height: ScreenH //ScreenH
    //  height: 600
    //  anchors.centerIn: parent
    border.width: 0
    color: "#E3E3E3"
    Image {
        id: image3
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: "qrc:/images/Second_City_2.jpg"
        opacity: 0.2
    }
    Image {
        id: image1
        width: ScreenW*0.75
        height: ScreenH*0.75
        fillMode: Image.PreserveAspectFit
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        source: "qrc:/images/l5r-logo-2015.png"
    }

    Text {
        id: text1
        anchors.top:parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: ScreenW*0.5
        height: ScreenH*0.1
        color: "black"
        text: qsTr("Compte-Rendu de Campagne")
        font.family: "Verdana"
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: ScreenH/20
    }

    Text {
        id: text2
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        text: qsTr("ObiWanKennedy")
        font.pixelSize: ScreenH/25
    }

    Image {
        id: image2
        anchors.bottom: parent.bottom
       // anchors.topMargin: ScreenH*0.1
        anchors.left: parent.left
        anchors.leftMargin: ScreenW*0.01
        width: ScreenW*0.1
        height: ScreenH*0.1
        fillMode: Image.PreserveAspectFit
        source: "qrc:/images/cc.png"
    }
}

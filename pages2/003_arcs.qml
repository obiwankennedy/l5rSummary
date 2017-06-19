import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Item {
    id: jdr
    width: Screen.width
    height: Screen.height

    property int idState: 0



    Image {
        id: image1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: Screen.width*0.04
        fillMode: Image.PreserveAspectFit
        source: "qrc:/images/l5r-logo-2015.png"
        width: Screen.width*0.2
    }



    Text {
        id: text1
        anchors.top:image1.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: image1.bottom
        width: Screen.width*0.5
        height: Screen.height*0.01
        color: "black"
        text: qsTr("Les intrigues par arc narratif")
        anchors.horizontalCenterOffset: 1
        font.family: title.name
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Screen.height/15

    }
    focus: true
    Keys.onUpPressed: {
            --idState
    }
    Keys.onDownPressed: {
            ++idState
    }

    Timer {
         id: trigger
         interval: 1001
         repeat: false
         onTriggered: app.currentItemChanged(view.currentItem)
     }
    Column{
        x: Screen.width/4
        y: Screen.height*0.2
        width: Screen.width/2
        height: Screen.height*0.9

         Text {//BG
             text: "Les backgrounds des joueurs:"
             width:parent.width
             wrapMode: Text.WordWrap
             font.family: title.name
             textFormat: Text.RichText
             font.pixelSize: Screen.height*0.05
             elide: Text.ElideLeft
         }
         Text {//BG 2
             text: "Les Pirates, Mort de Yoritomo Losaï, Village d’Okawa, Asako Yumi, Otomo Akio, Mort Daigotsu Shuuki, Ubuyama-mura village, Infidélité Akodo Yumi, Yasuki Akane, Café, Guerre Mante/Araignée"
             wrapMode: Text.WordWrap
             width:parent.width
             //font.family: title.name
             textFormat: Text.RichText
             font.pixelSize: Screen.height*0.04
             elide: Text.ElideLeft
         }
         Text {//"Indépendence"
             text: "L’indépendence:"
             width:parent.width
             wrapMode: Text.WordWrap
             font.family: title.name
             font.pixelSize: Screen.height*0.05
             textFormat: Text.RichText
             elide: Text.ElideLeft
         }
         Text {//independence 2
             text: "Vol des plantes, Les pirates, Yoritomo Losai, Asako Yumi, Ubuyama-mura village, Disparition en ville, Collocte d’impôt, Traffic de drogue"
             wrapMode: Text.WordWrap
             width:parent.width
             //font.family: title.name
             textFormat: Text.RichText
             font.pixelSize: Screen.height*0.04
             elide: Text.ElideLeft
         }
         Text {//Maho 1
             text: "Les Maho:"
             width:parent.width
             wrapMode: Text.WordWrap
             font.family: title.name
             font.pixelSize: Screen.height*0.05
             textFormat: Text.RichText
             elide: Text.ElideLeft
         }
         Text {//Maho 2
             text: "Les lions perdus, Accident en ville, Aide des grues durant l’attaque de Kalani, Disparition en ville, vol de cadavres"
             wrapMode: Text.WordWrap
             width:parent.width
             //font.family: title.name
             textFormat: Text.RichText
             font.pixelSize: Screen.height*0.04
             elide: Text.ElideLeft
         }

    }

    /*Grid {
        columns: 3
        spacing: 2
        Text {

        }
        Text {

        }
    }*/

    onIdStateChanged: {

    }

    Image {
        id: image2
        x: Screen.width*0.2
        y: Screen.height*0.2
        width: Screen.width*0.8
        height: Screen.height*0.8
        fillMode: Image.PreserveAspectFit
        opacity: 0.0
        Behavior on opacity {
            NumberAnimation {
                duration: 1000
            }
        }
    }

    Image {
        id: image3
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        height: Screen.height*0.3
        fillMode: Image.PreserveAspectFit
        opacity: 0.0
        Behavior on opacity {
            NumberAnimation {
                duration: 1000
            }
        }
    }
}

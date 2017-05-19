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
        Rectangle {//"Bg des perso"
            color: "#bbb"
         TextArea {
             text: "Les Pirates, Mort de Yoritomo Losaï, Village de Okawa, Asako Yumi, Otomo Akio, Mort Daigotsu Shuuki, Ubuyama-mura village, Infidélité Akodo Yumi, Yasuki Akane, Café, Guerre Mante/Araignée"
         }
        }
        Rectangle {//"Indépendence"
            color: "#080"
         TextArea {
             text: "Vol des plantes, Les pirates, Yoritomo Losai, Asako Yumi, Ubuyama-mura village, Disparition en ville, Collocte d’impôt, Traffic de drogue"
         }
        }
        Rectangle {//"Décolonisation"
            color: "#085"
         TextArea {
             text: ""
         }
        }
        Rectangle {//"Maho"
            color: "#580"
         TextArea {
             text: "Les lions perdus, Accident en ville, Aide des grues durant l’attaque de Kalani, Disparition en ville, vol de cadavres"
         }
        }
        Rectangle {//"Autres"
            color: "#085"
         TextArea {
             text: ""
         }
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
        if(idState == 2)
        {
            image2.source = "qrc:/images/thehouse_0.jpg"//Replace by rolisteam screenshot.
            image2.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 5)
        {
            image2.source = "qrc:/images/Fourth_Edition_Core_Book.jpg"//4th edition of L5R
            image2.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 6)
        {
            image2.source = "qrc:/images/secondcityBox.png"//secondCity box
            image2.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 7)
        {
            image2.source = "qrc:/images/Rokugan_4th_Edition.jpg"//map

            image2.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 9)
        {
            image3.source = "qrc:/images/crabgroup.png"//map
            image2.source = "qrc:/images/crab_map.jpg"//map

            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 10)
        {
            image3.source = "qrc:/images/dragongroup.png"//map
            image2.source = "qrc:/images/dragon_map.jpg"//map

            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 11)
        {
            image3.source = "qrc:/images/gruegroup.png"//map
            image2.source = "qrc:/images/crane_map.jpg"//map

            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 12)
        {
            image3.source = "qrc:/images/liongroup.png"//map
            image2.source = "qrc:/images/lion_map.jpg"//map

            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 13)
        {
            image3.source = "qrc:/images/unicorngroup.png"//map
            image2.source = "qrc:/images/unicorn_map.jpg"//map

            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 14)
        {
            image3.source = "qrc:/images/mantisgroup.png"//map
            image2.source = "qrc:/images/mantis_map.jpg"//map

            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 15)
        {
            image3.source = "qrc:/images/scorpiongroup.png"//map
            image2.source = "qrc:/images/scorpion_map.jpg"//map

            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 16)
        {
            image3.source = "qrc:/images/phenixgroup.png"//map
            image2.source = "qrc:/images/phenix_map.jpg"//map

            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 17)
        {
            image3.source = "qrc:/images/spidergroup.png"//map
            image2.source = "qrc:/images/spider_map.jpg"//map

            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 19)
        {
            image3.source = ""//map
            image2.source = "qrc:/images/terresgaijin.jpg"//map

            image3.opacity =0.0
            image2.opacity =1.0
            listView1.opacity = 0.0
        }
        else{
            image2.opacity =0.0
            image3.opacity =0.0
            listView1.opacity = 1.0

        }
        if((idState >= 9)&&(idState <18))
        {
            image2.opacity =1.0
            listView1.opacity = 0.0
            image2.height = Screen.height*0.5
        }
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

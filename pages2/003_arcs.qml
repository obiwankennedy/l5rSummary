import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

SlidePage {

    id: page
    anchors.fill: parent
    logo: "qrc:/images/l5r-logo-2015.png"
    focus: true
    title: "Les intrigues par arc narratif"

    Column{
        x: Screen.width/4
        y: Screen.height*0.2
        width: Screen.width/2
        height: Screen.height*0.9

         Text {//BG
             text: "Les backgrounds des joueurs:"
             width:parent.width
             wrapMode: Text.WordWrap
             font.family: titleFont.name
             textFormat: Text.RichText
             font.pixelSize: Screen.height*0.05
             elide: Text.ElideLeft
         }
         Text {//BG 2
             text: "Les Pirates, Mort de Yoritomo Losaï, Village d’Okawa, Asako Yumi, Otomo Akio, Mort Daigotsu Shuuki, Ubuyama-mura village, Infidélité Akodo Yumi, Yasuki Akane, Café, Guerre Mante/Araignée"
             wrapMode: Text.WordWrap
             width:parent.width
             //font.family: titleFont.name
             textFormat: Text.RichText
             font.pixelSize: Screen.height*0.04
             elide: Text.ElideLeft
         }
         Text {//"Indépendence"
             text: "L’indépendence:"
             width:parent.width
             wrapMode: Text.WordWrap
             font.family: titleFont.name
             font.pixelSize: Screen.height*0.05
             textFormat: Text.RichText
             elide: Text.ElideLeft
         }
         Text {//independence 2
             text: "Vol des plantes, Les pirates, Yoritomo Losai, Asako Yumi, Ubuyama-mura village, Disparition en ville, Collocte d’impôt, Traffic de drogue"
             wrapMode: Text.WordWrap
             width:parent.width
             //font.family: titleFont.name
             textFormat: Text.RichText
             font.pixelSize: Screen.height*0.04
             elide: Text.ElideLeft
         }
         Text {//Maho 1
             text: "Les Maho:"
             width:parent.width
             wrapMode: Text.WordWrap
             font.family: titleFont.name
             font.pixelSize: Screen.height*0.05
             textFormat: Text.RichText
             elide: Text.ElideLeft
         }
         Text {//Maho 2
             text: "Les lions perdus, Accident en ville, Aide des grues durant l’attaque de Kalani, Disparition en ville, vol de cadavres"
             wrapMode: Text.WordWrap
             width:parent.width
             //font.family: titleFont.name
             textFormat: Text.RichText
             font.pixelSize: Screen.height*0.04
             elide: Text.ElideLeft
         }

    }



    onIdStateChanged: {

    }
}

import QtQuick 2.0
import QtQuick.Window 2.2

SlidePage {
    id: page
    anchors.fill: parent
    logo: "qrc:/images/l5r-logo-2015.png"
    focus: true
    title: "Les sources d’inspirations"


    Component.onCompleted:
    {
        points = listSection
        anchors.fill = parent
    }

   ListModel {
            id: listSection
            ListElement {
                name: "Les séries"
                index:0
            }
            ListElement {
                name: "Les livres"
                index:4
            }
            ListElement {
                name: "Films"
                index:7
            }
            ListElement {
                name: "Musiques"
                index:8
            }
            ListElement {
                name: "Histoire"
                index:10
            }

    }
    onIdStateChanged: {
        if(idState == 1)
        {
            image2.source = "qrc:/images/sources/blacksails.jpg"
            image2.opacity =1.0
            image3.source = "qrc:/images/sources/blacksails02.jpg"
            image3.opacity =1.0
            view.opacity = 0.0
        }
        else if(idState == 2)
        {
            image2.source = "qrc:/images/sources/musketeers.jpg"
            image2.opacity =1.0
            image3.source = "qrc:/images/sources/musketeers02.jpg"
            image3.opacity =1.0
            view.opacity = 0.0
        }
        else if(idState == 3)
        {
            image2.source = "qrc:/images/sources/marco-polo.png"
            image2.opacity =1.0
            image3.source = "qrc:/images/sources/marco-polo02.jpg"
            image3.opacity =1.0
            view.opacity = 0.0
        }
        else if(idState == 5)
        {
            image2.source = "qrc:/images/sources/asimovFondation.jpg"
            image2.opacity =1.0
            view.opacity = 0.0
            image3.scale = 1.0
        }
        else if(idState == 6)
        {
            image2.source = "qrc:/images/sources/gagnerguerre_jp_jaworski.jpg"
            image2.opacity =1.0
            image3.source = "qrc:/images/sources/enferfibuste.jpg"
            image3.opacity =1.0
            image3.scale = 2.0
            view.opacity = 0.0
        }
        else if(idState == 9)
        {
            image2.source = "qrc:/images/sources/lecoledumicrodargent.jpg"
            image2.opacity =1.0
            view.opacity = 0.0
            image3.scale = 1.0
        }
        else{
            image2.opacity =0.0
            image3.opacity =0.0
            view.opacity = 1.0
        }
    }

    Row {
        id: imagePanel
        x: Screen.width*0.2
        y: Screen.height*0.2
        width: Screen.width*0.8
        height: Screen.height*0.8

        Image {
            id: image2
            width: parent.width/2
            height: parent.height/2
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
            width: parent.width/2
            fillMode: Image.PreserveAspectFit
            opacity: 0.0
            Behavior on opacity {
                NumberAnimation {
                    duration: 1000
                }
            }
        }
    }
}

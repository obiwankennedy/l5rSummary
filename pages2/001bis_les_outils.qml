import QtQuick 2.0
import QtQuick.Window 2.2

SlidePage {

    id: page
    anchors.fill: parent
    logo: "qrc:/images/l5r-logo-2015.png"
    focus: true
    title: "Les outils du MJ"

    Component.onCompleted:
    {
        points = listSection
        anchors.fill = parent
    }


    ListModel {
        id: listSection
            ListElement {
                name: "L’enregistrement: Rolisteam, TS, SSR"
                index:0
            }
            ListElement {
                name: "Les fiches de personnages"
                index:1
            }
            ListElement {
                name: "Annuaire de PNJ"
                index:3
            }
            ListElement {
                name: "Mindmap"
                index:5
            }
            ListElement {
                name: "Forum"
                index:7
            }
            ListElement {
                name: "Cahier"
                index:8
            }

    }
    Image {
        id: img
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
    }

    onIdStateChanged: {
        if(idState == 2)
        {
            img.visible = true
            img.source = "http://blog.rolisteam.org/wp-content/uploads/2016/11/fiche_L5R.jpg"
            view.visible = false
        }
        else if(idState == 6)
        {
            img.visible = true
            img.source = "qrc:/images/mindmap.png"
            view.visible = false
        }
        else if(idState == 4)
        {
            img.visible = true
            img.source = "qrc:/images/annuairePnj.png"
            view.visible = false
        }
        else
        {
            img.visible = false
            view.visible = true
        }
    }
}

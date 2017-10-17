import QtQuick 2.0
import QtQuick.Window 2.2

SlidePage {

    id: page
    anchors.fill: parent
    logo: "qrc:/images/l5r-logo-2015.png"
    focus: true
    title: "Maho"

    Component.onCompleted:
    {
        points = listSection
        anchors.fill = parent
    }

    ListModel {
        id: listSection
            ListElement {
                name: "Kitsuki Gohai"
                index:0
            }
            ListElement {
                name: "Donner un trône à Iweko Tazume"
                index:1
            }
            ListElement {
                name: "Saisir une opportunité: les lions perdus/livres"
                index:2
            }
            ListElement {
                name: "Indépendance"
                index:3
            }
            ListElement {
                name: "Coup d’État"
                index:4
            }
            ListElement {
                name: "L’autre Maho: Chuda Kariyami"
                index:5
            }

    }
    onIdStateChanged: {

    }
}

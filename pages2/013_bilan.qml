import QtQuick 2.0
import QtQuick.Window 2.2

SlidePage {

    id: page
    anchors.fill: parent
    logo: "qrc:/images/l5r-logo-2015.png"
    focus: true
    title: "Le bilan"

    Component.onCompleted:
    {
        points = listSection
        anchors.fill = parent
    }

    ListModel {
        id: listSection
            ListElement {
                name: "Les points négatifs"
                index:0
            }
            ListElement {
                name: "Les points positifs"
                index:1
            }
            ListElement {
                name: "A plus tard pour la saison 2"
                index:2
            }
    }
    onIdStateChanged: {

    }
}

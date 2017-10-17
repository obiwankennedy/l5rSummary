import QtQuick 2.0
import QtQuick.Window 2.2

SlidePage {

    id: page
    anchors.fill: parent
    logo: "qrc:/images/l5r-logo-2015.png"
    focus: true
    title: "Tsuruchi Nayu"

    Component.onCompleted:
    {
        points = listSection
        anchors.fill = parent
    }

    ListModel {
        id: listSection
             ListElement {
                 name: "Présentation"
                 index:0
             }
             ListElement {
                 name: "Objectifs"
                 index:1
             }
             ListElement {
                 name: "Plan du MJ"
                 index:2
             }
     }
    onIdStateChanged: {

    }
}

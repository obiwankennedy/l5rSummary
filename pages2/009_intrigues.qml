import QtQuick 2.0
import QtQuick.Window 2.2

SlidePage {

    id: page
    anchors.fill: parent
    logo: "qrc:/images/l5r-logo-2015.png"
    focus: true
    title: "Les intrigues"

    Component.onCompleted:
    {
        points = listSection
        anchors.fill = parent
    }

    ListModel {
        id: listSection
        ListElement {
            name: "Les intrigues des Backgrounds"
            index:0
        }
            ListElement {
                name: "L'indépendance"
                index:1
            }
            ListElement {
                name: "La maho"
                index:2
            }
            ListElement {
                name: "??????????????"
                index:3
            }

    }
    onIdStateChanged: {

    }
}

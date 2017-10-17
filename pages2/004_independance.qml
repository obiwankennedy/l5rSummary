import QtQuick 2.0
import QtQuick.Window 2.2

SlidePage {

    id: page
    anchors.fill: parent
    logo: "qrc:/images/l5r-logo-2015.png"
    focus: true
    title: "L’indépendance"



    Component.onCompleted:
    {
        points = listSection
        anchors.fill = parent
    }
      ListModel {
          id: listSection
            ListElement {
                name: "La gouverneur Otomo Suikihime-dono"
                index:0
            }
            ListElement {
                name: "Obtenir des alliés: Les PJ"// Yoritomo Losai, Asako Yumi,
                index:1
            }
            ListElement {
                name: "Assurer une légitimité: Mariage Iweko Tazume"
                index:2
            }
            ListElement {
                name: "Se construire une armée: <br/>Disparitions en ville, Les pirates, Ubuyama-mura village, trafic de drogue"
                index:3
            }
            ListElement {
                name: "Se construire un capital: Collocte d’impôt, trafic de drogue"
                index:4
            }
            ListElement {
                name: "Affaiblir ses ennemis: Impôts, crise politique, Pirates"
                index:5
            }
            ListElement {
                name: "Gagner l’opinium publique: Victoire d’Akodo, Impôts, ordres aberrants"
                index:6
            }
    }
    onIdStateChanged: {

    }
}

import QtQuick 2.0
import QtQuick.Window 2.2

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
        text: qsTr("Le résumé")
        anchors.horizontalCenterOffset: 1
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Screen.height/15
        font.family: title.name
    }
    focus: true
    Keys.onUpPressed: {
            --idState

    }
    Keys.onDownPressed: {
            ++idState
    }

    Component {
        id: displayItem
        Item {
            x: 0
            width: parent.width
            height: characterList.height/myModel.count
            Image {
                id: img
                anchors.top : parent.top
                width: parent.width
                height: characterList.height/myModel.count-20
                source: image
                fillMode: Image.PreserveAspectFit
            }
            Text {
                anchors.top :img.bottom
                anchors.topMargin: img.sourceSize.height > img.sourceSize.width ? img.paintedHeight-img.height : (img.paintedHeight-img.height)/2
                text: name
                width: parent.width
                font.family: title.name
                font.bold: true
                color: "#000"
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
 /*   ListModel {
        id: myModel
        ListElement {
            name: "Doji Taehime"
            image: "qrc:/images/doji_taehime.jpg"
        }
        ListElement {
            name: "Hida Shigehiro"
            image: "qrc:/images/hida.jpg"
        }
        ListElement {
            name: "Shinjo Zhia"
            image: "qrc:/images/Zhia.jpg"
        }
        ListElement {
            name: "Yogo Unmei"
            image: "qrc:/images/YogoUnmei.png"
        }
        ListElement {
            name: "Isawa Haneki"
            image: "qrc:/images/Haneki.jpg"
        }
    }
    ListView {
        id: characterList
        width: parent.width*0.2
        height: parent.height
        anchors.top: parent.top
        anchors.topMargin: parent.height*0.1
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        model: myModel
        delegate: displayItem
    }*/
    Timer {
        id: trigger
        interval: 1001
        repeat: false
        onTriggered: app.currentItemChanged(view.currentItem)
    }
    ListView {
        id: listView1
        x: Screen.width/4
        y: Screen.height*0.10
        width: Screen.width/2
        height: Screen.height*0.9
        delegate: Item {
            width: Screen.width/2
            height: listView1.height/listView1.count
            Text {
                color: "black"
                text: name
                font.pointSize: Screen.height*0.05
                anchors.verticalCenter: parent.verticalCenter
                font.bold: true
                font.family: localFont.name
            }
            opacity: (jdr.idState >= index ) ? 1.0: 0.0
            Behavior on opacity {
                NumberAnimation {
                    duration: 1000
                }
            }
        }

        model: ListModel {
            ListElement {
                name: "Lions perdus"
                index:0
            }
            ListElement {
                name: "Missions pour chacun"
                index:1
            }
            ListElement {
                name: "Tournoi"
                index:2
            }
            ListElement {
                name: "Missions - Bataille de Kalani"
                index:3
            }
            ListElement {
                name: "Sauvetage de Tsuruchi"
                index:4
            }
            ListElement {
                name: "Diplomatie chez les ivindi"
                index:5
            }
            ListElement {
                name: "Asoko Yumi et le Fort"
                index:6
            }
            ListElement {
                name: "Préparation des mariages"
                index:7
            }
            ListElement {
                name: "Une affaire pour la magistrature"
                index:8
            }
            ListElement {
                name: "Les mariages"
                index:9
            }
            ListElement {
                name: "Le fort assiégé"
                index:10
            }
            ListElement {
                name: "Chasse des pirates"
                index:11
            }
            ListElement {
                name: "La bataille de Sunda Munzu Mura - 56"
                index:12
            }
            ListElement {
                name: "Fin des pirates - ep58 à 60"
                index:13
            }
            ListElement {
                name: "Fin du siège - ep61 à 62"
                index:14
            }
            ListElement {
                name: "Indépendance"
                index:15
            }
            ListElement {
                name: "Background Akodo"
                index:16
            }
            ListElement {
                name: "Siège de la ville"
                index:17
            }
            ListElement {
                name: "Fin"
                index:18
            }
        }
    }
    onIdStateChanged: {

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

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
    ImageMouse {
        y: 0
        x: parent.width - 200
        source : "qrc:/images/Akodo_Eiichi.jpg"
        text: "Akodo Eiichi"
    }
    ImageMouse {
        y: 200
        x: parent.width - 200
        source : "qrc:/images/tsuruchi.jpg"
        text: "Tsuruchi Nayu"
    }
    ImageMouse {
        y: 400
        x: parent.width - 200
        source : "qrc:/images/Zhia.jpg"
        text: "Shinjo Zhia"
    }
    ImageMouse {
        y: 600
        x: parent.width - 200
        source : "qrc:/images/Bayushi_Takayoshi.png"
        text: "Bayushi Takayoshi"
    }



    /////////////////PNJ
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Doji_Adachi.jpg"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Ikoma_Shika.jpg"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/kakita_mitohime2.jpg"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Mirumoto_Misara.jpg"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Otomo_Suikihime.jpg"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Saito.jpg"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Shiba_karyko.jpg"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Utaku_kimlee.jpg"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Yoritomo_losai.jpg"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Mirumoto Tomoe.png"
    }
    ImageMouse {
        y: 800
        x: parent.width - 200
        source : "qrc:/images/pnj/Asako_Yumi.jpg"
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

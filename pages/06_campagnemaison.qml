import QtQuick 2.0
import QtQuick.Window 2.2

Rectangle {
    id: jdr
    width: Screen.width
    height: Screen.height
    border.color: "#E3E3E3"
    border.width: 5
    color: "#E3E3E3"
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
        text: qsTr("Première Histoire")
        anchors.horizontalCenterOffset: 1
        font.family: "Verdana"
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Screen.height/20
    }
    focus: true
    Keys.onUpPressed: {
            --idState

    }
    Keys.onDownPressed: {
            ++idState
    }
    onIdStateChanged: {
        trigger.start()
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
        y: Screen.height/4
        width: Screen.width/2
        height: Screen.height/2
        delegate: Item {
            width: Screen.width/2
            height: listView1.height/listView1.count
                Text {
                    color: "black"
                    text: name
                    font.pointSize: Screen.height/28
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
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
                name: "Les lions perdus"
                index:0
            }
            ListElement {
                name: "La cour de seconde cité"
                index:1
            }
            ListElement {
                name: "La magistrature"
                index:2
            }
            ListElement {
                name: "Le domaine de Shinjo Zhia"
                index:3
            }
            ListElement {
                name: "Organisation du tournoi"
                index:4
            }
            ListElement {
                name: "Mirumoto Misara"
                index:4
            }
        }
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
                font.bold: true
                color: "#000"
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }


    ListModel {
        id: myModel
        ListElement {
            name: "Shinjo Zhia"
            image: "qrc:/images/Zhia.jpg"
        }
        ListElement {
            name: "Tsuruchi Nayu"
            image: "qrc:/images/tsuruchi.jpg"
        }
        ListElement {
            name: "Bayushi Takayoshi"
            image: "qrc:/images/Bayushi_Takayoshi.png"
        }
        ListElement {
            name: "Akodo Eiichi"
            image: "qrc:/images/Akodo_Eiichi.jpg"
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
    }
}

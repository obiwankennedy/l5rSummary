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
        text: qsTr("Sur le trajet")
        anchors.horizontalCenterOffset: 1
        font.family: title.name
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: Screen.height/15

    }
    focus: true
    Keys.onUpPressed: {
            --idState

    }
    Keys.onDownPressed: {
            ++idState
    }
    onIdStateChanged: {

        if(idState == 8)
        {
            image2.source = "qrc:/images/Kitsune_HidekoFull.jpg"
            image2.opacity =1.0
            listView1.opacity = 0.0
            characterList.opacity = 0.0
        }
        else{
            image2.opacity =0.0
            listView1.opacity = 1.0
            characterList.opacity = 1.0
        }

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
                    font.pointSize: Screen.height/25
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
                name: "Mirumoto Sastume"
                index:0
            }
            ListElement {
                name: "Tsuruchi Nayu"
                index:1
            }
            ListElement {
                name: "Hida Shigehiro"
                index:2
            }
            ListElement {
                name: "Akodo Eiichi & Bayushi Takayoshi"
                index:3
            }
            ListElement {
                name: "Otomo Akio"
                index:4
            }
            ListElement {
                name: "Ide Sadeo"
                index:5
            }
            ListElement {
                name: "Sosuke"
                index:6
            }
            ListElement {
                name: "Kitsune Hideko"
                index:7
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
                font.family: title.name
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

    Image {
        id: image2
        x: Screen.width*0.2
        y: Screen.height*0.2
        width: Screen.width*0.8
        height: Screen.height*0.8
        fillMode: Image.PreserveAspectFit
        opacity: 0.0
        Behavior on opacity {
            NumberAnimation {
                duration: 1000
            }
        }
    }
}

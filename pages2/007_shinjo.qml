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
        text: qsTr("Shinjo Zhia")
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
                    font.pointSize: Screen.height/20
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
        Behavior on opacity {
            NumberAnimation {
                duration: 1000
            }
        }
        model: ListModel {
            ListElement {
                name: "Présentation"
                index:0
            }
            ListElement {
                name: "Objectif"
                index:1
            }
            ListElement {
                name: "Désir"
                index:2
            }
            ListElement {
                name: "Plan du MJ"
                index:3
            }
        }
    }
    onIdStateChanged: {

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

    Image {
        id: image3
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        height: Screen.height*0.3
        fillMode: Image.PreserveAspectFit
        opacity: 0.0
        Behavior on opacity {
            NumberAnimation {
                duration: 1000
            }
        }
    }
}

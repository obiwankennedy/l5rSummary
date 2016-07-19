import QtQuick 2.0
import QtQuick.Window 2.2

Rectangle {
    id: jdr
    width: ScreenW
    height: ScreenH
    border.color: "#E3E3E3"
    border.width: 5
    color: "#E3E3E3"
    property int idState: 0
    Image {
        id: image1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: ScreenW*0.04
        fillMode: Image.PreserveAspectFit
        source: "qrc:/images/l5r-logo-2015.png"
        width: ScreenW*0.2
    }



    Text {
        id: text1
        anchors.top:image1.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: image1.bottom
        width: ScreenW*0.5
        height: ScreenH*0.01
        color: "black"
        text: qsTr("Explications")
        anchors.horizontalCenterOffset: 1
        font.family: "Verdana"
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: ScreenH/20
    }
    focus: idState < 7 ? true : false
    Keys.onPressed: {
        if( event.key === Qt.Key_PageUp )
        {
            --idState
            event.accepted = true;
        }
        else if ( event.key === Qt.Key_PageDown )
        {
            ++idState
            event.accepted = true;
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
        x: ScreenW/4
        y: ScreenH/4
        width: ScreenW/2
        height: ScreenH/2
        delegate: Item {
            width: ScreenW/2
            height: listView1.height/listView1.count
                Text {
                    color: "black"
                    text: name
                    font.pointSize: ScreenH/28
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
        Behavior on opacity {
            NumberAnimation {
                duration: 1000
            }
        }
        model: ListModel {
            ListElement {
                name: "Contexte vidéo"
                index:0
            }
            ListElement {
                name: "Rolisteam"
                index:1
            }
            ListElement {
                name: "L5R"
                index:3
            }
            ListElement {
                name: "Les clans"
                index:5
            }
            ListElement {
                name: "Timeline"
                index:6
            }
            ListElement {
                name: "Chiffres"
                index:7
            }
        }
    }
    onIdStateChanged: {
        if(idState == 2)
        {
            image2.source = "qrc:/images/Rolisteam.svg"
            image2.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 4)
        {
            image2.source = "qrc:/images/Rokugan_4th_Edition.jpg"
            image2.opacity =1.0
            listView1.opacity = 0.0
        }
        else{
            image2.opacity =0.0
            listView1.opacity = 1.0

        }

        /*if(idstate == 4)
        {
            image2.source = "qrc:/images/Rokugan_4th_Edition.jpg"
        }*/
    }

    Image {
        id: image2
        x: ScreenW*0.2
        y: ScreenH*0.2
        width: ScreenW*0.8
        height: ScreenH*0.8
        fillMode: Image.PreserveAspectFit
        opacity: 0.0
        Behavior on opacity {
            NumberAnimation {
                duration: 1000
            }
        }
    }
}

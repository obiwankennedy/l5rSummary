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
        text: qsTr("Premier Scénario")
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
                name: "Dans la peau d'un bakemono"
                index:0
            }
            ListElement {
                name: "Territoire Crabe"
                index:1
            }
            ListElement {
                name: "Echec"
                index:2
            }
            ListElement {
                name: "Miya Akamu"
                index:4
            }
        }
    }
    onIdStateChanged: {
        if(idState == 3)
        {
            image2.source = "qrc:/images/Battle_of_the_Burning_Wall.jpg"
            image2.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 5)
        {
            image2.source = "qrc:/images/ikoma_akamu.jpg"
            image2.opacity =1.0
            listView1.opacity = 0.0
        }
        else{
            image2.opacity =0.0
            listView1.opacity = 1.0

        }
         trigger.start()

        /*if(idstate == 4)
        {
            image2.source = "qrc:/images/Rokugan_4th_Edition.jpg"
        }*/
    }

    Image {
        id: image2
        x: Screen.width*0.1
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

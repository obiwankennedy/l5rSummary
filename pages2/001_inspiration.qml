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
        text: qsTr("Les sources d’inspiration")
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

        model: ListModel {
            ListElement {
                name: "Les séries"
                index:0
            }
            ListElement {
                name: "Les livres"
                index:4
            }
            ListElement {
                name: "Films"
                index:7
            }
            ListElement {
                name: "Musiques"
                index:8
            }
            ListElement {
                name: "Histoire"
                index:10
            }
        }
    }
    onIdStateChanged: {
        if(idState == 1)
        {
            image2.source = "qrc:/images/sources/blacksails.jpg"
            image2.opacity =1.0
            image3.source = "qrc:/images/sources/blacksails02.jpg"
            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 2)
        {
            image2.source = "qrc:/images/sources/musketeers.jpg"
            image2.opacity =1.0
            image3.source = "qrc:/images/sources/musketeers02.jpg"
            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 3)
        {
            image2.source = "qrc:/images/sources/marco-polo.png"
            image2.opacity =1.0
            image3.source = "qrc:/images/sources/marco-polo02.jpg"
            image3.opacity =1.0
            listView1.opacity = 0.0
        }
        else if(idState == 5)
        {
            image2.source = "qrc:/images/sources/asimovFondation.jpg"
            image2.opacity =1.0
            listView1.opacity = 0.0
            image3.scale = 1.0
        }
        else if(idState == 6)
        {
            image2.source = "qrc:/images/sources/gagnerguerre_jp_jaworski.jpg"
            image2.opacity =1.0
            image3.source = "qrc:/images/sources/enferfibuste.jpg"
            image3.opacity =1.0
            image3.scale = 2.0
            listView1.opacity = 0.0
        }
        else if(idState == 9)
        {
            image2.source = "qrc:/images/sources/lecoledumicrodargent.jpg"
            image2.opacity =1.0
            listView1.opacity = 0.0
            image3.scale = 1.0
        }
        else{
            image2.opacity =0.0
            image3.opacity =0.0
            listView1.opacity = 1.0

        }
         trigger.start()
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

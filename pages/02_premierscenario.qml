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
        text: qsTr("Premier Scénario")
        anchors.horizontalCenterOffset: 1
        font.family: "Verdana"
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: ScreenH/20
    }
    focus: idState < 4 ? true : false
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
    onIdStateChanged: {
        trigger.start()
    }
    Component {
        id: displayItem
        Item {
            x: 0
            width: 180
            height: 180
            Image {
                id: img
                anchors.top : parent.top
                width: parent.width
                height: 160
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
        width: 220
        height: parent.width
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        model: myModel
        delegate: displayItem
        spacing: 1
        opacity:1
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
                index:3
            }
        }
    }
}

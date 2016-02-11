import QtQuick 2.5
import QtQuick.Extras 1.4
import QtQml.Models 2.2

Rectangle {
    id: rectangle1
    property int stateId: 0
    property alias widthCharacter: characterList.width
    anchors.fill: parent
    focus: true
    color: "#000000"


    ListView {
        id: characterList
        x: 250
        y: 0
        width: 110
        height: 360
        visible: false
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.right: parent.right
        model: firstModel

    }
    Text {
            id: text1
            height: 100
            color: "#ffffff"
            text: qsTr("Naissance d’un Empire")
            anchors.top: logo.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
    }
    Image {
        id: image1
        anchors.top: text1.bottom
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        fillMode: Image.PreserveAspectFit
        source: "images/Second_City_2.jpg"
    }

    Image {
        id: logo
        height: 200
        fillMode: Image.PreserveAspectFit
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        source: "images/l5r-logo-2015.png"
    }

    Image {
        id: image2
        x: 64
        y: 211
        width: 100
        height: 100
        source: "qrc:/qtquickplugin/images/template_image.png"
        opacity: 0
    }

    Image {
        id: image3
        x: 222
        y: 211
        width: 100
        height: 100
        source: "qrc:/qtquickplugin/images/template_image.png"
        opacity: 0
    }

    Image {
        id: image4
        x: 386
        y: 211
        width: 100
        height: 100
        source: "qrc:/qtquickplugin/images/template_image.png"
        opacity: 0
    }


states: [
    State {
        name: "First"
        when: stateId == 1
        PropertyChanges {
            target: characterList
            x: 250
            visible: true
        }
        PropertyChanges {
            target: image1
            source: "images/Second_City_2.jpg"
            visible: false
        }

        PropertyChanges {
            target: text1
            opacity: 0
        }

        PropertyChanges {
            target: logo
            horizontalAlignment: Image.AlignLeft
            antialiasing: true
            scale: 0.8
        }

        PropertyChanges {
            target: rectangle1
            antialiasing: true
        }
    },
    State {
        name: "second"
        PropertyChanges {
            target: characterList
            x: 250
            visible: true
        }

        PropertyChanges {
            target: image1
            anchors.rightMargin: 8
            anchors.bottomMargin: -270
            anchors.leftMargin: -8
            anchors.topMargin: 270
            source: "images/Second_City_2.jpg"
            visible: false
        }

        PropertyChanges {
            target: text1
            x: 3
            y: 2380
            height: 62
            anchors.rightMargin: 8
            anchors.leftMargin: -8
            anchors.topMargin: 318
            visible: false
            opacity: 1
        }

        PropertyChanges {
            target: logo
            horizontalAlignment: Image.AlignLeft
            scale: 0.8
            antialiasing: true
        }

        PropertyChanges {
            target: rectangle1
            antialiasing: true
        }

        PropertyChanges {
            target: image2
            opacity: 1
        }

        PropertyChanges {
            target: image3
            opacity: 1
        }

        PropertyChanges {
            target: image4
            opacity: 1
        }
    }
    ]
}

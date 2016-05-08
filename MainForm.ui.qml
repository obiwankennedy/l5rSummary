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
    width: 1200
    height: 920


    ListView {
        id: characterList
        width: 220
        height: parent.width
        visible: false
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        model: firstModel
        spacing: 1
        opacity:0
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
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height/2
        fillMode: Image.PreserveAspectFit
        source: "images/Second_City_2.jpg"
        onOpacityChanged: {
            console.log("test opacity");
        }
    }

    Image {
        id: logo
        height: 200
        x:parent.width/2-150
        y:0
        fillMode: Image.PreserveAspectFit
        source: "images/l5r-logo-2015.png"
    }

    ListView {
        id: keywordList
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width/2
        height:parent.height/2
        delegate: Item {
            height: 40
            Image {
                source: img
                anchors.top: parent.top
                anchors.right: parent.right
                width:600

            }
                Text {
                    id:title
                    width: parent.width
                    text: "<b>-"+word+"</b>"
                    color:"#ffffff"
                }
                Text {
                    id: subtitle
                    anchors.top:title.bottom
                    anchors.right: parent.right
                    width: parent.width
                    text: desc
                    color:"#ffffff"
                }

            }

        visible:false
        model:keyModel1
        spacing: 10
    }


states: [
    State {
        name: ""
        when: stateId == 0
    },
    State {
        name: "Zero"
        when: stateId == 1
        PropertyChanges {
            target: characterList
            x: 250
            visible: false
            opacity: 0
        }
        PropertyChanges {
            target: image1
            source: "images/Rokugan_4th_Edition.jpg"
            visible: true
            anchors.bottom: parent.bottom
            //anchors.verticalCenterOffset: 230
            //anchors.bottomMargin: -230
            //sourceSize.height: 600
            //sourceSize.width: 600
            height: 800
            width:800
            anchors.verticalCenter: parent.verticalCenter
            opacity:1
        }
        PropertyChanges {
            target: text1
            opacity: 0
        }
        PropertyChanges {
            target: logo
            x:parent.width/6-150
            antialiasing: true
            scale: 0.8
        }
        PropertyChanges {
            target: keywordList
            model: keyModel0
            anchors.verticalCenterOffset: 70
            anchors.horizontalCenterOffset: -200
            visible: true
        }
        PropertyChanges {
            target: text1
            visible: true
            opacity: 1
            text: qsTr("Întroduction")
        }
    },
    State {
        name: "First"
        when: stateId == 2
        PropertyChanges {
            target: characterList
            x: 250
            visible: true
            opacity: 1
        }
        PropertyChanges {
            target: image1
            x: 0
            source: "images/Battle_of_the_Burning_Wall.jpg"
            visible: true
            anchors.bottom: parent.bottom
            height: 600
            anchors.verticalCenterOffset: 230
            anchors.bottomMargin: -230
            width: 600
            anchors.verticalCenter: parent.verticalCenter
            opacity:0
        }
        PropertyChanges {
            target: image1
            opacity:1
        }
        PropertyChanges {
            target: text1
            opacity: 0
        }

        PropertyChanges {
            target: logo
            x:parent.width/6-150
            antialiasing: true
            scale: 0.8
        }
        PropertyChanges {
            target: keywordList
            model: keyModel1
            anchors.verticalCenterOffset: 70
            anchors.horizontalCenterOffset: -200
            visible: true
        }
        PropertyChanges {
            target: text1
            visible: true
            opacity: 1
            text: qsTr("Premier Scénario")
        }
    },
    State {
        name: "second"
        when: stateId == 3
        PropertyChanges {
            target: characterList
            visible: true
            opacity: 1
        }
        PropertyChanges {
            target: image1
            visible: false
        }
        PropertyChanges {
            target: logo
            x:parent.width/6-150
            antialiasing: true
            scale: 0.8
        }
        PropertyChanges {
            target: text1
            visible: true
            opacity: 1
            text: qsTr("La Campagne Officielle")
        }
        PropertyChanges {
            target: keywordList
            model: keyModel2
            anchors.verticalCenterOffset: 70
            anchors.horizontalCenterOffset: -200
            visible: true
        }
    },
    State {
        name: "fourth"
        when: stateId == 4
        PropertyChanges {
            target: characterList
            visible: true
            opacity: 1
        }
        PropertyChanges {
            target: image1
            visible: false
        }
        PropertyChanges {
            target: logo
            x:parent.width/6-150
            antialiasing: true
            scale: 0.8
        }
        PropertyChanges {
            target: text1
            visible: true
            opacity: 1
            text: qsTr("Campagne Officielle: La dernière ligne droite")
        }
        PropertyChanges {
            target: keywordList
            model: keyModel4
            anchors.verticalCenterOffset: 70
            anchors.horizontalCenterOffset: -200
            visible: true
        }
    },
    State {
        name: "fifth"
        when: stateId == 5
        PropertyChanges {
            target: characterList
            visible: true
            opacity: 1
        }
        PropertyChanges {
            target: image1
            visible: false
        }
        PropertyChanges {
            target: logo
            x:parent.width/6-150
            antialiasing: true
            scale: 0.8
        }
        PropertyChanges {
            target: text1
            visible: true
            opacity: 1
            text: qsTr("Campagne Officielle : La fin")
        }
        PropertyChanges {
            target: keywordList
            model: keyModel5
            anchors.verticalCenterOffset: 70
            anchors.horizontalCenterOffset: -200
            visible: true
        }
    },
    State {
        name: "sixth"
        when: stateId == 6
        PropertyChanges {
            target: characterList
            visible: true
            opacity: 1
        }
        PropertyChanges {
            target: image1
            visible: false
        }
        PropertyChanges {
            target: logo
            x:parent.width/6-150
            antialiasing: true
            scale: 0.8
        }
        PropertyChanges {
            target: text1
            visible: true
            opacity: 1
            text: qsTr("Campagne Maison")
        }
        PropertyChanges {
            target: keywordList
            model: keyModel6
            anchors.verticalCenterOffset: 70
            anchors.horizontalCenterOffset: -200
            visible: true
        }
    }
    ]

    transitions: [
        Transition {
            from: ""
            to: "Zero"
            NumberAnimation { target: logo; properties: "x"; duration: 200 }
        },
        Transition {
            from: "First"
            to: "second"
            ColorAnimation { target: button; duration: 100}
        },
        Transition {
            from: "First"
            to: "second"
            ColorAnimation { target: button; duration: 100}
        },
        Transition {
            from: "First"
            to: "second"
            ColorAnimation { target: button; duration: 100}
        }
    ]
}

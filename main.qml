import QtQuick 2.5
import QtQuick.Window 2.2
import QtQml.Models 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
//import Qt.labs.presentation 1.0
import QtGraphicalEffects 1.0


ApplicationWindow {
    id: app
    visibility: Window.FullScreen;
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("CR Campagne: Bienvenue dans les colonies!")
    signal currentItemChanged(int current)

    property alias current: view.currentIndex
    property alias offset: view.offset

    FontLoader { id: title; source: "qrc:/fonts/Present-lt-black-condensed.ttf" }
    FontLoader { id: localFont; source: "qrc:/fonts/KUDASAI_.TTF" }

    Image {
        id: bgimg1
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: "qrc:/images/fond/imageL5r-003.tif.png"
    }

    onCurrentChanged: {
        topcornerimage.visible = false
        bottomcornerimage.visible = false
        if(current==0)
            bgimg.source = "qrc:/images/Second_City_2.jpg"
        else if(current % 3 == 0)
        {
            bgimg.source = "qrc:/images/fond/imageL5r-003.tif.png";
            bottomcornerimage.visible = true
        }
        else if(current % 3 == 1)
        {
            bgimg.source = "qrc:/images/fond/imageL5r-017.tif.png";
        }
        else if(current % 3 == 2)
        {
            bgimg.source = "qrc:/images/fond/imageL5r-631.tif.png";
            topcornerimage.visible = true
        }


    }
    ListView {
        id: listView1
        x: Screen.width*0.02
        y: Screen.height*0.3
        width: Screen.width/2
        height: Screen.height*0.2
        focus: false
        delegate: Item {
            width: Screen.width/2
            height: listView1.height/listView1.count
                Text {
                    color: view.currentIndex>=index ? "black" : "gray"
                    text: name
                    font.pointSize: Screen.height/40
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                    font.family: title.name
                }
        }
        visible: true//view.currentIndex>0 ? true : false

        model: ListModel {
            ListElement {
                name: "Introduction"
                index:1
            }
            ListElement {
                name: "Inspirations"
                index:3
            }
            ListElement {
                name: "Les personnages"//système de build, code spécifique par OS.
                index:4
            }
            ListElement {
                name: "Les intrigues"//système de build, code spécifique par OS.
                index:9
            }
            ListElement {
                name: "Fin"//système de build, code spécifique par OS.
                index:10
            }
        }
    }


    onOffsetChanged: {
        if(Math.floor(offset)===offset)
        {
             appear.start()
        }
    }

    NumberAnimation {
        id: appear
        duration: 1000
        property: "opacity"
        from: 0
        to: 0.3
        target: bgimg
        easing.type: Easing.InOutQuad
    }
    Image {
        id: bgimg
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: "qrc:/images/Second_City_2.jpg"
        verticalAlignment: Image.AlignBottom
    }
    FastBlur {
        anchors.fill: bgimg
        source: bgimg
        radius: current===0?32:0
        opacity: bgimg.opacity
    }
    Image {
        id: topcornerimage
        anchors.top: parent.top
        anchors.right: parent.right
        verticalAlignment: Image.AlignTop
        horizontalAlignment: Image.AlignRight
        source: "qrc:/images/fond/imageL5r-364.tif.png";
        opacity: bgimg.opacity
        visible: false
    }
    Image {
        id: bottomcornerimage
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        verticalAlignment: Image.AlignBottom
        horizontalAlignment: Image.AlignLeft
        source: "qrc:/images/fond/imageL5r-398.tif.png";
        opacity: bgimg.opacity
        visible: false
    }
    ListModel {
            id: panelModel
            ListElement {
                name: "Intro"
                path: "00_intro.qml"
                time: 1
                next: "Premier Scénario"
            }
            ListElement {
                name: "Intro"
                path: "01_definitions.qml"
                time: 1
                next: "Premier Scénario"
            }
            ListElement {
                name: "Premier Scénario"
                path: "02_premierscenario.qml"
                time: 1
                next: "Début de la campagne"
            }
            ListElement {
                name: "Début de la campagne"
                path: "03_debutcampagne.qml"
                time: 1
                next: "Sur le trajet"
            }
            ListElement {
                name: "Sur le trajet"
                path: "04_trajet.qml"
                time: 1
                next: "Fin de la campagne Officielle"
            }

            ListElement {
                name: "Fin de la campagne Officielle"
                path: "05_fincampagne.qml"
                time: 1
                next: "Campagne Maison"
            }
            ListElement {
                name: "Campagne Maison"
                path: "06_campagnemaison.qml"
                time: 1
                next: ""
            }
        }

    ListModel {
            id: cmpModel
            ListElement {
                name: "Intro"
                path: "000_intro.qml"
                time: 1
                next: "Inspiration"
            }
            ListElement {
                name: "Mes inspirations"
                path: "001_inspiration.qml"
                time: 1
                next: "Résumé"
            }
            ListElement {
                name: "Résumé"
                path: "002_chronologie.qml"
                time: 1
                next: "Akodo Eiichi"
            }
            ListElement {
                name: "Akodo Eiichi"
                path: "005_akodo.qml"
                time: 1
                next: "Bayushi Takoyashi"
            }

            ListElement {
                name: "Bayushi Takoyashi"
                path: "006_bayushi.qml"
                time: 1
                next: "Shinjo Zhia"
            }
            ListElement {
                name: "Shinjo Zhia"
                path: "007_shinjo.qml"
                time: 1
                next: "Tsuruchi Nayu"
            }
            ListElement {
                name: "Tsuruchi Nayu"
                path: "008_tsuruchi.qml"
                time: 1
                next: "Arc Narratifs"
            }
            ListElement {
                name: "Les arcs narratifs"
                path: "003_arcs.qml"
                time: 1
                next: "L’indépendance"
            }
            ListElement {
                name: "L’indépendance"
                path: "004_independance.qml"
                time: 1
                next: "Akodo Eiichi"
            }
        }
    //Component.onCompleted: app.currentItemChanged(0)
    onVisibleChanged: trigger.start()

    //property string page: "pages"
    property string page: "pages2"

    PathView {
        id: view
        anchors.fill: parent
        model: cmpModel
        highlightRangeMode:PathView.StrictlyEnforceRange
        snapMode: PathView.SnapOneItem
        delegate:  Loader {
            //property variant model: model
             source: page+"/"+path

        }
        interactive: false
        Timer {
            id: trigger
            interval: 10
            repeat: false
            onTriggered: app.currentItemChanged(view.currentIndex)
        }

        onOffsetChanged: {
            if(Math.floor(offset)===offset)
            {
                //app.currentItemChanged(offset)
                trigger.start()
            }
        }
        focus: true
        Keys.onLeftPressed:
        {
                bgimg.opacity = 0;
                decrementCurrentIndex()
              //  bgimg.opacity = 1;
        }
        Keys.onRightPressed:
        {
                bgimg.opacity = 0;
                incrementCurrentIndex()
              //  bgimg.opacity = 1;
        }
        Keys.onEscapePressed: {
            if(app.visibility === Window.FullScreen)
            {
                app.visibility = Window.Windowed;
            }
            else
            {
                app.visibility = Window.FullScreen;
            }
        }

        path: Path {
            startX: view.width/2
            startY: view.height/2
            PathLine { x: view.width/2+view.width*cmpModel.count; y: view.height/2 }
        }
    }


    Text {
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.bottomMargin: 50
        text: (view.currentIndex+1)+"/"+view.count
        visible: view.currentIndex>0 ? true : false
    }
    Text {
        anchors.top: parent.top
        anchors.right: parent.right
        text: cmpModel.get(view.currentIndex).next+">"
        visible: cmpModel.get(view.currentIndex).next !== "" ? true : false
    }
}

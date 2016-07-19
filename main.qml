import QtQuick 2.5
import QtQuick.Window 2.2
import QtQml.Models 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: app
    //visibility: Window.FullScreen;
    width: ScreenW
    height: ScreenH
    visible: true
    title: qsTr("CR Campagne: Bienvenue dans les colonies!")
    signal currentItemChanged(int current)


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
    //Component.onCompleted: app.currentItemChanged(0)
    onVisibleChanged: trigger.start()
    Rectangle {
        id: rect
        anchors.fill: parent
        color: "#E3E3E3"
    }

    PathView {
        id: view
        anchors.fill: parent
        model: panelModel
        highlightRangeMode:PathView.StrictlyEnforceRange
        snapMode: PathView.SnapOneItem
        delegate:  Loader {
            //property variant model: model
             source: "pages/"+path

        }

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
        Keys.onPressed: {
            if( event.key === Qt.Key_PageUp )
            {
                decrementCurrentIndex()
            }
            else if ( event.key === Qt.Key_PageDown )
            {
                incrementCurrentIndex()
            }
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
            PathLine { x: view.width/2+view.width*panelModel.count; y: view.height/2 }
        }
    }
    ListView {
        id: listView1
        x: ScreenW*0.02
        y: ScreenH*0.3
        width: ScreenW/2
        height: ScreenH*0.2
        delegate: Item {
            width: ScreenW/2
            height: listView1.height/listView1.count
                Text {
                    color: view.currentIndex>=index ? "black" : "gray"
                    text: name
                    font.pointSize: ScreenH/48
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true

                }
        }
        visible: true//view.currentIndex>0 ? true : false

        model: ListModel {
            ListElement {
                name: "Concepts"
                index:1
            }
            ListElement {
                name: "Chroniques"
                index:6
            }
            ListElement {
                name: "Logiciel"//système de build, code spécifique par OS.
                index:9
            }
            ListElement {
                name: "Bilan"
                index:15
            }
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
        text: panelModel.get(view.currentIndex).next+">"
    }
}
/*
        ListModel {
                    id: myModel
                    ListElement {
                        name: "Doji Taehime"
                        image: "images/doji_taehime.jpg"
                        begin: 1
                        end: 2
                    }
                    ListElement {
                        name: "Mirumoto Sastume"
                        image: "images/Mirumoto.jpg"
                        begin: 3
                        end: 3
                    }
                    ListElement {
                        name: "Hida Shigehiro"
                        image: "images/hida.jpg"
                        begin: 1
                        end: 3
                    }
                    ListElement {
                        name: "Bayushi Takayoshi"
                        image: "images/Bayushi_Takayoshi.png"
                        begin: 4
                        end: 10
                    }
                    ListElement {
                        name: "Tsuruchi Nayu"
                        image: "images/tsuruchi.jpg"
                        begin: 4
                        end: 6
                    }
                    ListElement {
                        name: "Shinjo Zhia"
                        image: "images/Zhia.jpg"
                        begin: 1
                        end:10
                    }
                    ListElement {
                        name: "Yogo Unmei"
                        image: "images/YogoUnmei.png"
                        begin: 1
                        end:2
                    }
                    ListElement {
                        name: "Isawa Haneki"
                        image: "images/Haneki.jpg"
                        begin: 1
                        end:2
                    }
                    ListElement {
                        name: "Akodo Eiichi"
                        image: "images/Akodo_Eiichi.jpg"
                        begin: 4
                        end: 10
                    }
                }

            DelegateModel {
                id: firstModel
                delegate: displayItem
                model: myModel
                property int stateId: form.stateId
                groups: [
                    DelegateModelGroup {
                        includeByDefault: false
                        name: "shown"
                    }
                ]
                filterOnGroup: "shown"
                onStateIdChanged: {
                    var countValue = items.count
                    var rowCount = myModel.count;
                    items.removeGroups(0,countValue,"shown");
                    items.remove(0,countValue)
                    for( var i = 0;i < rowCount;i++ )
                    {
                        var entry = myModel.get(i);
                        if((entry.begin <= stateId) && (entry.end >= stateId))
                        {
                            items.insert(entry, "shown");
                        }
                    }
                }
    }
  }
}
*/

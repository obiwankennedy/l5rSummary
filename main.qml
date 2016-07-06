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
        visible: false//view.currentIndex>0 ? true : false

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
Window {
    visible: true
    width: 1200
    height: 920
    //visibility: "FullScreen"
    MainForm {
        id: form
        onStateChanged: {
            console.log(state);
        }
        anchors.fill: parent
        Keys.onPressed: {
            if (event.key == Qt.Key_Left)
            {
                stateId=stateId-1;
                event.accepted = true;
            }
            else if(event.key == Qt.Key_Right)
            {
                stateId=stateId+1;
                event.accepted = true;
            }
        }
        Component {
                    id: displayItem
                    Item {
                          x: 0
                          width: form.widthCharacter
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
                                  color: "#ffffff"
                                  font.pixelSize: 20
                                  horizontalAlignment: Text.AlignHCenter
                              }     
                      }
                }
        ListModel {
            id: keyModel0
            ListElement {
                word: "Contexte de la vidéo:"
                desc: ""
            }
            ListElement {
                word: "Rolisteam"
                desc: ""
            }
            ListElement {
                word: "L5R"
                desc: ""
               // img: "images/Rokugan_4th_Edition.jpg"
            }
            ListElement {
                word: "Les Clans"
                desc: ""
            }
            ListElement {
                word: "Timeline"
                desc: ""
            }
            ListElement {
                word: "Chiffres"
                desc: "Novembre 2013,11 joueurs"
            }
        }
        ListModel {
            id: keyModel1
            ListElement {
                word: "Dans la peau d'un bakemono"
                desc: ""
            }
            ListElement {
                word: "Terriroire Crabe"
                desc: ""
            }
            ListElement {
                word: "Echec"
                desc: ""
            }
            ListElement {
                word: "Miya Akamu"
                desc: ""
            }
        }
        ListModel {//Campagne officielle
            id: keyModel2
            ListElement {
                word: "Campagne Second City"
                desc: ""
            }
            ListElement {
                word: "Gain d'XP pour le MJ"
                desc: ""
            }
            ListElement {
                word: "Lutte Lion vs Grue"
                desc: ""
            }
            ListElement {
                word: "Le gros méchant"
                desc: ""
            }
            ListElement {
                word: "Avantages"
                desc: " Facile, Enquete, Variée, introduction Jeu/Settings"
            }
            ListElement {
                word: "Désavantages"
                desc: " Linéaire, Perte d'intéret du Mj, difficile pour joueur Expérimenté"
            }
        }

        ListModel {
            id: keyModel4
            ListElement {
                word: "Otomo Akio"
                desc: "Courtisan, Collection d'art"
                img:"images/OtomoAkio.png"
            }
            ListElement {
                word: "Ide Sadeo"
                desc: "Marchant Victime"
                img:""
            }
            ListElement {
                word: "Kitsune Hideko"
                desc: "Village et lutte contre les Araignées."
                img: "images/KitsuneHideko.png"
            }
            ListElement {
                word: "Hida Shigehero"
                desc: "Départ"
                img:""
            }
            ListElement {
                word: "Akodo Eiichi & Bayushi Takayoshi"
                desc: "Arrivée"
                img:""
            }
            ListElement {
                word: "Sosuke"
                desc: "L'amateur/Auteur de théatre"
                img:""
            }
            ListElement {
                word: "Mort du méchant"
                desc: "par Tsuruchi Nayu"
                img: "images/tsuruchi.jpg"
            }
        }
        ListModel {
            id: keyModel6
            ListElement {
                word: "Les lions perdus"
                desc: "Une enquête un peu trop poussée"
                img: ""
            }
            ListElement {
                word: "La magistrature"
                desc: "Organisation et politique"
                img:""
            }
            ListElement {
                word: "La piraterie"
                desc: "La chasse est ouverte"
                img:""
            }
            ListElement {
                word: "Le domaine de Shinjo Zhia"
                desc: "Arrivée"
                img:""
            }
        }
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

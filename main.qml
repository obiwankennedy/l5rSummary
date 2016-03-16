import QtQuick 2.4
import QtQuick.Window 2.2
import QtQml.Models 2.2


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
        ListModel {
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
            id: keyModel3
            ListElement {
                word: "Enquete, voyage"
                desc: ""
            }
            ListElement {
                word: "Otomo Akio"
                desc: "Courtisan, "
                img:"images/OtomoAkio.png"
            }
            ListElement {
                word: "Ide Sadeo"
                desc: ""
                img:""
            }
        }
        ListModel {
            id: keyModel4
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
        }
        ListModel {
            id: keyModel5
            ListElement {
                word: "Mort du méchant"
                desc: "Tsuruchi Nayu"
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
        }
        ListModel {
            id: keyModel6
            ListElement {
                word: "Les lions perdus"
                desc: "Une enquête un peu trop poussé"
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

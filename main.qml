import QtQuick 2.4
import QtQuick.Window 2.2
import QtQml.Models 2.2


Window {
    visible: true
    visibility: "FullScreen"
    MainForm {
        id: form
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
                          height: 100
                          Column {
                              id: row1
                              Image {
                                  width: parent.width
                                  height: 100
                                  source: image
                                  fillMode: Image.PreserveAspectFit
                              }
                              Text {
                                  text: name
                                  font.bold: true
                              }
                              spacing: 10
                          }
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
                        begin: 2
                        end: 5
                    }
                    ListElement {
                        name: "Hida Shigehiro"
                        image: "images/hida.jpg"
                        begin: 1
                        end: 5
                    }
                    ListElement {
                        name: "Bayushi Takayoshi"
                        image: "images/Bayushi_Takayoshi.png"
                        begin: 3
                        end: 10
                    }
                    ListElement {
                        name: "Tsuruchi Nayu"
                        image: "images/tsuruchi.jpg"
                        begin: 3
                        end: 10
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
                        begin: 3
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
                    var rowCount = myModel.count;
                    items.remove(0,rowCount);
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

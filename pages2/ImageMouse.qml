import QtQuick 2.0
Item {
    id: root
    property int side : 200
    property alias text : name.text
    property alias source : image.source
    Image {
        id: image
        height: parent.side
        width: parent.side
        fillMode: Image.PreserveAspectFit
        verticalAlignment :  Image.AlignTop
        horizontalAlignment: Image.AlignLeft
        Behavior on scale {
            NumberAnimation {
                duration: 500
            }
        }

        MouseArea {
            anchors.fill: parent
            property int previousX : 0
            property int previousY : 0
            onPressed: {
                previousX = mouse.x
                previousY = mouse.y
                parent.focus = true
                root.scale = 1.5
            }
            onReleased: {
                root.scale = 1.0
            }

            onPositionChanged: {
                root.x += mouse.x-previousX
                root.y += mouse.y-previousY
                console.log(text+" X:"+root.x+" Y:"+root.y)

            }
        }
    }
    Rectangle {
        id: rect
        color: "black"
        height: 20
        width: Math.max(name.implicitWidth,image.paintedWidth)
        x:0
        y: image.paintedHeight

        Text {
            id: name
            anchors.fill: parent
            color: "white"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }
    }

}

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
        MouseArea {
            anchors.fill: parent
            property int previousX : 0
            property int previousY : 0
            onPressed: {
                previousX = mouse.x
                previousY = mouse.y
                parent.focus = true
            }
            onPositionChanged: {
                root.x += mouse.x-previousX
                root.y += mouse.y-previousY
            }
        }
    }
    Rectangle {
        id: rect
        color: "black"
        height: 20
        width: image.paintedWidth
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

import QtQuick 2.4

MenuPage {
    id: breath1Page
    property alias sprite: sprite
    property alias breathIn: breathIn
    property alias breathOut: breathOut
    title: qsTrId("breath1")

    Description {
        text: qsTrId("breathe-info")
        anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
    }

    Description {
        id: breathIn
        text: qsTrId("breathe-in")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Description {
        id: breathOut
        text: qsTrId("breathe-out")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        opacity: 0.0
    }

    Rectangle {
        id: sprite
        color: "#e391ff"
        opacity: 0.5
        width: (parent.width < parent.height) ? parent.width - 100 : parent.height - 100
        height: (parent.width < parent.height) ? parent.width - 100 : parent.height - 100
        radius: width * 0.5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
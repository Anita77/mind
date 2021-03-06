import QtQuick 2.4
import QtGraphicalEffects 1.0
import ".."

MenuPage {
    id: mathPage
    property alias exercise: exercise
    property alias submitButton: submitButton
    property alias answer: answer
    property alias anim: anim
    title: qsTrId("math")

    Image {
            id: anim
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            opacity: 0.0

    }

    Description{
        id: exercise
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 50

        MenuButton {
            text: qsTrId("submit")
            anchors.horizontalCenter: parent.horizontalCenter
            id: submitButton
            anchors.top: parent.top
            anchors.topMargin: exercise.paintedHeight+50
            width: parent.width/2
        }

        MenuTextInput {
            id: answer
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: submitButton.bottom
            anchors.bottomMargin: 0
            width: parent.width/2
            inputMethodHints: Qt.ImhDigitsOnly
        }
    }
}


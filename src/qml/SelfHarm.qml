import QtQuick 2.4

SelfHarmForm {
    breath1Button.onClicked: stackView.push("Breath1.qml")
    breath2Button.onClicked: stackView.push("Breath2.qml")
    tipsButton.onClicked: stackView.push("SelfHarmTips.qml")
}
import QtQuick 2.4
import QtMultimedia 5.12

import io.qt.UserDataProvider 1.0

PlayerForm {
    property var durationTime: ""

    function msToTime(ms)
    {
        var seconds = ms/1000
        var secondsRemainder = parseInt(seconds%60)
        var minutes = parseInt(seconds/60)
        return minutes.toString()+":"+secondsRemainder.toString().padStart(2,0)
    }

    playButton.onClicked: {
        if (mediaPlayer.playbackState === MediaPlayer.PlayingState)
            mediaPlayer.pause();
        else
            mediaPlayer.play();
    }

    mediaPlayer.onPaused: {bckg.source = "qrc:/images/play.svg"}
    mediaPlayer.onPlaying: {bckg.source = "qrc:/images/pause.svg"}
    playButton.onPressed: {bckg.opacity = 1.0}
    playButton.onPressedChanged: {bckg.opacity = 0.7}
    timeSlider.onPressedChanged: {mediaPlayer.seek(timeSlider.value*mediaPlayer.duration)}
    timeSlider.onValueChanged: {timeText.text = msToTime(timeSlider.value*mediaPlayer.duration)+"/"+durationTime}

    Connections{
        target: mediaPlayer
        onStatusChanged: {
            if(mediaPlayer.status === MediaPlayer.Loaded)
                durationTime = msToTime(mediaPlayer.duration)
        }
    }

    Timer {
            interval: 500; running: true; repeat: true
            onTriggered: {
                if(!timeSlider.pressed)
                    timeSlider.value = mediaPlayer.position/mediaPlayer.duration}
        }


    UserDataProvider {
        id: dataProvider
    }
    warning.visible: (dataProvider.loadLanguage() === "SK")
}

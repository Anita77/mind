QT += quick svg gui core
CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/cpp/main.cpp \
    src/cpp/mathengine.cpp \
    src/cpp/translator.cpp \
    src/cpp/userdataprovider.cpp

HEADERS += \
    src/cpp/mathengine.h \
    src/cpp/translator.h \
    src/cpp/userdataprovider.h

RESOURCES += qml.qrc

TRANSLATIONS = translation/EN.ts translation/CZ.ts translation/SK.ts translation/PL.ts translation/FR.ts translation/IT.ts translation/ES.ts translation/RU.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values-b+es/strings.xml \
    android/res/values-b+fr/strings.xml \
    android/res/values-b+it/strings.xml \
    android/res/values-b+pl/strings.xml \
    android/res/values-b+sk/strings.xml \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat \
    android/AndroidManifest.xml \
    android/res/values/strings.xml \
    android/res/values-b+cs/strings.xml \
    android/res/drawable-hdpi/icon.png \
    android/res/drawable-ldpi/icon.png \
    android/res/drawable-mdpi/icon.png \
    src/qml/qmldir \ \ \
    translation/IT.ts


contains(ANDROID_TARGET_ARCH,arm64-v8a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
}

import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1
import QtQuick.Dialogs 1.2

Page {
    id: root
    property var applicationWindow
    property var globalSettings

    property string errorText: "An error blah blah"

    readonly property bool inPortrait: width < height
    signal requestNewPage(string url, var props)
    signal refreshPageContent

    signal error(string errorMessage)

    property bool loading: false

    onInPortraitChanged: {
        console.log("BasePage.qml: orientation changed ",
                    inPortrait ? "portrait" : "landscape")
    }

    onStateChanged: {
        console.debug("BasePage.qml: State changed to ", state)
    }

    onError: {
        console.error("BasePage.qml: Error = ", errorMessage)
        errorText = errorMessage
        loading = false
    }
}

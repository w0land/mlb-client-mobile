import QtQuick 2.0

import "rest_controller.js" as Rest
import "FileIO.js" as File

QtObject {

    property int __delay: 1 * 1000

    signal error(string errorMessage)

    function refresh(callback) {
        var timer = new Rest.Timer(standings)
        timer.interval = __delay

        timer.repeat = false

        timer.triggered.connect(function () {
            File.readFile("articlesList.json", function (data) {
                callback(data)
            })
        })

        timer.start()
    }

    function fetchArticle(uid, callback) {
        var artId = "article" + uid + ".json"
        var timer = new Rest.Timer(standings)
        timer.interval = __delay

        timer.repeat = false

        timer.triggered.connect(function () {
            File.readFile(artId, function (data) {
                callback(data)
            })
        })

        timer.start()
    }
}

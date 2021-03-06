import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1

import ".."

BasePage {
    id: root
    width: 700
    height: 700 * 16 / 9

    property int numberOfColumns: inPortrait ? 1 : 3

    ListModel {
        id: galleryModel
        ListElement {
            picture: "http://www.miastobasketu.com//images/galeria_albumy/photo_8153601_2018.03.24%20MLB%20(41).jpg"
            title: "MLB SEZON XXII III TYDZIEŃ (D.Reszke)"
            date: "23-03-2018"
        }
        ListElement {
            picture: "http://www.miastobasketu.com//images/galeria_albumy/photo_8153601_2018.03.24%20MLB%20(41).jpg"
            title: "MLB SEZON XXII III TYDZIEŃ (D.Reszke)"
            date: "23-03-2018"
        }
        ListElement {
            picture: "http://www.miastobasketu.com//images/galeria_albumy/photo_8153601_2018.03.24%20MLB%20(41).jpg"
            title: "MLB SEZON XXII III TYDZIEŃ (D.Reszke)"
            date: "23-03-2018"
        }
        ListElement {
            picture: "http://www.miastobasketu.com//images/galeria_albumy/photo_8153601_2018.03.24%20MLB%20(41).jpg"
            title: "MLB SEZON XXII III TYDZIEŃ (D.Reszke)"
            date: "23-03-2018"
        }
        ListElement {
            picture: "http://www.miastobasketu.com//images/galeria_albumy/photo_8153601_2018.03.24%20MLB%20(41).jpg"
            title: "MLB SEZON XXII III TYDZIEŃ (D.Reszke)"
            date: "23-03-2018"
        }
    }

    onRefreshPageContent: {
        finishRefreshing()
    }

    GridView {
        id: list
        anchors.fill: parent
        anchors.margins: 20

        cellHeight: width / numberOfColumns
        cellWidth: cellHeight

        model: galleryModel

        delegate: Item {
            height: list.cellHeight
            width: list.cellWidth
            GalleryPageDelegate {
                height: parent.height - 30
                width: parent.width - 30

                anchors.centerIn: parent

                url: picture

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        requestNewPage("FullGalleryPage.qml", {

                                       })
                    }
                }
            }
        }
    }
}

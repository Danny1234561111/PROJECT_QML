
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 480
    height: 720
    color: "white"

    Column {
        anchors.fill: parent

        SwipeView {
            background: Rectangle { color: "black" }
            id: view
            currentIndex: 1
            width: parent.width
            height: parent.height * 0.4

            Item {
                id: firstPage
                Image {
                    source: "resources/1.jpg"
                    anchors.centerIn: parent
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                }
            }
            Item {
                id: secondPage
                Image {
                    source: "resources/2.jpg"
                    anchors.centerIn: parent
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                }
            }
            Item {
                id: thirdPage
                Image {
                    source: "resources/3.jpg"
                    anchors.centerIn: parent
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        PageIndicator {
            id: indicator
            count: view.count
            anchors.top: view.bottom
            currentIndex: view.currentIndex
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: indicator.bottom
            width: 300
            height: 300
            color: "white"
            radius: 15
            border.color: "lightgray"
            border.width: 1

            Column {
                anchors.fill: parent
                spacing: 10
                padding: 10

                 Row {
                    spacing: 10
                    anchors.horizontalCenter: parent.horizontalCenter

                    Text {
                        text: "Название Дивана"
                        font.pointSize: 20
                        font.bold: true
                    }
                }
            }
        }
         // Размещение row2 по низу родительского элемента
        Row {
            id: row2
            anchors.bottom: view.bottom
            anchors.bottomMargin: 20// Измененный якорь
            anchors.horizontalCenter: parent.horizontalCenter // Центрируем по горизонтали

             Button {
                font.pixelSize: 20
                 width: 150
                 text: "Сделать заказ"

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        currentPage = "CatalogPage.qml";
                        loadPage();
                    }
                }

                background: Rectangle {
                     color: mouseArea.containsMouse ? "#964B00" : "#CD853F"
                    border.width: 1
                   border.color: "#FFF8DC"
                   radius: 20
                }
            }
               Button {
                   font.pixelSize: 20
                    width: 150
                    text: "В корзину"

                    MouseArea {
                    id: mouseArea2
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        currentPage = "CartPage.qml";
                        loadPage();
                    }
                }
                background: Rectangle {
                    color: mouseArea2.containsMouse ? "#FFFFFF" : "#FFF8DC"
                    border.width: 1
                    border.color: "#CD853F"
                    radius: 20
                 }
               }
        }
    }
}

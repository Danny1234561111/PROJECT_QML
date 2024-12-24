import Felgo
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    color:"#fcfcee"
    visible: true
    width: 400
    height: 600

    Rectangle {
        anchors.horizontalCenter:parent.horizontalCenter
        color: "#f9f9f9"
        anchors.fill: parent

        ColumnLayout {
            anchors.horizontalCenter:parent.horizontalCenter
            anchors.fill: parent
            spacing: 5

            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                text: "Наши Контакты"
                font.pixelSize: 32
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                color: "#333"
            }

            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                text: "Телефоны"
                font.pixelSize: 18
                font.bold: true
                color: "#555"
            }

            ColumnLayout {
                anchors.horizontalCenter:parent.horizontalCenter
                spacing: 5

                RowLayout {
                    spacing: 10
                    Text { text: "+7 (123) 456-78-90"; font.pixelSize: 24; color: "#444" }
                }

                RowLayout {
                    spacing: 10
                    Text { text: "+7 (777) 777-77-77"; font.pixelSize: 24; color: "#444" }
                }
            }

            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                text: "Электронная почта"
                font.pixelSize: 18
                font.bold: true
                color: "#555"
            }

            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                text: "info@example.com"
                font.pixelSize: 24
                color: "#444"
            }

            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                text: "Адрес"
                font.pixelSize: 18
                font.bold: true
                color: "#555"
            }

            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                text: "г. Иркутск Дом Домашний"
                font.pixelSize: 24
                color: "#444"
            }

            Text {
                anchors.horizontalCenter:parent.horizontalCenter
                text: "Социальные сети"
                font.pixelSize: 18
                font.bold: true
                color: "#555"
            }

            ColumnLayout {
                anchors.horizontalCenter:parent.horizontalCenter
                spacing: 5

                RowLayout {
                    spacing: 5

                    Item {
                                width: 50
                                height: 50

                                Image {
                                    source: "resources/VK.png"
                                    anchors.fill: parent
                                    fillMode: Image.Stretch
                                }
                            }
                    Text { text: "@Danny"; font.pixelSize: 24; color: "#444" }
                }

                RowLayout {
                    spacing: 5

                    Item {
                                width: 50
                                height: 50

                                Image {
                                    source: "resources/telegram.png"
                                    anchors.fill: parent
                                    fillMode: Image.Stretch
                                }
                            }
                    Text { text: "@Demid228"; font.pixelSize: 24; color: "#444" }
                }

                RowLayout {
                    spacing: 5

                    Item {
                                width: 50
                                height: 50

                                Image {
                                    source: "resources/twitter.png"
                                    anchors.fill: parent
                                    fillMode: Image.Stretch
                                }
                            }
                    Text { text: "@notWork"; font.pixelSize: 24; color: "#444" }
                }
            }
        }
    }
}



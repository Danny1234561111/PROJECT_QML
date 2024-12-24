import QtQuick 2.15
import Felgo

Rectangle {
    property string name: ""
    property string cost: ""
    property string ssource: ""
    property string heart: "♡"  // Хранит текущее состояние сердечка
    anchors.horizontalCenter: parent.horizontalCenter
    width: 300
    height: 300
    color: "white"
    radius: 15
    border.color: "lightgray"
    border.width: 1

    Column {
        anchors.fill: parent
        spacing: 20
        padding: 10

        Row {
            id:t
            spacing: 20
            width:parent.width

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: name
                font.pointSize: 20
                font.bold: true
            }
            Rectangle {
                anchors.right: parent.right
                anchors.rightMargin: -10
                anchors.top: parent.top
                width:40
                height:40
                color:"#FFAADD"

                Text {
                    anchors.centerIn: parent
                    text: "%"
                    font.pointSize: 20
                    font.bold: true
                    color: "black"  // Цвет текста, который контрастирует с заливкой
                }
            }
        }
        Image {
            id: im
            anchors.top:parent.top
            anchors.topMargin:55
            anchors.horizontalCenter: parent.horizontalCenter
            source: ssource
            height: parent.height*0.4
            fillMode: Image.PreserveAspectFit
        }
        Text{
            id:sum
            text:cost
            anchors.top:im.bottom
            anchors.topMargin:15
            anchors.left:parent.left
            anchors.leftMargin: parent.width/1.5
            font.pixelSize: 20
        }
        Row {
            id: row2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20  // Измененный якорь
            anchors.horizontalCenter: parent.horizontalCenter  // Центрируем по горизонтали
            spacing: parent.width * 0.2

            Button {
                font.pixelSize: 20
                width: 150
                height: 50
                text: "В корзину"

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        addElement(name + (inCourzin.length + 1)); // Добавляем элемент в корзину
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
                id: heartButton  // Изменяем имя кнопки на более информативное
                font.pixelSize: 50
                height: 50
                width: 50
                text: heart  // Используем свойство heart для отображаемого текста

                MouseArea {
                    id: mouseArea2
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        heart = heart === "♡" ? "♥" : "♡";  // Переключение состояния
                        heartButton.text = heart;  // Обновляем текст кнопки
                        addElement(name + (inFavorite.length + 1)); // Добавляем элемент в избранное
                    }
                }

                background: Rectangle {
                    border.width: 1
                    border.color: "#FFF8DC"
                    radius: 20
                }
            }
        }
    }
}






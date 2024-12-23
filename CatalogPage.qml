import Felgo
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 480
    height: 720
    color: "white"

    Column {
        anchors.fill: parent
        spacing: 20  // Задаем отступы между элементами
        anchors.topMargin: 20  // Отступ сверху для всей колонки

        Text {
            text: response ? "Поиск по Запросу - " + response : "Каталог"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 24
        }

        Buy {
            id: buy1
            ssource: "resources/1.jpg"
            cost: "$99.99"
            name: "Диван-Кровать"
        }

        Buy {
            ssource: "resources/2.jpg"
            cost: "$59.99"
            name: "Кресло-Мешок"
        }
    }
}

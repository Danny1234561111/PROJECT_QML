import Felgo
import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    visible: true
    width: 480
    height: 720
    title: "Компания ДемиДаниил"

    Rectangle {
        anchors.fill: parent
        color: "#F9F9F9"  // Фоновый цвет

        Column {
            anchors.fill: parent
            spacing: 20
            anchors.margins: 20

            Text {
                text: "О компании ДемИданиил"
                font.pixelSize: 24
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                source: "resources/3.png"  // Путь к логотипу компании
                width: 200
                height: 200
                anchors.horizontalCenter: parent.horizontalCenter
                smooth: true
            }

            Text {
                text: "ДемиДаниил - ваш надежный поставщик качественной мебели. Мы предлагаем широкий выбор мебели для дома и офиса, включая диваны, кресла, столы и стулья. Наша продукция подходит для любого интерьера и стиля. Все изделия выполнены из высококачественных материалов и проходят строгий контроль качества."
                wrapMode: Text.Wrap
                font.pixelSize: 14
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width * 0.9
            }

            Button {
                text: "Просмотреть ассортимент"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    // Действие по нажатию кнопки (например, переход на страницу с ассортиментом)
                    console.log("Переход к ассортименту мебели")
                }
            }

            Button {
                text: "Связаться с нами"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    // Действие по нажатию кнопки (например, открытие формы обратной связи)
                    console.log("Открыть форму контактов")
                }
            }
        }
    }
}

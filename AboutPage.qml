import Felgo
import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    visible: true
    width: 480
    height: 720
    title: "Компания ДемиДаниил"

    Rectangle {
        color:"#fcfcee"
        anchors.fill: parent

        Column {
            anchors.fill: parent
            spacing: 20
            anchors.margins: 20

            Text {
                text: "О компании ДемиДаниил"
                font.pixelSize: 24
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Image {
                fillMode: Image.PreserveAspectFit
                source: "resources/4.jpg"  // Путь к логотипу компании
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
                    currentPage = "CatalogPage.qml";
                    loadPage();
                }
            }

            Button {
                text: "Связаться с нами"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    // Действие по нажатию кнопки (например, открытие формы обратной связи)
                    console.log("Открыть форму контактов")
                    currentPage = "ContactPage.qml";
                    loadPage();
                }
            }
        }
    }
}

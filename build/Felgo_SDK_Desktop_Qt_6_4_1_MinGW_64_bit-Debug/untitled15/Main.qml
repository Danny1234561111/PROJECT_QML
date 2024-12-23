import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    width: 480
    height: 720
    visible: true

    // Переменная для отслеживания состояния меню
    property bool menuVisible: false
    property string currentPage: "HomePage.qml" // Переменная для отслеживания текущей страницы
    // Таймер для задержки
    Timer {
        id: closeTimer
        interval: 100 // Задержка в 0.1 секунды
        repeat: false
        // Обработка сигнала timeout
        onTriggered: {
            menuVisible = false; // Обновляем состояние видимости меню
            burgerButtonText.text = "☰"; // Меняем текст кнопки обратно на бургер
        }
    }

    // Заголовок с кнопкой "бургер" и полем ввода
    ToolBar {
        background: Rectangle { color: "#CD853F" }
        id: header
        height: 70
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width

        // Кнопка "бургер" или крестик
        Button {
            id: burgerButton
            anchors.verticalCenter: parent.verticalCenter
            height: parent.height
            width:100
            Text {
                anchors.centerIn: parent
                id: burgerButtonText
                color: "#FFF8DC"
                text: "☰" // Символ "бургер"
                font.pixelSize: 40
            }

            background: Rectangle { color: "#CD853F" }

            onClicked: {
                // Если меню открыто, запускаем таймер для его закрытия
                if (menuVisible) {
                    closeTimer.start(); // Запускаем таймер
                    menu.close(); // Закрываем меню
                } else {
                    menuVisible = true; // Устанавливаем состояние видимости меню
                    burgerButtonText.text = "✖"; // Меняем текст кнопки на крестик
                    menu.x = burgerButton.x; // Устанавливаем x-координату
                    menu.y = burgerButton.y + burgerButton.height; // Устанавливаем y-координату под кнопкой
                    menu.open(); // Открываем меню
                }
            }
        }

        Row {
                anchors.centerIn: parent
                width: (parent.width - burgerButton.width) * 0.8
                height: parent.height// Ширина 80% от родителя
                // Поле для ввода имени пользователя с иконкой лупы
                Row {
                    anchors.centerIn: parent
                    id:row1
                    height: parent.height
                    spacing: 5 // Расстояние между значком и полем ввода
                    width: parent.width // Ширина 100% от родителя
                    TextField {
                        id: usernameField
                        placeholderText: "Поиск"
                        font.pixelSize: 16
                        width: parent.width * 0.8 // Ширина 80% от родителя
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.topMargin: 15
                        leftPadding: 30
                        onAccepted: {
                            usernameField.text = ""; // Очищаем текстовое поле
                            currentPage = "CatalogPage.qml" // Замените на имя вашего файла
                            loadPage(); // Загружаем страницу
                            window.focus = false;
                        }
                    }
                    Text {
                        text: "🔍" // Символ лупы
                        font.pixelSize: 16
                        anchors.top: usernameField.top
                        anchors.topMargin: 8
                        anchors.left: usernameField.left
                        anchors.leftMargin: 5
                    }
                }
            }
    }

    // Выпадающее меню
    Menu {
        id: menu
        font.pixelSize: 20
        onClosed: {
            if (menuVisible) {
                closeTimer.start(); // Запускаем таймер, если меню закрыто
            }
            console.log("hello")
            burgerButtonText.text = "☰";
        }
        MenuKek{

            itemText: "Главная"
            pageSource: "HomePage.qml"
        }
        MenuKek{
            itemText: "Каталог"
            pageSource: "CatalogPage.qml"
            onClicked: { // Добавил обработку клика
               if (pageSource !== "")
                   menuItemClicked("CatalogPage.qml");
               }
        }
        MenuKek{
            itemText: "О нас"
            pageSource: "AboutPage.qml"
        }
        MenuKek{
            itemText: "Контакты"
            pageSource: "ContactPage.qml"
        }
        MenuKek{
            itemText: "Контакты"
            pageSource: "ProfilePage.qml"
        }
        MenuKek{
            itemText: "Избранное"
            pageSource: "FavoritesPage.qml"
        }
        MenuKek{
            itemText: "Корзина"
            pageSource: "CartPage.qml"
        }
    }

    Loader {
        id: pageLoader
            anchors.top: header.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            onLoaded: {
                console.log("Загружена страница: " + currentPage);
                if (pageLoader.item) {
                    pageLoader.item.visible = true; // Убедитесь, что элемент видим
                }
            }
    }
    Component.onCompleted: {
            loadPage()
    }
    function loadPage() {
        pageLoader.source = currentPage; // Устанавливаем источник для загрузки страницы
    }
}

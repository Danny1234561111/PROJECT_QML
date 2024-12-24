import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Rectangle {
    color:"#fcfcee"
    visible: true
    width: 400
    height: 300

    property var users: [] // Массив для хранения пользователей
    property string currentUser: "" // Текущий пользователь
    property string message: "" // Сообщение для отображения

    ColumnLayout {
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20
        spacing: 10

        // Поле для имени пользователя
        TextField {
            id: userNameField
            placeholderText: "Имя пользователя"
        }

        // Поле для пароля
        TextField {
            id: passwordField
            placeholderText: "Пароль"
            echoMode: TextInput.Password
        }

        // Кнопка регистрации
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Регистрация"
            width: 150
            height:40
            background: Rectangle{width:200;anchors.fill:parent;color: "#FFF8DC";border.width:1;border.color:"#CD853F"}
            onClicked: {
                var userExists = users.some(user => user.name === userNameField.text);
                if (userExists) {
                    message = "Пользователь уже существует!";
                } else {
                    users.push({ name: userNameField.text, password: passwordField.text });
                    message = "Регистрация успешна!";
                    userNameField.text = "";
                    passwordField.text = "";
                }
            }
        }

        // Кнопка входа
        Button {
            width: 120
            height:40
            background: Rectangle{width:150;anchors.fill:parent;color: "#CD853F";border.width:1;border.color:"#FFF8DC"}
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Войти"
            onClicked: {
                var foundUser = users.find(user => user.name === userNameField.text && user.password === passwordField.text);
                if (foundUser) {
                    currentUser = foundUser.name;
                    message = "Добро пожаловать, " + currentUser + "!";
                } else {
                    message = "Неверное имя пользователя или пароль.";
                }
            }
        }

        // Текст для отображения сообщений
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: message
            font.pointSize: 8
            color: "red"
        }
        // Кнопка выхода (если пользователь вошел)
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Выйти"
            visible: currentUser !== ""
            onClicked: {
                currentUser = "";
                message = "";
                userNameField.text = "";
                passwordField.text = "";
            }
        }
    }
}


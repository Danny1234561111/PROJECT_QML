import QtQuick 2.15
import QtQuick.Controls 2.15

MenuItem {
    id: menuItem
    property string itemText: ""
    property string pageSource: ""
    height: 40
    signal menuItemClicked(string page)

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
         onClicked: { // Добавил обработку клика
            if (pageSource !== "")
                response=""
                currentPage = pageSource;
                loadPage();
            }
    }

    background: Rectangle {
        color: mouseArea.containsMouse ? "#CD853F" : "#FFF8DC"
        border.width:1
        border.color: "#CD853F"
    }

    Text {
        anchors.verticalCenter: parent.verticalCenter
        color: mouseArea.containsMouse ? "#FFF8DC" : "#CD853F"
        text: itemText
        font.pixelSize: 20
    }
}

import Felgo
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    color:"#fcfcee"
    visible: true
    width: 400
    height: 300

    TableView {
        id: tableView
        anchors.fill: parent

        model: ListModel {
            id: listModel
            // Заполняем модель данными
            Component.onCompleted: {
                for (var i = 0; i < inCourzin.length; i++) {
                    append({"index": i + 1, "name": inCourzin[i], "price": InPrices1[i]});
                }
            }
        }

        delegate: Item {
            width: tableView.width
            height: 40

            Row {
                spacing: 10

                Text { text: model.index }
                Text { text: model.name }
                Text { text: model.price }
            }
        }

        // Заголовки таблицы
        // header: Item {
        //     width: tableView.width
        //     height: 40

        //     Row {
        //         spacing: 10

        //         Text { text: "№" }
        //         Text { text: "Имя" }
        //         Text { text: "Цена" }
        //     }
        // }

        Text{
            text: {calculateTotal()}
        }
        function calculateTotal() {
            var total = 0;
            for (var i = 0; i < prices.length; i++) {
                total += prices[i];
            }
            return total;
        }
    }
}

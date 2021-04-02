import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    width: 800
    height: 400
    visible: true
    title: qsTr("Scroll")

    ScrollView {
        anchors.fill: parent
        ListView {
            id: listView
            width: parent.width
            model: ListModel{
                ListElement{
                    name: 'STEEM '
                    name2:'/ETH'
                    hacim: '3682'
                    price : '$9.39'
                    birim: '0.000610'
                    yüzde: '+40.55%'
                    miktar:12
                }
                ListElement{
                    name: 'ARK '
                    name2:'/BTC'
                    hacim: '540'
                    price : '$24.51'
                    birim: '0.00004986'
                    yüzde: '+34.36%'
                    miktar:23
                }
                ListElement{
                    name: 'ARDR '
                    name2:'/USDT'
                    hacim: '11.12M'
                    price : '$3.37'
                    birim: '0.40293'
                    yüzde: '+29.41%'
                    miktar:76
                }
                ListElement{
                    name: 'DENT '
                    name2:'/USDT'
                    hacim: '507.28M'
                    price : '$0.0136618'
                    birim: '0.114235'
                    yüzde: '+28.64%'
                    miktar:47
                }
                ListElement{
                    name: 'GTO '
                    name2:'/USDT'
                    hacim: '15.49M'
                    price : '$0.427950'
                    birim: '0.05118'
                    yüzde: '+20.65%'
                    miktar:89
                }
                ListElement{
                    name: 'FIL '
                    name2:'/USDT'
                    hacim: '472.50M'
                    price : '$1225.58'
                    birim: '146.5713'
                    yüzde: '+17.07%'
                    miktar:95
                }
                ListElement{
                    name: 'ZRX '
                    name2:'/USDT'
                    hacim: '47.16M'
                    price : '$14.70'
                    birim: '1.7577'
                    yüzde: '+14.94%'
                    miktar:33
                }
            }
            delegate: Rectangle{
                width: parent.width
                height: 70
                border.width: 2

                border.color: 'white'
                color: 'black'
                Text {
                    id: text1
                    width: 70
                    anchors.left: parent.left
                    anchors.bottomMargin: 10
                    anchors.bottom: hacimtext.top
                    anchors.leftMargin: 10
                    color: 'deeppink'
                    text: name
                    font.pointSize: 12
                    font.bold: true
                }
                Text {
                    id:text2
                    anchors.left: text1.right
                    anchors.bottom: hacimtext.top
                    anchors.bottomMargin: 12
                    width:100
                    text: name2
                    font.pointSize: 8
                    color: 'aquamarine'
                }
                Text {
                    id:hacimtext
                    width: 120
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 10
                    text: '  HACİM = ' + hacim
                    font.pointSize: 8
                    color: 'white'
                    anchors.bottomMargin: 5
                }
                Text {
                    id:birimtext
                    anchors.left: text2.right
                    anchors.bottomMargin: 5
                    text: 'Birim : '+birim
                    font.pointSize: 10
                    color: 'white'
                }
                Text {
                    id: pricetext
                    text: 'Price : ' + price
                    anchors.left: text2.right
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    color: 'white'
                }
                Text {
                    id:miktartext
                    anchors.right: circle.left
                    anchors.verticalCenter: parent.verticalCenter
                    text: 'Miktar :  '
                    color: 'lightcyan'
                    font.bold: true
                    font.pointSize: 13
                }

                Button{
                    id:addbuton
                    anchors.right: parent.right
                    height: 40
                    width: 80
                    anchors.rightMargin: 20
                    anchors.verticalCenter: parent.verticalCenter
                    text: 'ADD'
                    onClicked: {
                        miktar++
                    }
                }
                Button{
                    id:subtructbutton
                    anchors.right: addbuton.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.rightMargin:5
                    height: 40
                    width: 80
                    text: 'SUB'
                    onClicked: {
                        miktar--
                    }
                }
                Rectangle {
                     id: circle
                     width: 50
                     height: 50
                     anchors.right: subtructbutton.left
                     anchors.topMargin: 10
                     anchors.rightMargin: 10
                     anchors.top: parent.top
                     color: 'black'
                     border.color: 'white'
                     border.width: 2
                     radius: width*0.5
                     Text {
                         anchors.centerIn:circle
                         color: 'white'
                         text: miktar
                         font.bold: true
                         font.pointSize: 13

                     }
                }
                Rectangle{
                    id:yüzdetext
                    width: 70
                    height: 30
                    anchors.right: miktartext.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.rightMargin: 10
                    color: 'lavenderblush'
                    Text {
                        anchors.centerIn: parent
                        font.pointSize: 8
                        text: yüzde
                        color: 'indigo'
                        font.bold: true
                    }
                }
            }
        }
        }
    }

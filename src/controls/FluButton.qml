﻿import QtQuick 2.15
import QtQuick.Controls 2.15
import FluentUI 1.0

Button {
    id: control

    property bool disabled: false
    property color normalColor: FluTheme.isDark ? Qt.rgba(62/255,62/255,62/255,1) : Qt.rgba(254/255,254/255,254/255,1)
    property color hoverColor: FluTheme.isDark ? Qt.rgba(68/255,68/255,68/255,1) : Qt.rgba(251/255,251/255,251/255,1)
    property color disableColor: FluTheme.isDark ? Qt.rgba(59/255,59/255,59/255,1) : Qt.rgba(252/255,252/255,252/255,1)

    topPadding:5
    bottomPadding:5
    leftPadding:15
    rightPadding:15
    enabled: !disabled

    background: Rectangle{
        border.color: FluTheme.isDark ? "#505050" : "#DFDFDF"
        border.width: 1
        radius: 4
        FluFocusRectangle{
            visible: control.visualFocus
            radius:8
        }
        color:{
            if(disabled){
                return disableColor
            }
            return hovered ? hoverColor :normalColor
        }
    }

    contentItem: FluText {
        text: control.text
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: {
            if(FluTheme.isDark){
                if(disabled){
                    return Qt.rgba(131/255,131/255,131/255,1)
                }
                return Qt.rgba(1,1,1,1)
            }else{
                if(disabled){
                    return Qt.rgba(160/255,160/255,160/255,1)
                }
                return Qt.rgba(0,0,0,1)
            }
        }
    }
}

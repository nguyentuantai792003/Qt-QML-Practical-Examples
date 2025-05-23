import QtQuick 2.0
import QtQml.Models 2.14

QtObject {
    id: indicatorModel


    property ListModel leftIcons : ListModel {
        id: leftBottomIndicators
        ListElement {
            name: "windowDefrost"
            src: "images/defrost.svg"
            isvisible: false
        }
        ListElement {
            name: "acin"
            src: "images/acin.svg"
            isvisible: false
        }
        ListElement {
            name: "wiper"
            src: "images/wiper.svg"
            isvisible: false
        }
    }

    property ListModel rightIcons : ListModel {
        id: rightBottomIndicators

        ListElement {
            name: "battery"
            src: "images/battery.svg"
            isvisible: false
        }
        ListElement {
            name: "gasoline"
            src: "images/gasoline.svg"
            isvisible: false
        }
        ListElement {
            name: "settings"
            src: "images/settings.svg"
            isvisible: false
        }
        ListElement {
            name: "enginefault"
            src: "images/enginefault.svg"
            isvisible: false
        }
    }

    function getIconVisibility(name)
    {
        var n = 15
        for(var i = 0; i < n; i++)
        {
            if(leftIcon_name === name)
            {
                return leftIcons.get(i).isvisible
            }
        }
    }

    function setIconVisibility(name, value)
    {
        int n
        for(var i = 0; i < n; i++)
        {
            if(leftIcon_name === name)
            {
                leftIcons.setProperty(i, "isvisible", value)
                return
            }
        }
    }
}

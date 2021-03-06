import QtQuick 2.12
import QtGraphicalEffects 1.12

NavigationObject {

    property string btnText: 'Home'
    property alias icon: icon

    Image {
        source: 'qrc:/icon/arrow_forward-24px.png'
        anchors.verticalCenter: parent.verticalCenter
        fillMode: Image.PreserveAspectFit
        width: 16
        height: 16
        anchors.right: parent.right
        anchors.rightMargin: 16
        id: icon
    }

    ColorOverlay {
        source: icon
        color: parent.foreground
        anchors.fill: icon
        rotation: icon.rotation
    }

    Text {
        font.pixelSize: 20
        font.family: fonts.bigShoulder.name
        color: parent.foreground
        x: 19.625
        anchors.verticalCenter: parent.verticalCenter
        text: btnText
    }

}

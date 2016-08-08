import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        anchors.fill: parent
        button1.onClicked: messageDialog.show(qsTr("Button 1 pressed"))
        button2.onClicked: messageDialog.show(qsTr("Button 2 pressed"))
        button3.onClicked: messageDialog.show(qsTr("Button 3 pressed"))
    }


/***************ListView  列表视图************************/
//    Rectangle {
//    width:200;height:200
//    ListModel{ //数据模型
//    id:listModel
//    ListElement{name:"Tom";number:"001"}
//    ListElement{name:"John";number:"002"}
//    ListElement{name:"Sum";number:"003"}
//    }
//    Component{ //代理
//    id:delegate
//    Item{ id:wrapper; width:200; height:40
//    Column{
//    x:5; y:5
//    Text{text:"<b>Name:</b>"+name}
//    Text{text:"<b>Number:</b>"+number}
//    }
//    }
//    }
//  //
//    Component{ //高亮条
//    id:highlight
//    Rectangle{color:"lightsteelblue";radius:5}
//    }
//    ListView{ //视图
//    width:parent.width; height:parent.height
//    model:listModel //关联数据模型
//    delegate:delegate //关联代理
//    highlight:highlight //关联高亮条
//    orientation:ListView.Horizontal//列表水平显示
//    keyNavigationWraps:true //使到达最后一个项目后重新返回第一个项目
//    focus:true //可以获得焦点，这样就可以响应键盘了
//    }
//    }

/*************** PathView 路径视图************************/
    Rectangle {
    width:300;height:300;
    ListModel{ //数据模型
    id:listModel
    ListElement{icon:"q1.png"}
    ListElement{icon:"q2.png"}
    ListElement{icon:"q3.png"}
    ListElement{icon:"q4.png"}
    }
    Component{ //代理
    id:delegate
    Item{ id:wrapper; width:50; height:50
    Column{
    Image {source:icon;width:50;height:50}
    }
    }
    }
    PathView{ //路径视图
    anchors.fill:parent; model:listModel; delegate:delegate
    path:Path{startX:120;startY:200
    PathQuad{x:120;y:25;controlX:260;controlY:125}
    PathQuad{x:120;y:200;controlX:-20;controlY:125}
    }
    }

//    Component{ //代理
//    id:delegate
//    Item{ id:wrapper; width:50; height:50
//    scale:PathView.scale; opacity:PathView.opacity
//    Column{
//    Image {source:icon;width:50;height:50}
//    }
//    }
//    }
//    PathView{
//    anchors.fill:parent; model:listModel; delegate:delegate
//    path:Path{startX:120;startY:200
//    PathAttribute{name:"scale";value:1.0}
//    PathAttribute{name:"opacity";value:1.0}
//    PathQuad{x:120;y:25;controlX:260;controlY:125}
//    PathAttribute{name:"scale";value:0.5}
//    PathAttribute{name:"opacity";value:0.5}
//    PathQuad{x:120;y:200;controlX:-20;controlY:125}
//    }
//    }
    }



  //    }


    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}

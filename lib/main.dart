import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wannaapp/OnClick.dart';
import 'package:wannaapp/OnLongClick.dart';
import 'package:wannaapp/other/HttpRequest.dart';
import 'package:wannaapp/other/LifeCycle.dart';
import 'package:wannaapp/other/Permission.dart';

import 'view/Button.dart';
import 'view/CardView.dart';
import 'view/CheckBox.dart';
import 'view/Dialog.dart';
import 'view/EiditText.dart';
import 'view/GridView.dart';
import 'view/ImageView.dart';
import 'view/LinearLayout.dart';
import 'view/ListView.dart';
import 'view/ProgressBar.dart';
import 'view/RadioButton.dart';
import 'view/RefreshLayout.dart';
import 'view/RelativeLayout.dart';
import 'view/Switch.dart';
import 'view/TextViewPage.dart';
import 'view/Toast.dart';
import 'view/ViewPager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "WANNA",
      home: RandomWords(),
    );
  }

}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords>{

  final List<String> names = ["TextView","EditText","ImageView","CardView","Button",
    "ListView","RefreshLayout","GridView","ViewPager","LinearLayout","RelativeLayout",
    "Dialog","Toast","onClick","onLongClick","Switch","CheckBox","RadioButton","ProgressBar",
    "Activity LifeCycle","HttpRequest","Permission"];
  final _biggerFont = const TextStyle(fontSize: 16.0, color: Colors.black);

  RandomWordsState();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
              Icons.menu,
              color: Color(0xFFFFFFFF),
          ),
          tooltip: "menu",
          onPressed: null,
        ),
        title: Text("Flutter Widget"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xFFFFFFFF),
            ),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),
      body: _buildSuggesttions(),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add",
        child: Icon(
          Icons.add,
          color: Color(0xFFFFFFFF),
        ),
        onPressed: null,
      ),
    );
  }

  Widget _buildSuggesttions(){

    return ListView.separated(
        padding: const EdgeInsets.fromLTRB(16.0, 15.0, 0.0,15.0),
        itemBuilder: (context,i){
          return _buildRow(names[i]);
        },
        separatorBuilder:(context,i){
          return Divider();
        },
        itemCount: names.length);
  }

  Widget _buildRow(String name) {
    return new FlatButton(
       onPressed: () => {
           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
             return _getPage(name);
           }))
       },
      child: Text(
        name,
        style: _biggerFont,
        textDirection: TextDirection.ltr,),
    );
  }

  Widget _getPage(String name) {
    Widget widget;
    switch(name){
      case "TextView" :
        widget = TextViewPagePage(title: name);
        break;
      case "EditText" :
        widget = EiditTextPage(title: name);
        break;
      case "ImageView" :
        widget = ImageViewPage(title: name);
        break;
      case "CardView" :
        widget = CardViewPage(title: name);
        break;
      case "Button" :
        widget = ButtonPage(title: name);
        break;
      case "ListView" :
        widget = ListViewPage(title: name);
        break;
      case "RefreshLayout" :
        widget = RefreshLayoutPage(title: name);
        break;
      case "GridView" :
        widget = GridViewPage(title: name);
        break;
      case "ViewPager" :
        widget = ViewPagerPage(title: name);
        break;
      case "LinearLayout" :
        widget = LinearLayoutPage(title: name);
        break;
      case "RelativeLayout" :
        widget = RelativeLayoutPage(title: name);
        break;
      case "Dialog" :
        widget = DialogPage(title: name);
        break;
      case "Toast" :
        widget = ToastPage(title: name);
        break;
      case "onClick" :
        widget = OnClickPage(title: name);
        break;
      case "onLongClick" :
        widget = OnLongClickPage(title: name);
        break;
      case "Switch" :
        widget = SwitchPage(title: name);
        break;
      case "CheckBox" :
        widget = CheckBoxPage(title: name);
        break;
      case "RadioButton" :
        widget = RadioButtonPage(title: name);
        break;
      case "ProgressBar" :
        widget = ProgressBarPage(title: name);
        break;
      case "Activity LifeCycle" :
        widget = LifeCyclePage(title: name);
        break;
      case "HttpRequest" :
        widget = HttpRequestPage(title: name);
        break;
      case "Permission" :
        widget = PermissionPage(title: name);
        break;

      default:
        Fluttertoast.showToast(msg: name);
    }
    return widget;
  }
}
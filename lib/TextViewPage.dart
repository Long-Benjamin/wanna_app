import 'package:flutter/material.dart';

class TextViewPagePage extends StatefulWidget {
  TextViewPagePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TextViewPagePageState createState() => _TextViewPagePageState();
}

class _TextViewPagePageState extends State<TextViewPagePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFFFFFFFF),
              ),
              tooltip: "back",
              onPressed: () => { Navigator.pop(context)},
            ),
            title: Text(widget.title)
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("第一各页面！")
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
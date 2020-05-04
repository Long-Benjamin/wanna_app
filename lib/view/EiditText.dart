import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EiditTextPage extends StatefulWidget {
  EiditTextPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _EiditTextPageState createState() => _EiditTextPageState();
}

class _EiditTextPageState extends State<EiditTextPage> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  final _formKey = GlobalKey<FormState>();
  final TextStyle _labelStyle = TextStyle(fontSize: 14, color: Colors.blue);
  final TextStyle _hintStyle = TextStyle(fontSize: 14, color: Colors.grey[600]);
  TextEditingController _unameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _unameController.text = "我就是";
    _unameController.selection = TextSelection(
      baseOffset: 3, //从什么位置开始选中
      extentOffset: _unameController.text.length //从什么位置结束
    );
    //监听输入改变
    _unameController.addListener((){
      print(_unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                maxLength: 50,
                focusNode: focusNode1,
                decoration: InputDecoration(
                    labelText: "用户名",
                    labelStyle: _labelStyle,
                    hintText: "用户名或邮箱",
                    hintStyle: _hintStyle,
                    prefixIcon: Icon(Icons.person)
                ),
                controller: _unameController,
                onChanged: (vName){
//                  print("Logcat关键字 = "+vName);
                },
              ),

              TextField(
                focusNode: focusNode2,
                decoration: InputDecoration(
                    labelText: "密码",
                    labelStyle: _labelStyle,
                    hintText: "您的登录密码",
                    hintStyle: _hintStyle,
                    prefixIcon: Icon(Icons.lock)
                ),
                obscureText: true,
                maxLength: 16,
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(children: <Widget>[
            RaisedButton(
              onPressed: () {
                showAboutDialog(context: context,
                    applicationName: "Wanna App",
                    applicationVersion: "v1.0",
                    applicationIcon: FlutterLogo(),
                    applicationLegalese: "Copyright 2003-2015, The Flying Monkee, LLC (excepting graphics, as freeware, licensed, and/or in public domain). All rights reserved. ",
                    children: null,
                    useRootNavigator: false);
              },
              textColor: Colors.white,
              color: Colors.lightBlue,
              child: Text("关于APP弹窗"),
            ),

            RaisedButton(
              onPressed: () {
                showDeleteConfirmDialog();
              },
              textColor: Colors.white,
              color: Colors.lightBlue,
              child: Text("普通对话框"),
            ),

            RaisedButton(
              onPressed: () {
                showLoadingDialog();
              },
              textColor: Colors.white,
              color: Colors.lightBlue,
              child: Text("普通Loading框"),
            ),

          ],),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // 弹出对话框
  Future<bool> showDeleteConfirmDialog() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("您已经点击了这个按钮?"),
          actions: <Widget>[
            FlatButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(), // 关闭对话框
            ),
            FlatButton(
              child: Text("删除"),
              onPressed: () {
                //关闭对话框并返回true
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, //点击遮罩不关闭对话框
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: Text("正在加载，请稍后..."),
              )
            ],
          ),
        );
      },
    );
  }

}
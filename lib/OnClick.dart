import 'package:flutter/material.dart';

class OnClickPage extends StatefulWidget {
  OnClickPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _OnClickPageState createState() => _OnClickPageState();
}

class _OnClickPageState extends State<OnClickPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
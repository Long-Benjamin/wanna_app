import 'package:flutter/material.dart';

class OnLongClickPage extends StatefulWidget {
  OnLongClickPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _OnLongClickPageState createState() => _OnLongClickPageState();
}

class _OnLongClickPageState extends State<OnLongClickPage> {

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
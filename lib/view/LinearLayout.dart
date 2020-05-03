import 'package:flutter/material.dart';

class LinearLayoutPage extends StatefulWidget {
  LinearLayoutPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LinearLayoutPageState createState() => _LinearLayoutPageState();
}

class _LinearLayoutPageState extends State<LinearLayoutPage> {

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
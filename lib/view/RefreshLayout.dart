import 'package:flutter/material.dart';

class RefreshLayoutPage extends StatefulWidget {
  RefreshLayoutPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RefreshLayoutPageState createState() => _RefreshLayoutPageState();
}

class _RefreshLayoutPageState extends State<RefreshLayoutPage> {

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
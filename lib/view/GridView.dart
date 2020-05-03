import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  GridViewPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _GridVIewPageState createState() => _GridVIewPageState();
}

class _GridVIewPageState extends State<GridViewPage> {

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
import 'package:flutter/material.dart';

class RelativeLayoutPage extends StatefulWidget {
  RelativeLayoutPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RelativeLayoutPageState createState() => _RelativeLayoutPageState();
}

class _RelativeLayoutPageState extends State<RelativeLayoutPage> {

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
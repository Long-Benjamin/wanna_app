import 'package:flutter/material.dart';

class EiditTextPage extends StatefulWidget {
  EiditTextPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _EiditTextPageState createState() => _EiditTextPageState();
}

class _EiditTextPageState extends State<EiditTextPage> {

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
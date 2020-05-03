import 'package:flutter/material.dart';

class ProgressBarPage extends StatefulWidget {
  ProgressBarPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProgressBarPageState createState() => _ProgressBarPageState();
}

class _ProgressBarPageState extends State<ProgressBarPage> {

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